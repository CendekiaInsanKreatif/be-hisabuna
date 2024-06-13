<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Daftar Jurnal</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
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
        .highlight-rv {
            background-color: pink;
        }
        .highlight-pv {
            background-color: white;
        }
        .highlight-jv {
            background-color: yellow;
        }
    </style>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <div class="header">
        <img src="{{ $userInfo['company_logo'] }}" alt="img" style="width: 100px; height: 100px">
               <h1>{{ $userInfo['company'] }}</h1>
        <h3>{{ $userInfo['company_desc'] }}</h3>
    </div>
    <div class="content">
        <h1>DAFTAR JURNAL</h1>
        <h3>Periode Semua</h3>
        <table>
            <thead>
                <tr>
                    <th>No</th>
                    <th colspan="2">Transaksi</th>
                    <th>Keterangan Jurnal</th>
                    <th colspan="3">Nomor Jurnal</th>
                    <th>Jumlah</th>
                </tr>
                <tr>
                    <th></th>
                    <th>Nomor</th>
                    <th>Tanggal</th>
                    <th></th>
                    <th>RV</th>
                    <th>PV</th>
                    <th>JV</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                @php
                    $total = 0;
                @endphp

                @foreach ($data as $x => $y)
                @php
                    $class = '';
                    switch ($y->voucher) {
                        case 'RV':
                            $class = 'highlight-rv';
                            break;
                        case 'PV':
                            $class = 'highlight-pv';
                            break;
                        case 'JV':
                            $class = 'highlight-jv';
                            break;
                        default:
                            $class = '';
                            break;
                    }
                    $total += $y->subtotal;
                @endphp
                    <tr class="{{ $class }}">
                        <td>{{$x+1}}</td>
                        <td>{{$x+1}}</td>
                        <td>{{ date('d/m/Y', strtotime($y->jurnal_tgl)) }}</td>
                                               <td>{{$y->keterangan}}</td>
                        <td>{{ ($y->voucher == 'RV') ? $y->trans_no : '' }}</td>
                        <td>{{ ($y->voucher == 'PV') ? $y->trans_no : '' }}</td>
                        <td>{{ ($y->voucher == 'JV') ? $y->trans_no : '' }}</td>
                        <td>{{ number_format($y->subtotal, 0, '', '.') }}</td>
                    </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="7">Total</td>
                    <td>{{ number_format($total, 0, '', '.') }}</td>
                </tr>
            </tfoot>
        </table>
    </div>
    <div class="footer">
        <p>© {{ date('Y') }} {{ $userInfo['company'] }}. All rights reserved.</p>
    </div>
</body>
</html>

