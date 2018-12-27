# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#convert_currency').attr('hidden','hidden')
  $('#convert_currency').click -> api()
  $('#amount').keyup -> api()
  $('#source_currency, #target_currency, #amount').change -> api()
  $('#invert_currency').click ->
    source_currency = $("#source_currency").val()
    target_currency = $("#target_currency").val()
    $('#source_currency').val(target_currency)
    $('#target_currency').val(source_currency)
    api()
  #search api
  api = () ->
    url = '/convert'
    format_result = true;
    # if for bitcoin call the coindesk api and do not use currency formatting
    if $("#source_currency").val() == "BTC" or $("#target_currency").val() == "BTC"
      url = '/convert-bitcoin'
      format_result = false;
    $.ajax url,
        type: 'GET'
        dataType: 'json'
        data: {
                source_currency: $("#source_currency").val(),
                target_currency: $("#target_currency").val(),
                amount: $("#amount").val()
              }
        error: (jqXHR, textStatus, errorThrown) ->
          alert textStatus
        success: (data, text, jqXHR) ->
          result = data.value
          if format_result
            result = parseFloat(data.value.toFixed(2))
            result = new Intl.NumberFormat().format(result)
          $('#result').val(result)
      return false;
