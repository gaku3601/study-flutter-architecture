import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:study_flutter_architecture/ui/pages/home/home_view_model.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = useProvider(homeViewModelProvider);
    useMemoized(() => vm.fetchMemo());
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(vm.memo.id),
                Text(vm.memo.title),
                Text(vm.memo.contents),
              ],
            ),
            ElevatedButton(
              child: const Text('update'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
              ),
              onPressed: vm.updateMemo,
            ),
          ],
        ),
      ),
    );
  }
}
