<h3>Data Divisi PT Tech Muda 4</h3><br/>
<table class="table table-striped">
  <thead>
  <tr class="table-info">
      <th scope="col">No</th>
      <th scope="col">NIP</th>
      <th scope="col">Nama</th>
      <th scope="col">Divisi</th>
    </tr>
  </thead>
  <tbody>
  <?php
      //ciptakan object
      $model = new Divisi();
      $rs = $model->dataDivisi();
      $no = 1;
      foreach($rs as $div){
      ?>
    <tr>
      <th scope="row"><?= $no ?></th>
      <td><?= $div['nip'] ?></td>
      <td><?= $div['nama'] ?></td>
      <td><?= $div['divisi'] ?></td>
    </tr>
    <?php $no++; } ?>
  </tbody>
</table>