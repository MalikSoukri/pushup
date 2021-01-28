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
  static targets = ["sweatbottom", "flowbottom", "profilebottom", "homebottom"];

  button_pressed = 'sweatbottom';

  connect() {
    // this.reset_buttons(this.button_pressed);
    // this.reset_buttons();
    this.button_pressed = JSON.parse(localStorage.getItem('button_pressed'))
    console.log(this.button_pressed)
    if( this.button_pressed == "sweatbottom" ){
      this.clickedSweat();
    }else if ( this.button_pressed == "flowbottom" ) {
      this.clickedFlow();
    }else if ( this.button_pressed == "profilebottom" ) {
      this.clickedProfile();
    }else if ( this.button_pressed == "homebottom" ) {
      this.clickedSweat();
    }
    }

  reset_buttons(){
    console.log("reset")
    this.sweatbottomTarget.classList.remove("text-danger");
    this.flowbottomTarget.classList.remove("text-danger");
    this.profilebottomTarget.classList.remove("text-danger");
  }


  choose(button){
    window.localStorage.setItem('button_pressed', JSON.stringify(button))
  }

  clickedSweat() {
    console.log("got in the code")
    this.flowbottomTarget.classList.add("text-muted");
    this.profilebottomTarget.classList.add("text-muted");
    this.choose("sweatbottom");
  }
  
  clickedFlow() {
    this.sweatbottomTarget.classList.add("text-muted");
    this.profilebottomTarget.classList.add("text-muted");
    this.choose("flowbottom");
  }

  clickedProfile() {
    this.sweatbottomTarget.classList.add("text-muted");
    this.flowbottomTarget.classList.add("text-muted");
    this.choose("profilebottom");
  }
  
  clickedHome () {
    console.log("got in the home function");
    this.choose("sweatbottom");
  }

  
}
