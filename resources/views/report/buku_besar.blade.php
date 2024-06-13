<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Buku Besar</title>
</head>
<style>
</style>
<body>
    <div class="container" style="font-family: Arial, sans-serif; margin-top: 20px;">
        <h2 style="text-align: center; color: #333;">Buku Besar</h2>
        @foreach ($bukuBesar as $akun)
            <h3 style="background-color: #f2f2f2; padding: 10px; border-radius: 5px;">{{ $akun['akun_no'] }} - {{ $akun['akun_nama'] }}</h3>
            <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
                <thead>
                    <tr style="background-color: #4CAF50; color: white;">
                        <th style="padding: 8px; border: 1px solid #ddd;">Tanggal</th>
                        <th style="padding: 8px; border: 1px solid #ddd;">Debit</th>
                        <th style="padding: 8px; border: 1px solid #ddd;">Credit</th>
                        <th style="padding: 8px; border: 1px solid #ddd;">Saldo Akhir</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($akun['details'] as $detail)
                        <tr>
                            <td style="padding: 8px; border: 1px solid #ddd;">{{ $detail['jurnal_tgl'] }}</td>
                            <td style="padding: 8px; border: 1px solid #ddd;">{{ number_format($detail['debit'], 0, ',', '.') }}</td>
                            <td style="padding: 8px; border: 1px solid #ddd;">{{ number_format($detail['credit'], 0, ',', '.') }}</td>
                            <td style="padding: 8px; border: 1px solid #ddd;">{{ number_format($detail['saldo_akhir'], 0, ',', '.') }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        @endforeach
    </div>
</body>
</html>
