<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
  <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
  <script>
      ymaps.ready(function () {

        var myMap = new ymaps.Map("map", {
            center: [55.757592, 37.636486],
            zoom: 17
        });

        var myMap2 = new ymaps.Map("map2", {
          center: [55.793819,  37.584011],
          zoom: 16,
        });

        var myMap3 = new ymaps.Map("map3", {
          center: [55.758509,  37.641045],
          zoom: 17,
        });

        var myPlacemark2 = new ymaps.Placemark([55.793819, 37.584011], {}, {
            preset: 'islands',
            iconColor: '#0BA0A0'
        });
        myMap2.geoObjects.add(myPlacemark2);

        var myPlacemark = new ymaps.Placemark([55.757592, 37.636486] , {}, {
          preset: 'islands#icon',
          iconColor: '#0BA0A0'
        });
        myMap.geoObjects.add(myPlacemark);

        var myPlacemark3 = new ymaps.Placemark([55.758509,  37.641045] , {}, {
          preset: 'islands#icon',
          iconColor: '#0BA0A0'
        });

        myMap3.geoObjects.add(myPlacemark3);
    });
  </script>
<div id="content"><div id="content_2"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>

  <?php echo $description; ?>

  <div class="buttons" style="margin-top: 25px;">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>