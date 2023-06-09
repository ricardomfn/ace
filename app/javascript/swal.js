document.addEventListener("DOMContentLoaded", function() {
  var myButton = document.getElementById("myButton");
  // console.log(myButton)

  if (myButton) {
    myButton.addEventListener("click", function() {
      Swal.fire({
        title: 'Votre demande a bien été envoyée !!!',
        width: 500,
        padding: '3em',
        color: '#716add',
        // background: '#fff url(/images/trees.png)',
        backdrop: `
          rgba(0,0,123,0.4)
          url("https://www.informatiquegifs.com/gifs/images/tennis/1.gif")
          bottom
          no-repeat
        `
      });
    });
  }
});
