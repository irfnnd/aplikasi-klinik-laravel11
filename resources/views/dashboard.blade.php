@extends('layouts.app_modern', ['title' => 'Dashboard - '])

@section('content')
    <div class="container-fluid">
        <!-- Statistik Utama -->
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
            <div class="col">
                <div class="card shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="ti ti-user text-primary" style="font-size: 3rem;"></i>
                        </div>
                        <div>
                            <h5 class="card-title fw-semibold">Total Pasien</h5>
                            <h4 class="fw-semibold mb-0">{{ $totalPatients }}</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="ti ti-calendar text-success" style="font-size: 3rem;"></i>
                        </div>
                        <div>
                            <p class=" fw-semibold mb-2">Pendaftaran Hari Ini</p>
                            <h4 class="fw-semibold mb-0">{{ $registrationsToday }}</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="ti ti-heartbeat text-warning" style="font-size: 3rem;"></i>
                        </div>
                        <div>
                            <h5 class="card-title fw-semibold">Total Poli</h5>
                            <h4 class="fw-semibold mb-0">{{ $totalPolis }}</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card shadow-sm">
                    <div class="card-body d-flex align-items-center">
                        <div class="me-3">
                            <i class="ti ti-user text-danger" style="font-size: 3rem;"></i>
                        </div>
                        <div>
                            <p class=" fw-semibold mb-2">Pengguna Sistem</p>
                            <h4 class="fw-semibold mb-0">{{ $totalUsers }}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Grafik -->
        <div class="row mt-4">
            <div class="col-lg-8">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title fw-semibold">Grafik Pendaftaran Mingguan</h5>
                        <canvas id="weeklyRegistrationsChart" height="150"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title fw-semibold">Pendaftaran Poli Minggu Ini</h5>
                        <canvas id="registrationsByPoliChart" height="150"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <!-- Aktivitas Terbaru -->
        <div class="row mt-4">
            <div class="col-lg-12">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h5 class="card-title fw-semibold">Aktivitas Terbaru</h5>
                        <div class="table-responsive">
                            <table class="table table-striped text-nowrap align-middle">
                                <thead class="text-dark fs-4">
                                    <tr>
                                        <th>#</th>
                                        <th>Nama Pasien</th>
                                        <th>Poli</th>
                                        <th>Tanggal</th>
                                        <th>Waktu</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($recentActivities as $activity)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $activity->pasien->nama }}</td>
                                            <td>{{ $activity->poli->nama }}</td>
                                            <td>{{ $activity->created_at->format('d F Y') }}</td>
                                            <td>{{ $activity->created_at->format('H:i') }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Chart Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Data untuk chart
        const poliData = {!! json_encode($poliData) !!};
        const weeklyData = @json($weeklyData);

        // Line Chart: Pendaftaran Mingguan
        const ctxLine = document.getElementById('weeklyRegistrationsChart').getContext('2d');
        new Chart(ctxLine, {
            type: 'line',
            data: {
                labels: weeklyData.labels,
                datasets: [{
                    label: 'Pendaftaran',
                    data: weeklyData.data,
                    borderColor: '#4CAF50',
                    backgroundColor: 'rgba(76, 175, 80, 0.2)',
                    tension: 0.4,
                    fill: true
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: false
                    },
                },
                scales: {
                    x: {
                        grid: {
                            display: false
                        }
                    },
                    y: {
                        grid: {
                            display: true
                        }
                    }
                }
            }
        });

        // Pie Chart: Pendaftaran Poli Minggu Ini
        const ctxPie = document.getElementById('registrationsByPoliChart').getContext('2d');
        new Chart(ctxPie, {
            type: 'pie',
            data: {
                labels: poliData.labels,
                datasets: [{
                    data: poliData.data,
                    backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#4BC0C0', '#9966FF', '#FFA726'],
                    hoverBackgroundColor: ['#FF8A80', '#64B5F6', '#FFD740', '#4DD0E1', '#B39DDB', '#FFCC80'],
                    hoverOffset: 6
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'bottom'
                    },
                    tooltip: {
                        callbacks: {
                            label: function(context) {
                                const total = context.dataset.data.reduce((a, b) => a + b, 0);
                                const value = context.raw;
                                const percentage = ((value / total) * 100).toFixed(1);
                                return `${context.label}: ${value} (${percentage}%)`;
                            }
                        }
                    }
                },
                animation: {
                    animateScale: true
                }
            }
        });
    </script>
@endsection
