import 'package:flutter/material.dart';
import 'package:townsquare/src/core/app/colors.dart';
import 'package:townsquare/src/core/app/medias.dart';

class MockActivitiesModel {
  final String title;
  final String time;
  final String duration;
  final String location;
  final int price;
  final int spot;
  final List<MockActivityTag> tags;

  MockActivitiesModel({
    required this.title,
    required this.time,
    required this.duration,
    required this.price,
    required this.spot,
    required this.location,
    required this.tags,
  });
}

class MockActivityTag {
  final String title;
  final String? icon;
  final Color textColor;
  final Color backgroundColor;

  MockActivityTag({
    required this.title,
    this.icon,
    required this.textColor,
    required this.backgroundColor,
  });
}

List<MockActivitiesModel> mockActivities = [
  MockActivitiesModel(
    title: "Beach Yoga",
    time: "08:00",
    duration: "(60 min)",
    location: "La Playa de la Rada",
    price: 9,
    spot: 8,
    tags: [
      MockActivityTag(
        title: "8 spots left",
        textColor: AppColor.kNeutral500,
        backgroundColor: AppColor.kNeutral200,
        icon: kUserIconSvg,
      ),
      MockActivityTag(
        title: "light",
        textColor: Colors.blue,
        backgroundColor: AppColor.kLigthIntensityTagColor,
      ),
    ],
  ),
  MockActivitiesModel(
    title: "Reformer Pilates",
    time: "09:00",
    duration: "(60 min)",
    location: "Wellness Studio",
    price: 15,
    spot: 3,
    tags: [
      MockActivityTag(
        icon: kUserIconSvg,
        title: "3 spots left",
        textColor: AppColor.kNeutral500,
        backgroundColor: AppColor.kNeutral200,
      ),
      MockActivityTag(
        title: "medium",
        textColor: Colors.purple,
        backgroundColor: AppColor.kMediumIntensityTagColor,
      ),
      MockActivityTag(
        title: "childcare",
        textColor: Colors.green,
        backgroundColor: AppColor.kChildCareTagColor,
      ),
    ],
  ),
  MockActivitiesModel(
    title: "5-a-side Football",
    time: "12:30",
    duration: "(45 min)",
    location: "Municipal Sports Center",
    price: 19,
    spot: 0,
    tags: [
      MockActivityTag(
        title: "0 spots left",
        textColor: AppColor.kNeutral500,
        backgroundColor: AppColor.kNeutral200,
        icon: kUserIconSvg,
      ),
      MockActivityTag(
        title: "high",
        textColor: Colors.orange,
        backgroundColor: AppColor.kHighIntensityTagColor,
      ),
      MockActivityTag(
        title: "childcare",
        textColor: Colors.green,
        backgroundColor: AppColor.kChildCareTagColor,
      ),
    ],
  ),
  MockActivitiesModel(
    title: "Standing Tapas Lunch",
    time: "13:15",
    duration: "(60 min)",
    location: "Casa Marina",
    price: 0,
    spot: 9,
    tags: [
      MockActivityTag(
        title: "9 spots left",
        textColor: AppColor.kNeutral500,
        backgroundColor: AppColor.kNeutral200,
      ),
    ],
  ),
  MockActivitiesModel(
    title: "Kids LEGO Club",
    time: "15:00",
    duration: "(Drop-in until 20:00)",
    location: "La Bloqueria",
    price: 10,
    spot: 5,
    tags: [
      MockActivityTag(
        title: "5 spots left",
        textColor: AppColor.kNeutral500,
        backgroundColor: AppColor.kNeutral200,
      ),
      MockActivityTag(
        title: "ages 5 - 12",
        textColor: Colors.green,
        backgroundColor: AppColor.kChildCareTagColor,
      ),
      MockActivityTag(
        title: "workspace",
        textColor: Colors.white,
        backgroundColor: AppColor.kWorkSpaceTagColor,
      ),
    ],
  ),
  MockActivitiesModel(
    title: "5-a-side Football",
    time: "16:00",
    duration: "(60 min)",
    location: "Municipal Sports Center",
    price: 19,
    spot: 4,
    tags: [
      MockActivityTag(
        title: "4 spots left",
        textColor: AppColor.kNeutral500,
        backgroundColor: AppColor.kNeutral200,
      ),
      MockActivityTag(
        title: "high",
        textColor: Colors.orange,
        backgroundColor: AppColor.kHighIntensityTagColor,
      ),
      MockActivityTag(
        title: "childcare",
        textColor: Colors.green,
        backgroundColor: AppColor.kChildCareTagColor,
      ),
    ],
  ),
];
