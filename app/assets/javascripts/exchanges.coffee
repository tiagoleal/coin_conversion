# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  #consulta api
  api = () ->
    if $("#source_currency").val()
      $.ajax '/convert',
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
            result = parseFloat(data.value.toFixed(2))
            result = new Intl.NumberFormat().format(result)
            $('#result').val(result)
        return false;

  $('.inverter').click ->
    source_currency = $("#source_currency").val()
    target_currency = $("#target_currency").val()

    $('#source_currency').val(target_currency)
    $('#target_currency').val(source_currency)
    api()

  $('#amount').keyup ->
    api()

#backup antigo
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $(document).ready ->
#   $('#amount').keyup ->
#   #$('form').submit ->
#     # if $('form').attr('action') == '/convert'
#     if $("#source_currency").val()
#       $.ajax '/convert',
#           type: 'GET'
#           dataType: 'json'
#           data: {
#                   source_currency: $("#source_currency").val(),
#                   target_currency: $("#target_currency").val(),
#                   amount: $("#amount").val()
#                 }
#           error: (jqXHR, textStatus, errorThrown) ->
#             alert textStatus
#           success: (data, text, jqXHR) ->
#             result = parseFloat(data.value.toFixed(2))
#             result = new Intl.NumberFormat().format(result)
#             $('#result').val(result)
#             # console.log(result)
#             # result = result.toLocaleString({style:"currency", currency:"BRL"})
#             # console.log(result)
#         return false;
