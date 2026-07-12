import 'package:get/get.dart';
import 'package:the_builder_app/app/core/base/base_controller.dart';

class ProfileController extends BaseController {
  final Rx<ProfileInfo> profile = const ProfileInfo(
    name: 'Maya Chen',
    role: 'Junior Flutter Developer',
    location: 'Yangon, Myanmar',
    about:
        'I enjoy turning simple app ideas into polished mobile experiences. This profile is ready for a new color theme, layout, and personal brand.',
    email: 'maya.chen@example.com',
    phone: '+95 9 123 456 789',
    skills: ['Flutter', 'UI Design', 'GetX', 'Branding'],
  ).obs;

  void updateName(String value) {
    profile.value = profile.value.copyWith(name: value);
  }
}

class ProfileInfo {
  const ProfileInfo({
    required this.name,
    required this.role,
    required this.location,
    required this.about,
    required this.email,
    required this.phone,
    required this.skills,
  });

  final String name;
  final String role;
  final String location;
  final String about;
  final String email;
  final String phone;
  final List<String> skills;

  ProfileInfo copyWith({
    String? name,
    String? role,
    String? location,
    String? about,
    String? email,
    String? phone,
    List<String>? skills,
  }) {
    return ProfileInfo(
      name: name ?? this.name,
      role: role ?? this.role,
      location: location ?? this.location,
      about: about ?? this.about,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      skills: skills ?? this.skills,
    );
  }
}
