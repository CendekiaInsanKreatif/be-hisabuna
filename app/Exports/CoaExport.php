<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\WithMultipleSheets;
use Maatwebsite\Excel\Concerns\WithTitle;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithCustomStartCell;
use Illuminate\Support\Facades\DB;

class CoaExport implements WithMultipleSheets, WithTitle, FromQuery, WithHeadings, WithMapping, WithEvents, ShouldAutoSize, WithCustomStartCell
{
    public function query()
    {
        return DB::table('coas')->select('*')->orderBy('akun_no', 'asc');
    }

    public function headings(): array
    {
        return [
            'Akun No',
            'Akun Nama',
            'Saldo Awal',
        ];
    }

    public function map($row): array
    {
        return [
            $row->akun_no,
            $row->akun_nama,
            $row->saldo_awal_debit,
        ];
    }

    public function title(): string
    {
        return 'Coa Data';
    }

    public function startCell(): string
    {
        return 'A2'; // Mulai dari sel A2 jika Anda memiliki header template kustom
    }

    public function registerEvents(): array
    {
        return [
            // \Maatwebsite\Excel\Events\AfterSheet::class => function(\Maatwebsite\Excel\Events\AfterSheet $event) {
            //     $drawing = new \PhpOffice\PhpSpreadsheet\Worksheet\Drawing();
            //     $drawing->setName('Logo');
            //     $drawing->setDescription('Ini adalah logo.');
            //     $drawing->setHeight(90);
            //     $drawing->setCoordinates('A1');
            //     $drawing->setWorksheet($event->sheet->getDelegate());
            // },
        ];
    }

    public function sheets(): array
    {
        $sheets = [];
        $sheets[] = $this;
        return $sheets;
    }
}
