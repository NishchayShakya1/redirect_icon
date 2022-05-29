# Redirect Icon

Redirect Icon package lets you add a beautiful clickable Icon to your Flutter app.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  redirect_icon: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:redirect_icon/redirect_icon.dart';
```

## Example
There are a number of properties that you can modify:

 - url
 - icon             
 - radius 
 - size
 - iconColor
 - circleAvatarColor

 <hr>

 <table>
<tr>
<td>

```dart
class FancyScreen extends StatelessWidget {  
  const FancyScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Column(
        children: [
          const SizedBox(height: 8),
          const Text(
            'Nishchay Shakya',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              RedirectSocialIcon(
                url: "https://www.instagram.com/nishchayshakyaa/",
                icon: FontAwesomeIcons.instagram,
                radius: 25,
                size: 30,
                iconColor: Colors.white,
                circleAvatarColor: Colors.black,
              ),
              SizedBox(width: 12),
             RedirectSocialIcon(
                url: "https://www.instagram.com/nishchayshakyaa/",
                icon: FontAwesomeIcons.instagram,
                radius: 25,
                size: 30,
                iconColor: Colors.white,
                circleAvatarColor: Colors.black,
              ),
              SizedBox(width: 12),
              RedirectSocialIcon(
                url: "https://www.instagram.com/nishchayshakyaa/",
                icon: FontAwesomeIcons.instagram,
                radius: 25,
                size: 30,
                iconColor: Colors.white,
                circleAvatarColor: Colors.black,
              ),
              SizedBox(width: 12),
              RedirectSocialIcon(
                url: "https://www.instagram.com/nishchayshakyaa/",
                icon: FontAwesomeIcons.instagram,
                radius: 25,
                size: 30,
                iconColor: Colors.white,
                circleAvatarColor: Colors.black,
              ),
            ],
          ),
        ],
      ); 
    );  
  }  
}
```

</td>
<td>
<img  src="https://raw.githubusercontent.com/NishchayShakya1/images/main/Untitled%20design.png"  alt="">
</td>
</tr>
</table>

## Getting Error

Add these in your android/app/src/main/AndroidManifest.xml

```dart
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.yourpackagename">
  <uses-permission android:name="android.permission.INTERNET"/>
    <queries>
<!-- If your app opens https URLs -->
<intent>
<action android:name="android.intent.action.VIEW" />
<data android:scheme="https" />
</intent>
<!-- If your app makes calls -->
<intent>
<action android:name="android.intent.action.DIAL" />
<data android:scheme="tel" />
</intent>
<!-- If your app emails -->
<intent>
<action android:name="android.intent.action.SEND" />
<data android:mimeType="*/*" />
</intent>
</queries>
</manifest>
```