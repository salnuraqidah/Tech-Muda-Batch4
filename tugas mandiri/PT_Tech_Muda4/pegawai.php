<h3>Data Pegawai PT Tech Muda 4</h3></br>
<table class="table table-striped">
  <thead>
    <tr class="table-info">
      <th scope="col">No</th>
      <th scope="col">NIP</th>
      <th scope="col">Nama</th>
      <th scope="col">Gender</th>
      <th scope="col">Alamat</th>
      <th scope="col">Divisi</th>
      <th scope="col">Jabatan</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Pegawai();
      $rs = $model->dataPegawai();
      $no = 1;
      foreach($rs as $cus){
      ?>
    <tr >
      <th scope="row"><?= $no ?></th>
      <td><?= $cus['nip'] ?></td>
      <td><?= $cus['nama'] ?></td>
      <td><?= $cus['gender'] ?></td>
      <td><?= $cus['alamat'] ?></td>
      <td><?= $cus['divisi'] ?></td>
      <td><?= $cus['jabatan'] ?></td>                 
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>
