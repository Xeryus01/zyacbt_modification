<div class="container">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php if (!empty($site_name)) {
                echo $site_name;
            } ?>
            <small><?php if (!empty($cbt_keterangan)) {
                        echo $cbt_keterangan;
                    } else {
                        echo 'Ujian Online Berbasis Komputer';
                    } ?></small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Selamat Datang</li>
        </ol>
    </section>

    <section class="content">	
	<div class="row">
	    <div class="col-sm-4">
            <div class="panel" style="background-color:rgba(39.00000147521496, 174.00000482797623, 96.00000187754631, 1);">
                <div class="panel-heading">
                    <div class="panel-title">
                        <strong class="text-center">
                            <p style="color:#F8F8FF; font-size: 20px; position: relative;top:8px">Informasi !</p>
                        </strong>
						<div>
						<p style="color:#F8F8FF;"> Apabila ada data yang salah segera hubungi admin </p>
						</div>
						<div >
                    <?php $text = "hallo mimin botak namaku " . $user[0]['user_firstname'] . " tolong dikonfirmasi dong aku, aku udah transfer loh"; ?>
                        <a style="color:#F8F8FF;" href="https://api.whatsapp.com/send?phone=6281332311261&text=<?= $text; ?>" target="_blank"><img src="wa.png" class="rounded" width="30px" height="30px" > WhatsApp Admin</a>
					    </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
			<div class="panel panel-primary" >
				<div class="panel-heading">
                    <div class="panel-title">
						<strong class="text-center">
							<p style="font-size: 20px; position: relative;top:8px">Selamat Datang, <?= $user[0]['user_firstname']; ?></p>
						</strong>
					</div>
                </div>
			
			    <form action="" method="POST" enctype="multipart/form-data">
                    <div class="login-box-body">     
						<div class="text-center">
						<img src="Login.png" class="rounded" width="100px" height="100px" >
					    </div>
						
						
						<center>
                        <p style="font-size:20px;">Nama: <?= $user[0]['user_firstname']; ?></p>
                        <p style="font-size:20px;">Asal SMA: <?= $user[0]['asal_sma']; ?></p>
                        <p style="font-size:20px;">Email: <?= $user[0]['user_email']; ?></p>
                        <p style="font-size:20px;">No Telephone: <?= $user[0]['phone']; ?></p>
						<center>
                        <p style="color:rgba(39.00000147521496, 174.00000482797623, 96.00000187754631, 1); font-size:15px;">Bukti pembayaran sedang diperiksa oleh admin, mohon ditunggu</p>
						<center>
						</strong>
    			    
					</div>
				</form>
            </div>
        </div>
    </section><!-- /.content -->
</div><!-- /.container -->



<script type="text/javascript">
    $('.pesan-error').children().attr('class', 'text-danger')
</script>