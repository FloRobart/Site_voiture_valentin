$('document').ready(function() {
 $('#expand').click(function() {
   if ($("#left-menu").hasClass("extended"))
   {
     $("#left-menu").removeClass('extended');
   }
   else
   {
    $("#left-menu").addClass('extended');   
   }
 });
});