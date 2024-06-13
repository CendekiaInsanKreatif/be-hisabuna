<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Neraca Perbandingan</title>
</head>
<style>
</style>
<body>
    <div style="display: flex; align-items: center;">
        <div style="flex: 1; text-align: center; justify-content: space-between">
            <img src="{{ $userInfo['company_logo'] }}" alt="img" style="width: 100px; height: 100px">
            <h1 style="margin: 0;">{{ $userInfo['company'] }}</h1>
            <h3 style="margin: 0;">{{ $userInfo['company_desc'] }}</h3>
        </div>
        <br>
        <br>
        <div style="flex: 1; text-align: center; justify-content: space-between">
            <h2 style="margin: 0;">Neraca Perbandingan</h2>
            <h4 style="margin: 0;">Periode {{ date('d M Y', strtotime($akhir)) }}</h4>
        </div>
        <div style="flex: 1; text-align: center; justify-content: space-between">
            <br>
            <br>
            <table class="table" style="width: 100%; border: 1px solid black;">
                <thead>
                    <tr>
                        <th>Kategori</th>
                        <th>{{ date('Y', strtotime('-1 year')) }}</th>
                        <th>{{ date('Y') }}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Aset</td>
                        <td>{{ number_format($data['SaldoAwal']['Aset'], 2) }}</td>
                        <td>{{ number_format($data['Periode']['Aset'], 2) }}</td>
                    </tr>
                    <tr>
                        <td>Kewajiban dan Modal</td>
                        <td style="text-align: center">{{ number_format($data['SaldoAwal']['KewajibanDanModal'], 2) }}</td>
                        <td style="text-align: center">{{ number_format($data['Periode']['KewajibanDanModal'], 2) }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>


{{-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Neraca Perbandingan</title>
</head>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
<body>
    <div style="text-align: center;">
        <h2>Neraca Perbandingan</h2>
    </div>
    <table>
        <thead>
            <tr>
                <th>Kategori</th>
                <th>{{ date('Y', strtotime('-1 year')) }}</th>
                <th>{{ date('Y') }}</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Aset</td>
                <td>{{ number_format($data['SaldoAwal']['Aset'], 2) }}</td>
                <td>{{ number_format($data['Periode']['Aset'], 2) }}</td>
            </tr>
            <tr>
                <td>Kewajiban dan Modal</td>
                <td>{{ number_format($data['SaldoAwal']['KewajibanDanModal'], 2) }}</td>
                <td>{{ number_format($data['Periode']['KewajibanDanModal'], 2) }}</td>
            </tr>
        </tbody>
    </table>
</body>
</html> --}}
