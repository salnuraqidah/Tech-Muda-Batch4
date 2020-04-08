<?php
$obj1 = new Pegawai();
$ar_pegawai = $obj1->dataPegawai();
?>
<form method="POST" action="controller_gaji.php">
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Nama Pegawai</label> 
    <div class="col-8">
      <select id="nama" name="nama" class="custom-select">
        <option value="">-- Nama Pegawai --</option>
        <?php
            foreach($ar_pegawai as $peg){
          ?>
        <option value="<?= $peg['id'] ?>"><?= $peg['nama']?></option>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="gapok" class="col-4 col-form-label">Gaji Pokok</label> 
    <div class="col-8">
      <input id="gapok" name="gapok" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="tunjab" class="col-4 col-form-label">Tunjangan Jabatan</label> 
    <div class="col-8">
      <input id="tunjab" name="tunjab" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="bpjs" class="col-4 col-form-label">BPJS</label> 
    <div class="col-8">
      <input id="bpjs" name="bpjs" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="lain2" class="col-4 col-form-label">Lain-Lain</label> 
    <div class="col-8">
      <input id="lain2" name="lain2" type="text" class="form-control">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
    <button name="submit" type="submit" value="simpan" class="btn btn-primary">Simpan</button>
    </div>
  </div>
</form>