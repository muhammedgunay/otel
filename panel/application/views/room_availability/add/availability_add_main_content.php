<section class="content">
	<div class="row">
		<div class="col-md-12">
		<form action="<?php echo base_url("room/addNewAvailability/$room_id"); ?>" method="post">

<div class="form-group">
	<label>Tarih Aralığı</label>

	<div class="input-group">
		<div class="input-group-addon">
			<i class="fa fa-calendar"></i>
		</div>
		<input name="availability_date" type="text" class="form-control pull-right" id="availability_date">
	</div>
	<!-- /.input group -->
</div>
<button type="submit" class="btn btn-primary">Oluştur</button>
<!-- /.form group -->
</form>
		</div>
			
	</div>

</section>