<?php

function get_room_category(){
  
    $CI = &get_instance();

    $CI->load->model("roomcategory_model");

    return $CI-> roomcategory_model->get_all();

}

function get_room_properties(){
  
    $CI = &get_instance();

    $CI->load->model("roomproperties_model");

    return $CI-> roomproperties_model->get_all();

}



function get_room_extra_services($where = array())
{

    $CI = &get_instance();
    $CI->load->model("roomextraservices_model");
    return $CI->roomextraservices_model->get_all($where);
}


function get_day_from_eng($day){

    $days = array(
        "Mon"   => "Pzt",
        "Tue"   => "Sal",
        "Wed"   => "Çar",
        "Thu"   => "Per",
        "Fri"   => "Cum",
        "Sat"   => "Cmt",
        "Sun"   => "Paz",
    );

    return $days[$day];
}

function get_month_from_eng($month){

    $months = array(
        "Jan"   => "Oca",
        "Feb"   => "Şub",
        "Mar"   => "Mar",
        "Apr"   => "Nis",
        "May"   => "May",
        "Jun"   => "Haz",
        "Jul"   => "Tem",
        "Aug"   => "Ağu",
        "Sep"   => "Eyl",
        "Oct"   => "Eki",
        "Nov"   => "Kas",
        "Dec"   => "Ara",
    );

    return $months[$month];
}

?>