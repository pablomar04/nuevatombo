<?php
class Modelo {
  protected $db;

  function __construct() {
      $this->db = new PDO('mysql:host=sql104.mbit.ga;dbname=x2bit_20074616_tombo;charset=utf8', 'x2bit_20074616', 'auster1900');

  }
}
  ?>