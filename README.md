# EasyAlertController
UIAlertCotroller extensions for easy using

## Requirements

- iOS 8.0+
- Xcode 7.3

## Installation

Just add the EasyAlertController.swift to your project.

or use [CocoaPods](https://cocoapods.org) with Podfile:
``` ruby
pod 'EasyAlertController'
```

or [Carthage](https://github.com/Carthage/Carthage) users can simply add to their `Cartfile`:

``` github "ober01/EasyAlertController" ```


## Usage

#### boring:
``` swift
let actionSheet = UIAlertController(title: "title", message: "message", preferredStyle: .ActionSheet)

let action = UIAlertAction(title: "default", style: .Default, handler: {_ in print("tap")})
let cancel = UIAlertAction(title: "cancel", style: .Cancel, handler: {_ in print("tap")})
let destructive = UIAlertAction(title: "action", style: .Destructive, handler: {_ in print("tap")})

actionSheet.addAction(action)
actionSheet.addAction(cancel)
actionSheet.addAction(destructive)

presentViewController(alert, animated:true, completion:nil)
```

#### cool:
``` swift
let actionSheet = UIAlertController.actionSheet(actions: [
  .Default(title: "Default", handler: { _ in print("tap")}),
  .Destructive(title: "Destructive", handler: { _ in print("tap")}),
  .Cancel(title: "Cancel", handler: nil)
  ])
```

## Licence
​
EasyAlertController is released under the MIT license.
See [LICENSE](./LICENSE) for details.
​
## About

Any questions write kalinkin.aleksey@gmail.com
follow @KalinkinAleksey
