<?php
include_once "model/modelo.php";
class TomboModel extends Modelo{


  public function getDatos(){
      $sentencia1 = $this->db->prepare("SELECT fechaactual.numero, eq1.img AS e1img, eq1.nombre as e1, eq2.nombre as e2, eq2.img AS e2img FROM fechaactual INNER JOIN equipos AS eq1 ON eq1.id_equipo = fechaactual.foreing_id_e1 INNER JOIN equipos AS eq2 ON eq2.id_equipo = fechaactual.foreing_id_e2");
      $sentencia1->execute();
      $datos = $sentencia1->fetchAll(PDO::FETCH_ASSOC);
      return $datos;
  }

  public function addCupon($nombre,$p1,$p2,$p3,$p4,$p5,$p6,$p7,$p8,$p9,$p10,$p11,$p12,$p13,$p14,$p15){
      $sentencia1 = $this->db->prepare("INSERT INTO cupones (jugador,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,Estado,Puntos) 
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
      $sentencia1->execute(array($nombre,$p1,$p2,$p3,$p4,$p5,$p6,$p7,$p8,$p9,$p10,$p11,$p12,$p13,$p14,$p15,'PENDIENTE','0'));
  }

  public function getCupones (){
    
    $ganador = $this->db->prepare("SELECT * from cuponganador");
    $ganador->execute();
    $ganadorfetch=$ganador->fetch(PDO::FETCH_ASSOC);

    $sentencia1 = $this->db->prepare("SELECT * from cupones ORDER BY Puntos desc");
    $sentencia1->execute();
    
    while ($row=$sentencia1->fetch(PDO::FETCH_ASSOC)){
      $cupon = $row['id_cupon'];
      $cont = 0;
      for ($i=1; $i<=15; $i++){
        if ($row['p'.$i.''] == $ganadorfetch['p'.$i.''])
          $cont++;
      }

      $actualiza = $this->db->prepare("UPDATE cupones SET Puntos=? WHERE id_cupon=?");
      $actualiza->execute(array($cont,$cupon));
    }

    $sentencia1->execute();
    $cupones = $sentencia1->fetchAll(PDO::FETCH_ASSOC);
    return $cupones;
  }
}
?>
