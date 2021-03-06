<?php 
namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use Hash;
	use CRUDBooster;

	class FrontendController extends Controller {
		
		// index
		public function getIndex(){
			$title =DB::table('cms_settings')->where('name','appname')->First();
			$data['title'] = $title->content;
			$data['active'] = 'index';
			$data['gallery'] = DB::table('gallery')->orderby('id','desc')->get();
			return view('index',$data);
		}


		public function getListadoventa(){
			$title =DB::table('cms_settings')->where('name','appname')->First();
			$data['title'] = $title->content;
			$data['active'] = 'listadoventa';
			$data['propiedad'] = DB::table('propiedad')
			->join('moneda','propiedad.moneda_id','=','moneda.id')
			->join('localidad_propiedad','propiedad.localidad_propiedad_id','=','localidad_propiedad.id')
			->join('tipooperacion','propiedad.tipooperacion_id','=','tipooperacion.id')
			->join('barrio_propiedad','propiedad.barrio_propiedad_id','=','barrio_propiedad.id')
	
			->select(
				'propiedad.*',
				'imagen',
				'titulo',
				'descripcion',
				'precio_compra',
				'precio_compra',
				'moneda',
				'barrio_propiedad.name as barrio',
				'localidad_propiedad.name as localidad',
				'tipooperacion.name as operacion'
			)

			->where('publicado',1)
			->where('tipooperacion_id',1)
			->orderby('propiedad.id','desc')->get();
			return view('listadoventa',$data);
		}

		public function getListadoalquiler(){
			$title =DB::table('cms_settings')->where('name','appname')->First();
			$data['title'] = $title->content;
			$data['active'] = 'listadoalquiler';
			$data['propiedad'] = DB::table('propiedad')
			->join('moneda','propiedad.moneda_id','=','moneda.id')
			->join('localidad_propiedad','propiedad.localidad_propiedad_id','=','localidad_propiedad.id')
			->join('tipooperacion','propiedad.tipooperacion_id','=','tipooperacion.id')
			->join('barrio_propiedad','propiedad.barrio_propiedad_id','=','barrio_propiedad.id')
			->select(
				'propiedad.*',
				'imagen',
				'titulo',
				'descripcion',
				'precio_compra',
				'precio_compra',
				'moneda',
				'barrio_propiedad.name as barrio',
				'localidad_propiedad.name as localidad',
				'tipooperacion.name as operacion'
			)
			->where('publicado',1)
			->where('tipooperacion_id',2)
			->orderby('propiedad.id','desc')->get();
			return view('listadoalquiler',$data);
		}

//		DB::table('table1')
//		->select('data.ID') // Add a select so only one column shows up.
//		->join('table2','table1.table2ID','=','table2.ID')
//		->join('thisTable', 'table2.thisTableID', '=', 'thisTable.ID')
//		->lists('ID'); // Now list that one column



	//	select * from propiedad inner join moneda on propiedad.moneda_id = moneda.id

		// about
		public function getAbout(){
			$title =DB::table('cms_settings')->where('name','appname')->First();
			$data['title'] = $title->content;
			$data['active'] = 'about';
			$data['about_img'] = DB::table('cms_settings')->where('name','about_us')->first();
			$data['about_desc'] = DB::table('cms_settings')->where('name','description')->first();
			return view('about',$data);
		}
		// contact
		public function getContact(){
			$title =DB::table('cms_settings')->where('name','appname')->First();
			$data['title'] = $title->content;
			$data['active'] = 'contact';
			return view('contact',$data);
		}
		public function postContact(){
			$save['full_name'] = Request::get('first_name').' '.Request::get('last_name');
			$save['email'] = Request::get('email');
			$save['message'] = Request::get('message');
			DB::table('contact_us')->insert($save);

			Session::flash('message', "Message has been send");
			return redirect()->back();
		}
	}
?>