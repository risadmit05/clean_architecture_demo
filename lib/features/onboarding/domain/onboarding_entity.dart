import 'package:equatable/equatable.dart';

class OnboardingEntity extends Equatable {
  final String image;
  final String title;
  final String subTitle;

  const OnboardingEntity({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  List<Object?> get props => [image, title, subTitle];
}
