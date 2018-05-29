<!DOCTYPE html>
<html>
<head>
	<title>NILAI SISWA</title>
</head>

<body>

	<div id="container">
		<h1>Silakan isi data nilai di bawah ini !!!</h1>
		<form action="<?php echo base_url('superadmin/Nilai/insert') ?>" method="POST">
			<input type="text" name="Matematika" placeholder="Nilai Matematika">
			<input type="text" name="BahasaInggris" placeholder="Nilai Bahasa Inggris">
			<input type="text" name="IPA" placeholder="Nilai IPA"> 
			<input type="text" name="Psikologi" placeholder="NIlai Psikologi"> 
			<input type="submit" name="Simpan" value="Simpan Data">
		</form>
	</div>


<a href="http://localhost/kuliah/AdminCI/index.php/superadmin/profile">Back</a>
</body>
</html>