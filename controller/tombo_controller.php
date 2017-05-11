<?php
include_once "model/tombo_model.php";
include_once "view/tombo_view.php";
class TomboController
{
    private $model;
	  private $view;

    public function __construct() {
        $this->model = new TomboModel();
		    $this->view = new TomboView();
      
    }

    public function home(){

      $this->view->showPage($this->model->getDatos());
    }

    public function cupones(){

      $this->view->showCupones($this->model->getCupones());
    }

    public function cargaExitosa(){
      $this->view->showCargaExitosa();
    }


    public function addCupon(){
      if (($_REQUEST['jugador'] != null) &&
          ($_REQUEST['optionsRadios1'] != null) && 
          ($_REQUEST['optionsRadios2'] != null) &&
          ($_REQUEST['optionsRadios3'] != null) &&
          ($_REQUEST['optionsRadios4'] != null) &&
          ($_REQUEST['optionsRadios5'] != null) &&
          ($_REQUEST['optionsRadios6'] != null) &&
          ($_REQUEST['optionsRadios7'] != null) &&
          ($_REQUEST['optionsRadios8'] != null) &&
          ($_REQUEST['optionsRadios9'] != null) &&
          ($_REQUEST['optionsRadios10'] != null) &&
          ($_REQUEST['optionsRadios11'] != null) &&
          ($_REQUEST['optionsRadios12'] != null) &&
          ($_REQUEST['optionsRadios13'] != null) &&
          ($_REQUEST['optionsRadios14'] != null) &&
          ($_REQUEST['optionsRadios15'] != null)){

        $this->model->addCupon($_REQUEST['jugador'],$_REQUEST['optionsRadios1'],$_REQUEST['optionsRadios2'],$_REQUEST['optionsRadios3'],$_REQUEST['optionsRadios4'],$_REQUEST['optionsRadios5'],$_REQUEST['optionsRadios6'],$_REQUEST['optionsRadios7'],$_REQUEST['optionsRadios8'],$_REQUEST['optionsRadios9'],$_REQUEST['optionsRadios10'],$_REQUEST['optionsRadios11'],$_REQUEST['optionsRadios12'],$_REQUEST['optionsRadios13'],$_REQUEST['optionsRadios14'],$_REQUEST['optionsRadios15']);
        $this->cargaExitosa();
      }else{
        $this->home();        
      }
      
    }


}
?>
