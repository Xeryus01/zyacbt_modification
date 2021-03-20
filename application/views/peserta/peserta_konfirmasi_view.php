<style>
    .modal-img-bg {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        background-color: rgba(0, 0, 0, 0.5);
        display: flex;
        justify-content: center;
        align-items: center;
        visibility: hidden;
    }

    .modal-img {
        background-color: white;
        width: 30%;
        height: 30%;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }
</style>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Konfirmasi Peserta
        <small>Konfirmasi pembayaran peserta</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?php echo site_url(); ?>/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Konfirmasi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <div class="box-title">Daftar Peserta Belum Konfirmasi</div>
                </div><!-- /.box-header -->

                <div class="box-body">
                    <table id="table-group" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Username</th>
                                <th>Nama</th>
                                <th>No HP</th>
                                <th>Asal SMA</th>
                                <th>Alamat</th>
                                <th>Bukti Pembayaran</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($peserta as $p) : ?>
                                <tr>
                                    <td><?= $no; ?></td>
                                    <td><?= $p['user_name']; ?></td>
                                    <td><?= $p['user_firstname']; ?></td>
                                    <td><?= $p['phone']; ?></td>
                                    <td><?= $p['asal_sma']; ?></td>
                                    <td><?= $p['address']; ?></td>
                                    <td>
                                        <?php if ($p['status'] != 3) : ?>
                                            <button class="img-modal" value="<?= $p['user_id']; ?>"><img style="max-width: 100px;" src="<?= base_url(); ?>/uploads/bukti/<?= $p['bukti']; ?>" alt="..." class="img-rounded"></button>
                                            <div class="modal-img-bg" id="<?= $p['user_id']; ?>">
                                                <div class="modal-img">
                                                    <button class="close-img-modal" value="<?= $p['user_id']; ?>">x</button>
                                                    <img src="<?= base_url(); ?>/uploads/bukti/<?= $p['bukti']; ?>" alt="">
                                                </div>
                                            </div>
                                        <?php endif ?>
                                    </td>
                                    <td>
                                        <?php
                                        if ($p['status'] == 1)
                                            echo 'Aktif';
                                        else if ($p['status'] == 2)
                                            echo 'Sudah Transfer';
                                        else if ($p['status'] == 3)
                                            echo 'Belum Transfer'; ?>
                                    </td>
                                    <td>
                                        <form action="<?= base_url(); ?>/manager/peserta_konfirmasi" method="POST">
                                            <input name="id" type="hidden" value="<?= $p['user_id']; ?>">
                                            <?php
                                            if ($p['status'] == 1) echo '<button type="submit" class="action" name="batalkan">Batalkan</button>';
                                            else if ($p['status'] == 2) {
                                                echo '<button type="submit" class="action" name="tolak">Tolak</button>';
                                                echo '<button type="submit" class="action" name="konfirmasi">Konfirmasi</button>';
                                            }
                                            ?>
                                        </form>
                                    </td>
                                </tr>
                            <?php
                                $no++;
                            endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section><!-- /.content -->

<script>
    $('.img-modal').click(function() {
        $('#' + $(this).val()).css('visibility', 'visible')
    })

    $('.close-img-modal').click(function() {
        $('#' + $(this).val()).css('visibility', 'hidden')
    })
</script>