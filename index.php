<?php

include_once "config/config_app.php";
include_once "controller/tombo_controller.php";


if (!array_key_exists(ConfigApp::$ACTION,$_REQUEST ) || $_REQUEST[ConfigApp::$ACTION] == ConfigApp::$ACTION_HOME){
		$tomboController = new TomboController();
		$tomboController->home();
}
else {
  if (array_key_exists(ConfigApp::$ACTION,$_REQUEST )){
    
  		switch ($_REQUEST[ConfigApp::$ACTION]) {

        case ConfigApp::$ACTION_CUPONES:
          $tomboController = new TomboController();
          $tomboController->cupones();
          break;

  			case ConfigApp::$ACTION_ADD_CUPON:
  				$tomboController = new TomboController();
  				$tomboController->addCupon();
  				break;


        default:
          echo "Page not found";
  				break;
        }
      }
  }
?>
