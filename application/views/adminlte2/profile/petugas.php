<div class="content-wrapper">

<h1 align="center">Input Data Nilai Siswa</h1>
<!-- <a style="margin-bottom: 10px"; href="" class="btn-primary" data-toggle="modal" data-target="#AddModal"></a>
 -->
 <button style="margin-bottom: 10px"; href="" class="btn-primary" data-toggle="modal" data-target="#AddModal">Tambah Data</button>
  <table id="datatable" class="table table table-hover table-striped">
    <thead>
      <th>ID Petugas</th>
      <th>Nama Petugas</th>
      <th>Jenis Kelamin</th>
      <th>Jabatan</th>
      <th>Username</th>
      <th>Password</th>
    </thead>
    <tbody>
      <tr>
        <td>data</td>
        <td>data</td>
        <td>data</td>
        <td>data</td>
        <td>data</td>
        <td>data</td>
      </tr>
    </tbody>
  </table>

  <div id="AddModal" class="modal fade">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-haader">
          <div class="modal-title">
            <button type="button" class="close"></button>
            <h1>Tambah Data</h1>
          </div>
        </div>

<!-- php here kikun -->

        <data class="modal-body">
          <form action="create" method="POST" accept-charset="utf-8">
            <div class="form-group">
              <?php echo $model->labels['id_admin']; ?>
              <label>ID Petugas</label>
              <input type="text" name="id_admin" placeholder="Masukan ID Petugas">
            </div>
            <div class="form-group">
              <label>Nama Petugas</label>
              <input type="text" name="nama_admin" placeholder="Masukan Nama Petugas">
            </div>
              <div class="form-group">
              <label>Jenis Kelamin</label>
              <select name="jenis_kelamin">
                <option value="-">-</option>
                <option value="Laki - Laki">Laki - Laki</option>
                <option value="Perempuan">Perempuan</option>
              </select>
            </div>
              <div class="form-group">
              <label>Jabatan</label>
              <select name="status">
                <option value="-">-</option>
                <option value="Direktur">Direktur</option>
                <option value="Skretaris1">Skretaris 1</option>
                <option value="Skretaris2">Skretaris 2</option>
                <option value="AdminTK">Admin TK</option>
                <option value="AdminSD">Admin SD</option>
                <option value="AdminSMP">Admin SMP</option>
              </select>
            </div>
            <div class="form-group">
              <label>Username</label>
              <input type="text" name="username_admin" placeholder="Masukan Username">
            </div>
            <div class="form-group">
              <label>Password</label>
              <input type="text" name="password_admin" placeholder="Masukan Password">
            </div>
            <div class="form-group">
              <input type="button" name="Batal" value="Batal" data-dismiss="modal">
              <input type="button" name="Simpan" value="Simpan">
            </div>
          </form>
        </data>
      </div>
    </div>
  </div>
  </div>