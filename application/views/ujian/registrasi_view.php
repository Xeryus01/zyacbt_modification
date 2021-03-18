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
			<li class="active">Registrasi</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
			<div id="loginbox" style="margin-top:20px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >
				<div class="panel panel-primary " >
                    <div class="panel-heading ">
                        <div class="panel-title ">
							<strong ">
								<p style="font-size: 30px; position: relative;top:8px">REGISTRASI</p>
							</strong>
							<div style="float:right; font-size: 85%; position: relative; top:-15px">COMPUTER BASED-TEST Ujian Online Berbasis Komputer</div>
						</div>
					</div>
				
				<!-- /.login-logo -->
				<div class="panel-body">
				<form class="form-horizontal" action="" method="POST">

						<input type="hidden" id="userlevel" name="userlevel" value="1">
						<input type="hidden" id="userstatus" name="userstatus" value="3">

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Username:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['username'])) echo $data['username']; ?>" type="text" id="username" autocomplete="off" name="username" class="form-control" />
							<span class="glyphicon glyphicon-user form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['username'])) echo $status['pesan']['username']; ?></div>
							</div> 
						</div>

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Nama Lengkap:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['name'])) echo $data['name']; ?>" type="text" id="name" autocomplete="off" name="name" class="form-control" />
							<span class="glyphicon glyphicon-font form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['name'])) echo $status['pesan']['name']; ?></div>
							</div>
						</div>

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">No Telepon:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['phone'])) echo $data['phone']; ?>" type="text" id="phone" autocomplete="off" name="phone" class="form-control" placeholder="ex: 08xxx" />
							<span class="glyphicon glyphicon-phone form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['phone'])) echo $status['pesan']['phone']; ?></div>
							</div>
						</div>

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Alamat:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['address'])) echo $data['address']; ?>" type="text" id="address" autocomplete="off" name="address" class="form-control" />
							<span class="glyphicon glyphicon-home form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['address'])) echo $status['pesan']['address']; ?></div>
							</div>
						</div>

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Asal SMA:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['sma'])) echo $data['sma']; ?>" type="text" id="sma" autocomplete="off" name="sma" class="form-control" />
							<span class="glyphicon glyphicon-education form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['sma'])) echo $status['pesan']['sma']; ?></div>
							</div>
						</div>

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Email:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['email'])) echo $data['email']; ?>" type="email" id="email" autocomplete="off" name="email" class="form-control" placeholder="ex: example@email.com" />
							<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['email'])) echo $status['pesan']['email']; ?></div>
							</div>
						</div>

						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Password:</label>
							<div class="col-sm-8">
							<input value="<?php if (isset($data['password'])) echo $data['password']; ?>" type="password" id="password" autocomplete="off" name="password" class="form-control" />
							<span class="glyphicon glyphicon-lock form-control-feedback"></span>
							<div class="pesan-error"><?php if (isset($status['pesan']['password'])) echo $status['pesan']['password']; ?></div>
							</div>
						</div>
						
						<div class="form-group has-feedback">
							<label class="control-label col-sm-3" for="nama">Nama Group:</label>
							<div class="col-sm-8">
							<select class="form-control" name="group">
								<option value="">-</option>
								<?php foreach ($panlok as $p) : ?>

									<option <?php if (isset($data['group'])) {
												if ($p['grup_id'] == $data['group'])
													echo 'selected';
											} ?> value="<?= $p['grup_id']; ?>"><?= $p['grup_nama']; ?></option>
								<?php endforeach; ?>
							</select>
							<div class="pesan-error"><?php if (isset($status['pesan']['group'])) echo $status['pesan']['group']; ?></div>
							</div>
						</div>


						<div class="row">
							<div class="col-xs-8">
							<div class="checkbox icheck">
								<label>
								</label>
							</div>
						</div><!-- /.col -->
							<div class="col-xs-4">
								<button type="submit" class="btn btn-success btn-block btn-flat" name="submit">Daftar</button>
							</div><!-- /.col -->
						</div>
					
				</form>
			</div>
		</div>
	</section><!-- /.content -->

<script type="text/javascript">
	$('.pesan-error').children().attr('class', 'text-danger')
</script>