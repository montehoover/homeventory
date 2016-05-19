$(document).ready(function() {

  // $('.item-quantity').each(function(index, elem) {
  //   if( $(elem).text() == 0){
  //     $(elem).parent().parent().parent().parent().css("border", "solid red 6px");
  //   } else if ($(elem).text() <= 3){
  //     $(elem).parent().parent().parent().parent().css("border", "solid yellow 6px");
  //   }
  // });


//   $('#inventory').on('click', ('#add-to-list'),function(e){
//     console.log("clicked")
//     e.preventDefault();

//     $.ajax({
//       url:  '/lists',
//       method:'POST',
//       data: {
//         name: $('#itemName').text()
//       },
//       headers: {
//         'X-Transaction': 'POST Example',
//         'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
//       },
//     }).done(function(data){
//       if(data){
//         ('#itemName').text();
//       }
//     })
//   });

});



