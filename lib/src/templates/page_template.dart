String renderPage(String className, String displayName) {
  return """
import 'package:flutter/material.dart';

class ${className}Page extends StatelessWidget {
  const ${className}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('$displayName Page')),
      body: const Center(
        child: Text('This is $displayName page'),
      ),
    );
  }
}
""";
}
