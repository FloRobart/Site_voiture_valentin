document.querySelector(".hamburger").onclick = function () {
  var element = document.querySelector(".leftMenu");
  element.classList.toggle("openMenu");

  var hamburger = document.querySelector(".hamburger");
  hamburger.classList.toggle("open");

  var closeAccordion = document.getElementsByClassName('dropdown');
  var i = 0;
  for (i = 0; i < closeAccordion.length; i++) {
    closeAccordion[i].classList.remove('active');
  }

}

var dropdown = document.getElementsByClassName('dropdown');
for (i = 0; i < dropdown.length; i++) {
  dropdown[i].onclick = function () {
    this.classList.toggle('active');


  }

}