$(document).ready(function() {
    console.log( "ready!" );
    $('#inventory').on('click', ('#add-to-list'),function(e){
      console.log("clicked")
      e.preventDefault();
      var btn=$(this);
      console.log(btn)






      $.ajax({
        url:  '/lists',
        method:'POST',
        data: {
          name: "$('#itemName').text();"
        }
      }).done(function(data){

        if(data){
          ('#itemName').text();
        }
      })
    });
});

