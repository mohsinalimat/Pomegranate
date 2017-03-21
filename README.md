![alt text](http://i.imgur.com/gsGKA4N.png)

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

![](http://i.imgur.com/MAx1irh.gif)

The possible gradient types are:
- .leftToRight
- .rightToLeft
- .diagonalLeftToRight
- .diagonalRightToLeft
- .topToBottom
- .bottomToTop

Other functions available:

Function | Parameters| Use
------------ | ------------ | -------------
addGRadientWithMultipleColors() | [CGColor], type, animated | Adds gradient with multiple colors
deleteGradient() | animated | Deletes all of the gradients on the current view


**Note:** This will remove all of the gradients on that view.



## Downloaderr

Downloading images from a URL can be awkward sometimes, that's where
Downloaderr comes to the rescue. Downloaderr is a UIImageView extension used
to  download images from a URL and even put a placeholder while the download
is happening. Downloaderr also saves your images on a temporary cache so
you don't download the same image twice.

It works as follows:

```swift
 myImageView.downloadImageWith(url: NSURL(string: "https://upload.wikimedia.org/wikipedia/en/3/39/Wakerlink.jpg")!, placeholder: UIImage(named: "placeholder")!)

```

/// Foto de como se ve

Other functions available:

Function | Parameters|Use
------------ | ------------ | -------------
downloadImageFrom(url:) | url | download Image from a URL without placeholder


## Date-Formaterr

This is a Date class extension that provides different options in converitng a string into a Date or vice versa.
It works like this:

/// Foto de como se ve

Creating Dates:
```swift
let date = Date(dateInString: "15/03/2017",dateFormat: "dd/MM/yyyy")!

```

Converting dates to strings:
```swift
string = date.toTimeLanguage()
string = date.toTimeLanguage([.oneDayago:"Yesterday"])
string = date.convertTo(format: .short)
string = date.convertTo(format: .custom("dd-MM-yyyy"))

```

Possible formats for converting dates to strings
- .full
- .short
- .medium
- .long
- .weekDay
- .custom(String)

Possible TimeLanguage formats to customize
- .rightNow -> custom string: A moment ago
- .oneDayAgo -> custom string: One day ago
- .oneYearAgo -> custom string: One year ago
- .yearsAgo -> custom string: (years) years ago
- .daysAgo -> custom string: (days) days ago
- .minutesAgo -> custom string: (minutes) minutes ago
- .oneMinuteAgo -> custom string: One minute ago


## Attributerr

Adding attributes to a string is pretty weird, let's face it. We decided
to make it easier like such:

```swift
myLabel.attributedText = Attributerr.sharedAttributerr.create(string: "Hello World!", backgroundColor: .red, font: .systemFont(ofSize: 20), color: .blue, underLineStyle: 0)
```

This will create something like this:


/// Foto

All of the parameters except the string value have default values, so you don't need to set them
all on the function call.

This are the default values used:

- backgroundColor = .clear
- font = UIFont(name: "System", size: 12)!
- color = .black
- underLineStyle = 0

This segment comes with other handy functions like the following:

Function | Parameters|Use
------------ | ------------ | -------------
addAttributesToRange() | string, NSRange, attributes |Add attributes to a NSRange
addAttributesToSubstring() | string, substring, attributes |Adds attributes to a substring of your string

The attributes parameter is the list of available parameters that have
default values.


## Colorerr
This is a UIColor extension that provides popular color options to
create beautiful UI.

/// Foto de como se ve

Color options:
- SocialMedia
- Red
- Green
- Purple
- Blue
- Gray
- Yellow
- Orange
- Pink

Each color let's you pick the intensity, for example:

```swift
UIColor.Colorerr.Blue.dark
```

The intensities can be:

- dark
- light
- regular


## Page View

This is a head start in creating a page view that is used for an introduction of an application. It looks somthing like this:

/// Foto de como se ve

To get started in creating one, you can do this:
```swift
let vc = PageViewController()
vc.titles = ["Title1","Title2","Title3"]
self.navigationController?.pushViewController(vc, animated: true)

```

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

[tonyyasi](https://github.com/tonyyasi)
[Jelizondo](https://github.com/jelizondo)

## License

Pomegranate is available under the MIT license. See the LICENSE file for more info.
