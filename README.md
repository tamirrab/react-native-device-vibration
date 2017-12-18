
# react-native-vibration

## Getting started

`$ npm install react-native-vibration --save`

### Mostly automatic installation

`$ react-native link react-native-vibration`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-vibration` and add `RNVibration.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNVibration.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.tamirrabia.vibration.RNVibrationPackage;` to the imports at the top of the file
  - Add `new RNVibrationPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-vibration'
  	project(':react-native-vibration').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-vibration/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-vibration')
  	```

## Usage
```javascript
import RNVibration from 'react-native-vibration';

// TODO: What to do with the module?
RNVibration;
```
  