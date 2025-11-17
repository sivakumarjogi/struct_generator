struct_generator

A lightweight and powerful CLI tool to generate folder structure and page files inside the lib/ directory in Flutter projects.
This package helps developers maintain a clean, consistent, and scalable architecture without manually creating folders and files every time.

Features

Automatically creates folders inside lib/

Generates page files with correct class names

Very fast CLI command

Supports custom output directories (-o)

Maintains consistent project structure

Avoids repetitive manual file creation

Ideal for medium and large Flutter applications

Installation

Add the package to your project:

dev_dependencies:
struct_generator: ^1.0.0


Activate globally:

dart pub global activate struct_generator


Or run locally:

dart run struct_generator

Usage
Generate a new page
struct_generator show page home -o pages


This will generate:

lib/
└─ pages/
└─ home/
home_page.dart

Generated File Example

home_page.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Home')),
body: const Center(
child: Text('Home Page'),
),
);
}
}

How It Works

The generator:

Takes the name you pass (home)

Converts it to a class name (HomePage)

Creates the folder automatically under lib/

Generates the Dart file inside it using a template

Example internal logic:

final libPath = p.join('lib', outputDir);
final dir = Directory(p.join(libPath, name));
dir.createSync(recursive: true);
final filePath = p.join(dir.path, '${name}_page.dart');

Folder Structure Example
lib/
├─ pages/
│   └─ home/
│        home_page.dart
├─ widgets/
├─ models/
└─ ...

Advantages

Saves time by avoiding manual folder and file creation

Ensures consistent file and folder naming

Improves developer productivity

Suitable for large and enterprise-level Flutter apps

Fully customizable templates and structure

FAQ
Can I generate inside nested folders?

Yes.

Example:

struct_generator show page login -o features/auth


Creates:

lib/features/auth/login/login_page.dart

Do I need to create folders manually?

No. The generator creates all folders automatically.

Contributing

Pull requests and feature suggestions are welcome.

License

MIT License