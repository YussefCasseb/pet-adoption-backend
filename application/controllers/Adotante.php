<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Adotante extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('AdotanteModel');
	}

	public function cadastrar() {
		if (!empty($_POST)) {
			echo json_encode($this->AdotanteModel->cadastrar($_POST));
		} else {
			echo "Ocorreu um erro";	
		}
	}

	public function animais($id) {
		echo json_encode($this->AdotanteModel->listarAnimaisAdotados($id));
	}
}
