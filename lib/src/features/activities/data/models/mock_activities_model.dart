import 'package:flutter/material.dart';
import 'package:townsquare/src/core/app/colors.dart';
import 'package:townsquare/src/core/app/medias.dart';

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

class MockActivitiesModel {
  final String title;
  final String time;
  final String duration;
  final String location;
  final int price;
  final int spot;
  final List<MockActivityTag> tags;
  final List<String> categories; // Add categories field

  MockActivitiesModel({
    required this.title,
    required this.time,
    required this.duration,
    required this.price,
    required this.spot,
    required this.location,
    required this.tags,
    required this.categories, // Include it in the constructor
  });
}

// Updated Mock Data
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
    categories: ["Calm", "Creative"], // Add corresponding categories
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
    categories: ["All", "Sports"], // Add corresponding categories
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
    categories: ["Sports"], // Add corresponding categories
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
    categories: ["Food", "Calm"], // Add corresponding categories
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
    categories: ["Creative"], // Add corresponding categories
  ),
];
