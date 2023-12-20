# DropdownSearch
DropdownSearch is a a dropdown menu that allows you to select a string either by clicking on a menu option or
by entering the string yourself on a UITextfield. By choosing to type the string, you filter the options 
displayed by the menu, providing the user an easier searching mechanism. This is a component designed for
Swift UI.

Watch this demo!
[![Watch the Video](https://img.youtube.com/vi/mHPsp_CRvEA/0.jpg)](https://www.youtube.com/watch?v=mHPsp_CRvEA)

## Installation

### Manual
0. Copy and paste UIElement.swift and DropdownSearch.swift to your Xcode project.

### CocoaPods
1. Install the latest release of CocoaPods:
```bash
gem install cocoapods
```
2. Navigate to your Xcode project's root directory in the terminal and create a
   Podfile. You can do this with:
```bash
pod init
```
3. Open the Podfile using a text editor and specify the pods you want to use. Here is an
   example:
```bash
target 'YourProjectName' do

  # Pods for YourProjectName
  pod 'DropdownSearch', :git => 'https://github.com/isabellanoriega99/DropdownSearch.git', :tag => '1.0.0'
  # The 'tag' refers to the version wanted
end
```
4. Run the following line:
```bash
pod install
```
5. Go ahead and start using the Pod!

## Usage
The DropdownSearch is a UI Component and should be used accordingly. Below, the structure of how to implement it
and use it is provided.
```swift
DropdownSearch(stringToCollect: Binding<String>, placeholderText: String, options: [String],
               dropdownWidth: CGFloat, dropdownColor: Color, textfieldWidthPercentage: CGFloat,
               UIElementHeightPercentage: CGFloat)
```

### Variable Definition
- stringToCollect: as is the purpose of a UITextfield, DropdownSearch too is meant to pass down the entered
  string. User must provide a @State/@Published var String to address the stringToCollect from the menu.
- placeholderText: text shown as a placeholder in the Textfield.
- options: create an array of strings with the options you would like to display in the menu.
- dropdownWidth: recommended values are ~ 0.1-1.0 ~. This belongs to the screen width percentage the dropdown
  menu is going to embrace.
- dropdownColor: choose from the available or custom-made colors provided by Swift UI to add color to your
  dropdown menu.
- textfieldWidthPercetage: recommended values are ~ 0.1-1.0 ~. This belongs to the screen width percentage the
  textfield is going to embrace.
- UIElementHeightPercentage: recommended values are ~ 0.1-1.0 ~. This belongs to the screen height percentage
  this DropdownSearch component is going to embrace. This value has a direct control over the quantity of
  items being displayed by the menu without the need to scroll down.

For more, take a look at the Example provided. 

## License
This code is distributed under the terms and conditions of the MIT license.
