<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Animal extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('AnimalModel');
	}

	public function listar() {
		echo json_encode($this->AnimalModel->listar());
	}

	public function perfil($id) {
		echo json_encode($this->AnimalModel->perfil($id));
	}

	public function interessados($id) {
		echo json_encode($this->AnimalModel->interessados($id));
	}
}
