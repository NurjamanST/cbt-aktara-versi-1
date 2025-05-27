<?php defined('BASEPATH') OR exit('No direct script access allowed');

class M_perpustakaan extends CI_Model {

    public function get_all_buku($only_active = FALSE) {
        if ($only_active) {
            $this->db->where('is_active', '1');
        }
        return $this->db->get('buku')->result();
    }

    public function get_buku_by_id($id_buku) {
        return $this->db->get_where('buku', ['id_buku' => $id_buku])->row();
    }

    public function insert_buku($data) {
        return $this->db->insert('buku', $data);
    }

    public function update_buku($id_buku, $data) {
        $this->db->where('id_buku', $id_buku);
        return $this->db->update('buku', $data);
    }

    public function delete_buku($id_buku) {
        return $this->db->delete('buku', ['id_buku' => $id_buku]);
    }

    public function toggle_status($id_buku) {
        $buku = $this->get_buku_by_id($id_buku);
        $new_status = $buku->is_active == '1' ? '0' : '1';
        $this->db->where('id_buku', $id_buku);
        return $this->db->update('buku', ['is_active' => $new_status]);
    }
}