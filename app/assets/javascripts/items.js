// $(document).ready(function() {
//   console.log( "ready!" );
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
// });



