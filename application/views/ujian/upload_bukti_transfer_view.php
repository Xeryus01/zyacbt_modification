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
            <li class="active">Upload Bukti Tranfer</li>
        </ol>
    </section>

    <section class="content">
        <div class="row">
			<div style="margin-top:20px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-default" >
                    <div class="panel-heading">
                        <div class="panel-title">
							<strong class="text-center">
								<p style="font-size: 32px; position: relative;top:8px">ZYA CBT</p>
							</strong>
							<div> <label></label></div>
							<div style="float:left; font-size: 85%; position: relative; top:-10px"> <b> Transfer amount Rp. 35.000,00 </b> </div>
						</div>
                    </div>
					
					
                <form action="" method="POST" enctype="multipart/form-data">
                    <div class="login-box-body">
					
					<div class="text-center" style="font-size:20px">
					<label> Selamat datang USERNAME </label>
					<p> Terima kasih telah mendaftar Try Out Zya CBT</p>
					<p> Silahkan lalukan pembayaran sejumlah tertera diatas, ke nomor rekening sebagai berikut: </p>
					<p> No Rekening :</p>
					<b> 6341 0845 6675</b>
					<p> Atas Nama :</p>
					<b> Rizka Indah Pristania</b>
					<p> Nama Bank :</p>
					<b> BRI</b>
					</div>
					<label> </label>
					<div>
					<div class="col-xs-3">
					<img src="BRI.jpg" class="rounded float-left" width="115px" height="115px">
					</div>
					<div class="col-xs-9">
					<p> Silahkan upload bukti transfer berupa screenshot atau foto slip pembayaran <br>
					 Batas waktu pembayaran <b>31 Maret 2021</b><br> 
					File berupa <b> jpg, jpeg, png</b>. ukuran file <b>max 2mb</b></p>
					 <div class="pesan-error"><?php if (isset($status['pesan'])) echo $status['pesan']; ?></div>
                        <input type="hidden" id="userlevel" name="userlevel" value="<?= $this->session->id; ?>">
                        <div class="form-group has-feedback">
                            <input type="file" id="bukti" name="bukti">
                        </div>
					</div>
					</div>
                        <div class="row">
						<div class="col-xs-3">
						</div>
                            <div class="col-xs-6">
                                <button type="submit" class="btn btn-primary btn-block btn-flat" name="submit">Upload</button>
                            </div><!-- /.col -->
                        </div>
                    </div>
                </form>
            </div><!-- /.login-box -->
        </div>
		</div>
    </section><!-- /.content -->
</div><!-- /.container -->

<script type="text/javascript">
    $('.pesan-error').children().attr('class', 'text-danger')
</script>