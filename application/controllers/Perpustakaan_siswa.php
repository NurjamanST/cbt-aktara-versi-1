<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Perpustakaan_siswa extends CI_Controller {

    public function __construct() {
        parent::__construct();

        // Pastikan hanya siswa yang login yang bisa mengakses
        if (!$this->ion_auth->logged_in()) redirect('auth');
        if (!$this->ion_auth->in_group('siswa')) redirect('dashboard');

        $this->load->model(['M_perpustakaan_siswa', 'Dashboard_model']);
        $this->load->helper('url');
    }

    public function index() {
        $user = $this->ion_auth->user()->row();
        $profile = $this->Dashboard_model->getProfileAdmin($user->id);
        $setting = $this->Dashboard_model->getSetting();
    
        // Ambil tahun pelajaran dan semester aktif
        $data['tp_active'] = $this->Dashboard_model->getTahunActive(); // tambahkan ini
        $data['smt_active'] = $this->Dashboard_model->getSemesterActive(); // tambahkan ini
    
        // Ambil semua kategori unik
        $data['kategori_list'] = $this->M_perpustakaan_siswa->get_all_kategori();
    
        // Filter dari input GET
        $abjad = $this->input->get('abjad');
        $kategori = $this->input->get('kategori');
    
        $data['buku'] = $this->M_perpustakaan_siswa->get_all_buku_by_filter($abjad, $kategori);
    
        $data['setting'] = $setting;
        $data['profile'] = $profile;
    
        $this->load->view('members/siswa/templates/header', $data);
        $this->load->view('members/siswa/perpustakaan/index', $data);
        $this->load->view('members/siswa/templates/footer');
    }

    public function view_pdf($id_buku) {
        $user = $this->ion_auth->user()->row();
        $profile = $this->Dashboard_model->getProfileAdmin($user->id);
        $setting = $this->Dashboard_model->getSetting();
    
        // Ambil data buku
        $data['buku'] = $this->M_perpustakaan_siswa->get_buku_by_id($id_buku);
    
        if (!$data['buku']) show_404();
    
        // Tambahkan penanganan tp_active dan smt_active
        $data['tp_active'] = $this->Dashboard_model->getTahunActive(); // ambil dari model
        $data['smt_active'] = $this->Dashboard_model->getSemesterActive();
    
        // Kirim profile dan setting
        $data['profile'] = $profile;
        $data['setting'] = $setting;
    
        // Load view
        $this->load->view('members/siswa/templates/header', $data);
        $this->load->view('members/siswa/perpustakaan/view_pdf', $data);
        $this->load->view('members/siswa/templates/footer');
    }
}