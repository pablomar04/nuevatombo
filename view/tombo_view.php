<?php
include_once 'view/view.php';

class TomboView extends View {


  public function showPage($partidos){
  	  
      $this->smarty->assign("partidos", $partidos);
      $this->smarty->display('index.tpl');
  }

  public function showCupones($cupones){
  	  
      $this->smarty->assign("cupones", $cupones);
      $this->smarty->display('cupones.tpl');
  }

    public function showCargaExitosa(){
    
    $this->smarty->display('carga.tpl');
  }


}
?>
