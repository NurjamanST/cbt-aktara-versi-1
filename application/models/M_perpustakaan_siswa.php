<?php defined('BASEPATH') OR exit('No direct script access allowed');

class M_perpustakaan_siswa extends CI_Model {

    public function get_all_kategori() {
        $this->db->distinct();
        $this->db->select('kategori');
        return $this->db->get('buku')->result_array();
    }

    public function get_all_buku_by_filter($abjad = null, $kategori = null) {
        if ($abjad) {
            $this->db->like("judul", $abjad, 'after', false); // A%, B%
        }
        if ($kategori) {
            $this->db->where('kategori', $kategori);
        }
        $this->db->where('is_active', '1'); // hanya buku aktif
        return $this->db->get('buku')->result();
    }

    public function get_buku_by_id($id_buku) {
        $this->db->where('is_active', '1');
        return $this->db->get_where('buku', ['id_buku' => $id_buku])->row();
    }

    public function getSiswaById($id_user) {
    return $this->db->get_where('siswa', ['id_user' => $id_user])->row();
}
}