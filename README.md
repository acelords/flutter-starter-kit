# Flutter Starter Kit (Boilerplate) using the BLoC Pattern

A Flutter starter application that utilizes the BLoC Pattern.
You can read more at [this Medium's excellent post](https://medium.com/flutter-community/handling-network-calls-like-a-pro-in-flutter-31bd30c86be1)

![Screenshot](assets/images/collage2.png?raw=true "Screenshot 1")
![Screenshot](assets/images/collage1.png?raw=true "Screenshot 2")

## Features
- Centralized place to manage your application's colors/branding (`lib > utils > styles`)
- Centralized place to manage your application's constants/url/keys (`lib > utils > constants`)
- **BLoC Pattern** when fetching and posting data over the internet.
- **Logically & Naturally organized** files & folders.
    - **api** - hold all your common api concerns (ApiBaseHelper, ApiResponse, AppException)
    - **blocs** - hold all your blocs (Streams - provide data to the views *relate to controllers in Laravel*)
    - **models** - hold all your models (*relate to models in Laravel*)
    - **repositories** - hold all your repositories (CRUD operations)
    - **responses** - hold all your responses 
    - **utils** - hold all your utility files
    - **views** - hold all your views/ui (*relate to views in Laravel*)
        - **partials** - hold all your commonly used widgets (ApiError, Loading)

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

## AOB
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
