<div id="carousel<?php echo $module; ?>">
  <ul class="jcarousel-skin-opencart">
    <?php foreach ($banners as $banner) { ?>
    <li><a class="quickview2"  rel="carusel_kdv" href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>"/></a></li>
    <?php } ?>
  </ul>
</div>
<script type="text/javascript">

	$(".quickview2").fancybox({
		openEffect	: 'none',
		closeEffect	: 'none',
		padding: '0px',
		arrows: true
	});

var element = $('#carousel0').detach();
$('#content').append(element);
$('#carousel0').prepend('<div class="box-heading-custom">Наши магазины</div>')

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