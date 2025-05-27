<?php defined('BASEPATH') OR exit('No direct script access allowed');

class M_perpustakaan extends CI_Model {

    public function get_all_buku() {
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
}