import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teodolito/app/page/deployment_page.dart';
import 'package:teodolito/app/page/drawer/drawer_item.dart';
import 'package:teodolito/app/page/drawer/drawer_items.dart';
import 'package:teodolito/app/page/home/home_page.dart';
import 'package:teodolito/app/page/performance_page.dart';
import 'package:teodolito/app/page/resources_page.dart';
import 'package:teodolito/app/page/samples_page.dart';
import 'package:teodolito/app/page/testing_page.dart';

import 'navigation_provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safeArea =
        EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return SizedBox(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: const Color(0xff006494),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24).add(safeArea),
                width: double.infinity,
                color: Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 24),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 24),
              const Divider(color: Colors.white70),
              const SizedBox(height: 24),
              buildList(
                indexOffset: itemsFirst.length,
                items: itemsSecond,
                isCollapsed: isCollapsed,
              ),
              const Spacer(),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = items[index];

          return buildMenuItem(
            isCollapsed: isCollapsed,
            text: item.title,
            icon: item.icon,
            onClicked: () => selectItem(context, indexOffset + index),
          );
        },
      );

  void selectItem(BuildContext context, int index) {
    // ignore: prefer_function_declarations_over_variables
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        navigateTo(const HomePage());
        break;
      case 1:
        navigateTo(const SamplesPage());
        break;
      case 2:
        navigateTo(const TestingPage());
        break;
      case 3:
        navigateTo(const PerformancePage());
        break;
      case 4:
        navigateTo(const DeploymentPage());
        break;
      case 5:
        navigateTo(const ResourcesPage());
        break;
    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) {
    const color = Colors.white;
    final leading = Icon(icon, color: color);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClicked,
            )
          : ListTile(
              leading: leading,
              title: Text(text,
                  style: const TextStyle(color: color, fontSize: 16)),
              onTap: onClicked,
            ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    const double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : const EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: SizedBox(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider =
                Provider.of<NavigationProvider>(context, listen: false);

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => isCollapsed
      ? const FlutterLogo(size: 48)
      : Row(
          children: const [
            SizedBox(width: 24),
            FlutterLogo(size: 48),
            SizedBox(width: 16),
            Text(
              'Teodolito Online',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        );
}
