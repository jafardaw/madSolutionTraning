import 'package:flutter/material.dart';
import 'package:madsolutionproject/Feture/profile/presentation/view/widget/profile_card_stat.dart';
import 'package:madsolutionproject/Feture/profile/presentation/view/widget/profile_option.dart';
import 'package:madsolutionproject/core/util/images_gen.dart';
import 'package:madsolutionproject/core/util/styel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // خلفية الصفحة الأساسية
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(Assets.imagesAvatar, fit: BoxFit.cover),
                  Container(color: Colors.black.withValues(alpha: 0.3)),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                  Assets.imagesAvatar,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      Icons.edit,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Ahmad Al-Najjar",
                            style: AppTextStyles.calibri16BoldWhite,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "ahmad.najjar@email.com",
                            style: AppTextStyles.calibri13ItalicGrey600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // المحتوى
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ProfileCardStat(
                        title: "Orders",
                        value: "24",
                        icon: Icons.shopping_bag,
                      ),
                      ProfileCardStat(
                        title: "Rating",
                        value: "4.8",
                        icon: Icons.star,
                      ),
                      ProfileCardStat(
                        title: "Wishlist",
                        value: "12",
                        icon: Icons.addchart_sharp,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const ProfileOption(icon: Icons.edit, title: "Edit Profile"),
                  const ProfileOption(icon: Icons.settings, title: "Settings"),
                  const ProfileOption(icon: Icons.language, title: "Language"),
                  const ProfileOption(
                    icon: Icons.dark_mode,
                    title: "Dark Mode",
                  ),
                  const ProfileOption(
                    icon: Icons.logout,
                    title: "Logout",
                    isDestructive: true,
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
