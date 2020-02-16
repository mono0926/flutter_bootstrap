import 'package:flutter/material.dart';
import 'package:mono_kit/mono_kit.dart';
import 'package:provider/provider.dart';

import 'pages/pages.dart';
import 'router.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    const title = 'mono_kit Demo';
    return MaterialApp(
      navigatorKey: context.watch(),
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      title: title,
      home: const HomePage(),
      onGenerateRoute: Provider.of<Router>(context).onGenerateRoute,
      builder: (context, child) => TextScaleFactor(child: child),
    );
  }
}
