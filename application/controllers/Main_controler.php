<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Main_controler extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		// Código específico de TuModelo
	}

	public function index()
	{
		$this->load->view('componentes/head');
		$this->load->view('componentes/navbar');		
		$this->load->view('welcome_message');
	}

	public function view_mantenedor()
	{
		$this->load->view('componentes/head');
		$this->load->view('componentes/navbar');
		$this->load->view('mantenedor/mantenedor');
	}
	public function view_trabajador()
	{
		$this->load->view('componentes/head');
		$this->load->view('componentes/navbar');
		$this->load->view('usuario/trabajador');
	}
	public function view_cliente()
	{
		$this->load->view('componentes/head');
		$this->load->view('componentes/navbar');
		$this->load->view('usuario/cliente');
	}
}
