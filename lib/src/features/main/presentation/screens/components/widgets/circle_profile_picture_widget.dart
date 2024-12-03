part of '../../main_screen.dart';

Widget circleProfilePicture({double? heigth, double? width}) {
  return Container(
                    clipBehavior: Clip.hardEdge,
                    height:heigth ?? 30,
                    width:width ?? 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: const CustomNetworkImage(
                      imageUrl:
                          "https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg?s=612x612&w=0&k=20&c=akS4eKR3suhoP9cuk7_7ZVZrLuMMG0IgOQvQ5JiRmAg=",
                      boxFit: BoxFit.cover,
                    ),
                  );
}
