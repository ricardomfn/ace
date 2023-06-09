import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2';

// Connects to data-controller="popup"
export default class extends Controller {
  connect() {
    console.log("hello")
  }

  handleClick() {
    Swal.fire({
      title: 'Votre demande a bien été envoyée !!!',
      width: 500,
      padding: '3em',
      color: '#716add',
      backdrop: `
        rgba(0,0,123,0.4)
        url("https://www.informatiquegifs.com/gifs/images/tennis/1.gif")
        bottom
        no-repeat
      `
    });
  }
}
