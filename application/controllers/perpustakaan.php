<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Perpustakaan extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if (!$this->ion_auth->logged_in()) redirect('auth');
        $this->load->model(['M_perpustakaan', 'Dashboard_model']);
        $this->load->library(['upload', 'form_validation']);
    }

    public function index() {
        $user = $this->ion_auth->user()->row();
        $profile = $this->Dashboard_model->getProfileAdmin($user->id);
        $setting = $this->Dashboard_model->getSetting();

        // Jika siswa, hanya ambil buku aktif
        $only_active = !$this->ion_auth->in_group(['guru', 'admin']) ? true : false;
        $data['buku'] = $this->M_perpustakaan->get_all_buku($only_active);
        $data['setting'] = $setting;
        $data['profile'] = $profile;

        $this->load->view('_templates/dashboard/_header', $data);
        $this->load->view('perpustakaan/list');
        $this->load->view('_templates/dashboard/_footer');
    }

    public function add() {
        $user = $this->ion_auth->user()->row();
        $profile = $this->Dashboard_model->getProfileAdmin($user->id);
        $setting = $this->Dashboard_model->getSetting();
        $data['setting'] = $setting;
        $data['profile'] = $profile;

        if ($this->input->post()) {
            $this->_save_buku();
        } else {
            $this->load->view('_templates/dashboard/_header', $data);
            $this->load->view('perpustakaan/form', $data);
            $this->load->view('_templates/dashboard/_footer');
        }
    }

    public function edit($id_buku) {
        $data['buku'] = $this->M_perpustakaan->get_buku_by_id($id_buku);

        $user = $this->ion_auth->user()->row();
        $profile = $this->Dashboard_model->getProfileAdmin($user->id);
        $setting = $this->Dashboard_model->getSetting();

        $data['setting'] = $setting;
        $data['profile'] = $profile;

        if ($this->input->post()) {
            $this->_save_buku($id_buku);
        } else {
            $this->load->view('_templates/dashboard/_header', $data);
            $this->load->view('perpustakaan/form', $data);
            $this->load->view('_templates/dashboard/_footer');
        }
    }

    public function delete($id_buku) {
        $this->M_perpustakaan->delete_buku($id_buku);
        redirect('perpustakaan');
    }

    public function view_pdf($id_buku) {
        $data['buku'] = $this->M_perpustakaan->get_buku_by_id($id_buku);
        $data['setting'] = $this->Dashboard_model->getSetting();
        $data['profile'] = $this->Dashboard_model->getProfileAdmin($this->session->userdata('user_id'));

        $this->load->view('_templates/dashboard/_header', $data);
        $this->load->view('perpustakaan/detail_buku', $data);
        $this->load->view('_templates/dashboard/_footer');
    }

    public function toggle_status($id_buku) {
        $this->M_perpustakaan->toggle_status($id_buku);
        redirect('perpustakaan');
    }

    private function _save_buku($id_buku = null) {
        $this->form_validation->set_rules('judul', 'Judul Buku', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('pengarang', 'Pengarang', 'required');
        $this->form_validation->set_rules('penerbit', 'Penerbit', 'required');
        $this->form_validation->set_rules('tahun_terbit', 'Tahun Terbit', 'required|numeric|min_length[4]|max_length[4]');

        if ($this->form_validation->run() === FALSE) {
            $data['setting'] = $this->Dashboard_model->getSetting();
            $data['profile'] = $this->Dashboard_model->getProfileAdmin($this->session->userdata('user_id'));
            $this->load->view('_templates/dashboard/_header', $data);
            $this->load->view('perpustakaan/form');
            $this->load->view('_templates/dashboard/_footer');
        } else {
            $config['upload_path'] = './uploads/buku/';
            $config['allowed_types'] = 'pdf';
            $config['max_size'] = 5120;
            $this->upload->initialize($config);

            $file_data = [];
            if ($this->upload->do_upload('file')) {
                $file_data = $this->upload->data();
                $file_path = 'uploads/buku/' . $file_data['file_name'];
            }

            $cover_path = '';
            $config_cover['upload_path'] = './uploads/covers/';
            $config_cover['allowed_types'] = 'jpg|jpeg|png';
            $config_cover['max_size'] = 2048;
            $this->upload->initialize($config_cover);

            if ($this->upload->do_upload('cover')) {
                $cover_data = $this->upload->data();
                $cover_path = 'uploads/covers/' . $cover_data['file_name'];
            }

            $is_active = $this->input->post('is_active') ? '1' : '0';

            $data = [
                'judul'         => $this->input->post('judul'),
                'deskripsi'     => $this->input->post('deskripsi'),
                'kategori'      => $this->input->post('kategori'),
                'pengarang'     => $this->input->post('pengarang'),
                'penerbit'      => $this->input->post('penerbit'),
                'tahun_terbit'  => $this->input->post('tahun_terbit'),
                'file_path'     => isset($file_path) ? $file_path : '',
                'cover_path'    => isset($cover_path) ? $cover_path : '',
                'is_active'     => $is_active

            ];

            if (!empty($file_path)) $data['file_path'] = $file_path;
            if (!empty($cover_path)) $data['cover_path'] = $cover_path;

            if ($id_buku) {
                $this->M_perpustakaan->update_buku($id_buku, $data);
            } else {
                $this->M_perpustakaan->insert_buku($data);
            }

            redirect('perpustakaan');
        }
    }
}