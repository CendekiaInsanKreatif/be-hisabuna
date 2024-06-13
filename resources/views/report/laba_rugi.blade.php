<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan Laba Rugi</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .header, .footer {
            text-align: center;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
        }
        .content {
            padding: 20px;
            background-color: white;
            border: 1px solid #ddd;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="{{ $userInfo['company_logo'] }}" alt="img" style="width: 100px; height: 100px">
               <h1>{{ $userInfo['company'] }}</h1>
        <h3>{{ $userInfo['company_desc'] }}</h3>
    </div>
    <div class="content">
        <h2 style="text-align: center;">LABA RUGI</h2>
        <h4 style="text-align: center;">Periode {{ date('d/m/Y', strtotime($awal)) }} s/d {{ date('d/m/Y', strtotime($akhir)) }}</h4>
        <table class="table">
            <thead>
                <tr>
                    <th>Keterangan</th>
                    <th>Jumlah</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><b>PENDAPATAN</b></td>
                </tr>
                @foreach($data['pendapatan'] as $pendapatan)
                    <tr>
                        <td>Pendapatan Usaha</td>
                        <td>{{ $pendapatan->total_pendapatan }}</td>
                    </tr>
                @endforeach
                <tr>
                    <td><b>Total Pendapatan :</b></td>
                    <td><b>{{ $data['total_pendapatan'] }}</b></td>
                </tr>
                <tr>
                    <td><b>BEBAN</b></td>
                </tr>
                @foreach ($data['beban'] as $beban)
                <tr>
                    <td>{{ $beban->keterangan }}</td>
                    <td>{{ $beban->total_beban }}</td>
                </tr>
                @endforeach
                <tr>
                    <td><b>Total Beban :</b></td>
                    <td><b>{{ $data['total_beban'] }}</b></td>
                </tr>
                <tr>
                    <td><b>Laba (Rugi) Operasi</b></td>
                    <td><b>{{ $data['hasil'] }}</b></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>

