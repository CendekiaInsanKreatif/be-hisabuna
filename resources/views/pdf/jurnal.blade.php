<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Document</title>
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
</head>
<body>
    <div class="header">
        <img src="{{ $userInfo['company_logo'] }}" alt="img" style="width: 100px; height: 100px">
               <h1>{{ $userInfo['company'] }}</h1>
        <h3>{{ $userInfo['company_desc'] }}</h3>
    </div>
    <div class="content">
        <h2 style="text-decoration: underline">
            {{ ($data[0]->voucher == 'RV') ? 'JURNAL KAS MASUK' : (($data[0]->voucher == 'PV') ? 'JURNAL KAS KELUAR' : 'JURNAL UMUM') }}
        </h2>
        <h4>
            {{ ($data[0]->voucher == 'RV') ? 'RECEIVE VOUCHER' : (($data[0]->voucher == 'PV') ? 'PAYMENT VOUCHER' : 'JURNAL VOUCHER') }}
        </h4>
        <table>
            <thead>
                <tr>
                    <th>Keterangan Transaksi</th>
                    <th>Tanggal: {{ date("d/m/Y", strtotime($data[0]->jurnal_tgl)) }}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $data[0]->keterangan }}</td>
                    <td>Nomor Jurnal: {{ $data[0]->voucher.'-'.$data[0]->trans_no }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td>Nomor Transaksi: {{ $data[0]->trans_no }}</td>
                </tr>
            </tbody>
        </table>
        <table>
            <thead>
                <tr>
                    <th>Nomor Akun</th>
                    <th>Nama Akun</th>
                    <th>Subtotal</th>
                    <th>Debit</th>
                    <th>Kredit</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $totalDebit = 0;
                    $totalKredit = 0;
                @endphp
                @foreach($data[0]->detail as $detail)
                @php
                    $subtotal = 0;
                @endphp
                    <tr>
                        <td>{{ $detail['akun_no'] }}</td>
                        <td>{{ $detail['akun_nama'] }}</td>
                        <td></td>
                        <td>{{ $detail['child'][0]->debit ? number_format($detail['subtotal']) : 0 }}</td>
                        <td>{{ $detail['child'][0]->credit ? number_format($detail['subtotal']) : 0 }}</td>
                    </tr>
                    @foreach($detail['child'] as $child)
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $child->akun_no }}</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $child->akun_nama }}</td>
                            <td>{{ $child->credit ? number_format($child->credit) : number_format($child->debit) }}</td>
                            <td></td>
                            <td></td>
                        </tr>
                        @php
                            $subtotal += $child->debit ?? 0;
                            $subtotal -= $child->credit ?? 0;

                            $totalDebit += $child->debit ?? 0;
                            $totalKredit += $child->credit ?? 0;
                        @endphp
                    @endforeach
                @endforeach
                <tr>
                    <td colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td>Total</td>
                    <td>{{ number_format($totalDebit) }}</td>
                    <td>{{ number_format($totalKredit) }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
