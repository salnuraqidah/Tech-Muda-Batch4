<h3>Materi Dilkat PT Tech Muda 4</h3><br/>
<table class="table table-striped">
  <thead>
     <tr class="table-info">
      <th scope="col">No</th>
      <th scope="col">Materi</th>
      <th scope="col">Tanggal Mulai</th>
      <th scope="col">Tanggal Akhir</th>
      <th scope="col">Alamat</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Materi();
      $rs = $model->dataMateri();
      $no = 1;
      foreach($rs as $div){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $div['nama'] ?></td>
      <td><?= $div['tgl_mulai'] ?></td>
      <td><?= $div['tgl_akhir'] ?></td>
      <td><?= $div['tempat'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>