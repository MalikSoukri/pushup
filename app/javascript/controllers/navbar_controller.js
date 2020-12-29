// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["sweat", "flow", "profile", "home"];

  button_pressed = 'sweat';

  connect() {
    // this.reset_buttons(this.button_pressed);
    // this.reset_buttons();
    this.button_pressed = JSON.parse(localStorage.getItem('button_pressed'))
    console.log(this.button_pressed)
    if( this.button_pressed == "sweat" ){
      this.clickedSweat();
    }else if ( this.button_pressed == "flow" ) {
      this.clickedFlow();
    }else if ( this.button_pressed == "profile" ) {
      this.clickedProfile();
    }else if ( this.button_pressed == "home" ) {
      this.clickedSweat();
    }
    }

  reset_buttons(){
    console.log("reset")
    this.sweatTarget.classList.remove("text-danger");
    this.flowTarget.classList.remove("text-danger");
    this.profileTarget.classList.remove("text-danger");
  }


  voted(button){
    window.localStorage.setItem('button_pressed', JSON.stringify(button))
  }

  clickedSweat() {
    console.log("got in the code")
    this.flowTarget.classList.add("text-muted");
    this.profileTarget.classList.add("text-muted");

    this.voted("sweat");
  }
  
  clickedFlow() {
    this.sweatTarget.classList.add("text-muted");
    this.profileTarget.classList.add("text-muted");
    this.voted("flow");
  }

  clickedProfile() {
    this.sweatTarget.classList.add("text-muted");
    this.flowTarget.classList.add("text-muted");
    this.voted("profile");
  }
  
  clickedHome () {
    console.log("got in the home function");
    this.voted("sweat");
  }

  
}
