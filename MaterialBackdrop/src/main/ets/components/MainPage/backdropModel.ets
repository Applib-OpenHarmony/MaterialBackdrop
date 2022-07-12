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
export enum BackDropState {
  Off,
  On
}

export enum BackdropType {
  Model1,
  Model2
}

export class BackdropModel {
  private backdropType = BackdropType.Model1
  private position: Position = { x: '0vp', y: '70vp' }
  private backContentHeight: Length = '94%'
  private frontOpacity: number | Resource = 1
  constructor(value: BackdropType) {
    if (value != null && value != undefined) this.backdropType = value
  }

  triggerBackdrop(value: BackDropState) {
    if (this.backdropType == BackdropType.Model1) {
      this.position = (value == BackDropState.Off) ? { x: '0vp', y: this.backContentHeight } : { x: '0vp', y: '70vp' }
    }
    if (this.backdropType == BackdropType.Model2) {
      this.position = (value == BackDropState.Off) ? { x: '0vp', y: this.backContentHeight } : { x: '0vp', y: '70vp' }
      this.frontOpacity = (value == BackDropState.Off) ? 0.4 : 1
    }
  }

  setPosition(value: Position) {
    if (value != null && value != undefined) this.position = value
  }

  getPosition(): Position{
    return this.position
  }

  setBackContentHeight(value: Length) {
    if (value != null && value != undefined ) this.backContentHeight = value
  }

  getBackContentHeight(): Length{
    return this.backContentHeight
  }

  setFrontOpacity(value: number | Resource) {
    if (value != null && value != undefined) this.frontOpacity = value
  }

  getFrontOpacity(): number | Resource{
    return this.frontOpacity
  }
}