<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-light-teal my-shadow">
    <!-- Brand Logo -->
    <a href="<?= base_url(); ?>" class="brand-link bg-white">
        <?php $logo_app = $setting->logo_kiri == null ? base_url() . 'assets/img/favicon.png' : base_url() . $setting->logo_kiri; ?>
        <img src="<?= $logo_app ?>" alt="App Logo" class="brand-image" style="opacity: .8">
        <span class="brand-text font-weight-light"><?= $setting->nama_aplikasi ?></span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <?php $avatar = $profile->foto == null ? base_url() . 'assets/adminlte/dist/img/avatar5.png' : base_url() . $profile->foto; ?>
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel border-0 d-flex mt-3 mb-3">
            <div class="image">
                <img src="<?= $avatar ?>" class="rounded-lg elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block" style="line-height: 1">
                    <?= $profile->nama_lengkap == null ? 'NoName' : $profile->nama_lengkap ?><br>
                    <small class="text-muted">Guru</small>
                </a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2 mb-5">
            <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" id="tree-menus" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item">
                    <a href="<?= site_url('dashboard') ?>" class="nav-link">
                        <i class="fas fa-desktop"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                <li class="nav-header">DATA E-LEARNING</li>

                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="fas fa-chalkboard"></i>
                        <p>Materi & Tugas<i class="right fas fa-angle-left"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= site_url('kelasmateri/materi') ?>" class="nav-link">
                                <i class="fa fa-pencil-ruler"></i>
                                <p>Materi</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= site_url('kelasmateri/tugas') ?>" class="nav-link">
                                <i class="fa fa-drafting-compass"></i>
                                <p>Tugas</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= site_url('kelasmaterijadwal') ?>" class="nav-link">
                                <i class="fa fa-calendar-alt"></i>
                                <p>Jadwal Materi/Tugas</p>
                            </a>
                        </li>
                        <!-- 🔖 MENU PERPUSTAKAAN -->
                        <li class="nav-item">
                            <a href="<?= site_url('perpustakaan') ?>" class="nav-link">
                                <i class="fa fa-book"></i>
                                <p>Perpustakaan</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-header">PENGATURAN</li>

                <li class="nav-item">
                    <a href="<?= site_url('auth/logout') ?>" class="nav-link">
                        <i class="fas fa-sign-out-alt"></i>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>