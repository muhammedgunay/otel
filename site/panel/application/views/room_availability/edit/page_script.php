<script src="<?php echo base_url("assets");?>/dist/js/third_party/bootstrap-toggle.min.js"></script>

<script>

	$(dokument).ready(function(){


		$('.toggle_check').bootstrapToggle();


		$('.toggle_check').change(function(){

			console.log("ok");
		})
	})
	
	
</script>