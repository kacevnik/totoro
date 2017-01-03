<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><div id="content_2"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>

  <?php echo $description; ?>
    <div class="yap">
      <script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=VTr3tuGViYUkGkjg6e9ovk8apSoLfJ27&width=90%&height=450"></script>
    </div>

  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>