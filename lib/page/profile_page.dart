import 'package:fashion_app/constant/color_constant.dart';
import 'package:fashion_app/constant/constant.dart';
import 'package:fashion_app/constant/asset_constants.dart';
import 'package:fashion_app/constant/product_values.dart';
import 'package:fashion_app/model/item_model.dart';
import 'package:fashion_app/product/profile_grid.dart';
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
        ProductValues.spacer,
        const CircleAvatar(
          backgroundImage: AssetImage(AssetConstant.avatarImage),
          radius: ProductValues.profileImageRadius,
        ),
        ProductValues.spacer,
        Text(
          Constant.accountName,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: Constant.fontFamily,
              ),
        ),
        ProductValues.spacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ProductValues.profileBarSpacer,
            ColumnItems(
              count: Constant.followingCount,
              text: Constant.following,
            ),
            ColumnItems(
              count: Constant.followersCount,
              text: Constant.followers,
            ),
            ColumnItems(
              count: Constant.likesCount,
              text: Constant.likes,
            ),
            ProductValues.profileBarSpacer,
          ],
        ),
        ProductValues.spacer,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabBar(
              isScrollable: true,
              controller: tabController,
              indicator: const BoxDecoration(borderRadius: BorderRadius.zero),
              labelColor: ProductColors.labelColor,
              labelStyle: Theme.of(context).textTheme.headline5?.copyWith(
                    fontFamily: Constant.fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
              onTap: (tapIndex) {
                setState(() {
                  selectedIndex = tapIndex;
                });
              },
              tabs: AssetConstant.tabList,
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              ProfileGrid(
                itemCount: widget.itemList.length,
                imagePath: widget.itemList,
              ),
              centeredMessage(
                context,
                message: Constant.vidMessage,
              ),
              centeredMessage(
                context,
                message: Constant.tagMessage,
              ),
            ],
          ),
        )
      ],
    );
  }

  Center centeredMessage(BuildContext context, {required String message}) {
    return Center(
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontFamily: Constant.fontFamily,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
