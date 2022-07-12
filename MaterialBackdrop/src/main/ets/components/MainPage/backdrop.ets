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
import { BackdropModel } from './backdropModel'

@Component
export struct Backdrop {
  @BuilderParam backLayout: () => any
  @BuilderParam frontLayout: () => any
  @Link obj: BackdropModel

  aboutToAppear() {
    if (this.obj == null || this.obj == undefined) return
  }

  build() {
    if ((this.backLayout != null && this.backLayout != undefined) && (this.frontLayout != null && this.frontLayout != undefined))
    Stack() {
      Column() {
        this.backLayout()
      }.width('100%').height('100%')

      Column() {
        this.frontLayout()
      }.width('100%').height('100%').position(this.obj.getPosition())
    }.height('100%').width('100%')
  }
}

export { BackdropModel, BackDropState, BackdropType } from './backdropModel'