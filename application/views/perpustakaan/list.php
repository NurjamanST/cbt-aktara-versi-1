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
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Cover</th>
                            <th>Judul</th>
                            <th>Kategori</th>
                            <th>Pengarang</th>
                            <th>Penerbit</th>
                            <th>Tahun terbit</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($buku as $b): ?>
                        <tr>
                            <td>
                                <?= !empty($b->cover_path) ? '<img src="'.base_url($b->cover_path).'" width="60">' : '–'; ?>
                            </td>
                            <td><?= $b->judul ?></td>
                            <td><?= $b->kategori ?></td>
                            <td><?= $b->pengarang ?></td>
                            <td><?= $b->penerbit ?></td>
                            <td><?= $b->tahun_terbit ?></td>
                            <td>
                                <a href="<?= base_url("perpustakaan/view_pdf/{$b->id_buku}") ?>" class="btn btn-sm btn-info">Baca</a>
                                <?php if ($this->ion_auth->is_admin() || $this->ion_auth->in_group('guru')): ?>
                                    <a href="<?= base_url("perpustakaan/edit/{$b->id_buku}") ?>" class="btn btn-sm btn-warning">Edit</a>
                                    <a href="<?= base_url("perpustakaan/delete/{$b->id_buku}") ?>" onclick="return confirm('Hapus buku?')" class="btn btn-sm btn-danger">Hapus</a>
                                    <a href="<?= base_url("perpustakaan/toggle_status/{$b->id_buku}") ?>" class="btn btn-sm <?= $b->is_active == '1' ? 'btn-secondary' : 'btn-success' ?>">
                                        <?= $b->is_active == '1' ? 'Nonaktifkan' : 'Aktifkan' ?>
                                    </a>
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