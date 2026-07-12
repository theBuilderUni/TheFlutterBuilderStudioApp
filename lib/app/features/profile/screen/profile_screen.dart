import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_builder_app/app/constant/resources/app_colors.dart';
import 'package:the_builder_app/app/constant/resources/app_dimens.dart';
import 'package:the_builder_app/app/constant/resources/app_images.dart';
import 'package:the_builder_app/app/constant/resources/app_string.dart';
import 'package:the_builder_app/app/core/base/base_view.dart';
import 'package:the_builder_app/app/features/profile/controller/profile_controller.dart';
import 'package:the_builder_app/app/widget/profile_info_tile.dart';
import 'package:the_builder_app/app/widget/section_card.dart';

class ProfileScreen extends BaseView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.profileTitle),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              AppImages.logo,
              width: 72,
              height: 48,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          final profile = controller.profile.value;

          return ListView(
            padding: const EdgeInsets.all(AppDimens.screenPadding),
            children: [
              _ProfileHeader(profile: profile),
              const SizedBox(height: 20),
              SectionCard(title: 'About', child: Text(profile.about)),
              const SizedBox(height: AppDimens.itemGap),
              SectionCard(
                title: 'Contact',
                child: Column(
                  children: [
                    ProfileInfoTile(
                      icon: Icons.email_outlined,
                      title: 'Email',
                      value: profile.email,
                    ),
                    const SizedBox(height: 10),
                    ProfileInfoTile(
                      icon: Icons.phone_outlined,
                      title: 'Phone',
                      value: profile.phone,
                    ),
                    const SizedBox(height: 10),
                    ProfileInfoTile(
                      icon: Icons.place_outlined,
                      title: 'Location',
                      value: profile.location,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppDimens.itemGap),
              SectionCard(
                title: 'Skills',
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: profile.skills
                      .map(
                        (skill) => Chip(
                          label: Text(skill),
                          backgroundColor: AppColors.primarySoft,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.profile});

  final ProfileInfo profile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppDimens.cardRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppDimens.avatarSize,
            height: AppDimens.avatarSize,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(AppDimens.avatarSize / 2),
              border: Border.all(color: AppColors.accent, width: 4),
            ),
            child: Text(
              _initials(profile.name),
              style: textTheme.headlineMedium?.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            profile.name,
            style: textTheme.headlineMedium?.copyWith(color: AppColors.surface),
          ),
          const SizedBox(height: 6),
          Text(
            profile.role,
            style: textTheme.bodyLarge?.copyWith(color: AppColors.surface),
          ),
        ],
      ),
    );
  }

  static String _initials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) {
      return '?';
    }

    return parts
        .take(2)
        .map((part) => part.characters.first)
        .join()
        .toUpperCase();
  }
}
