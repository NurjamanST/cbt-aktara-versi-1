<div class="content-wrapper">
    <section class="content-header">
        <h1><?= isset($buku) ? 'Edit Buku' : 'Tambah Buku Baru' ?></h1>
        <div class="card-header">
        <a href="<?= base_url('perpustakaan') ?>" class="btn btn-secondary btn-sm">
            <i class="fa fa-arrow-left"></i> Kembali
        </a>
    </section>

    <section class="content">
        <div class="card card-outline card-teal">
            <div class="card-body">
                <?= form_open_multipart('perpustakaan/' . (isset($buku) ? 'edit/'.$buku->id_buku : 'add')) ?>
                    <div class="form-group">
                        <label>Judul Buku</label>
                        <input type="text" name="judul" class="form-control" value="<?= isset($buku) ? $buku->judul : '' ?>">
                    </div>
                    <div class="form-group">
                        <label>Deskripsi</label>
                        <textarea name="deskripsi" class="form-control"><?= isset($buku) ? $buku->deskripsi : '' ?></textarea>
                    </div>
                    <div class="form-group">
                        <label>Kategori</label>
                        <input type="text" name="kategori" class="form-control" value="<?= isset($buku) ? $buku->kategori : '' ?>">
                    </div>
                    <div class="form-group">
                        <label>File PDF</label>
                        <input type="file" name="file" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Cover Buku (Gambar)</label>
                        <input type="file" name="cover" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                <?= form_close() ?>
            </div>
        </div>
    </section>
</div>