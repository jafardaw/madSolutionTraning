import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madsolutionproject/Feture/figma/RoleSelectionScreen/presentation/view/widget/buildr_role_selection_card.dart';
import 'package:madsolutionproject/core/util/app_router.dart';
import 'package:madsolutionproject/core/util/styel.dart';
import 'package:madsolutionproject/core/utils/images_gen.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //  buildThemeSwitchTile(context),
                Text(
                  'L E T \' S G E T  Y O U \n S T A R T E D !',
                  textAlign: TextAlign.center,

                  style: AppTextStyles.outfitBoldWhite(
                    context,
                  ).copyWith(letterSpacing: 2),
                ),
                SizedBox(height: 60.h), // Spacer
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Skip action
                      },
                      child: Text(
                        'Skip',
                        style: AppTextStyles.nunitoTextStyle(context),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        AppRoutes.goNamed(context, AppRoutes.loginViewFigma);
                      },
                      child: Text(
                        'Sign in',
                        style: AppTextStyles.nunitoTextStyle(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Spacer
                // Freelancer and Client role selection cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: buildRoleSelectionCard(
                        context,
                        image: Assets.imagesSearchIcon,
                        text: 'I\'m a freelancer',
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: buildRoleSelectionCard(
                        context,
                        image: Assets.imagesEmailIcon,
                        // Assets.imagesFrame12,
                        text: 'I\'m a client',
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40), // Spacer
                // Role switch instruction text
                Text(
                  'you can switch your role later from settings .',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.outfitBoldWhite(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
