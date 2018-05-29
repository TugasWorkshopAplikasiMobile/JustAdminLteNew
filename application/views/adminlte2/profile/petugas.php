<!DOCTYPE html>
<html>
<head>
  <title>NILAI SISWA</title>
</head>

<body>

  <div id="container">
    <h1>Silakan isi data nilai di bawah ini !!!</h1>
    <form action="<?php echo base_url('superadmin/PetugasData/insert') ?>" method="POST">
      <input type="text" name="id_admin" placeholder="ID Petugas">
      <input type="text" name="nama_admin" placeholder="Nama Petugas">
      <input type="dropdown" name="jenis_kelamin" placeholder="Jenis Kelamin"> 
      <input type="text" name="status" placeholder="Jabatan"> 
      <input type="text" name="username_admin" placeholder="Username"> 
      <input type="text" name="password_admin" placeholder="Password"> 
      <input type="submit" name="Simpan" value="Simpan Data">
    </form>
  </div>


<a href="http://localhost/kuliah/AdminCI/index.php/superadmin/profile">Back</a>
</body>
</html>