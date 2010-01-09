
function initialize() {
	$('regexp').focus();
}

function formLoading() {
  $('match_data').innerHtml = '';
  $('group_matches').innerHtml = '';
  $('sub').innerHtml = '';
  $('gsub').innerHtml = '';
  $('loading').show();
}

Event.observe( window, 'load' , initialize );