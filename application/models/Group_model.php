<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * ZYA CBT
 * Achmad Lutfi
 * achmdlutfi@gmail.com
 * achmadlutfi.wordpress.com
 */
class Group_model extends CI_Model
{
    public $table = 'cbt_user_grup';

    public function getGroup()
    {
        return $this->db->get($this->table)->result_array();
    }
}
