var report;
$(function() {
  $("input[type='checkbox']").click(function() {
    report = $(this).val();
  });
  return report;
});
