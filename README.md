# MaterialBackdrop

A backdrop appears behind all other surfaces in an app, displaying contextual and actionable content.
MaterialBackdrop is a library of OpenHarmony, which s used to apply backdrop functionality, in eTS.
It allows user to create their custom UIs and adds backdrop functionality to it.

## Installation

```ets 
npm i @ohos/materialbackdrop
```

## Import

To be able to use backdrop, below import statement should be used

```ets
import { Backdrop, BackdropModel, BackDropState }  from '@ohos/materialbackdrop'
```


## Usage Instruction

```ets
import { Backdrop, BackdropModel, BackDropState }  from '@ohos/materialbackdrop'
```

```ets
//Creating object 
private model: BackdropModel = new BackdropModel()
```
Create two UI and pass them to the library, which will act as front layer
and back layer. The user have freedom to choose the triggering element
for revealing and concealing the backdrop feature.
```ets
//UI for both layers 
@Builder forntPage():any {
    .
    .
    .
    }
@Builder backPage():any {
    .
    .
    .
    }   
```

```ets
//Passing parameters to Backdrop
Backdrop({
        obj: $backdrop1,
        backLayout: this.backPage(),
        frontLayout: this.frontPage()
      })
```
![Backdrop_gif](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshot/3.gif)

![Backdrop_off](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshots/1.png)
![Backdrop_On](https://github.com/BLakra01/MaterialBackdrop/blob/main/screenshot/2.png)

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
