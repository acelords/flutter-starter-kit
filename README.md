# Flutter Starter Kit (Boilerplate) using the BLoC Pattern

A Flutter starter application that utilizes the BLoC Pattern.
You can read more at [this Medium's excellent post](https://medium.com/flutter-community/handling-network-calls-like-a-pro-in-flutter-31bd30c86be1)

![Screenshot](assets/images/collage2.png?raw=true "Screenshot 1")
![Screenshot](assets/images/collage1.png?raw=true "Screenshot 2")
![Screenshot](assets/images/screenshot3.jpg?raw=true "Screenshot 3")

## Features
- Centralized place to manage your application's colors/branding (`lib > utils > styles`)
- Centralized place to manage your application's constants/url/keys (`lib > utils > constants`)
- **BLoC Pattern** when fetching and posting data over the internet.
- **Logically & Naturally organized** files & folders.
    - **api** - hold all your common api concerns (ApiBaseHelper, ApiResponse, AppException)
    - **blocs** - hold all your blocs (Streams - provide data to the views. *relate to controllers in Laravel*)
    - **models** - hold all your models (*relate to models in Laravel*)
    - **repositories** - hold all your repositories (CRUD operations)
    - **responses** - hold all your responses 
    - **utils** - hold all your utility files
    - **views** - hold all your views/ui (*relate to views in Laravel*)
        - **partials** - hold all your commonly used widgets (ApiError, Loading)
- Google AdMob ready
- Firebase FCM ready

Sample pages included:
- Splash Screen
- Intro Screens (when app installed)
- Homepage
- About
- Rate App
- Refer a Friend
- Login
- flutter tips (Sample content page)
- Unknown Page (The fallback page when router doesn't find page specified in navigation)
- Movies List (Demonstrates BLoC Pattern when fetching a list of movies)


## Crowdfunding
<a href="https://patreon.com/lexxyungcarter"><img src="https://c5.patreon.com/external/logo/become_a_patron_button.png" alt="Patreon donate button" /> </a>

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/P5P81D3VE)

It's also possible to buying products and merchandise at [Marketplace](https://store.acelords.space).

## Getting Started
To safely start off your new flutter application while basing it off this project:
- `git clone git@github.com:lexxyungcarter/flutter-starter-kit.git myapp`
- Then open the folder inside **Android Studio** (Sorry `vscode` guys).
- Using **Android Studio**, update the `namespace` of your project. 
- You're good to go
- Go under `lib > utils` folder and update your `constants` and `styles` file accordingly.
- You can even create an `env.dart` file inside there to store your *secret keys* such as *api keys* while testing. This file will not be saved in git for privacy concerns

### How to rename to your namespace (technically, to your appId)
Say, your new `appId` is meant to be `example.company.myapp`, here's how to go about it:
- Ensure **Android Studio** has finished indexing your project. **VERY IMPORTANT**
- Making sure you're in the **Project Viewer* mode, expand on the **starterkit_android** to its entirety
- As you can see, the current `nammespace` is set to `space.acelords.starterkit`
- Right-click on `space`, select `refactor`>`rename` and rename to your desired name, e.g. `example`
- Select **Do Refactor** on all files presented at the terminal.
- Repeat the same steps for the other parts of the `namespace`, i.e. `acelords` => `example` and `starterkit` => `myapp`
- Confirm the namespace changing in `AppManifest` and all `build,gradle` files.
- You're good to proceed building your app.

## Building in DEV and Deploying to PRODUCTION
When building your app, you may need to set some things to testing (such as **Google Ads**) to avoid any penalties. And when deploying, you may also need to revert a setting to production mode (such as **Google Ads** also to display real ads)

### Setting up for Local Development
- Go to `lib > utils > admob_constants.dart` file
- Set `static bool testing = true;`
- Go to `lib > utils > constants.dart` file
- Set `static bool testing = true;`

### Setting up for Production Development
- Go to `lib > utils > admob_constants.dart` file
- Set `static bool testing = false;`
- Go to `lib > utils > constants.dart` file
- Set `static bool testing = false;`

Also ensure you have provided your correct Google Ad Units in `admob_constants.dart` file. This way, you'll ensure your app displays correct ads in PlayStore.

> NB: To deploy Flutter app to store for the first time, you might need to read up on [How To](https://flutter.dev/docs/deployment/android). These instructions assume you already know how to. 

### Google AdMob
To setup Google Ads, 
- Update this file accordingly: `lib > utils > admob_constants.dart`.
- Update the app's `build.gradle` (located under `android > app > build.gradle`) and go to line `68`. Update as instructed in the comments. 
- Update the projects' `build.gradle` (located under `android > build.gradle`) and go to line `12`. Update as instructed in the comments. 

Remember to update **Your_Admob_App_ID** in the respective platforms. 
##### For iOS
- Go to `ios > Runner > Info.plist` file
- Navigate to line `#45` and update **Your_Admob_App_ID** accordingly.

##### For Android
- Go to `android > app > src > main > AndroidManiifest.xml` file
- Navigate to line `#16` and update **Your_Admob_App_ID** accordingly.

### FaceBook Ads
The setup for facebook ads is similar. The same file `lib > utils > admob_constants.dart` can be used/modified or another new file created for easier ads management.


### Setting up FCM - Firebase Cloud Messaging
- Go to `lib > utils > constants.dart` file
- Search line #36 `static String publicTopicKey = testing ? "testing" : "public";`
- Set the topic you'd like to always post to once app is run
- Update **AndroidManifest.xml** file  `android > app > src > main > AndroidManifest.xml`. Go to line `20` and update accordingly.
- You can also update **Colors** file `android > app > src > main > res > values > colors.xml` to match your app's theme color.

For apps requiring many topics, you can register multiple topics as required.
> NB: Ensure you understand FCM from the developers console at Google. A medium article is under authoring to explain this further.

In case you need the **Firebase Functions** setup project, contact us and we'll gladly organize how. It is written in **Node**. **Firebase Functions** can automatically send notifications to your users when a CRUD operation happens in **Firebase CloudStore** e.g. a new order, a new blog post, a team won, or an invoice payment. Your imagination is the limit.

## Updating Launcher Icon
Design your app logo, preferably in **1024x1024** size (px). 
Once done, open [https://appicon.co/#app-icon](https://appicon.co/#app-icon) in your browser and generate a new set of icons.
- Place **appstore.png** to `assets > icon` and rename it to **icon.png**
- Copy the other folders to their respective locations. For instance, on android it is `android > app > src > main > res`.
> NB: You might need to manually remove **Icon** files from the folders. The website weirdly adds the unnecessary files, hindering a successful build
- Once done, run this command in terminal: `flutter pub run flutter_launcher_icons:main`
 

## AOB
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Contributing?
Suggestions are welcome and any contributions whatsoever are highly valued. If feeling a little bit shy, feel free to send an email to 
- [AceLords](mailto:info@acelords.space).
- [Lexx YungCarter](mailto:lexx@acelords.space).


## Credits
- [Lexx YungCarter](https://github.com/lexxyungcarter)
- [AceLords](mailto:info@acelords.space)
- Google - For creating Flutter!