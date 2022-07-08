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

export class BackdropModel {
  private position: Position = { x: '0vp', y: '70vp' }
  constructor() {
  }

  setBackdropModel1(value: BackDropState) {
    if (value != null && value != undefined)
    this.position = (value == BackDropState.Off) ? { x: '0vp', y: '70vp' } : { x: '0vp', y: '730vp' }
  }

  setPosition(value: Position) {
    if (value != null && value != undefined)
    this.position = value
  }

  getPosition(): Position{
    return this.position
  }
}