<!doctype html>
<html lang="tr">
<head>
    <?php $this->load->view("includes/head"); ?>
    <?php $this->load->view("includes/include_style"); ?>
</head>
<body>

<!-- Header -->
    <?php $this->load->view("includes/header"); ?>
<!-- #Header -->

<!-- Slider -->
    <?php $this->load->view("room/room_list_breadcrumb"); ?>
<!-- #Slider -->

<!-- Rooms -->
    <?php $this->load->view("room/room_list_filter"); ?>
    <?php $this->load->view("room/room_list"); ?>
<!-- #Rooms -->

    <?php $this->load->view("includes/include_script"); ?>
    <?php $this->load->view("includes/footer"); ?>

</body>
</html>