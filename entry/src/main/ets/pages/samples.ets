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
import router from '@system.router'

@Entry
@Component
struct Samples {
  @State message: string = 'Backdrop Samples'

  build() {
    Column() {
      Text(this.message)
        .fontSize('25fp')
        .fontWeight(FontWeight.Bold)
        .padding('20vp')

      Row() {
        Divider()
          .color("#D0D0D0")
          .strokeWidth('5vp')
          .opacity(60)
          .shadow({ radius: 15, color: "#D0D0D0", offsetY: 8 })
          .lineCap(LineCapStyle.Round)
      }.height('5%')

      Column() {
        Row() {
          Button('Backdrop 1')
            .margin('5vp')
            .type(ButtonType.Normal)
            .borderRadius('2vp')
            .fontColor(Color.Black)
            .backgroundColor("#D0D0D0")
            .onClick(() => {
              router.push({ uri: "pages/sample1" })
            })
        }

        Row() {
          Button('Backdrop 2')
            .margin('5vp')
            .type(ButtonType.Normal)
            .borderRadius('2vp')
            .fontColor(Color.Black)
            .backgroundColor("#D0D0D0")
            .onClick(() => {
              router.push({ uri: "pages/sample2" })
            })
        }
      }
    }
  }
}