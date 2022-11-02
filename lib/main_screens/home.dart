import 'package:flutter/material.dart';
import 'package:multi_store_app/galleries/accessories_gallery.dart';
import 'package:multi_store_app/galleries/bags_gallery.dart';
import 'package:multi_store_app/galleries/beauty_gallery.dart';
import 'package:multi_store_app/galleries/electronics_gallery.dart';
import 'package:multi_store_app/galleries/homegarden_gallery.dart';
import 'package:multi_store_app/galleries/kids_gallery.dart';
import 'package:multi_store_app/galleries/men_gallery.dart';
import 'package:multi_store_app/galleries/shoes_gallery.dart';
import 'package:multi_store_app/galleries/women_gallery.dart';

import '../widgets/fake_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100.withOpacity(0.5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const FakeSearch(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.orange,
            indicatorWeight: 8,
            tabs: [
              RepeatedTab(lable: 'Men'),
              RepeatedTab(lable: 'Woman'),
              RepeatedTab(lable: 'Shoes'),
              RepeatedTab(lable: 'Bags'),
              RepeatedTab(lable: 'Electronics'),
              RepeatedTab(lable: 'Accessories'),
              RepeatedTab(lable: 'Home & Garden'),
              RepeatedTab(lable: 'Kids'),
              RepeatedTab(lable: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MenGalleryScreen(),
            WomenGalleryScreen(),
            ShoesGalleryScreen(),
            BagsGalleryScreen(),
            ElectronicsGalleryScreen(),
            AccessoriesGalleryScreen(),
            HomeGardenGalleryScreen(),
            KidsGalleryScreen(),
            BeautyGalleryScreen(),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String lable;
  const RepeatedTab({Key? key, required this.lable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        lable,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
