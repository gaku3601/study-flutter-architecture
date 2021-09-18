import 'package:auto_route/auto_route.dart';
import 'package:study_flutter_architecture/ui/pages/first/first_page.dart';
import 'package:study_flutter_architecture/ui/pages/home/home_page.dart';

export 'app_route.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      path: '/first',
      page: FirstPage,
    ),
  ],
)
class $AppRouter {}
