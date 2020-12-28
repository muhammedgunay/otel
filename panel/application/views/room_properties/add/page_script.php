<script src="<?php echo base_url("assets");?>/dist/js/third_party/bootstrap-toggle.min.js"></script>

<script>

	$(dokument).ready(function(){


		$('.toggle_check').bootstrapToggle();


		$('.toggle_check').change(function(){

			var id = $(this).attr("dataID");
			

			$.post(base_url + "roomproperties/isActiveSetter",
				{id: id, isActive: isActive},
				function (response){});
		})
	})
	
	
</script>