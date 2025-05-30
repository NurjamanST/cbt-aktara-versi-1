<div class="content-wrapper">
    <section class="content-header">
        <h1>Perpustakaan Online</h1>
        
    </section>

    <section class="content">
        <div class="card card-outline card-teal">
            <div class="card-body">
                <?php if ($this->ion_auth->is_admin() || $this->ion_auth->in_group('guru')): ?>
                    <a href="<?= base_url('perpustakaan/add') ?>" class="btn btn-success mb-3"><i class="fa fa-plus"></i> Tambah Buku</a>
                <?php endif; ?>

                <!-- Daftar Buku -->
                <div class="row" id="buku-list">
                    <?php foreach ($buku as $b): ?>
                        <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
                            <div class="card h-100 shadow-sm">
                                <!-- Cover Buku -->
                                <div class="position-relative text-center p-2 bg-light">
                                    <?php if (!empty($b->cover_path)): ?>
                                        <img src="<?= base_url($b->cover_path) ?>" class="img-fluid" style="max-height: 180px; object-fit: cover;">
                                    <?php else: ?>
                                        <img src="<?= base_url('assets/adminlte/dist/img/book-placeholder.png') ?>" class="img-fluid" style="max-height: 180px;" alt="Cover Buku">
                                    <?php endif; ?>
                                </div>

                                <!-- Detail Buku -->
                                <div class="card-body">
                                    <h6><?= htmlspecialchars($b->judul) ?></h6>
                                    <small class="text-muted d-block">Pengarang: <?= htmlspecialchars($b->pengarang ?: '-') ?></small>
                                    <small class="text-muted d-block">Penerbit: <?= htmlspecialchars($b->penerbit ?: '-') ?></small>
                                    <small class="text-muted d-block">Tahun: <?= $b->tahun_terbit ?: '-' ?></small>
                                    <small class="text-muted d-block">Kategori: <?= htmlspecialchars($b->kategori ?: '-') ?></small>
                                </div>

                                <!-- Aksi -->
                                <div class="card-footer d-flex justify-content-between">
                                    <a href="<?= base_url("perpustakaan/view_pdf/{$b->id_buku}") ?>" class="btn btn-sm btn-info w-100 mr-1">Baca</a>

                                    <?php if ($this->ion_auth->is_admin() || $this->ion_auth->in_group('guru')): ?>
                                        <div class="dropdown ml-1">
                                            <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                                <i class="fas fa-cog"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="<?= base_url("perpustakaan/edit/{$b->id_buku}") ?>">Edit</a>
                                                <a class="dropdown-item" href="<?= base_url("perpustakaan/delete/{$b->id_buku}") ?>" onclick="return confirm('Hapus buku?')">Hapus</a>
                                                <a class="dropdown-item" href="<?= base_url("perpustakaan/toggle_status/{$b->id_buku}") ?>">
                                                    <?= $b->is_active == '1' ? 'Nonaktifkan' : 'Aktifkan' ?>
                                                </a>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>

                    <?php if (empty($buku)): ?>
                        <div class="col-12">
                            <div class="alert alert-info text-center">Tidak ada buku tersedia.</div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </section>
</div>