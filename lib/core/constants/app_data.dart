import 'package:protfolio/core/constants/const_texts.dart';
import 'package:protfolio/core/models/model_project.dart';

class AppData {
  static List<ModelProject> projectLists = [
    ModelProject(
        id: "1",
        type: ["Application"],
        title: "VERDEN",
        company: ConstTexts.verdenCompany,
        description: ConstTexts.verdenDesc,
        websiteLink: ConstTexts.verdenWeb,
        appStoreLink: ConstTexts.verdenAppleLink,
        playStoreLink: ConstTexts.verdenAndroidLink,
        tools: ["Flutter", "Firebase", "IOS", "Android","E-Commerce"]),
    ModelProject(
        id: "2",
        type: ["Application"],
        title: "Fit-Sync",
        company: ConstTexts.fitSyncCompany,
        description: ConstTexts.fitSyncDesc,
        playStoreLink: ConstTexts.fitSyncAndroidLink,
        tools: ["Flutter", "Firebase", "IOS", "Android","Fitness","Workout"]),
    ModelProject(
        id: "3",
        type: ["Application"],
        title: "Medica Remainder",
        company: ConstTexts.medicaCompany,
        description: ConstTexts.medicaDesc,
        playStoreLink: ConstTexts.medicaAndroidLink,
        appStoreLink: ConstTexts.medicaAppleLink,
        websiteLink: ConstTexts.medicaWeb,
        tools: ["Flutter", "Firebase", "IOS", "Android"]),
    ModelProject(
        id: "4",
        type: ["Application"],
        title: "Baby Care 360",
        company: ConstTexts.medicaCompany,
        description: ConstTexts.babyDesc,
        playStoreLink: ConstTexts.babyAndroidLink,
        appStoreLink: ConstTexts.babyAppleLink,
        websiteLink: ConstTexts.babyWeb,
        tools: ["Flutter", "Firebase", "IOS", "Android"]),
    ModelProject(
        id: "5",
        type: ["Application"],
        title: "VehiMan",
        company: ConstTexts.medicaCompany,
        description: ConstTexts.vehimanDesc,
        playStoreLink: ConstTexts.vehimanAndroidLink,
        appStoreLink: ConstTexts.vehimanAppleLink,
        websiteLink: ConstTexts.vehimanWeb,
        tools: ["Flutter", "Firebase", "IOS", "Android"]),
    ModelProject(
        id: "6",
        type: ["Application"],
        title: "Pharmapedia Pro",
        company: ConstTexts.verdenCompany,
        websiteLink: ConstTexts.pharmapediaWeb,
        description: ConstTexts.pharmapediaDesc,
      //  appStoreLink: ConstTexts.pharmapediaAppleLink,
        playStoreLink: ConstTexts.pharmapediaAndroidLink,
        tools: ["Flutter", "Sqlite", "Android"]),
    ModelProject(
        id: "6",
        type: ["Application"],
        title: "Pak Lucky Draw",
        company: ConstTexts.fitSyncCompany,
        description: ConstTexts.luckyDesc,
        playStoreLink: ConstTexts.luckyAndroidLink,
        tools: ["Flutter", "Firebase", "Android"]),
    ModelProject(
        id: "6",
        type: ["Application"],
        title: "Auto Master",
        company: ConstTexts.fitSyncCompany,
        description: ConstTexts.autoDesc,
        githubLink: ConstTexts.autoGitHub,
        tools: ["Flutter", "Firebase", "Android"]),
  ];
}