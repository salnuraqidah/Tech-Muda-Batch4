<div class="row">
		<div class="col-md-8">
        	<?php
			//tangkap request dari url/menu
			$hal = $_GET['hal'];
			if(!empty($hal)){
				include_once $hal.'.php';
			}
			else{
				include_once 'home.php';
			}
			?>
		</div>