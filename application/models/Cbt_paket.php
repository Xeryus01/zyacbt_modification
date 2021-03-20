<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * ZYA CBT
 * Achmad Lutfi
 * achmdlutfi@gmail.com
 * achmadlutfi.wordpress.com
 */
class Cbt_paket extends CI_Model
{
    public $table = 'cbt_paket';

    function __construct()
    {
        parent::__construct();
    }

    function save($data)
    {
        $this->db->insert($this->table, $data);
    }

    function delete($topik_id, $paket_id)
    {
        $this->db->where('topik_id', $topik_id)
            ->where('paket_id', $paket_id)
            ->delete($this->table);
    }

    function update($kolom, $isi, $data)
    {
        $this->db->where($kolom, $isi)
            ->update($this->table, $data);
    }

    function count_all()
    {
        $this->db->select('COUNT(*) AS hasil')
            ->from($this->table);
        return $this->db->get();
    }

    function get_by_kolom($kolom, $isi)
    {
        $this->db->where($kolom, $isi)
            ->from($this->table);
        return $this->db->get();
    }

    function get_all()
    {
        $this->db->from($this->table)
            ->order_by('topik_id', 'ASC');
        return $this->db->get();
    }

    function get_datatable($start, $rows, $kolom, $isi, $modul)
    {
        $this->db->where('(' . $kolom . ' LIKE "%' . $isi . '%" AND topik_modul_id=' . $modul . ')')
            ->from($this->table)
            ->order_by($kolom, 'ASC')
            ->limit($rows, $start);
        return $this->db->get();
    }

    function get_datatable_count($kolom, $isi, $modul)
    {
        $this->db->select('COUNT(*) AS hasil')
            ->where('(' . $kolom . ' LIKE "%' . $isi . '%" AND topik_modul_id=' . $modul . ')')
            ->from($this->table);
        return $this->db->get();
    }
}
