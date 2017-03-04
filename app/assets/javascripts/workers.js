$(function() {
    $('#complete input[type=submit]').remove();
    $('#complete input[type=checkbox]').click(function() {
        $(this).parent('form').submit();
    });
  });

$(function() {
  $('#active input[type=submit]').remove();
  $('#active input[type=checkbox]').click(function() {
    $(this).parent('form').submit();
    });
  });

  $(function() {
    $('#cancel input[type=submit]').remove();
    $('#cancel input[type=checkbox]').click(function() {
      $(this).parent('form').submit();
      });
    });
