<div id="carousel<?php echo $module; ?>">
  <ul class="jcarousel-skin-opencart">
    <?php foreach ($banners as $banner) { ?>
    <li><a class="quickview" href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
    <?php } ?>
  </ul>
</div>
<script type="text/javascript">


var element = $('#carousel0').detach();
$('#content').append(element);
$('#carousel0').prepend('<h3 class="heeder h3h">Наш магазин</h3>')

$('#carousel<?php echo $module; ?> ul').jcarousel({
	vertical: false,
	visible: <?php echo $limit; ?>,
	scroll: <?php echo $scroll; ?>
});
$(function(){

var element2 = $('.vk_module').detach();
$('.column-welcome').append(element2);	
var element3 = $('.blog_ocshop').detach();
element3.insertAfter($('.column-maps'))

})

</script>