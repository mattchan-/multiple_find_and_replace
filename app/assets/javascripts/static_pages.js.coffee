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
  $('#addItem').click ->
    _itemIndex = document.querySelectorAll("div#container .replace_element").length + 1
    newItem = document.createElement "input"
    newItem.setAttribute("id", "a" + _itemIndex)
    newItem.setAttribute("class", "replace_element")
    newItem.setAttribute("type", "text")

    label = document.createElement "label"
    label_content = document.createTextNode("{a" + _itemIndex + "}")
    label.appendChild(label_content)

    parent = document.getElementById "container"
    addItemButton = document.getElementById "addItem"
    parent.insertBefore(newItem, addItemButton)
    parent.insertBefore(label, newItem)