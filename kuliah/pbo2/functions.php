<?php

function koneksi()
{
  return mysqli_connect('localhost', 'root', '', 'apotik');
}

function query($query)
{

  $conn = koneksi();

  $result = mysqli_query($conn, $query);

  $rows = [];

  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  return $rows;
}

function tambah($data)
{
  $conn = koneksi();

  $nama = htmlspecialchars($data['nama']);
  $alamat = htmlspecialchars($data['alamat']);
  $jekel = htmlspecialchars($data['jekel']);
  $pekerjaan = htmlspecialchars($data['pekerjaan']);

  $query = "INSERT INTO pelanggan VALUES (null,'$nama','$alamat','$jekel','$pekerjaan')";

  mysqli_query($conn, $query);
  echo mysqli_error($conn);
  return mysqli_affected_rows($conn);
}
