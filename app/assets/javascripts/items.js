$(document).ready(function() {
    console.log( "ready!" );
    $('#delete-item').on('click',function(e){
      e.preventDefault();
      var btn=$(this);
      $.ajax({
        url:  btn.attr('href'),
        method:'DELETE',
        dataType:'json'
      }).done(function(data){
        if(data){
          btn.closest('item').remove();
        }
      })
    });
});