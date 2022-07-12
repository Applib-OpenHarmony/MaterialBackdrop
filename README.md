# MaterialBackdrop

A backdrop appears behind all other surfaces in an app, displaying contextual and actionable content.
MaterialBackdrop is a library of OpenHarmony, which is used to apply backdrop functionality, in eTS.
It allows user to create their custom UIs and add backdrop functionality to it.

## Installation

```ets 
npm i @ohos/materialbackdrop
```

## Import

To be able to use backdrop, below import statement should be used

```ets
import { Backdrop, BackdropModel, BackDropState, BackdropType }  from '@ohos/materialbackdrop'
```


## Usage Instruction
### Model 1
```ets
//Creating object 
private model: BackdropModel = new BackdropModel(BackdropType.Model1)
```
Create two UI and pass them to the library, which will act as front layer
and back layer. The user have freedom to choose the triggering element
for revealing and concealing the backdrop.
```ets
//UI for both layers 
@Builder backPage():any {
    .
    .
    triggerringElement(){
        .
        .
        }.onClick(()=>{
            //Change BackDropState
            triggerBackdrop(this.flag)   //pass value of BackdropState
            })
    .
    .
    }
@Builder frontPage():any {
    .
    .
    //Add triggerring element if needed
    .
    }   
```

```ets
//Passing parameters to Backdrop
Backdrop({
        obj: $model,
        backLayout: this.backPage(),
        frontLayout: this.frontPage()
      })
```
#### Working
![BackdropModel1_gif](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/4.gif)
#### Screenshots
![BackdropMosel1_Off](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/1.png)
![BackdropModel1_On](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/2.png)

### Model 2
```ets
//Creating object 
private model: BackdropModel = new BackdropModel(BackdropType.Model1)
```
Create and pass UIs as mentioned in Model 1. The difference of model 2 
can be noticed when the back content height is less than the whole screen height.
```ets
  aboutToAppear() {
    this.backdrop.setBackContentHeight('176vp')
  }
```
```ets
//UI for both layers 
@Builder backPage():any {
    .
    .
    triggerringElement(){
        .
        .
        }.onClick(()=>{
            //Change BackDropState
            triggerBackdrop(this.flag)   //pass value of BackdropState
            })
    .
    .
    }
@Builder frontPage():any {
    .
    .
    //Add triggerring element if needed
    .
    .
    }   
```

```ets
//Passing parameters to Backdrop
Backdrop({
        obj: $model,
        backLayout: this.backPage(),
        frontLayout: this.frontPage()
      })
```
#### Working
![BackdropModel2_gif](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/5.gif)
#### Screenshots
![BackdropMosel2_Off](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/1.png)
![BackdropModel2_On](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/3.png)

## Compatibility

Supports OpenHarmony API version 9 

## Code Contribution
If you find any problems during usage, you can submit an [Issue](https://github.com/Applib-OpenHarmony/MaterialBackdrop/issues) to us. 
Of course, we also welcome you to send us [PR](https://github.com/Applib-OpenHarmony/MaterialBackdrop/pulls).

## Open Source License
This project is based on [Apache License 2.0](https://github.com/Applib-OpenHarmony/MaterialBackdrop/blob/main/LICENSE), please enjoy and 
participate in open source freely.

### Reference:

Designed by : Bibek Lakra
