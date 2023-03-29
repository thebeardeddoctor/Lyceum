import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments"
export default class extends Controller {
initialize(){ }
  connect() { }
  toggleForm(event) {
    event.preventDefault();
    event.stopPropagation();
    // target params 
    const formID = event.params['form'];
    const commentBodyID = event.params['body'];
    // grab the element of the form and comment body
    const form = document.getElementById(formID);    
    const commentBody = document.getElementById(commentBodyID);
    // toggle the form and body classes to d-none
    form.classList.toggle('d-none');
    commentBody.classList.toggle('d-none');

    const replyID = event.params['reply'];
    const reply = document.getElementById(replyID);
    reply.classList.add('d-none');
  }
  toggleReply(event) {
    event.preventDefault();
    event.stopPropagation();
    const replyID = event.params['reply'];    
    const formID = event.params['form'];
    const commentBodyID = event.params['body'];
    const reply = document.getElementById(replyID);
    const form = document.getElementById(formID);
    const commentBody = document.getElementById(commentBodyID);
    commentBody.classList.remove('d-none');
    form.classList.add('d-none');

    reply.classList.toggle('d-none');
    reply.querySelector(`trix-editor`).focus()
  }
}
