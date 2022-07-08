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
import { Backdrop, BackdropModel, BackDropState }  from '@ohos/materialbackdrop'

@Entry
@Component
struct Index {
  @State backdrop1: BackdropModel = new BackdropModel()
  @State flag: BackDropState = BackDropState.On
  scroller1: Scroller = new Scroller()
  scroller2: Scroller = new Scroller()

  @Builder triggerButtonBackReveal(): any {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image($r('app.media.menu')).width('100%').height('100%')
    }.width('24vp').height('24vp')
  }

  @Builder triggerButtonBackConceal(): any {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image($r('app.media.cancel')).width('100%').height('100%')
    }.width('24vp').height('24vp')
  }

  @Builder triggerButtonFrontReveal(): any {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image($r('app.media.down')).width('100%').height('100%')
    }.width('20vp').height('20vp').backgroundColor(Color.White)
  }

  @Builder triggerButtonFrontConceal(): any {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image($r('app.media.up')).width('100%').height('100%')
    }.width('20vp').height('20vp').backgroundColor(Color.White)
  }

  @Builder backPage(): any {
    Column() {
      Flex({ alignContent: FlexAlign.SpaceBetween }) {
        Column() {
          if (this.flag == BackDropState.On) this.triggerButtonBackReveal()
          else this.triggerButtonBackConceal()
        }
        .onClick(() => {
          this.backdrop1.setBackdropModel1(this.flag)
          this.flag = (this.flag == BackDropState.Off) ?BackDropState.On : BackDropState.Off
        })

        Text('BackLayer').fontColor(Color.White).fontSize('24fp').textAlign(TextAlign.Center).padding({ left: '32vp' })
      }.padding({left:'16vp',right:'16vp'}).height('24vp').margin({top:'16vp',bottom:'16vp'})

      Scroll(this.scroller1) {
        Column() {
            Text('Living Room')
              .fontColor('#ffffff')
              .padding({ left: '32vp' })
              .width('100%')
              .height('40vp')
              .fontSize('15vp')
              .textAlign(TextAlign.Start)
              .backgroundColor('#6200EE')
          Text('Bed Room')
            .fontColor('#ffffff')
            .padding({ left: '32vp' })
            .width('100%')
            .height('40vp')
            .fontSize('15vp')
            .textAlign(TextAlign.Start)
            .backgroundColor('#6200EE')
          Text('Kitchen')
            .fontColor('#ffffff')
            .padding({ left: '32vp' })
            .width('100%')
            .height('40vp')
            .fontSize('15vp')
            .textAlign(TextAlign.Start)
            .backgroundColor('#6200EE')
        }.width('100%')
      }.scrollable(ScrollDirection.Vertical).scrollBar(BarState.On)
    }
    .width('100%')
    .height('100%')
    .backgroundColor("#6200EE")
  }

  @Builder frontPage(): any{
    Flex({ direction: FlexDirection.Column, alignContent: FlexAlign.SpaceBetween }) {
      Flex({ direction: FlexDirection.Row, alignContent: FlexAlign.End }) {
        Text('Subtitle')
          .alignSelf(ItemAlign.Baseline)
          .padding({left: '16vp'})
          .width('90%')
          .height('100%')
          .fontSize('20fp')
        Column() {
          if (this.flag == BackDropState.On) this.triggerButtonFrontReveal()
          else this.triggerButtonFrontConceal()
        }.padding({ top: '7vp' , right: '16vp'}).alignItems(HorizontalAlign.End)
        .onClick(() => {
          this.backdrop1.setBackdropModel1(this.flag)
          this.flag = (this.flag == BackDropState.Off) ?BackDropState.On : BackDropState.Off
        })
      }.width('10%').height('5%')

      Row() {
        Divider()
          .color("#D0D0D0")
          .strokeWidth('1vp')
          .lineCap(LineCapStyle.Round)
      }.height('1%')

      Scroll(this.scroller2) {
        Flex({ direction: FlexDirection.Column, alignContent: FlexAlign.Center }) {
          Image($r('app.media.image1'))
            .padding('5vp')
            .width('100%')
            .height('20%')
          Image($r('app.media.image2'))
            .padding('5vp')
            .width('100%')
            .height('20%')
          Image($r('app.media.image3'))
            .padding('5vp')
            .width('100%')
            .height('20%')
          Image($r('app.media.image4'))
            .padding('5vp')
            .width('100%')
            .height('20%')
          Image($r('app.media.image5'))
            .padding('5vp')
            .width('100%')
            .height('20%')
          Image($r('app.media.image6'))
            .padding('5vp')
            .width('100%')
            .height('20%')
        }.width('100%')
      }.scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.On)
      .scrollBarColor(Color.Gray)
      .scrollBarWidth('5vp')
    }
    .width('100%')
    .borderRadius('8vp')
    .padding('5vp')
    .height('100%')
    .backgroundColor(Color.White)
  }

  build() {
    Column() {
      Backdrop({
        obj: $backdrop1,
        backLayout: this.backPage(),
        frontLayout: this.frontPage()
      })
    }
  }
}
