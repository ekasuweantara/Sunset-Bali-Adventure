<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Booking extends CI_Controller {
	public function index()
	{
			$data['title']			= "Booking || Sunset Bali Adventure";

			$this->load->view('v_style', $data);
			$this->load->view('v_script');
			$this->load->view('v_booking');
			$this->load->view('v_footer');

	}

}
