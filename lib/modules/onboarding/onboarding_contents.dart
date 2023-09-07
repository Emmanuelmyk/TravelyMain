class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Welcome to Travely",
    image: "assets/png/Onboarding1.png",
    desc:
        "Whether you need to transport heavy equipment, construction materials, domestic goods, or vehicles, we've got you covered.",
  ),
  OnboardingContents(
    title: "Hassle-Free Hauling",
    image: "assets/png/Onboarding2.png",
    desc:
        "As an Importer, agent or cargo owner you can request a truck to transport goods anywhere in Nigeria. Browse through a variety of truck options.",
  ),
  OnboardingContents(
    title: "You Own Or Manage Trucks?",
    image: "assets/png/Onboarding3.png",
    desc:
        "Grow Your Fleet with Trusted Drivers. Connect with Drivers and Manage Assigned Trucks.",
  ),
];
