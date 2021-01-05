<?php
require 'functions.php';
$pelanggan = query("SELECT * from pelanggan");
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Daftar Apotek</title>
</head>

<body>
  <h3>Daftar Pelanggan</h3>

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
        <td><a href="">Ubah</a> | <a href="">Hapus</a></td>
      </tr>
    <?php endforeach; ?>
  </table>
</body>

</html>