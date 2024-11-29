<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ $title ?? '' }} {{ config('app.name') }} </title>
    <link rel="shortcut icon" type="image/png" href="/modern/src/assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="/modern/src/assets/css/styles.min.css" />
    <link href="/modern/src/assets/select2/dist/js/select2.min.css" rel="stylesheet" />
</head>

<body>
    <!--  Body Wrapper -->
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed">
        <!-- Sidebar Start -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div>
                <div class="brand-logo d-flex align-items-center justify-content-between">
                    <a href="#" class="logo d-flex align-items-center text-nowrap">
                        <img src="/modern/src/assets/images/logos/favicon.png" width="35" alt="Logo" class="me-2" />
                        <span class="fw-bold fs-6">Klinik Permata</span>
                    </a>
                    <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
                        <i class="ti ti-x fs-5"></i>
                    </div>
                </div>
                                <!-- Sidebar navigation-->
                <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
                    <ul id="sidebarnav">
                        <li class="nav-small-cap">
                            <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                            <span class="hide-menu">Home</span>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/dashboard" aria-expanded="false">
                                <span>
                                    <i class="ti ti-layout-dashboard"></i>
                                </span>
                                <span class="hide-menu">Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/pasien" aria-expanded="false">
                                <span>
                                    <i class="ti ti-users"></i>
                                </span>
                                <span class="hide-menu">Pasien</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link"
                                href="/laporan-pasien/create" aria-expanded="false">
                                <span>
                                    <i class="ti">&#xf021</i>
                                </span>
                                <span class="hide-menu">Laporan Data Pasien</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/poli" aria-expanded="false">
                                <span>
                                    <i class="ti ti-heartbeat"></i>
                                </span>
                                <span class="hide-menu">Poli </span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/pasien/create" aria-expanded="false">
                                <span>
                                    <i class="ti ti-user-plus"></i>
                                </span>
                                <span class="hide-menu">Tambah Pasien</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/daftar" aria-expanded="false">
                                <span>
                                    <i class="ti ti-clipboard-text"></i>
                                </span>
                                <span class="hide-menu">Pendaftaran</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link"
                                href="/laporan-daftar/create" aria-expanded="false">
                                <span>
                                    <i class="ti">&#xf021</i>
                                </span>
                                <span class="hide-menu">Laporan Data Pendaftaran</span>
                            </a>
                        </li>
                        <li class="nav-small-cap">
                            <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
                            <span class="hide-menu">AUTH</span>
                        </li>
                        @if(\Auth::user()->role == 'admin')
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/users" aria-expanded="false">
                                <span>
                                    <i class="ti ti-users"></i>
                                </span>
                                <span class="hide-menu">Users</span>
                            </a>
                        </li>
                        @endif
                        <li class="sidebar-item">
                            <a class="sidebar-link" href="/logout" aria-expanded="false">
                                <span>
                                    <i class="ti ti-logout"></i>
                                </span>
                                <span class="hide-menu">Logout</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!--  Sidebar End -->
        <!--  Main wrapper -->
        <div class="body-wrapper">
            <!--  Header Start -->
            <header class="app-header">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <ul class="navbar-nav">
                        <li class="nav-item d-block d-xl-none">
                            <a class="nav-link sidebartoggler nav-icon-hover" id="headerCollapse"
                                href="javascript:void(0)">
                                <i class="ti ti-menu-2"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-icon-hover" href="javascript:void(0)">
                                <i class="ti ti-bell-ringing"></i>
                                <div class="notification bg-primary rounded-circle"></div>
                            </a>
                        </li>
                    </ul>
                    <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
                        <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
                            <li class="nav-item dropdown">
                                <a class="nav-link nav-icon-hover d-flex align-items-center" href="javascript:void(0)"
                                    id="drop2" data-bs-toggle="dropdown" aria-expanded="false">
                                    <p class="mb-0 fs-3 fw-semibold me-3">
                                        {{ Auth::user()->name }}
                                    </p>
                                    <img src="/modern/src/assets/images/profile/user-1.jpg" alt="User Profile"
                                        width="35" height="35" class="rounded-circle">
                                </a>

                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up"
                                    aria-labelledby="drop2">
                                    <div class="message-body">
                                        <a href="javascript:void(0)"
                                            class="d-flex align-items-center gap-2 dropdown-item">
                                            <i class="ti ti-user fs-6"></i>
                                            <p class="mb-0 fs-3">My Profile</p>
                                        </a>
                                        <a href="javascript:void(0)"
                                            class="d-flex align-items-center gap-2 dropdown-item">
                                            <i class="ti ti-mail fs-6"></i>
                                            <p class="mb-0 fs-3">My Account</p>
                                        </a>
                                        <a href="javascript:void(0)"
                                            class="d-flex align-items-center gap-2 dropdown-item">
                                            <i class="ti ti-list-check fs-6"></i>
                                            <p class="mb-0 fs-3">My Task</p>
                                        </a>
                                        <a class="d-flex align-items-center gap-2 dropdown-item" href="/logout">
                                            <i class="ti ti-logout fs-6"></i>
                                            <p class="mb-0 fs-3">Logout</p>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!--  Header End -->
            <div class="container-fluid">
                @include('flash::message')
                @yield('content')
            </div>
        </div>
    </div>
    <script src="/modern/src/assets/libs/jquery/dist/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="/modern/src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/modern/src/assets/js/sidebarmenu.js"></script>
    <script src="/modern/src/assets/js/app.min.js"></script>
    <script src="/modern/src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
    <script src="/modern/src/assets/libs/simplebar/dist/simplebar.js"></script>
    <script src="/modern/src/assets/js/dashboard.js"></script>
    <script>
        $(document).ready(function() {
            $('.select2').select2();
        });
    </script>
</body>

</html>
