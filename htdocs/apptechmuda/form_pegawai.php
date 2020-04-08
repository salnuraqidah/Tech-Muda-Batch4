<?php
$ar_gender = ['Laki-Laki'=>'L','Perempuan'=>'P']; //array scalar
$obj1 = new Jabatan();
$obj2 = new Divisi();
$ar_jabatan = $obj1->dataJabatan(); //array asosiatif
$ar_divisi = $obj2->dataDivisi();
?>

<h3>Form Pegawai</h3>
<form method="POST" action="controller_pegawai.php">
  <div class="form-group row">
    <label for="nip" class="col-4 col-form-label">NIP</label> 
    <div class="col-8">
      <input id="nip" name="nip" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Nama</label> 
    <div class="col-8">
      <input id="nama" name="nama" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-4">Gender</label> 
    <div class="col-8">
    <?php
    foreach($ar_gender as $label => $jk){  
    ?>
      <div class="form-check form-check-inline">
        <input name="gender" type="radio" class="form-check-input" value="<?= $jk ?>"> 
        <label class="form-check-label"><?= $label ?></label>
      </div>
    <?php } ?>
    </div>
  </div>
  <div class="form-group row">
    <label for="tmp" class="col-4 col-form-label">Tempat Lahir</label> 
    <div class="col-8">
      <input id="tmp" name="tmp" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="tgl" class="col-4 col-form-label">Tanggal Lahir</label> 
    <div class="col-8">
      <input id="tgl" name="tgl" type="date" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="jabatan" class="col-4 col-form-label">Jabatan</label> 
    <div class="col-8">
      <select id="jabatan" name="jabatan" class="custom-select">
        <option value="">-- Pilih Jabatan --</option>
        <?php
          foreach($ar_jabatan as $jab){
        ?>
        <option value="<?= $jab['id'] ?>"><?= $jab['nama'] ?></option>
          <?php } ?>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="divisi" class="col-4 col-form-label">Divisi</label> 
    <div class="col-8">
      <select id="divisi" name="divisi" class="custom-select">
        <option value="">-- Pilih Divisi --</option>
        <?php
          foreach($ar_divisi as $div){
        ?>
        <option value="<?= $div['id'] ?>"><?= $div['nama'] ?></option>
          <?php } ?>
      </select>
    </div>
  </div>
  <div class="form-group row">
    <label for="alamat" class="col-4 col-form-label">Alamat</label> 
    <div class="col-8">
      <textarea id="alamat" name="alamat" cols="40" rows="5" class="form-control"></textarea>
    </div>
  </div>
  <div class="form-group row">
    <label for="email" class="col-4 col-form-label">Email</label> 
    <div class="col-8">
      <input id="email" name="email" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="foto" class="col-4 col-form-label">Foto</label> 
    <div class="col-8">
      <input id="foto" name="foto" type="text" class="form-control">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" value="simpan" class="btn btn-primary">Simpan</button>
    </div>
  </div>
</form>
