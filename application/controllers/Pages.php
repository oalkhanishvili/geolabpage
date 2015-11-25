<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('User_model');
	}
	public function index(){
		$this->load->view('user/header');
		$data['lecture'] = $this->User_model->randomSelect('lecture', 3, 'id,name,direction,pic_name');
		$data['project'] = $this->User_model->randomSelect('project', 3);
		$this->load->view('user/index', $data);
		$this->load->view('user/footer');
	}
	public function profesors(){
		$this->load->view('user/header');
		$data['lecture'] = $this->User_model->randomSelect('lecture', NULL, 'id,name,pic_name,direction');
		$this->load->view('user/profesors', $data);
		$this->load->view('user/footer');
	}
	public function lecture($id){
		$data['lecture'] = $this->User_model->selectById('lecture', $id);
		$data['project'] = $this->User_model->innerSelectProject($id);
		$this->load->view('user/inside', $data);
	}
	public function direction(){
		$this->load->view('user/header');
		$data['direction'] = $this->User_model->select('direction');
		$this->load->view('user/text-page', $data);
		$this->load->view('user/footer');
	}
	public function model(){
		$this->load->view('user/header');
		$this->load->view('user/model');
		$this->load->view('user/footer');
	}
	public function news($id=''){
		$this->load->view('user/header');
		if ( empty($id) ){
			$data['news'] = $this->User_model->select('news','id','desc','3');
			$this->load->view('user/news', $data);
		}else{
			$data['news'] = $this->User_model->selectById('news', $id);
			$this->load->view('user/detail-news', $data);
		}

		$this->load->view('user/footer');
	}
	public function environment(){
		$this->load->view('user/header');
		$data['item'] = $this->User_model->selectPages('pages','environment');
		$this->load->view('user/environment', $data);
		$this->load->view('user/footer');
	}
	public function philosophy(){
		$this->load->view('user/header');
		$data['item'] = $this->User_model->selectPages('pages','philosophy');
		$this->load->view('user/philosophy', $data);
		$this->load->view('user/footer');
	}
	public function equipment(){
		$this->load->view('user/header');
		$data['equipment'] = $this->User_model->select('equipment','num','desc');
		$this->load->view('user/equipment', $data);
		$this->load->view('user/footer');
	}
	public function workinghours(){
		$this->load->view('user/header');
		$this->load->view('user/workinghours');
		$this->load->view('user/footer');
	}
	public function projects(){
		$data['projects'] = $this->User_model->innerSelectProject();
		$this->load->view('user/header');
		$this->load->view('user/projects', $data);
		$this->load->view('user/footer');
	}
	public function contact(){
		$this->load->view('user/header');
		$this->load->view('user/contact');
		$this->load->view('user/footer');
	}
	public function price(){
		$this->load->view('user/header');
		$this->load->view('user/price');
		$this->load->view('user/footer');
	}
	public function ajax($id){
		$query = $this->db->select('*')
			->where('id', $id)
			->get('equipment');
		if ( $query->num_rows() > 0 ){
			$result = $query->row_array();
			echo json_encode($result);
		}
		return false;
	}
	public function ajax_news($offset){
		$result = $this->User_model->select('news','id','desc','3',$offset);
			$html = array();
			if ( !empty($result) &&  $result[0]['num'] > 0 ){
				if ( $result[0]['num'] != 3 ){
					$html[1] = 'none';
				}
				$html[0] = '';
			foreach ( $result as $item ):
		    	$html[0]  .= '<div class="txt-content news"><div class="img-area"><div class="img-txt-wrp"><span style="overflow:hidden;"><img src="';
		       	$html[0]  .= base_url("img/img/".$item["image"]);
		       	$html[0]  .= '" alt="image" class="img-hover1"></span>
		            </div>
		        </div>
		        <article class="article">
		        <div class="date"><span>';
		        $html[0]  .= date_format(date_create($item["date"]),"j").'</span>'.date_format(date_create($item["date"]),"M");
		        $html[0]  .= '</div><span class="news-title">';
		        $html[0]  .= $item["title"].'</span><div class="article-area">
		                '.mb_substr($item["content"],0,250,'utf-8').'...
		            </div>
		            <div class="article-detail">
		                <a href="'.site_url('news/'.$item["id"]).'">მეტის წაკითხვა</a>
		            </div>
		        </article>
		    	</div>';
        	endforeach;
    	}else{
    		$html[1]  = 'none';
    	}
        echo json_encode($html);
	}
}