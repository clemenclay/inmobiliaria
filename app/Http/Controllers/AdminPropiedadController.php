<?php namespace App\Http\Controllers;
	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	class AdminPropiedadController extends \crocodicstudio\crudbooster\controllers\CBController {
	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "name";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = true;
			$this->button_export = true;
			$this->table = "propiedad";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Publicado","name"=>"publicado",'dataenum'=>'0|NO;1|SI'];
			$this->col[] = ["label"=>"Titulo","name"=>"titulo"];
#			$this->col[] = ["label"=>"Descripcion","name"=>"descripcion"];
			$this->col[] = ["label"=>"Imagen","name"=>"imagen","image"=>true];
			
			$this->col[] = ["label"=>"Tipo Operacion","name"=>"tipooperacion_id","join"=>"tipooperacion,name"];
			$this->col[] = ["label"=>"Tipopropiedad Id","name"=>"tipopropiedad_id","join"=>"tipopropiedad,name"];
			$this->col[] = ["label"=>"Precio Compra","name"=>"precio_compra",'callback_php'=>'number_format([precio_compra])','decimals'=>'2','dec_point'=>'.'];
			$this->col[] = ["label"=>"Precio Alquiler","name"=>"precio_alquiler",'callback_php'=>'number_format([precio_alquiler])','decimals'=>'2','dec_point'=>'.'];
			$this->col[] = ["label"=>"Moneda","name"=>"moneda_id","join"=>"moneda,moneda"];
#			$this->col[] = ["label"=>"Calle","name"=>"calle"];
#			$this->col[] = ["label"=>"Altura","name"=>"altura"];
#			$this->col[] = ["label"=>"Piso","name"=>"piso"];



			$this->col[] = ["label"=>"barrio_propiedad_id","name"=>"tipopropiedad_id","join"=>"barrio_propiedad,name"];
			$this->col[] = ["label"=>"localidad_propiedad_id","name"=>"tipopropiedad_id","join"=>"localidad_propiedad,name"];
			$this->col[] = ["label"=>"provincia_propiedad_id","name"=>"tipopropiedad_id","join"=>"provincia_propiedad,name"];

#			$this->col[] = ["label"=>"Maps","name"=>"maps"];
#			$this->col[] = ["label"=>"Map Latitude","name"=>"map_latitude"];
#			$this->col[] = ["label"=>"Map Longitude","name"=>"map_longitude"];

			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Publicado','name'=>'publicado','type'=>'radio','validation'=>'required|min:1|max:1','width'=>'col-sm-10','dataenum'=>'0|NO;1|SI'];
			$this->form[] = ['label'=>'Titulo','name'=>'titulo','type'=>'text','validation'=>'required|min:1|max:2550','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Descripcion','name'=>'descripcion','type'=>'wysiwyg','validation'=>'required|min:1|max:2550','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Imagen','name'=>'imagen','type'=>'upload','validation'=>'required|min:1|max:2550','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tipo Operacion','name'=>'tipooperacion_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tipooperacion,name'];
			$this->form[] = ['label'=>'Tipo Propiedad Id','name'=>'tipopropiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tipopropiedad,name'];
			
			$this->form[] = ['label'=>'<br/><br/>'];
			$this->form[] = ['label'=>'Precio Compra','name'=>'precio_compra','type'=>'money','validation'=>'integer|min:0','width'=>'col-sm-4'];
			$this->form[] = ['label'=>'Precio Alquiler','name'=>'precio_alquiler','type'=>'money','validation'=>'integer|min:0','width'=>'col-sm-4'];
			$this->form[] = ['label'=>'<br/><br/>'];
			
			$this->form[] = ['label'=>'Moneda','name'=>'moneda_id','type'=>'select2','validation'=>'required','width'=>'col-sm-9','datatable'=>'moneda,moneda'];			
			$this->form[] = ['label'=>'Calle','name'=>'calle','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Altura','name'=>'altura','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Piso','name'=>'piso','type'=>'number','validation'=>'min:1|max:500','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Maps','name'=>'maps','type'=>'text','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Map Latitude','name'=>'map_latitude','type'=>'text','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Map Longitude','name'=>'map_longitude','type'=>'text','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Barrio','name'=>'barrio_propiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'barrio_propiedad,name'];
			$this->form[] = ['label'=>'Localidad','name'=>'localidad_propiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'localidad_propiedad,name'];
			$this->form[] = ['label'=>'Provincia','name'=>'provincia_propiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'provincia_propiedad,name'];

			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Publicado','name'=>'publicado','type'=>'radio','validation'=>'required|min:1|max:1','width'=>'col-sm-10','dataenum'=>'0|NO;1|SI'];
			//$this->form[] = ['label'=>'Titulo','name'=>'titulo','type'=>'text','validation'=>'required|min:1|max:2550','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Descripcion','name'=>'descripcion','type'=>'wysiwyg','validation'=>'required|min:1|max:2550','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Imagen','name'=>'imagen','type'=>'upload','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tipo Operacion','name'=>'tipooperacion_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tipooperacion,name'];
			//$this->form[] = ['label'=>'Tipo Propiedad Id','name'=>'tipopropiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'tipopropiedad,name'];
			//$this->form[] = ['label'=>'Precio Compra','name'=>'precio_compra','type'=>'money','validation'=>'integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Precio Alquiler','name'=>'precio_alquiler','type'=>'money','validation'=>'integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Moneda','name'=>'moneda_id','type'=>'select2','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Calle','name'=>'calle','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'moneda,id'];
			//$this->form[] = ['label'=>'Altura','name'=>'altura','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Piso','name'=>'piso','type'=>'number','validation'=>'required|min:1|max:500','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Maps','name'=>'maps','type'=>'text','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Map Latitude','name'=>'map_latitude','type'=>'text','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Map Longitude','name'=>'map_longitude','type'=>'text','width'=>'col-sm-10','datatable'=>'barrio_propiedad,name'];
			//$this->form[] = ['label'=>'Barrio','name'=>'barrio_propiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'localidad_propiedad,name'];
			//$this->form[] = ['label'=>'Localidad','name'=>'localidad_propiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'provincia_propiedad,name'];
			//$this->form[] = ['label'=>'Provincia','name'=>'provincia_propiedad_id','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();
	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                
	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;
            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }
	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }
	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }
	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }
	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here
	    }
	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here
	    }
	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here
	    }
	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 
	    }
	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here
	    }
	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here
	    }
	    //By the way, you can still create your own method in here... :) 
	}