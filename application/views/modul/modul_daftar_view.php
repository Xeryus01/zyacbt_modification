<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Daftar Soal
		<small>Daftar soal dan jawaban berdasarkan Modul dan Topik</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url(); ?>/"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Daftar Soal</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header with-border">
                    <div class="box-title">Pilih Soal</div>
                </div><!-- /.box-header -->

                <div class="box-body">
                    <div class="col-xs-8">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Pilih Topik</label>
                            <div class="col-sm-9">
                                <select name="topik" id="topik" class="form-control input-sm">
                                    <?php if (!empty($select_topik)) {
                                        echo $select_topik;
                                    } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="col-xs-8">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Pilih Paket</label>
                            <div class="col-sm-9">
                                <select name="paket" id="paket" class="form-control input-sm">

                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-footer">
                    <p>Pilih terlebih dahulu Topik yang akan digunakan sebelum menambah atau mengubah soal</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <div class="box-title">Daftar Soal <span id="judul-daftar-soal"></span></div>
                    <div class="box-tools pull-right">
                        <div class="dropdown pull-right">
                            <a style="cursor: pointer;" onclick="cetak_soal()">Cetak Daftar Soal</a>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <div id="count-soal" class="box-header with-border"></div>

                <div class="box-body">
                    <table id="table-soal" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Tipe Soal</th>
                                <th>Soal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section><!-- /.content -->



<script lang="javascript">
    $('#topik').change(function() {
        refresh_topik();
        refresh_table();
        var id = $('#topik').val();
        // alert(id);
        $.ajax({
            url: "<?php echo site_url() . '/' . $url; ?>/paket",
            type: 'POST',
            data: {
                'topik_id': id
            },
            success: function(respon) {
                var data = $.parseJSON(respon);
                var paket = $('#paket');
                paket.empty();
                for (var i = 0; i < data.length; i++) {
                    paket.append('<option value=' + data[i] + '> Paket ' + data[i] + '</option>');
                }
                refresh_topik();
                refresh_count();
            }
        });
    });

    $('#paket').change(function() {
        refresh_topik();
        refresh_table();
        refresh_count();
    });

    function refresh_count() {
        var topik = $('#topik').val();
        var paket = $('#paket').val()
        $.ajax({
            url: "<?php echo site_url() . '/' . $url; ?>/count",
            type: 'POST',
            data: {
                'topik': topik,
                'paket': paket,
            },
            success: function(respon) {
                var data = $.parseJSON(respon);
                var count = $('#count-soal');

                jumlah = '[Jumlah soal: ' + data + ']';
                count.html(jumlah);
                refresh_topik();
            }
        });
    }

    function refresh_table() {
        $('#table-soal').dataTable().fnReloadAjax();
    }

    function cetak_soal() {
        var topik_id = $('#topik').val();
        var paket_id = $('#paket').val();

        window.open('<?php site_url(); ?>modul_daftar/cetak_soal/' + topik_id + '/' + paket_id, '_blank/');
    }

    function refresh_topik() {
        var judul = $('#topik option:selected').text();
        judul = judul.split("[");
        var paket = $('#paket').val();
        string = judul[0] + " - Paket " + paket;
        $('#judul-daftar-soal').html(string);
    }

    $(function() {
        $('#topik').select2();

        $("#topik").change(function() {
            refresh_table();
            refresh_topik();
        });

        $('#form-tambah').submit(function() {
            $('#tambah-modul-id').val($('#modul').val());
            $("#modal-proses").modal('show');
            $.ajax({
                url: "<?php echo site_url() . '/' . $url; ?>/tambah",
                type: "POST",
                data: $('#form-tambah').serialize(),
                cache: false,
                success: function(respon) {
                    var obj = $.parseJSON(respon);
                    if (obj.status == 1) {
                        refresh_table();
                        $("#modal-proses").modal('hide');
                        $("#modal-tambah").modal('hide');
                        notify_success(obj.pesan);
                    } else {
                        $("#modal-proses").modal('hide');
                        $('#form-pesan').html(pesan_err(obj.pesan));
                    }
                }
            });
            return false;
        });

        $('#table-soal').DataTable({
            "paging": true,
            "iDisplayLength": 10,
            "bProcessing": false,
            "bServerSide": true,
            "searching": true,
            "aoColumns": [{
                    "bSearchable": false,
                    "bSortable": false,
                    "sWidth": "20px"
                },
                {
                    "bSearchable": false,
                    "bSortable": false,
                    "sWidth": "80px"
                },
                {
                    "bSearchable": false,
                    "bSortable": false
                }
            ],
            "sAjaxSource": "<?php echo site_url() . '/' . $url; ?>/get_datatable/",
            "autoWidth": false,
            "fnServerParams": function(aoData) {
                aoData.push({
                    "name": "topik",
                    "value": $('#topik').val()
                });
                if ($('#paket').val() > 0) {
                    aoData.push({
                        "name": "paket",
                        "value": $('#paket').val()
                    });
                } else {
                    aoData.push({
                        "name": "paket",
                        "value": 1
                    });
                }
            }
        });

        $(document).ready(function() {
            refresh_topik();

            var id = $('#topik').val();
            // alert(id);

            $.ajax({
                url: "<?php echo site_url() . '/' . $url; ?>/paket",
                type: 'POST',
                data: {
                    'topik_id': id
                },
                success: function(respon) {
                    var data = $.parseJSON(respon);
                    var paket = $('#paket');
                    paket.empty();
                    for (var i = 0; i < data.length; i++) {
                        paket.append('<option value=' + data[i] + '> Paket ' + data[i] + '</option>');
                    }
                    refresh_topik();
                    refresh_count();
                }
            });
        });
    });
</script>
