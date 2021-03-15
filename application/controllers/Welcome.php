<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * ZYA CBT
 * Achmad Lutfi
 * achmdlutfi@gmail.com
 * achmadlutfi.wordpress.com
 */
class Welcome extends CI_Controller
{
	private $kelompok = 'ujian';
	private $url = 'welcome';

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->model('cbt_konfigurasi_model');
		$this->load->library('access_tes');
		$this->load->library('user_agent');
		$this->load->model('cbt_konfigurasi_model');
		$this->load->model('group_model');
		$this->load->model('cbt_user_grup_model');
		$this->load->model('cbt_user_model');
	}

	public function index()
	{
		$data['url'] = $this->url;
		$data['timestamp'] = strtotime(date('Y-m-d H:i:s'));
		if ($this->agent->is_browser()) {
			if ($this->agent->browser() == 'Internet Explorer') {
				$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
			} else {
				$akses_cbt = 1;
				if ($this->agent->is_mobile()) {
					$query = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'cbt_mobile_lock_xambro', 1);
					if ($query->row()->konfigurasi_isi == "ya") {
						$agent = $this->agent->agent_string();
						if (strpos($agent, 'ZYACBT') == false) {
							$akses_cbt = 0;
						}
					}
				}
				if ($akses_cbt == 1) {
					if (!$this->access_tes->is_login()) {
						$data['link_login_operator'] = "tidak";
						$query_konfigurasi = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'link_login_operator', 1);
						if ($query_konfigurasi->num_rows() > 0) {
							$data['link_login_operator'] = $query_konfigurasi->row()->konfigurasi_isi;
						}

						$data['cbt_keterangan'] = "Ujian Online Berbasis Komputer";
						$query_konfigurasi = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'cbt_keterangan', 1);
						if ($query_konfigurasi->num_rows() > 0) {
							$data['cbt_keterangan'] = $query_konfigurasi->row()->konfigurasi_isi;
						}

						$this->template->display_user($this->kelompok . '/welcome_view', 'Selamat Datang', $data);
					} else {
						redirect('tes_dashboard');
					}
				} else {
					$this->template->display_user('lockmobile_view', 'Exam Browser');
				}
			}
		} else {
			$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
		}
	}

	public function registrasi()
	{
		$data['url'] = $this->url;
		$data['timestamp'] = strtotime(date('Y-m-d H:i:s'));
		if ($this->agent->is_browser()) {
			if ($this->agent->browser() == 'Internet Explorer') {
				$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
			} else {
				$akses_cbt = 1;
				if ($this->agent->is_mobile()) {
					$query = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'cbt_mobile_lock_xambro', 1);
					if ($query->row()->konfigurasi_isi == "ya") {
						$agent = $this->agent->agent_string();
						if (strpos($agent, 'ZYACBT') == false) {
							$akses_cbt = 0;
						}
					}
				}
				if ($akses_cbt == 1) {
					if (isset($_POST['submit'])) {
						$this->load->library('form_validation');

						$this->form_validation->set_rules('username', 'Username', 'required|strip_tags');
						$this->form_validation->set_rules('password', 'Password', 'required|strip_tags');
						$this->form_validation->set_rules('name', 'Nama Lengkap', 'required|strip_tags');
						$this->form_validation->set_rules('email', 'Email', 'required|valid_emails|strip_tags');
						$this->form_validation->set_rules('phone', 'Nomor Telephone', 'required|strip_tags|is_natural');
						$this->form_validation->set_rules('sma', 'Asal SMA', 'required|strip_tags');
						$this->form_validation->set_rules('address', 'Alamat', 'required|strip_tags');
						$this->form_validation->set_rules('group', 'Group', 'required');

						if ($this->form_validation->run() == TRUE) {
							$newdata['user_name'] = $this->input->post('username', true);
							$newdata['user_password'] = password_hash($this->input->post('password', true), PASSWORD_DEFAULT);
							$newdata['user_email'] = $this->input->post('email', true);
							$newdata['user_firstname'] = $this->input->post('name', true);
							$newdata['user_grup_id'] = $this->input->post('group', true);
							$newdata['phone'] = $this->input->post('phone', true);
							$newdata['asal_sma'] = $this->input->post('sma', true);
							$newdata['address'] = $this->input->post('address', true);
							$newdata['status'] = $this->input->post('userstatus', true);

							if ($this->cbt_user_grup_model->count_by_kolom('grup_id', $newdata['user_grup_id'])->row()->hasil > 0) {
								if ($this->cbt_user_model->count_by_kolom('user_name', $newdata['user_name'])->row()->hasil > 0) {
									$status['status'] = 0;
									$status['pesan'] = 'Username sudah terpakai !';
								} else {
									$this->cbt_user_model->save($newdata);

									$status['status'] = 1;
									$status['pesan'] = 'Data Peserta berhasil disimpan ';
									redirect(base_url());
								}
							} else {
								$status['status'] = 0;
								$status['pesan'] = 'Data Group tidak tersedia, Silahkan tambah data Group';
							}
						} else {
							$status['status'] = 0;
							$status['pesan'] = [
								'username' => form_error('username'),
								'password' => form_error('password'),
								'email' => form_error('email'),
								'name' => form_error('name'),
								'phone' => form_error('phone'),
								'sma' => form_error('sma'),
								'address' => form_error('address'),
								'group' => form_error('group')
							];
						}
						$data['status'] = $status;
						$data['data'] = [
							'username' => $this->input->post('username', true),
							'password' => $this->input->post('password', true),
							'email' => $this->input->post('email', true),
							'name' => $this->input->post('name', true),
							'phone' => $this->input->post('phone', true),
							'sma' => $this->input->post('sma', true),
							'address' => $this->input->post('address', true),
							'group' => $this->input->post('group', true),
						];
					}
					$data['panlok'] = $this->group_model->getGroup();
					$this->template->display_user($this->kelompok . '/registrasi_view', 'Selamat Datang', $data);
				} else {
					$this->template->display_user('lockmobile_view', 'Exam Browser');
				}
			}
		} else {
			$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
		}
	}


	public function upload_bukti_transfer()
	{
		$this->load->library('form_validation');
		if (!isset($this->session->id)) redirect(base_url());
		else if ($this->session->status == 2) redirect(base_url() . '/waiting');
		else if ($this->session->status != 3) redirect(base_url());
		$data['url'] = $this->url;
		$data['timestamp'] = strtotime(date('Y-m-d H:i:s'));
		if ($this->agent->is_browser()) {
			if ($this->agent->browser() == 'Internet Explorer') {
				$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
			} else {
				$akses_cbt = 1;
				if ($this->agent->is_mobile()) {
					$query = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'cbt_mobile_lock_xambro', 1);
					if ($query->row()->konfigurasi_isi == "ya") {
						$agent = $this->agent->agent_string();
						if (strpos($agent, 'ZYACBT') == false) {
							$akses_cbt = 0;
						}
					}
				}
				if ($akses_cbt == 1) {
					if (isset($_POST['submit'])) {
						$config['upload_path']          = './uploads/bukti/';
						$config['allowed_types']        = 'jpg|png|jpeg';
						$config['max_size']             = 1000;
						$config['encrypt_name']			= true;
						$config['detect_mime']			= true;

						$this->load->library('upload', $config);

						if (!$this->upload->do_upload('bukti')) {
							$data['status']['pesan'] = $this->upload->display_errors();
						} else {
							$file = [
								'bukti' => $this->upload->data()['file_name'],
								'status' => 2
							];
							$id = $this->session->id;
							$this->cbt_user_model->upload_bukti_transfer($id, $file);
							$this->session->unset_userdata('status');
							$this->session->set_userdata('status', 2);
							redirect(base_url() . '/waiting');
						}
					}
					$this->template->display_user($this->kelompok . '/upload_bukti_transfer_view', 'Selamat Datang', $data);
				} else {
					$this->template->display_user('lockmobile_view', 'Exam Browser');
				}
			}
		} else {
			$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
		}
	}

	function login()
	{
		$this->load->library('form_validation');

		$this->form_validation->set_rules('username', 'Username', 'required|strip_tags');
		$this->form_validation->set_rules('password', 'Password', 'required|strip_tags');
		if ($this->form_validation->run() == TRUE) {
			$username = $this->input->post('username', TRUE);
			$password = $this->input->post('password', TRUE);

			$login = $this->access_tes->login($username, $password, $this->input->ip_address());

			if ($login == 1) {
				$status['status'] = 1;
			} else if ($login == 2) {
				$status['status'] = 2;
				$status['error'] = 'Menunggu dikonfirmasi';
			} else if ($login == 3) {
				$status['status'] = 3;
				$status['error'] = 'Selesaikan pendaftaran';
			} else if ($login == 4) {
				$status['status'] = 0;
				$status['error'] = 'Password yang dimasukkan salah';
			} else {
				$status['status'] = 0;
				$status['error'] = 'Username yang dimasukkan tidak dikenal';
			}
		} else {
			$status['status'] = 0;
			$status['error'] = validation_errors();
		}
		echo json_encode($status);
	}

	public function waiting()
	{
		$this->load->library('form_validation');
		if (!isset($this->session->id)) redirect(base_url());
		else if ($this->session->status == 3) redirect(base_url() . '/upload_bukti_transfer');
		else if ($this->session->status != 2) redirect(base_url());
		$data['url'] = $this->url;
		$data['timestamp'] = strtotime(date('Y-m-d H:i:s'));
		if ($this->agent->is_browser()) {
			if ($this->agent->browser() == 'Internet Explorer') {
				$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
			} else {
				$akses_cbt = 1;
				if ($this->agent->is_mobile()) {
					$query = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'cbt_mobile_lock_xambro', 1);
					if ($query->row()->konfigurasi_isi == "ya") {
						$agent = $this->agent->agent_string();
						if (strpos($agent, 'ZYACBT') == false) {
							$akses_cbt = 0;
						}
					}
				}
				if ($akses_cbt == 1) {
					$data['user'] = $this->cbt_user_model->get_user($this->session->id);
					$this->template->display_user($this->kelompok . '/waiting_view', 'Selamat Datang', $data);
				} else {
					$this->template->display_user('lockmobile_view', 'Exam Browser');
				}
			}
		} else {
			$this->template->display_user('blokbrowser_view', 'Browser yang didukung');
		}
	}

	function logout()
	{
		$this->access_tes->logout();
		redirect('welcome');
	}

	function check_login()
	{
		$username = $this->input->post('username', TRUE);
		$password = $this->input->post('password', TRUE);

		$login = $this->access_tes->login($username, $password, $this->input->ip_address());
		if ($login == 1) {
			return TRUE;
		} else if ($login == 2) {
			$this->form_validation->set_message('check_login', 'Password yang dimasukkan salah');
			return FALSE;
		} else {
			$this->form_validation->set_message('check_login', 'Username yang dimasukkan tidak dikenal');
			return FALSE;
		}
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
