<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Roomcategory extends CI_Controller {


	public function __construct(){

		parent::__construct(); //extends ettiğimiz bir clasıı constructa cagırmak için
		$this->load->model("roomcategory_model"); //modelı burda yükledik çünkü her fonksıyonda tanımlanmaz

	}

	public function index()
	{

		//public function get_all($where=array(),$order_by='id ASC',$selecet='*',$limit=array())  
		$viewData =new stdClass();
		$viewData->rows=$this->roomcategory_model->get_all(array(),"rank ASC");  // rank ASC den sonra eklenebilir ,"*",array("count"=>2,"start"=>2)
		
		$this->load->view('roomcategory',$viewData);
	}



	//eklemeyi açıcak sayfa
	public function newPage(){

		$this->load->view("new_roomcategory");
	}




	public function editPage($id){

		$viewData= new stdClass();
		//modelden get yap , array içerisinde ver id si $id olan elemanı getir
		$viewData->row= $this->roomcategory_model->get(array("id"=>$id));

	$this->load->view("edit_roomcategory",$viewData);
	}




	public function add(){

		$data = array(
			"title" => $this->input->post("title")
		);

		$insert = $this->roomcategory_model->add($data);
		
		if ($insert) {
			redirect(base_url("roomcategory"));
		}else{
			redirect(base_url("roomcategory/newPage"));
		}
	}

	public function edit($id){

		$data = array(
			"title" => $this->input->post("title")
		);

		$update = $this->roomcategory_model->update(
			array("id"=>$id),
			$data
		);
		
		if ($update) {
			redirect(base_url("roomcategory"));
		}else{
			redirect(base_url("roomcategory/editPage/$id"));
		}
	}






		public function isActiveSetter(){

		$id 	  = $this->input->post("id");
		$isActive = ($this->input->post("isActive") == "true") ? 1 : 0;

		$update = $this->roomcategory_model->update(
			array("id" => $id),
			array("isActive" => $isActive)
		);

	}



	public function delete($id){
		
		$delete=$this->roomcategory_model->delete(array("id"=>$id));
		redirect(base_url("roomcategory"));
	}


	public function rankUpdate(){

		
		parse_str($this->input->post("data"),$data);
		
		$items=$data["sortId"];

		foreach($items as $rank => $id){

			$this->roomcategory_model->update(
				array("id"=>$id),
				array("rank"=>$rank),
				array("rank" => $rank)
			);
		}

	}
}
