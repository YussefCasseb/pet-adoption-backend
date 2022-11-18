<?php

class AnimalModel extends CI_Model {
	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	function listar() {
		$animaisResponse = array();
		
		$this->db->select('id, nome, genero, descricao, cidade, (select img_url from tbl_animais_imagens where animal_id = tbl_animais.id limit 1) as imagem');
		$animais = $this->db->get('tbl_animais');

		if (count($animais->result_array()) >= 1) {
			foreach ($animais->result() as $animal) {
				$animalInfo = array(
					"image" => $animal->imagem,
					"name" => $animal->nome,
					"route" => '/pages/pet-profile/' . $animal->id,
					"location" => $animal->cidade,
				);
				array_push($animaisResponse, $animalInfo);
			}
			
			return $animaisResponse;
		}

		return array();
	}

	function perfil($id) {
		$this->db->where('tbl_animais.id', $id);
		$animais = $this->db->get('tbl_animais');

		if (count($animais->result_array()) == 1) {
			$this->db->select('img_url');
			$this->db->where('animal_id', $id);
			$imagens = $this->db->get('tbl_animais_imagens')->result_array();

			$this->db->select('nome, descricao');
			$this->db->where('animal_id', $id);
			$vacinas = $this->db->get('tbl_animais_vacinas')->result_array();

			foreach ($animais->result() as $animal): endforeach;

			$animalInfo = array(
				"id" => $animal->id,
				"nome" => $animal->nome,
				"idade" => $animal->idade,
				"genero" => $animal->genero,
				"tipo" => $animal->tipo,
				"porte" => $animal->porte,
				"descricao" => $animal->descricao,
				"cidade" => $animal->cidade,
				"imagens" => $imagens,
				"vacinas" => $vacinas
			);

			return $animalInfo;
		}

		return array();
	}

	function interessados($id) {
		$this->db->where('animal_id', $id);
		$interessados = $this->db->get('tbl_interessados');

		if (count($interessados->result_array()) >= 1) {
			return $interessados->result_array();
		}

		return array();
	}
}
