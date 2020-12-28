<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Room extends CI_Controller {


	public function __construct(){

		parent::__construct(); //extends ettiğimiz bir clasıı constructa cagırmak için
		$this->load->model("room_model"); //modelı burda yükledik çünkü her fonksıyonda tanımlanmaz
		$this->load->model("roomimage_model");
	}

	public function index()
	{

		
		$viewData =new stdClass();
		$viewData->rows=$this->room_model->get_all(array(),"rank ASC"); 
		
		$this->load->view('room',$viewData);
	}



	//eklemeyi açıcak sayfa
	public function newPage(){

		$this->load->view("new_room");
	}




	public function editPage($id){

		$viewData= new stdClass();
		//modelden get yap , array içerisinde ver id si $id olan elemanı getir
		$viewData->row= $this->room_model->get(array("id"=>$id));

	$this->load->view("edit_room",$viewData);
	}




	public function add(){

		
		$room_properties     = implode(";",$this->input->post("room_properties"));
		$room_extra_services = implode(";",$this->input->post("room_extra_services"));

		$data = array(
			"room_code" 			=> $this->input->post("room_code"),
			"title" 				=> $this->input->post("title"),
			"detail" 				=> $this->input->post("detail"),
			"size" 					=> $this->input->post("size"),
			"default_price" 		=> $this->input->post("default_price"),
			"room_type_id" 			=> $this->input->post("room_type_id"),
			"room_capacity" 		=> $this->input->post("room_capacity"),
			"room_properties" 		=> $room_properties,
			"room_extra_services"	=> $room_extra_services,
			"isActive"				=> 0
		);


		$insert = $this->room_model->add($data);
		
		if ($insert) {
			redirect(base_url("room"));
		}else{
			redirect(base_url("room/newPage"));
		}
	}

	public function edit($id){

		$data = array(
			"title" => $this->input->post("title")
		);

		$update = $this->room_model->update(
			array("id"=>$id),
			$data
		);
		
		if ($update) {
			redirect(base_url("room"));
		}else{
			redirect(base_url("room/editPage/$id"));
		}
	}






	public function isActiveSetter()
	{
		$id = $this->input->post("id");
		$isActive=($this->input->post("isActive")=="true") ? 1 : 0;

		$update= $this->room_model->update(
			array("id"=> $id),
			array("isActive"=>$isActive)
		);
		
	}

	public function isActiveSetterForImage(){

		$id 	  = $this->input->post("id");
		$isActive = ($this->input->post("isActive") == "true") ? 1 : 0;

		$update = $this->roomimage_model->update(
			array("id" => $id),
			array("isActive" => $isActive)
		);

	}
	/*
	public function isCoverSetterForImage(){

		$id 	  = $this->input->post("id");
		$isCover = ($this->input->post("isCover") == "true") ? 1 : 0;

		$update = $this->roomimage_model->update(
			array("id" => $id),
			array("isCover" => $isCover)
		);

	}*/



	public function delete($id){
		
		$delete=$this->room_model->delete(array("id"=>$id));
		redirect(base_url("room"));
	}


	public function rankUpdate(){

		
		parse_str($this->input->post("data"),$data);
		
		$items=$data["sortId"];

		foreach($items as $rank => $id){

			$this->room_model->update(
				array("id"=>$id),
				array("rank"=>$rank),
				array("rank" => $rank)
			);
		}

	}

	public function roomImageRankUpdate(){

		parse_str($this->input->post("data"), $data);

		$items = $data["sortId"];

		foreach($items as $rank => $id){

			$this->roomimage_model->update(
				array(
					"id"      => $id,
					"rank !=" => $rank
				),
				array("rank" => $rank)
			);

		}

	}

	// main_contentten gelen id yi aldık
	public function imageUploadPage($room_id){

		$this->session->set_userdata("room_id", $room_id);

		$viewData = new stdClass();
		$viewData->rows = $this->roomimage_model->get_all(
			array(
				"room_id"	=> $room_id,
			),"rank ASC"
		);

		$this->load->view("room_image", $viewData);

	}

	public function upload_image(){

		$config['upload_path']          = 'uploads/';
		$config['allowed_types']        = '*';
		$config['encrypt_name']			= true;

		$this->load->library('upload', $config);

//		if(!file_exists(FCPATH)){}

		if ( ! $this->upload->do_upload('file'))
		{
			$error = array('error' => $this->upload->display_errors());

			print_r($error);

		}
		else
		{

			// Upload Basarili ise DB ye aktar..
			$data = array('upload_data' => $this->upload->data());
			$img_id = $data["upload_data"]['file_name'];

			$this->roomimage_model->add(array(
					"img_id"	=> $img_id,
					"room_id"	=> $this->session->userdata("room_id"),
					"isActive"	=> 1,
					"rank"		=> 0
				)

			);


		}

	
		

	}
}
