<style>
    .report-container {
        width: 80%;
        margin: 20px auto;
        padding: 15px;
        font-family: 'Times New Roman', serif;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        background-color: #fff;
    }
    .report-header {
        text-align: center;
        margin-bottom: 30px;
    }
    .report-table {
        width: 100%;
        border-collapse: collapse;
    }
    .report-table th, .report-table td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: right;
    }
    .report-table th {
        background-color: #e6e6e6;
        color: #333;
    }
    .report-table td {
        background-color: #f9f9f9;
    }
</style>
<div class="report-container">
    <div class="report-header">
        <h2>Laporan Perubahan Ekuitas</h2>
    </div>
    <table class="report-table">
        <thead>
            <tr>
                <th>Keterangan</th>
                <th>Saldo Awal</th>
                <th>Penambahan</th>
                <th>Pengurangan</th>
                <th>Saldo Akhir</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Modal Awal</td>
                <td>{{ $modal_awal }}</td>
                <td>{{ $laba_rugi }}</td>
                <td>0</td>
                <td>{{ $modal_akhir }}</td>
            </tr>
        </tbody>
    </table>
</div>
