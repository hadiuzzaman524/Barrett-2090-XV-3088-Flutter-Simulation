import '../services/model/tutorial_model.dart';

class AppConstant {
  static final List<TutorialModel> barretFrequency = [
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
    TutorialModel(
        details:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        title: "Lorem Ipsum is simply dummy text"),
  ];
  static final List<TutorialModel> barretSellCall = [];
  static final List<TutorialModel> barretPowerSetup = [];

  static final List<TutorialModel> xvFrequency = [];
  static final List<TutorialModel> xvSellCall = [];
  static final List<TutorialModel> xvPowerSetup = [];

  static List<String> xvList = [];

  static String addXvDevice({required String title}) {
    if (xvList.length < 2) {
      xvList.add(title);
      return "Device added";
    }
    return "You already add two devices";
  }

  static String deleteXvDevice({required int index}) {
    xvList.removeAt(index);
    return "Device removed";
  }
}
