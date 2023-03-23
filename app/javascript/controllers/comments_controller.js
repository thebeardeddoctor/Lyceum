import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
initialize(){ }
  connect() { }
  toggleForm(event) {
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params['form'];
    const commentBodyID = event.params['body'];
    const form = document.getElementById(formID);
    form.classList.toggle('d-none');
    const commentBody = document.getElementById(commentBodyID);
    commentBody.classList.toggle('d-none');
  }
  toggleReply(event) {
    event.preventDefault();
    event.stopPropagation();
    const replyID = event.params['reply'];
    const reply = document.getElementById(replyID);
    reply.classList.toggle('d-none');
    reply.querySelector(`trix-editor`).focus()
  }
}
