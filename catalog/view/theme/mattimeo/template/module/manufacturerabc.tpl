<?php
           $this->language->load('common/footer');
           $text_manufacturer = $this->language->get('text_manufacturer');
           ?>
<div class="box brand_abc">
  <div class="box-heading"><span><?php echo $text_manufacturer; ?></span></div>
  <div class="box-content">
  
<?php foreach ($categories as $category) { ?>
    &nbsp;&nbsp;&nbsp;<a href="<?php echo $href; ?>#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
    <?php } ?>
  
  </div>
</div>
