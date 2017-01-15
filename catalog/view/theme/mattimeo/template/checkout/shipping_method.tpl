<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
<p><?php echo $text_shipping_method; ?></p>
<table class="radio">
  <?php foreach ($shipping_methods as $shipping_method) { ?>
  <tr>
    <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
  </tr>
  <?php if (!$shipping_method['error']) { ?>
  <?php foreach ($shipping_method['quote'] as $quote) { ?>
  <tr class="highlight">
    <td><?php if ($quote['code'] == $code || !$code) { ?>
      <?php $code = $quote['code']; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label></td>
    <td style="text-align: right;"><label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label></td>
  </tr>
  <?php } ?>
  <?php } else { ?>
  <tr>
    <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
  </tr>
  <?php } ?>
  <?php } ?>
</table>
<br />
<div style="overflow: hidden; display: none;" id="kdv_adress">
<h3>Укажите адресс доставки</h3>
  <div class="left">
    <span class="required">* </span>Город<br />
    <select name="city" class="large-field">
      <option checked="checked" value="0">Выбрать город</option>
      <option value="1">Москва</option>
    </select>
    <br />
    <br />
    <span class="required">* </span> Улица<br />
    <input type="text" name="street" value="" class="large-field" />
    <br />
    <br />
    <span class="required">* </span> Дом<br />
    <input type="text" name="dom" value="" class="large-field" />
    <br />
    <br />
  </div>
  <div class="right">
    Подъезд<br />
    <input type="text" name="pod" value="" class="large-field" />
    <br>
    <br>
    Этаж<br />
    <input type="text" name="eta" value="" class="large-field" />
    <br>
    <br>
    Квартира<br />
    <input type="text" name="kva" value="" class="large-field" />
    <br />
    <br />
  </div>
</div>
<?php } ?>
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 96%;"><?php echo $comment; ?></textarea>
<br />
<br />
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button" />
  </div>
</div>
