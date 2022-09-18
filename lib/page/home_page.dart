part of 'page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    height: 2000,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xffFBFBFD),
                            Color(0xffF0F1F6),
                          ])),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: margin, top: 29),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Moviez',
                                  style: pageNameStyle,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Watch much easier',
                                  style: genreStyle,
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(
                                Icons.search,
                                size: 30,
                              ),
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const SearchPage())),
                            ),
                            SizedBox(
                              width: 11,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 280,
                          child: ListView.builder(
                            clipBehavior: Clip.none,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final Movie movie = movieList[index];
                              return Container(
                                width: 300,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 24, bottom: 19),
                                      child: Material(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(20),
                                        elevation: 5,
                                        shadowColor: Color(0xff5E38E5),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.asset(
                                            movie.imagePath,
                                            width: 356,
                                            height: 200,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 280,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                movie.title,
                                                style: titleStyle,
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                movie.genreStyles.join(", "),
                                                style: genreStyle,
                                              ),
                                            ],
                                          ),
                                          ratingStars(movie.rating)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: movieList.length,
                          ),
                        ),
                        Text(
                          'From Disney',
                          style: pageNameStyle.copyWith(fontSize: 24),
                        ),
                        SizedBox(height: 20),
                        SizedBox(child: listMovies(movieList))
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
