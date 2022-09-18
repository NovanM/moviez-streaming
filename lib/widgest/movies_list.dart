part of 'widgets.dart';

Widget listMovies(List movies) {
  return ListView.builder(
    shrinkWrap: true,
    physics: BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      final Movie movie = movies[index];
      return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                movie.imagePath,
                width: 100,
                height: 127,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: titleStyle,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  movie.genreStyles.join(", "),
                  style: genreStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                ratingStars(movie.rating)
              ],
            )
          ],
        ),
      );
    },
    itemCount: movies.length,
  );
}
