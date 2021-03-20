<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Peserta_kartu extends Member_Controller
{
	private $kode_menu = 'peserta-kartu';
	private $kelompok = 'peserta';
	private $url = 'manager/peserta_kartu';

	function __construct()
	{
		parent::__construct();
		$this->load->model('cbt_user_grup_model');
		$this->load->model('cbt_user_model');
		$this->load->model('cbt_konfigurasi_model');
		$this->load->model('cbt_tesgrup_model');
		$this->load->model('cbt_tes_model');
		$this->load->model('cbt_tes_token_model');

		parent::cek_akses($this->kode_menu);
	}

	public function index()
	{
		$data['kode_menu'] = $this->kode_menu;
		$data['url'] = $this->url;

		$query_group = $this->cbt_user_grup_model->get_group();

		if ($query_group->num_rows() > 0) {
			$select = '';
			$query_group = $query_group->result();
			foreach ($query_group as $temp) {
				$select = $select . '<option value="' . $temp->grup_id . '">' . $temp->grup_nama . '</option>';
			}
		} else {
			$select = '<option value="0">KOSONG</option>';
		}
		$data['select_group'] = $select;

		$this->template->display_admin($this->kelompok . '/peserta_kartu_view', 'Cetak Kartu Peserta', $data);
	}

	/**
	 * Cetak kartu hanya untuk satu grup saja
	 */
	public function cetak_kartu($grup_id = null)
	{
		$data['kode_menu'] = $this->kode_menu;

		$kartu = '<h3>Data Peserta Kosong</h3>';
		if (!empty($grup_id)) {
			$query_user = $this->cbt_user_model->get_by_kolom('user_grup_id', $grup_id);
			if ($query_user->num_rows() > 0) {
				$kartu = '';
				$query_user = $query_user->result();

				$tes_id = $this->cbt_tesgrup_model->get_by_kolom_limit('tstgrp_grup_id', $grup_id, 1)->row()->tstgrp_tes_id;
				$start = $this->cbt_tes_model->get_by_kolom_limit('tes_id', $tes_id, 1)->row()->tes_begin_time;

				// $query_konfig = $this->cbt_konfigurasi_model->get_by_kolom_limit('konfigurasi_kode', 'cbt_nama', 'cbt_regional', 'cbt_tanggal', 1);
				// $cbt_nama = 'TRY OUT NASIONAL STIS';
				// $cbt_regional = 'REGIONAL PUSAT';
				$time = explode(" ", $start);
				$cbt_tanggal = $time[0];
				// if ($query_konfig->num_rows() > 0) {
				// 	$cbt_nama = $query_konfig->row()->konfigurasi_isi;
				// 	$cbt_regional = $query_konfig->row()->konfigurasi_isi;
				// 	$cbt_tanggal = $query_konfig->row()->konfigurasi_isi;
				// }

				$query_group = $this->cbt_user_grup_model->get_by_kolom_limit('grup_id', $grup_id, 1);
				if ($query_group->num_rows() > 0) {
					$group = $query_group->row()->grup_nama;
				}

				foreach ($query_user as $temp) {
					$kartu = $kartu . '
						<div class="kartu">

						<div style="margin-left: 20px">
							<div class="header">' . $group . '</div>
						</tr>
						</div>

							<hr />
							<table>
								<tr>
									<td width="95px">Nama</td>
									<td width="5px">:</td>
									<td width="210px">' . $temp->user_firstname . '</td>
									
								</tr>
								<tr>
									<td>Username</td>
									<td>:</td>
									<td>' . $temp->user_name . '</td>
								</tr>
								<tr>
									<td>Tanggal</td>
									<td>:</td>
									<td>' . $cbt_tanggal . '</td>
								</tr>
								<tr>
									<td>Waktu Pengerjaan</td>
									<td>:</td>
									<td>90 menit</td>
								</tr>
								<tr>
								<td></td>
								</tr>
							</table>
							<h4>Pastikan siapkan perangkat dan sinyal yang memadai</h4> 
							<div style="text-align: center">Selamat Mengerjakan, Jangan Lupa Berdoa Sebelum Memulai.</div>

						</div>
					';
				}
			}
		}

		$data['kartu'] = $kartu;

		$this->load->view($this->kelompok . '/peserta_cetak_kartu_view', $data);
	}
}
