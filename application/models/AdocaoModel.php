<?php

class AdocaoModel extends CI_Model {
	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	function solicitar($dados) {
		if ($this->db->insert('tbl_interessados', $dados)) {
			return $this->db->insert_id();
		}
	}

	function registrar($dados) {
		if ($this->db->insert('tbl_animais_adotados', $dados)) {
			return $this->db->insert_id();
		}
	}
}
