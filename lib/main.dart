import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'router.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider(
            builder: (context) => Router(),
          )
        ],
        child: const App(),
      ),
    );
