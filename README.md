<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).![loader](https://user-images.githubusercontent.com/63300484/202897126-9cb81a7e-97a4-47ae-a6db-b2289dd30576.gif)

-->

A package that provides user defined colorful progress indicators.

## Features

Can provide list of colors to be used in the progress indicator.

<img height="400" src="https://user-images.githubusercontent.com/63300484/202897126-9cb81a7e-97a4-47ae-a6db-b2289dd30576.gif">

## Getting started

import the package in your dart file

```dart
import 'package:colorful_progress_indicator/colorful_progress_indicator.dart';
```

## Usage

ColorfulCircularProgressIndicator

```dart
ColorfulCircularProgressIndicator(
              colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.purple,
                Colors.orange,
              ],
              duration:Duration(milliseconds: 500),
              initialColor: Colors.red,
            );
```

ColorfulLinearProgressIndicator

```dart
ColorfulLinearProgressIndicator(
              colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.purple,
                Colors.orange,
              ],
              duration:Duration(milliseconds: 500),
              initialColor: Colors.red,
            );
```
