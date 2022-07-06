/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
export class BackdropModel {
  //  private buttonContent : Resource = "Reveal back"
  private position: Position = { x: 0, y: 0 }
  constructor() {
  }
  //  setButtonContent(value : boolean){
  //    if(value == false){
  ////      this.buttonContent = $r('app.media.menu')
  //      this.position = { x: 0, y: 90 }
  //      console.log("Reveal back")
  //    }
  //    else{
  ////      this.buttonContent = "Conceal Back"
  //      this.position = { x: 0, y: 730 }
  //      console.log("Conceal back")
  //    }
  //  }
  //  getButtonContent():Resource{
  //    return this.buttonContent
  //  }

  setBackdropModel1(value: boolean) {
    if (value == false) {
      this.setPosition({ x: 0, y: 70 })
      console.log("Reveal back")
    }
    else {
      this.setPosition({ x: 0, y: 730 })
      console.log("Conceal back")
    }
  }

  setPosition(value: Position) {
    if (value != null && value != undefined)
    this.position = value
  }

  getPosition(): Position{
    return this.position
  }
}