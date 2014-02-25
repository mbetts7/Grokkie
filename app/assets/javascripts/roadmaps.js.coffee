jQuery ->
  skills = $('#roadmap_skill_id').html()
  $('#roadmap_category_id').change ->
    category = $('#roadmap_category_id :selected').text()
    options = $(skills).filter("optgroup[label='#{category}']").html()
    if options
      $('#roadmap_skill_id').html(options)
      $('#roadmap_skill_id').parent().show()
    else
      $('#roadmap_skill_id').empty()
      $('#roadmap_skill_id').parent().hide()