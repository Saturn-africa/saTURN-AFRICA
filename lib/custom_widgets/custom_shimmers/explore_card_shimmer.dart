import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/colors.dart';
import 'package:shimmer/shimmer.dart';

class ExploreCardShimmer extends StatelessWidget {
  const ExploreCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      highlightColor: Colors.white.withOpacity(0.2),
      baseColor: Colors.grey.withOpacity(0.5),
      child: Container(
        height: size.height * 0.75,
        width: size.width * 0.9,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1, color: cardBorderColor)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(20)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 20,
                        width: size.width * 0.25,
                        color: black,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 20,
                        width: size.width * 0.25,
                        color: purple,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              ColumnShimmer(size: size),
              const SizedBox(height: 20),
              ColumnShimmer(size: size),
              const SizedBox(height: 20),
              ColumnShimmer(size: size),
              const SizedBox(height: 20),
              ColumnShimmer(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnShimmer extends StatelessWidget {
  const ColumnShimmer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 20,
          width: size.width * 0.7,
          color: black,
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: purple, borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: purple, borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: purple, borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(width: 15),
              Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: purple, borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
