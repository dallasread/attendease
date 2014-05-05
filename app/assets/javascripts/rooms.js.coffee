jQuery.expr[":"].Contains = jQuery.expr.createPseudo((arg) ->
	(elem) ->
		jQuery(elem).text().toUpperCase().indexOf(arg.toUpperCase()) >= 0
)

$(document).on "click", ".presence_toggle", ->
	$(this).toggleClass "present"
	false

$(document).on "keyup", "#q", ->
	q = $(this).val()
	
	$("#members .member_table tr:not(:Contains(#{q}))").hide()
	$("#members .member_table tr:Contains(#{q})").show()