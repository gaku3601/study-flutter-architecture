import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:study_flutter_architecture/ui/route/app_route.dart';
import 'package:study_flutter_architecture/util/widget_utils.dart';

class FirstPage extends HookWidget with WidgetUtils {
  final String argContent;
  const FirstPage({
    Key? key,
    required this.argContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = useRouter();
    return Scaffold(
      appBar: AppBar(
        title: const Text('first page'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Text('first page'),
            Text(argContent),
            ElevatedButton(
              child: const Text('back'),
              onPressed: () => router.popUntilRouteWithName(HomeRoute.name),
            ),
          ],
        ),
      ),
    );
  }
}
