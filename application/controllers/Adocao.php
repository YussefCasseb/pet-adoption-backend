<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Header('Access-Control-Allow-Origin: *'); //for allow any domain, insecure
Header('Access-Control-Allow-Headers: *'); //for allow any headers, insecure
Header('Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE'); //method allowed

class Adocao extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('AdocaoModel');
	}

	public function solicitar() {
		$post_data = json_decode(file_get_contents('php://input'), true);
		
		if (!empty($post_data)) {
			echo json_encode($this->AdocaoModel->solicitar($post_data));
		} else {
			echo "Ocorreu um erro";	
		}
	}

	public function registrar() {
		$post_data = json_decode(file_get_contents('php://input'), true);
		
		if (!empty($post_data)) {
			echo json_encode($this->AdocaoModel->registrar($post_data));
		} else {
			echo "Ocorreu um erro";	
		}
	}
}
