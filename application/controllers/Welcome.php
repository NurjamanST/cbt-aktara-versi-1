<?php

// Memastikan bahwa konstanta BASEPATH sudah didefinisikan, jika tidak, hentikan eksekusi dengan pesan error.
defined("BASEPATH") or exit("No direct script access allowed");

// Mendefinisikan kelas `Welcome` yang merupakan bagian dari framework CodeIgniter.
class Welcome extends CI_Controller {
    public function index() {
        // Memuat tampilan (view) dengan nama `welcome_message`
        $this->load->view("welcome_message");
    }
}
