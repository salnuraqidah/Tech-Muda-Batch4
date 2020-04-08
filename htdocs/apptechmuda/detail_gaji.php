<?php
//tangkap request id di url
$id = $_GET['id'];
$model = new Gaji();
$gaji = $model->detailGaji([$id]);
?>

<div class="card" style="width: 20rem;">    
  <div class="card-body">
    <h5 class="card-title"><?= $gaji['nama'] ?></h5>
    <p class="card-text">
        Divisi : <?= $gaji['divisi'] ?> <br/>
        Jabatan : <?= $gaji['jabatan'] ?> <br/>
        Gaji Pokok :  <?= $gaji['gapok'] ?> <br/>
        Tunjangan Jabatan :  <?= $gaji['tunjab'] ?> <br/>
        BPJS :  <?= $gaji['bpjs'] ?> <br/>
        Lain-Lain : <?= $gaji['lain2'] ?> <br/>
    </p>
    <a href="index.php?hal=gaji" class="btn btn-primary">Go back</a>
  </div>
</div>
