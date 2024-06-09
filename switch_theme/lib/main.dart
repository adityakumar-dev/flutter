import 'package:flutter/material.dart';
import 'package:switch_theme/theme.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.system,
      light: AppTheme.lightTheme,
      dark: AppTheme.darkTheme,
      builder: (light, dark) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: light,
        darkTheme: dark,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final adaptiveTheme = AdaptiveTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Theme Change"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'current Theme : ${AdaptiveTheme.of(context).mode}',
            ),
            RadioListTile(
                title: const Text('System'),
                value: AdaptiveThemeMode.system,
                groupValue: AdaptiveTheme.of(context).mode,
                onChanged: (value) => adaptiveTheme.setSystem()),
            RadioListTile(
                title: const Text('Light'),
                value: AdaptiveThemeMode.light,
                groupValue: AdaptiveTheme.of(context).mode,
                onChanged: (value) => adaptiveTheme.setLight()),
            RadioListTile(
                title: const Text('Dark'),
                value: AdaptiveThemeMode.dark,
                groupValue: AdaptiveTheme.of(context).mode,
                onChanged: (value) => adaptiveTheme.setDark()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark
              ? AdaptiveTheme.of(context).setLight()
              : AdaptiveTheme.of(context).setDark();
        },
        tooltip: 'Increment',
        child: AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode),
      ),
    );
  }
}
