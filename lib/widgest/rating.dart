part of 'widgets.dart';

Widget ratingStars(double ratingValue) {
  List<Widget> widgets = List.generate(
      5,
      (index) => Icon(
            index < ratingValue ? Icons.star : Icons.star,
            color: index < ratingValue ? ratingColor : const Color(0xffE1E1EA),
          ));

  return Row(
    children: widgets,
  );
}
