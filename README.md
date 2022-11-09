# counter_7

A new Flutter project.

## =============== ASSIGNMENT 7 ===============

## 1. Explain what is meant by stateless widget and stateful widget and explain the difference between them.
## Answer: 

In Flutter there are only 2 types of widgets, namely Stateful Widgets and Stateless Widgets.
A widget's state is stored in a State object, separating the widget's state from its appearance. Stateful Widgets have mutable objects and can change state, in other words they are dynamic. One example is when changing the appearance in response to user interaction or when receiving data. Examples of Stateful Widgets are Checkbox, Radio, Slider, InkWell, Form, and TextField. While Stateless Widgets are widgets that do not have a state object, meaning that they do not follow the existing state changes or cannot be changed. One example of a Stateless Widget is Icon, IconButton, and Text.

## 2. Mention what widgets you use in this project and explain their functions
## Answer:
a. Stateless Widget for construct UI (user interface)
b. myApp have role as root of Widget
c. StatefulWidget for makes the buttons and the logic
d. appBar as navbar in the app
e. Scaffold for create the structure layout visually
f. Center for adjust the position child in the center of parent
g. Column for arrange layout Widget vertically
h. Row for arrange layout Widget horizontally
i. Container for wrapp the elements and add it to margin
j. FloatingActionButton for adding the button
k. Text for makes the texts

## 3. What is the function of setState()? Explain what variables can be affected by the function.
## Answer:
setState() in fluter is a function to know the framework when the internal situation of an object changes, which causes the framework to set a schedule for the construction of that object. Or it can also be interpreted that setSet is a method used to make changes to the stateful widget state. Without setStateva there is a possibility that the changes that occur cannot be detected by the UI. And on the task I created, setState is implemented in counterStateProvider.

## 4. Explain the difference between const and final
## Answer:
Dart supports assigning constant values ​​to variables using 2 keywords, namely the const keyword and the final keyword. This keyword is used to keep a variable's value static throughout the codebase, meaning that once a variable is defined, its state cannot be changed.

The final keyword is used to hardcode the values ​​of the variable and it cannot be altered in future, neither any kind of operations performed on these variables can alter its value (state).

The Const keyword in Dart behaves exactly like the final keyword. The only difference between final and const is that const keeps the variable constant from compile time only. while final at run-time.

## 5. Explain how you implement the checklist above.
## Answer:
1. export PATH=/Users/christianto09/Flutter/flutter/bin:$PATH run this command on terminal first
2. create flutter create with command flutter create
3. cd to the app that create before
4. flutter run to check the app is ok
5. open android studio to edit the code, (add flutter_riverpod: ^2.1.1 to pubspec.yaml because I use import import 'package:flutter_riverpod/flutter_riverpod.dart';)
6. Edit the code according to request assignment
7. flutter run again to check the app satisfy the request
8. quit
9. git add, commit, push
10. Answer the readme.md

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# pbp-flutter-lab
