# struct_generator

A lightweight and flexible CLI tool to automatically generate folder
structures and page files inside the **lib/** directory of any Flutter
project.\
It helps developers maintain a **clean, scalable, and consistent
architecture** without manually creating repetitive folders and Dart
files.

------------------------------------------------------------------------

## ✨ Features

-   🚀 Automatically creates folders inside `lib/`
-   📄 Generates page files with correct class names
-   📁 Supports custom output directory (`-o`)
-   ⚡ Very fast and simple to use
-   🔄 Avoids repetitive manual file creation
-   🧩 Works with any Flutter architecture (Bloc, MVVM, MVC, Clean,
    Provider, etc.)
-   🛠 Ideal for medium & large Flutter apps

------------------------------------------------------------------------

## 📦 Installation

Add this package to your `pubspec.yaml`:

``` yaml
dev_dependencies:
  struct_generator: ^1.0.0
```

Then run:

``` sh
flutter pub get
```

To use globally:

``` sh
dart pub global activate struct_generator
```

------------------------------------------------------------------------

## 🖥️ Usage

### 1. Show available generators

``` sh
struct_generator show
```

### 2. Generate a page inside lib/pages

``` sh
struct_generator show page home
```

Creates:

    lib/pages/home/home_page.dart

### 3. Generate inside custom folder

``` sh
struct_generator show page home -o lib/screens
```

Creates:

    lib/screens/home/home_page.dart

------------------------------------------------------------------------

## 📁 Generated File Example

``` dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(child: Text('Home Page')),
    );
  }
}
```

------------------------------------------------------------------------

## 🧠 Advantages

Feature                    Benefit
  -------------------------- --------------------------------
Auto folder creation       Saves time & avoids mistakes
Auto file generation       Prevents boilerplate work
Consistent structure       Clean, scalable project
Works with architectures   Bloc, MVVM, Clean, Provider...
CLI tool                   Simple and fast to use

------------------------------------------------------------------------

## 📚 Example Workflow

``` sh
struct_generator show page login
struct_generator show page dashboard
struct_generator show page profile
```

Outputs:

    lib/pages/login/login_page.dart
    lib/pages/dashboard/dashboard_page.dart
    lib/pages/profile/profile_page.dart

------------------------------------------------------------------------

## 📄 License

MIT License

