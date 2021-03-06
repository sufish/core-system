$(document).ready ->
  $('#bank_discount_form').bootstrapValidator()
  init_form = ->
    if $('#for_all_banks').is(':checked')
      $('#merchant_bank_discount_bank_name').hide()
    else
      $('#merchant_bank_discount_bank_name').show()
    if $('#use_merchant_standard_rate').is(':checked')
      $('#merchant_bank_discount_merchant_rate').hide()
    else
      $('#merchant_bank_discount_merchant_rate').show()
    if $('#use_default_referer_rate').is(':checked')
      $('#merchant_bank_discount_referer_rate').hide()
    else
      $('#merchant_bank_discount_referer_rate').show()
  init_form()
  $('input[type=checkbox]').click ->
    init_form()

  $('#bank_discount_form').submit ->
    if $('#for_all_banks').is(':checked')
      $('#merchant_bank_discount_bank_name').val('')
    if $('#use_merchant_standard_rate').is(':checked')
      $('#merchant_bank_discount_merchant_rate').val('')
    if $('#use_default_referer_rate').is(':checked')
      $('#merchant_bank_discount_referer_rate').val('')