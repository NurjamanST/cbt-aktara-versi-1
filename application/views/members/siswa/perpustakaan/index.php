

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="margin-top: -1px;">
    <!-- Main content -->
    <div class="sticky"></div>
    <section class="content overlap p-4">
        <div class="container">
        <div class="card-header">
        <a href="<?= base_url('dashboard') ?>" class="btn btn-secondary btn-sm">
            <i class="fa fa-arrow-left"></i> Kembali
        </a>
        </div>
        
                <!-- Daftar Buku -->
                <div class="col-12">
                <!-- Filter -->
                <div class="row mb-4">
                   <!-- Filter Abjad -->
                    <div class="col-md-6 col-12">
                        <strong>Filter Abjad:</strong><br>
                        <div class="input-group mb-3">
                            <select class="form-control form-control-sm" id="filter-abjad" onchange="window.location.href = this.value;">
                                <option value="<?= base_url('perpustakaan_siswa') ?>">Semua Abjad</option>
                                <?php foreach (range('A','Z') as $huruf): ?>
                                    <option value="<?= base_url("perpustakaan_siswa?abjad={$huruf}") ?>"><?= $huruf ?></option>
                                <?php endforeach; ?>
                            </select>
                            <div class="input-group-append">
                                <button class="btn btn-outline-white" type="button" onclick="resetAbjadFilter()">
                                    <i class="fas fa-sync-alt"></i> Reset
                                </button>
                            </div>
                        </div>
                    </div>
                <!-- Filter Kategori -->
                    <div class="col-md-6 col-12">
                        <strong>Filter Kategori:</strong><br>
                        <div class="input-group mb-3">
                            <select class="form-control form-control-sm" id="filter-kategori" onchange="window.location.href = this.value;">
                                <option value="<?= base_url('perpustakaan_siswa') ?>">Semua Kategori</option>
                                <?php foreach ($kategori_list as $kat): ?>
                                    <option value="<?= base_url("perpustakaan_siswa?kategori={$kat['kategori']}") ?>"><?= $kat['kategori'] ?></option>
                                <?php endforeach; ?>
                            </select>
                            <div class="input-group-append">
                                <button class="btn btn-outline-white" type="button" onclick="resetKategoriFilter()">
                                    <i class="fas fa-sync-alt"></i> Reset
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="card card-purple">
                        <div class="card-body">
                            <div class="row">
                                <?php if (!empty($buku)): ?>
                                    <?php foreach ($buku as $b): ?>
                                        <div class="col-lg-3 col-md-4 col-sm-6 col-12 mb-4">
                                            <a href="<?= base_url("perpustakaan_siswa/view_pdf/{$b->id_buku}") ?>" class="text-decoration-none text-dark">
                                                <div class="card card-outline card-teal shadow-sm h-100">
                                                    <div class="card-body text-center">
                                                        <?php if (!empty($b->cover_path)): ?>
                                                            <img src="<?= base_url($b->cover_path) ?>" width="100%" height="180" class="img-fluid rounded mb-2" style="object-fit: cover;">
                                                        <?php else: ?>
                                                            <img src="<?= base_url('assets/adminlte/dist/img/book-placeholder.png') ?>" width="100%" class="img-fluid rounded mb-2" style="max-height: 180px;">
                                                        <?php endif; ?>

                                                        <h6><?= htmlspecialchars($b->judul) ?></h6>
                                                        <small class="text-muted d-block"><?= htmlspecialchars($b->pengarang) ?></small>
                                                        <small class="text-muted"><?= htmlspecialchars($b->penerbit) ?>, <?= $b->tahun_terbit ?></small>
                                                        <small class="text-muted"><strong>Kategori:</strong> <?= htmlspecialchars($b->kategori) ?></small>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    <?php endforeach; ?>
                                <?php else: ?>
                                
                                    <div class="col-12">
                                        <div class="alert alert-info text-center">Tidak ada buku ditemukan.</div>
                                    </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>

                    <script>
                    function resetAbjadFilter() {
                        window.location.href = "<?= base_url('perpustakaan_siswa') ?>";
                    }

                    function resetKategoriFilter() {
                        window.location.href = "<?= base_url('perpustakaan_siswa') ?>";
                    }
                    </script>
            </div>
        </div>
    </section>
</div>

