<h3>Data Gaji PT Tech Muda 4</h3><br/>
<table class="table table-striped">
  <thead>
  <tr class="table-info">
      <th scope="col">No</th>
      <th scope="col">Divisi</th>
      <th scope="col">Jabatan</th>
      <th scope="col">Gaji Pokok</th>
      <th scope="col">Tunjangan Jabatan</th>      
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Gaji();
      $rs = $model->dataGaji();
      $no = 1;
      foreach($rs as $gaji){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $gaji['divisi'] ?></td>
      <td><?= $gaji['jabatan'] ?></td>
      <td><?= $gaji['gaji_pokok'] ?></td>
      <td><?= $gaji['tunjangan_jabatan'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>