# MaterialBackdrop

It is a library in ETS, which s used to apply backdrop functionality.
It contains several types of models, among which used can choose any model 
according to the need.

## Installation

```ets 
npm i @ohos/materialbackdrop
```

## Usage Instruction

To be able to use backdrop, below import statement should be used

```ets
import { Backdrop, BackdropModel }  from '@ohos/materialbackdrop'
```
Create two UI and pass them to the library, which will act as front layer
and back layer. The user have freedom to choose the triggering element 
for revealing and concealing the backdrop feature.
<br>

## Backdrop Model 1

```ets
import { Backdrop, BackdropModel }  from '@ohos/materialbackdrop'
```

```ets
//Creating object 
private model: BackdropModel = new BackdropModel()
```

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

## Compatibility

Supports OpenHarmony API version 9 and above

### Reference:

Designed by : Bibek Lakra
