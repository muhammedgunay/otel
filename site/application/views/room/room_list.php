<?php if(!empty($rooms)) { ?>
    <!-- Rooms -->
    <section class="rooms mt50">
        <div class="container">


        <div class="col-sm-6">

<form class="reservation-horizontal clearfix" role="form" method="post" action="<?php echo base_url("room/check_availability"); ?>">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label for="checkin">Başlangıç</label>
                <div class="popover-icon" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Check-In is from 11:00"> <i class="fa fa-info-circle fa-lg"> </i> </div>
                <i class="fa fa-calendar infield"></i>
                <input name="checkin" type="text" id="checkin" value="" class="form-control" placeholder="Check-in"/>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="checkout">Bitiş</label>
                <div class="popover-icon" data-container="body" data-toggle="popover" data-trigger="hover" data-placement="right" data-content="Check-out is from 12:00"> <i class="fa fa-info-circle fa-lg"> </i> </div>
                <i class="fa fa-calendar infield"></i>
                <input name="checkout" type="text" id="checkout" value="" class="form-control" placeholder="Check-out"/>
            </div>
        </div>

        <div class="col-md-4">
            <button type="submit" style="margin-top:22px;" class="btn btn-primary btn-block">Sorgula</button>
        </div>
    </div>
</form>

</div>


            <div class="col-sm-12">
                <h2 class="lined-heading"><span>Oda Listesi</span></h2>
            </div>

            <div class="row room-list fadeIn appear">
                <!-- Room -->
                <?php foreach($rooms as $room) {
                    $room_category = $room_category_list[$room->room_type_id];?>

                    <div class="col-sm-4 mb10 <?php echo get_class_name($room_category); ?>">
                        <div class="room-thumb">

                            <?php $image         = $cover_image_list[$room->id];?>

                            <?php if(file_exists(FCPATH . "/panel/uploads/$image")){ ?>
                                <img
                                    src="<?php echo base_url("panel/uploads/$image"); ?>"
                                    alt="<?php echo $room->title; ?>"
                                    class="img-responsive"
                                />
                            <?php } else { ?>
                                <img
                                    src="<?php echo base_url("assets");?>/images/rooms/room1.jpg"
                                    alt="<?php echo $contact->title; ?>"
                                    class="img-responsive"
                                />
                            <?php } ?>
                            <div class="mask">
                                <div class="main">
                                    <h5><?php echo $room->title; ?></h5>
                                    <div class="price">
                                        <?php
                                        $price = get_prices(array("room_id"=> $room->id));
                                        if($price == "null"){
                                            echo $room->default_price;
                                        }else{
                                            echo $price;
                                        }
                                        ?>
                                        <span> gecelik</span>
                                    </div>
                                </div>
                                <div class="content">
                                    <div style="height: 100px;">

                                        <?php

                                            $strLen = strlen($room->detail);

                                            echo ($strLen > 254) ? mb_substr($room->detail, 0,254) . "..." : $room->detail;
                                        ?>

                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <?php $properties =  explode(";", $room->room_properties); ?>
                                            <ul class="list-inline">
                                                <?php foreach($properties as $property) { ?>
                                                    <li><i class="fa fa-check-circle"></i> <?php echo $property_list[$property] ?></li>
                                                <?php } ?>
                                            </ul>
                                        </div>

                                    </div>
                                    <a href="<?php echo base_url("room/room_detail/$room->id"); ?>" class="btn btn-primary btn-block">Görüntüle</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>

    <?php } ?>
