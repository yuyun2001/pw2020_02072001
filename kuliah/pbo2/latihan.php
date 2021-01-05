<?php
require 'functions.php';
$pelanggan = query("SELECT * from pelanggan");
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="assets/bootstrap-4.1.3-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/fontawesome-free-5.15.1-web/fontawesome-free-5.15.1-web/css/fontawesome.min.css">
  <link rel="stylesheet" href="assets/w3.css">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Daftar Apotek</title>
</head>

<body>
  <h3>Daftar Pelanggan</h3>

  <a href="tambah.php">Tambah Data</a>
  <br><br>

  <table border="1" cellpadding="10" cellspacing="0">
    <tr>
      <th>#</th>
      <th>Nama</th>
      <th>Alamat</th>
      <th>Jenis Kelamin </th>
      <th>Pekerjaan</th>
      <th>Aksi</th>
    </tr>
    <?php foreach ($pelanggan as $p) : ?>
      <tr>
        <td>1</td>
        <td><?= $p['nama']; ?></td>
        <td><?= $p['alamat']; ?></td>
        <td><?= $p['jekel']; ?></td>
        <td><?= $p['pekerjaan']; ?></td>
        <td><a href="">Ubah</a> | <a href="hapus.php">Hapus</a></td>
      </tr>
    <?php endforeach; ?>
  </table>
</body>

</html>