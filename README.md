# Pomegranate

[![CI Status](http://img.shields.io/travis/tonyyasi/Pomegranate.svg?style=flat)](https://travis-ci.org/tonyyasi/Pomegranate)
[![Version](https://img.shields.io/cocoapods/v/Pomegranate.svg?style=flat)](http://cocoapods.org/pods/Pomegranate)
[![License](https://img.shields.io/cocoapods/l/Pomegranate.svg?style=flat)](http://cocoapods.org/pods/Pomegranate)
[![Platform](https://img.shields.io/cocoapods/p/Pomegranate.svg?style=flat)](http://cocoapods.org/pods/Pomegranate)

Pomegranate is all about creating easy UI for your applications. Inside
this library you have a bunch of class extensions to help you build
beautiful apps and make hard tasks easy.

Pomegranate is divided in 6 components:

- [Gradienterr](#gradienterr)
- [Downloaderr](#downloaderr)
- [Date Formaterr](#date-formaterr)
- [Attributerr](#attributerr)
- [Colorerr](#colorerr)
- [Page View](#page-view)

## Gradienterr

As the name suggests, this is a UIView class extension to add gradients
to views. It works like this:
```swift
myView.addGradient(beginningColor: .blue, endingColor: .yellow, type:
.leftToRight, animated: true)

```


this will create something like this:

/// Foto de como se ve

The possible gradient types are:
- .leftToRight
- .rightToLeft
- .diagonalLeftToRight
- .diagonalRightToLeft
- .topToBottom
- .bottomToTop

You can also create a gradient with multiple colors like such:

```swift
myView.addGradientWithMultipleColors(colors: cgColorArray, type:
.diagonalLeftToRight, animated: true)

```

And finally delete a gradient
```
myView.deleteGradiet(animated:true)
```

Note: This will remove all of the gradients on that view.



## Downloaderr

## Date-Formaterr

## Attributerr

## Colorerr

## Page View

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Pomegranate is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Pomegranate"
```

## Author

[tonyyasi](#https://github.com/tonyyasi)
[Jelizondo](#https://github.com/jelizondo)

## License

Pomegranate is available under the MIT license. See the LICENSE file for more info.
