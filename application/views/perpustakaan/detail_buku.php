<div class="content-wrapper">
    <section class="content-header">
        <h1><?= $buku->judul ?></h1>
        <div class="card-header">
        <a href="<?= base_url('perpustakaan') ?>" class="btn btn-secondary btn-sm">
            <i class="fa fa-arrow-left"></i> Kembali
        </a>
    </section>

    <section class="content">
        <div class="card card-outline card-teal">
            <div class="card-body">
                <p><strong>Kategori:</strong> <?= $buku->kategori ?></p>
                <hr>
                <iframe src="<?= base_url($buku->file_path) ?>" width="100%" height="800px" style="border:none;"></iframe>
            </div>
        </div>
    </section>
</div>