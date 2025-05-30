<div class="content-wrapper">
<div class="card-header">
        <a href="<?= base_url('perpustakaan_siswa') ?>" class="btn btn-secondary btn-sm">
            <i class="fa fa-arrow-left"></i> Kembali
        </a>
    <section class="content-header">
        <h1><?= !empty($buku->judul) ? htmlspecialchars($buku->judul) : 'Baca Buku' ?></h1>
        </div>
    </section>

    <section class="content">
            <!-- Viewer PDF -->
            <div class="col-md-12">
                <div class="card card-outline card-teal">
                    <div class="card-header">
                        <h5 class="card-title">Perpustakaan Online</h5>
                    </div>
                    <div class="card-body">
                        <?php if (!empty($buku->file_path)): ?>
                            <iframe src="<?= base_url($buku->file_path) ?>#toolbar=0" width="100%" height="600px" style="border:none;"></iframe>
                        <?php else: ?>
                            <div class="alert alert-info text-center">
                                File PDF tidak tersedia.
                            </div>
                        <?php endif; ?>
                        <style>
                            /* Hilangkan semua tombol di toolbar */
                            #toolbarViewerLeft, #toolbarViewerRight {
                                display: none;
                            }

                            /* Atau hanya hilangkan tombol tertentu */
                            #download, #print {
                                display: none;
                            }
                        </style>
                    <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        // Sembunyikan tombol download dan print
                        document.getElementById("download").style.display = "none";
                        document.getElementById("print").style.display = "none";

                        // Optional: Hilangkan menu konteks klik kanan
                        document.addEventListener("contextmenu", function (e) {
                            e.preventDefault();
                            alert("Klik kanan tidak diizinkan");
                        }, false);
                    });
                    </script>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>