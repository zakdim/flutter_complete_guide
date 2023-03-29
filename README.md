# Flutter & Dart - The Complete Guide

[Udemy course: Flutter & Dart - The Complete Guide](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/]https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/)

## Section 1: Introduction

### S01-L07: Flutter macOS Setup

* [macOS install](https://docs.flutter.dev/get-started/install/macos#ios-setup)

* Open phone simulator on macOS

```bash
# Simulator.app or
# The following opens MacOS iPhone emulator
$ open -a Simulator
```

We will use Android emulator for this course: 
[Setup Android device](https://docs.flutter.dev/get-started/install/macos#set-up-your-android-device)

* Create Android virtual device in Android Studio

Install Android Studio
Welcome to Android Studio > More Actions > Virtual Device Manager

```
Pixel 4 API 31 (Android 12.0)
Pixel 6 API 33 (Android 13.0)
```

* Validate installation

```shell
(base) ➜  bin flutter doctor                   
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.7.8, on macOS 13.2.1 22D68 darwin-arm64 (Rosetta), locale en-CA)
[✓] Android toolchain - develop for Android devices (Android SDK version 33.0.2)
[✓] Xcode - develop for iOS and macOS (Xcode 14.2)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2022.1)
[✓] IntelliJ IDEA Ultimate Edition (version 2022.3.3)
[✓] VS Code (version 1.76.2)
[✓] Connected device (3 available)
[✓] HTTP Host Availability

• No issues found!
```

### S01-L08: macOS Development Environment

* Create the app

```shell
flutter create first_app
```

* Run the app

```shell
# Start android device emulator
# In Android Studio click ... (three vertical dots) or link `More Actions` > Virtual Device Manager
# and start your virtual device, example `Pixel 4 API 31 (Android 12.0)`

$ cd first_app
$ flutter run

Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).
```

## Section 2: Flutter Basics [QUIZ APP]

### S02-L17: Creating a New Project

```shell
$ flutter create flutter_complete_guide

# Output:
In order to run your application, type:

  $ cd flutter_complete_guide
  $ flutter run

Your application code is in flutter_complete_guide/lib/main.dart.
```

* README.md generated upon creation of flutter_complete_guide app:

```
# flutter_complete_guide

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
```

* Update app packages

```shell
$ flutter packages get
```

* Start android emulator

Android Studio > Virtual Device Manager > Pixel 4 API 31

* Run the app in emulator

```shell
# In terminal 
$ flutter run

# Or in VSCode > Run > Run Without Debugging

```

### S02-L21: Dart Basics

[DartPad](https://dartpad.dev/?)

```dart
double addNumbers(double num1, double num2) { 
  // print(num1 + num2);
  return num1 + num2;
}

void main() {
  print(addNumbers(1, 2.6));
  print(addNumbers(1, 1));
  print('Hello!');
}
```

### S02-L22: More Dart Basics

```dart
// class Person {
//   String name = 'Max';
//   int age = 30;
// }

class Person {
  final String name;
  final int age;
  
  Person(this.name, this.age);
  
  @override
  String toString() {
    return "Person(name: $name, age: $age)";
  }
  
}

double addNumbers(double num1, double num2) { 
  // print(num1 + num2);
  return num1 + num2;
}

void main() {
//   var p1 = Person();
//   var p2 = Person();
//   p2.name = 'Manu';
//   print(p1.age);
//   print(p2.name);
  var p3 = Person('Dmitri', 21);
  print(p3);
  
//   var firstResult;
  double firstResult = addNumbers(1, 1);
//   firstResult = addNumbers(1, 1);
  // ...
  print(firstResult + 1);
  print('Hello!');
}

```

### S02-L26: Class Constructors & Named Arguments

```dart
class Person {
  final String name;
  final int age;
  
  // positional arguments
  Person(this.name, this.age);
    // named arguments
//   Person({this.name = '', this.age = 30});

  
  @override
  String toString() {
    return "Person{name: $name, age: $age}";
  }
}


void main() {
  var p1 = Person('Max', 30);
  var p2 = Person('Manu', 31);
  print(p1);
  print(p2);
  
//   var p3 = Person(name: 'Dmitri', age: 21);
//   print(p3);
  
}
```

### S02-L41: Enums & Multiple Constructors

```dart
class Person {
  String? name;
  int? age;
  
  Person({this.name, this.age = 30});
  
  Person.veryOld(this.name) {
    age = 60;
  }
}

double addNumbers(double num1, double num2) { 
  // print(num1 + num2);
  return num1 + num2;
}

void main() {
  var p1 = Person(name: 'Max', age: 30);
  var p2 = Person(age: 31, name: 'Manu');
  var p3 = Person.veryOld('Max');
  print(p3.name);
  print(p3.age);
  p2.name = 'Manu';
  print(p1.age);
  print(p2.name);
  double firstResult;
  firstResult = addNumbers(1, 1);
  // ...
  print(firstResult + 1);
  print('Hello!');
}
```

### S02-L49: [DART DEEP DIVE] More on "if" Statements

```dart
void main() {
  var isLoggedIn = true;
  var userName = 'Maximilian';
  var password = 'testers';
  var hasCorrectCredentials = userName == 'Max' && password == 'tester';
  var age = 30;
  if (userName == 'Max' && (password == 'tester'|| age > 20)) {
    print('Logged in!');
  } else if (isLoggedIn) {
    print('Overruled!');
  } else {
    print('Failed!');
  }
}
```

### S02-L50: [DART DEEP DIVE] The "null" Value & Null Safety

```dart

```