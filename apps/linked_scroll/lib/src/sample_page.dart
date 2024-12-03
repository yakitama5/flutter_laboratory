import 'package:flutter/material.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';

/// LinkedScroll
class LinkedScrollPage extends StatefulWidget {
  const LinkedScrollPage({super.key});

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<LinkedScrollPage> {
  final LinkedScrollControllerGroup _controllerGroup =
      LinkedScrollControllerGroup();

  static const imageHeight = 480.0;
  static const duplicateHeight = 16.0;

  late final ScrollController _appBarController;
  late final ScrollController _bodyController;

  @override
  void initState() {
    super.initState();
    _appBarController = _controllerGroup.addAndGet();
    _bodyController = _controllerGroup.addAndGet();
  }

  @override
  void dispose() {
    _appBarController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body > AppBarの順で配置し、`LinkedScroll`で同期する
      body: Stack(
        children: [
          CustomScrollView(
            controller: _appBarController,
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: imageHeight,
                title: const Text('Linked Scroll Controller Group'),
                flexibleSpace: FlexibleSpaceBar(
                  background: OverflowBox(
                    child: Image.network(
                      height: imageHeight,
                      fit: BoxFit.fitWidth,
                      'https://placehold.jp/f06b24/ffffff/270x480.png',
                    ),
                  ),
                ),
              ),
              const SliverFillRemaining(),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight),
              child: CustomScrollView(
                controller: _bodyController,
                slivers: [
                  SliverPadding(
                    // AppBarとBodyに重なりを持たせて表示
                    padding: const EdgeInsets.only(
                      top: imageHeight - kToolbarHeight - duplicateHeight,
                    ),
                    sliver: SliverList.separated(
                      itemBuilder: (context, index) {
                        if (index <= 0) {
                          return const _FirstTile();
                        }
                        return ListTile(title: Text('Index $index'));
                      },
                      separatorBuilder: (_, __) => const Divider(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FirstTile extends StatelessWidget {
  const _FirstTile();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: cs.primary,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: const SizedBox(
        height: 160,
        width: double.infinity,
      ),
    );
  }
}
