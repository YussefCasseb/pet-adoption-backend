<?php

class AdotanteModel extends CI_Model {
	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	function cadastrar($dados) {
		if ($this->db->insert('tbl_adotantes', $dados)) {
			return $this->db->insert_id();
		}
	}

	function listarAnimaisAdotados($id) {
		$this->db->select('nome, genero, descricao, cidade, (select img_url from tbl_animais_imagens where animal_id = tbl_animais.id limit 1) as imagem');
		$this->db->join('tbl_animais', 'tbl_animais_adotados.animal_id = tbl_animais.id');
		$this->db->where('adotante_id', $id);
		$animais = $this->db->get('tbl_animais_adotados')->result_array();

		if (count($animais) >= 1) {
			return $animais;
		}

		return array();
	}
}
