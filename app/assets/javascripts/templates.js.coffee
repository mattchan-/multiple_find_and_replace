# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#button').click ->
    replaced = document.getElementById("original").value
    arr = document.querySelectorAll("div#container .replace_element")
    for item in arr
      temp = item.value
      index = _i + 1
      re = new RegExp("{a" + index + "}", "g")
      replaced = replaced.replace(re, temp)
    document.getElementById("final").value = replaced

$ ->
  $('#submit_updates').click ->
    $('#update_tag_form').submit()