<!-- <div class="card shadow-sm">
    <div class="card-header bg-primary text-white">
        Daftar Buku
        <?php if ($this->ion_auth->is_admin() || $this->ion_auth->in_group('guru')): ?>
        <a href="<?= site_url('perpustakaan/add') ?>" class="btn btn-sm btn-light float-right">Tambah Buku</a>
        <?php endif; ?>
    </div>
    <div class="container">
    <div class="row">
        <div class="col-md-12">
            Konten utama
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    Daftar Buku
                    <?php if ($this->ion_auth->is_admin() || $this->ion_auth->in_group('guru')): ?>
                    <a href="<?= site_url('perpustakaan/add') ?>" class="btn btn-sm btn-light float-right">Tambah Buku</a>
                    <?php endif; ?>
                </div>
                <div class="card-body">
                    <table class="table table-bordered" id="table-buku">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Judul</th>
                                <th>Pengarang</th>
                                <th>Tahun</th>
                                <th>Deskripsi</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($buku as $index => $b): ?>
                            <tr>
                                <td><?= $index + 1 ?></td>
                                <td><?= $b->judul ?></td>
                                <td><?= $b->pengarang ?></td>
                                <td><?= $b->tahun_terbit ?></td>
                                <td><?= substr($b->deskripsi, 0, 100) ?>...</td>
                                <td>
                                    <a href="<?= site_url("perpustakaan/edit/{$b->id_buku}") ?>" class="btn btn-sm btn-warning">Edit</a>
                                    <a href="<?= site_url("perpustakaan/hapus/{$b->id_buku}") ?>" onclick="return confirm('Yakin?')" class="btn btn-sm btn-danger">Hapus</a>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div> -->

<!-- Content Wrapper. Contains page content -->
<!-- <div class="content-wrapper bg-white">
    <section class="content-header p-0 d-flex align-items-end"
             style="height: 400px; background: url('<?= base_url('') ?>')">
        <div class="container-fluid pl-0 pr-0 pb-0 pt-4" style="background-color: rgba(210, 239, 255, 0.7)">
            <div class="row m-0">
                kolom3
            </div>
        </div>
    </section>
    Main content 
    <section class="content mt-4">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                  kolom1
                </div>
                <div class="col-md-8 bg-dark">
                    kolom2
                </div>
            </div>
    </section>
</div>

<script src="<?= base_url() ?>/assets/app/js/jquery.rowspanizer.js"></script>
<script src="<?= base_url() ?>/assets/app/js/dashboard.js"></script> -->

<div class="content-wrapper">
    <section class="content-header">
        <h1>Perpustakaan Online</h1>
        <div class="card-header">
            <a href="<?= base_url('perpustakaan') ?>" class="btn btn-secondary btn-sm">
                <i class="fa fa-arrow-left"></i> Kembali
            </a>
        </div>
    </section>

    <section class="content">
        <div class="card card-outline card-teal">
            <div class="card-body">
                <a href="<?= base_url('perpustakaan/add') ?>" class="btn btn-success mb-3"><i class="fa fa-plus"></i> Tambah Buku</a>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Judul</th>
                            <th>Kategori</th>
                            <th>Tanggal Upload</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($buku as $b): ?>
                        <tr>
                            <td><?= $b->judul ?></td>
                            <td><?= $b->kategori ?></td>
                            <td><?= date('d-m-Y', strtotime($b->tanggal_upload)) ?></td>
                            <td>
                                <a href="<?= base_url("perpustakaan/view_pdf/{$b->id_buku}") ?>" class="btn btn-sm btn-info">Baca</a>
                                <?php if ($this->ion_auth->is_admin() || $this->ion_auth->in_group('guru')): ?>
                                <a href="<?= base_url("perpustakaan/edit/{$b->id_buku}") ?>" class="btn btn-sm btn-warning">Edit</a>
                                <a href="<?= base_url("perpustakaan/delete/{$b->id_buku}") ?>" onclick="return confirm('Hapus buku?')" class="btn btn-sm btn-danger">Hapus</a>
                                <?php endif; ?>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>