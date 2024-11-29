<?php

namespace App\Http\Controllers;
use App\Models\Daftar;
use App\Models\Pasien;
use App\Models\Poli;
use App\Models\Users;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $totalPatients = Pasien::count();
        $registrationsToday = Daftar::whereDate('created_at', now())->count();
        $totalPolis = Poli::count();
        $totalUsers = Users::count();

        $weeklyData = Daftar::selectRaw('DAYOFWEEK(created_at) as day, COUNT(*) as count')
            ->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()])
            ->groupBy('day')
            ->orderBy('day')
            ->pluck('count', 'day')
            ->toArray();

        // Ubah format data agar sesuai dengan chart
        $data = [];
        $daysOfWeek = ['Min', 'Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab'];

        foreach ($daysOfWeek as $index => $dayName) {
            $dayNumber = $index + 1; // 1 = Minggu, 2 = Senin, ...
            $data[] = isset($weeklyData[$dayNumber]) ? $weeklyData[$dayNumber] : 0;
        }

        $weeklyData = [
            'labels' => $daysOfWeek,
            'data' => $data
        ];


        $poliData = [
            'labels' => Poli::pluck('nama')->toArray(),
            'data' => Poli::withCount(['daftar' => function ($query) {
                $query->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()]);
            }])->pluck('daftar_count')->toArray()
        ];

        $recentActivities = Daftar::latest()->take(10)->get();

        return view('dashboard', compact(
            'totalPatients',
            'registrationsToday',
            'totalPolis',
            'totalUsers',
            'weeklyData',
            'poliData',
            'recentActivities'
        ));
    }

}
