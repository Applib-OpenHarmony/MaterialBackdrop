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
import { Backdrop, BackdropModel, BackDropState, BackdropType }  from '@ohos/materialbackdrop'

@Entry
@Component
struct Index {
  @State backdrop: BackdropModel = new BackdropModel(BackdropType.Model2)
  @State flag: BackDropState = BackDropState.Off
  scroller1: Scroller = new Scroller()
  scroller2: Scroller = new Scroller()

  aboutToAppear() {
    this.backdrop.setBackContentHeight('176vp')
  }

  @Builder triggerButtonBackReveal(): any {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image($r('app.media.menu')).width('100%').height('100%')
    }.width('24vp').height('24vp').backgroundColor('#6200EE')
  }

  @Builder triggerButtonBackConceal(): any {
    Button({ type: ButtonType.Circle, stateEffect: true }) {
      Image($r('app.media.cancel')).width('100%').height('100%')
    }.width('24vp').height('24vp').backgroundColor('#6200EE')
  }

  @Builder backPage(): any {
    Column() {
      Flex({ alignContent: FlexAlign.SpaceBetween }) {
        Column() {
          Button({ type: ButtonType.Normal, stateEffect: true }) {
            Image($r('app.media.back')).width('100%').height('100%')
          }.width('35vp').height('24vp').backgroundColor('#6200EE').onClick(() => {
            router.back()
          })
        }

        Text('BACK LAYER').fontColor(Color.White).fontSize('24fp').padding({ left: '32vp', right: '40vp' })
        Column() {
          if (this.flag == BackDropState.Off) this.triggerButtonBackReveal()
          else this.triggerButtonBackConceal()
        }.padding({ left: '40vp', right: '5vp' }).alignItems(HorizontalAlign.End)
        .onClick(() => {
          this.backdrop.triggerBackdrop(this.flag)
          this.flag = (this.flag == BackDropState.Off) ? BackDropState.On : BackDropState.Off
        })
      }.width('100%').padding({ left: '16vp', right: '16vp' }).height('24vp').margin({ top: '16vp', bottom: '16vp' })

      Column() {
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
      }.height(this.backdrop.getBackContentHeight())
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
          .padding({ left: '16vp' })
          .width('90%')
          .height('100%')
          .fontSize('20fp')
      }.width('10%').height('5%').opacity(this.backdrop.getFrontOpacity())

      Row() {
        Divider()
          .color("#D0D0D0")
          .strokeWidth('1vp')
          .lineCap(LineCapStyle.Round)
      }.height('1%').opacity(this.backdrop.getFrontOpacity())

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
        }.width('100%').opacity(this.backdrop.getFrontOpacity())
      }.scrollable(ScrollDirection.Vertical)
      .scrollBar(BarState.On)
      .scrollBarColor(Color.Gray)
      .scrollBarWidth('5vp')
    }
    .width('100%')
    .borderRadius('16vp')
    .padding('5vp')
    .height('100%')
    .backgroundColor(Color.White)
    .onClick(() => {
      this.backdrop.triggerBackdrop(this.flag)
      this.flag = (this.flag == BackDropState.Off) ? BackDropState.On : BackDropState.Off
    })
  }

  build() {
    Column() {
      Backdrop({
        obj: $backdrop,
        backLayout: this.backPage(),
        frontLayout: this.frontPage()
      })
    }
  }
}
