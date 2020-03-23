<h3>Data Jabatan PT Tech Muda 4</h3><br/>
<table class="table table-striped">
  <thead>
  <tr class="table-info">
      <th scope="col">No</th>
      <th scope="col">NIP</th>
      <th scope="col">Nama</th>
      <th scope="col">Jabatan</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Jabatan();
      $rs = $model->dataJabatan();
      $no = 1;
      foreach($rs as $jab){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $jab['nip'] ?></td>
      <td><?= $jab['nama'] ?></td>
      <td><?= $jab['jabatan'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>