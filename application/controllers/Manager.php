<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manager extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('manager_model');
		if(!$this->session->has_userdata('logged') && $this->uri->segment(2)!='login'){
			redirect('manager/login');
		}
	}
	public function index(){
		$this->load->view('manager/header');
		$data['admin_name'] = $this->session->userdata('logged');
		$this->load->view('manager/top-menu' ,$data);
		$this->load->view('manager/side-navigation');
		$this->load->view('manager/index');
		$this->load->view('manager/footer');
	}
	public function login(){
		$username=$this->input->post('username');
		$password=md5($this->input->post('password'));
		if ( $this->manager_model->admin_login($username, $password) == FALSE ){
		$this->load->view('manager/login-form');
		}else{
			$this->session->set_userdata('logged', $username);
			redirect('manager');
		}
	}
	public function logout(){
		$this->session->unset_userdata('logged');
		redirect('manager');
	}
	public function profesors(){
		$this->load->view('manager/header');
		$data['admin_name'] = $this->session->userdata('logged');
		$this->load->view('manager/top-menu' ,$data);
		$this->load->view('manager/side-navigation');
		$data['profesors'] = $this->manager_model->selectAll('lecture');
		$this->load->view('manager/view_profesors', $data);
		$this->load->view('manager/footer');
	}
	public function add_profesors(){
		$this->load->view('manager/header');
		$data['admin_name'] = $this->session->userdata('logged');
		$this->load->view('manager/top-menu' ,$data);
		$this->load->view('manager/side-navigation');
		$data['direction'] = $this->manager_model->selectAll('direction', 'title');
		$this->load->view('manager/view_add_profesors', $data);
		$this->load->view('manager/footer');
	}
	public function news(){
		$this->load->view('manager/header');
		$data['admin_name'] = $this->session->userdata('logged');
		$this->load->view('manager/top-menu' ,$data);
		$this->load->view('manager/side-navigation');
		$data['news'] = $this->manager_model->selectAll('news','*','id','desc');
		$this->load->view('manager/view_news', $data);
		$this->load->view('manager/footer');
	}
	public function add_news(){
		$this->load->view('manager/header');
		$data['admin_name'] = $this->session->userdata('logged');
		$this->load->view('manager/top-menu' ,$data);
		$this->load->view('manager/side-navigation');
		$this->load->view('manager/view_add_news');
		$this->load->view('manager/footer');
	}
	public function insert_news(){
		$config['upload_path'] = './img/img/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '20000';

		$this->load->library('upload', $config);

		if ( !$this->upload->do_upload() ){
				$error = array('error' => $this->upload->display_errors());
				$this->session->set_flashdata('message', $error['error']);
				redirect('manager/add_news');
			}else{
				$data = array('upload_data' => $this->upload->data());
				if ( $_SERVER['REQUEST_METHOD'] == 'POST' && !empty($data['upload_data']['file_name']) ){
					if ( $data['upload_data']['image_width'] > 900  ){
						$config['image_library'] = 'gd2';
						$config['source_image'] = './img/img/'.$data['upload_data']['file_name'];
						$config['create_thumb'] = TRUE;
						$config['maintain_ratio'] = TRUE;
						$config['width']         = 900;

						$this->load->library('image_lib', $config);

						if ( !$this->image_lib->resize()){
								$this->session->set_flashdata('message', $this->image_lib->display_errors());
								redirect('manager/add_news');
						}else{
								$this->image_lib->resize();
								$image = $data['upload_data']['raw_name'].'_thumb'.$data['upload_data']['file_ext'];
							}
					}else{
						$image = $data['upload_data']['file_name'];
					}
					$array = array(
						'title' => $this->input->post('title'),
						'content' => $this->input->post('content'),
						'image' => $image,
						'date' => date("Y-m-d H:i:s")
						);
					$this->db->insert('news', $array);
					$this->session->set_flashdata('message', 'სიახლე დამატებულია');
					redirect('manager/add_news');

			}

		}

	}
	public function edit_news($id){
		$this->load->view('manager/header');
		$data['admin_name'] = $this->session->userdata('logged');
		$this->load->view('manager/top-menu' ,$data);
		$this->load->view('manager/side-navigation');
		$data['news'] = $this->manager_model->selectById('news',$id);
		$this->load->view('manager/view_edit_news', $data);
		$this->load->view('manager/footer');
	}
	public function update_news($id){
		$config['upload_path'] = './img/img/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '20000';

		$this->load->library('upload', $config);

		if ( !$this->upload->do_upload() ){
				$error = array('error' => $this->upload->display_errors());
				$this->session->set_flashdata('message', $error['error']);
				$array = array(
					'title' => $this->input->post('title'),
					'content' => $this->input->post('content'),
					);
				$this->db->where('id',$id);
				$this->db->update('news', $array);
				$this->session->set_flashdata('message', 'სიახლე განახლებულია');
				redirect('manager/edit_news/'.$id);
			}else{
				$data = array('upload_data' => $this->upload->data());
				if ( $_SERVER['REQUEST_METHOD'] == 'POST' ){
					if ( $data['upload_data']['image_width'] > 900  ){
						$config['image_library'] = 'gd2';
						$config['source_image'] = './img/img/'.$data['upload_data']['file_name'];
						$config['create_thumb'] = TRUE;
						$config['maintain_ratio'] = TRUE;
						$config['width']         = 900;

						$this->load->library('image_lib', $config);

						if ( !$this->image_lib->resize()){
								$this->session->set_flashdata('message', $this->image_lib->display_errors());
								redirect('manager/edit_news/'.$id);
						}else{
								$this->image_lib->resize();
								$image = $data['upload_data']['raw_name'].'_thumb'.$data['upload_data']['file_ext'];
							}
					}else{
						$image = $data['upload_data']['file_name'];
					}
					$array = array(
						'title' => $this->input->post('title'),
						'content' => $this->input->post('content'),
						'image' => $image,
						);
					$this->db->where('id',$id);
					$this->db->update('news', $array);
					$this->session->set_flashdata('message', 'სიახლე განახლებულია');
					redirect('manager/edit_news'.$id);

			}

		}
	}
	public function delete_news($id){
			$this->db->delete('news', array('id' => $id));
			$this->session->set_flashdata('message', 'სიახლე წაშლილია');
			redirect('manager/news');
	}

}
