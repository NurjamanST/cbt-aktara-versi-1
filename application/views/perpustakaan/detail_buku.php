<div class="content-wrapper">
    <section class="content-header">
        <h1><?= $buku->judul ?></h1>
        <div class="card-header">
        <a href="<?= base_url('perpustakaan') ?>" class="btn btn-secondary btn-sm">
            <i class="fa fa-arrow-left"></i> Kembali
        </a>
        </div>
    </section>

    <section class="content">
        <div class="card card-outline card-teal">
            <div class="card-body">
                <p><strong>Pengarang:</strong> <?= $buku->pengarang ?></p>
                <p><strong>Penerbit:</strong> <?= $buku->penerbit ?></p>
                <p><strong>Tahun Terbit:</strong> <?= $buku->tahun_terbit ?></p>
                <hr>
                <iframe src="<?= base_url($buku->file_path) ?>" width="100%" height="800px" style="border:none;"></iframe>
            </div>
        </div>
    </section>
</div>