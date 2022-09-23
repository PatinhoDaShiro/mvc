<?php

/**
 * home - Controller de exemplo
 * @author Cândido Farias
 * @package mvc
 * @since 0.1
 */
class HomeController extends MainController
{

	public function __construct(){
		parent::__construct();
		if(!isset($_SESSION['user'])){
			header("Location:".URL_BASE."users/login");
		}
	}

	/**
	 * Carrega a página "/views/home/index.php"
	 */
    public function index() {
		# Título da página
		$this->title = 'Home';
		$this->listar();
		# Essa página não precisa de modelo (model)
		
		# Carrega os arquivos do view		
		
    } // index

	public function listar($dateStart=null, $dateEnd=null) {
		#Instanciar um objeto da classe MovimentModel 
		$model=$this->load_model("Home");
		//var_dump($model);
		# busca a lista de movimento para o periodo
		$listar=$model->listarInput($dateStart, $dateEnd);
		$dataInput['moviments']=$listar;
		
		$list=$model->listOut($dateStart, $dateEnd);
		$dataOutput['movimentos'] = $list;

		$Array = array($dataInput['moviments'], $dataOutput['movimentos']);
		//print_r($data);
		/** Carrega os arquivos do view **/
		$this->view->show('home/home', $Array);
		
	}




} // class HomeController