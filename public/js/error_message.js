$(function(){
  $("#data_form").submit(function(e){
    var form = $(this);
    var interest_rate = form.find('#interest_rate').val();
    var amount = form.find('#amount').val();
    var month = form.find('#month').val();
    if (interest_rate == "" || amount == "" || month == ""){
      alert("Заполните поля");
      e.preventDefault();
      return false;
    };
  });
});