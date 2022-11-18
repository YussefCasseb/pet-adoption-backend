<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Header('Access-Control-Allow-Origin: *'); //for allow any domain, insecure
Header('Access-Control-Allow-Headers: *'); //for allow any headers, insecure
Header('Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE'); //method allowed

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
