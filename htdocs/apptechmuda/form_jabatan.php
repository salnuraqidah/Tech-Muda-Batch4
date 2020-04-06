<h3>Form Jabatan</h3>
<form method="POST" action="controller_jabatan.php">
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Nama Jabatan</label> 
    <div class="col-8">
      <input id="nama" name="nama"  type="text" class="form-control" required="required">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="proses" value="simpan" type="submit" class="btn btn-primary">Simpan</button>
    </div>
  </div>
</form>