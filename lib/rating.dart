import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key, this.rating = 0, this.size = 20});
  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    final int filledStars = rating.floor();
    final bool hasHalfStar = (rating - filledStars) >= 0.5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < filledStars) {
          // Filled star
          return Icon(
            Icons.star,
            size: size,
            color: Colors.blueAccent,
          );
        } else if (index == filledStars && hasHalfStar) {
          // Half-filled star
          return Icon(
            Icons.star_half,
            size: size,
            color: Colors.blueAccent,
          );
        } else {
          // Empty star
          return Icon(
            Icons.star_border,
            size: size,
            color: Colors.blueAccent,
          );
        }
      }),
    );
  }
}
