<div class="content-wrapper">
    <section class="content-header">
        <h1>Perpustakaan Online</h1>
        <div class="card-header">
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