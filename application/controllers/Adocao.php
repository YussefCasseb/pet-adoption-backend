<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Adocao extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('AdocaoModel');
	}

	public function solicitar() {
		if (!empty($_POST)) {
			echo json_encode($this->AdocaoModel->solicitar($_POST));
		} else {
			echo "Ocorreu um erro";	
		}
	}

	public function registrar() {
		if (!empty($_POST)) {
			echo json_encode($this->AdocaoModel->registrar($_POST));
		} else {
			echo "Ocorreu um erro";	
		}
	}
}
