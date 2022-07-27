import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:fashion_app/product/profile_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final List<ItemModel> itemList;
  const ProfilePage({Key? key, required this.itemList}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Constant.spacer,
        const CircleAvatar(
          backgroundImage: AssetImage(Constant.avatarImage),
          radius: 50,
        ),
        Constant.spacer,
        const Text(
          "@scarlettj",
          style: TextStyle(
            fontFamily: Constant.fontFamily,
            fontWeight: FontWeight.w800,
            fontSize: 25.0,
          ),
        ),
        Constant.spacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SizedBox(width: 20.0),
            ColumnItems(
              count: '1.4K',
              text: 'Following',
            ),
            ColumnItems(
              count: '5M',
              text: 'Followers',
            ),
            ColumnItems(
              count: '17M',
              text: 'Like',
            ),
            SizedBox(width: 20.0),
          ],
        ),
        Constant.spacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabBar(
              isScrollable: true,
              controller: tabController,
              indicator: const BoxDecoration(borderRadius: BorderRadius.zero),
              labelColor: Colors.grey,
              labelStyle:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              onTap: (tapIndex) {
                setState(() {
                  selectedIndex = tapIndex;
                });
              },
              tabs: const [
                Tab(text: "Photos"),
                Tab(text: "Video"),
                Tab(text: "Tagged"),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250.0, crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: Constant.headerCardPadding,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: Constant.profileItemRadius,
                        image: DecorationImage(
                          image: AssetImage(widget.itemList[index].cardImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: widget.itemList.length,
              ),
              Constant.centeredProfileMessage1,
              Constant.centeredProfileMessage2,],
          ),
        )
      ],
    );
  }
}
