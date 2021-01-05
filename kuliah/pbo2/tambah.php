<?php
require 'functions.php';

if (isset($_POST['tambah'])) {
  if (tambah($_POST) > 0) {
    echo "<script>
            alert('data berhasil ditambah');
            document.location.href = 'latihan.php';
    </script>";
  } else {
    echo "data gagal";
  }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Tambah Data</title>
</head>

<body>
  <form action="" method="POST">
    <ul>
      <li>
        <label>
          Nama :
          <input type="text" name="nama" required>
        </label>
      </li>
      <li>
        <label>
          Alamat :
          <input type="text" name="alamat" required>
        </label>
      </li>
      <li>
        <label>
          Jenis Kelamin :
          <input type="text" name="jekel" required>
        </label>
      </li>
      <li>
        <label>
          Pekerjaan :
          <input type="text" name="pekerjaan" required>
        </label>
      </li>
      <li>
        <button type="submit" name="tambah">Tambah Data</button>
      </li>
    </ul>

  </form>
</body>

</html>