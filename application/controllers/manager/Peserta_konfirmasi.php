<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Peserta_konfirmasi extends Member_Controller
{
	private $kode_menu = 'peserta-konfirmasi';
	private $kelompok = 'peserta';
	private $url = 'manager/peserta_konfirmasi';

	function __construct()
	{
		parent::__construct();
		$this->load->model('cbt_user_grup_model');
		$this->load->model('cbt_user_model');

		parent::cek_akses($this->kode_menu);
	}

	public function index()
	{
		$data['kode_menu'] = $this->kode_menu;
		$data['url'] = $this->url;

		$data['peserta'] = $this->cbt_user_model->get_inactive_user();

		if (isset($_POST['id']))
			$id = $_POST['id'];

		if (isset($_POST['konfirmasi'])) {
			$newdata['status'] = 1;
			$this->cbt_user_model->update_status($id, $newdata);
			redirect('manager/peserta_konfirmasi');
		} else if (isset($_POST['batalkan'])) {
			$newdata['status'] = 3;
			$this->cbt_user_model->update_status($id, $newdata);
			redirect('manager/peserta_konfirmasi');
		} elseif (isset($_POST['tolak'])) {
			$newdata['status'] = 3;
			$this->cbt_user_model->update_status($id, $newdata);
			redirect('manager/peserta_konfirmasi');
		}
		$this->template->display_admin($this->kelompok . '/peserta_konfirmasi_view', 'Daftar Peserta', $data);
	}
}
