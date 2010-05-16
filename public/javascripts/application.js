
function fillExample() {
  $('#regexp').attr('value', "\\((\\d+)\\)\\.\\((\\d+)\\)\\.\\((\\d+)\\)");
  $('#string_comparison').attr('value', "(123).(456).(789)");
  $('#replacement').attr('value', "\\1\\2\\3");
  perform();
}

function toggle_spinner() {
  $('#submit').toggle();
  $('#spinner').toggle();
}

function perform() {
  regexp_string = $('#regexp').attr('value');
  caret = $('#caret').attr('value');
  text = $('#string_comparison').attr('value');
  replacement = $('#replacement').attr('value');

  post_data = { regexp: regexp_string, caret: caret, string_comparison: text, replacement: replacement } 

  toggle_spinner();

  $.post('/home/create', post_data, function(data) {
      $('#result').html('');
      $('#result').html(data);
  })
  
  toggle_spinner();
}
