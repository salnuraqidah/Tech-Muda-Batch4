<?php
$ar_judul = ['No','Nama Divisi'];
?>
<a href="index.php?hal=form_divisi" type="button" class="btn btn-primary">Input Data</a>
<br/>
<h3>Data Divisi</h3>
<table class="table table-sm table-dark">
  <thead>
    <tr>
    <?php
    foreach($ar_judul as $jdl){
    ?>
      <th scope="col"><?= $jdl ?></th>
      <?php } ?>
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
          <td><?= $div['nama'] ?></td>
        </tr>
<?php $no++; } ?>
  </tbody>
</table>