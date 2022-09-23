<?php

class HomeModel extends MainModel{ 

    public function listarInput($dateStart, $dateEnd){
        $sql="SELECT DISTINCT date,(SELECT sum(value) FROM moviment WHERE date = m.date) as total, type from moviment m where type = 'input' ";

		$retorno=$this->db->query($sql, null);
		While($item=$retorno->fetch(PDO::FETCH_ASSOC)){
			$resultado[]=$item;
		}
		return $resultado;
    }
	
	public function listOut($dateStart, $dateEnd){
		$sql="SELECT DISTINCT date,(SELECT sum(value) FROM moviment WHERE date = m.date) as total, type from moviment m where type = 'output' ";
		$retorno=$this->db->query($sql, null);
		While($item=$retorno->fetch(PDO::FETCH_ASSOC)){
			$resultado[]=$item;

		}
		return $resultado;
	}

    


}