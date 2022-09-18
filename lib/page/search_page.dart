part of 'page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Movie> newMovies = [];

  @override
  void initState() {
    newMovies = movieList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Suggest Movie',
          style: titleStyle.copyWith(color: Colors.white,fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            minimumSize: Size(220, 50),
            shape: StadiumBorder(),
            shadowColor: Color(0xffC4C8D7)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  height: 1500,
                  width: MediaQuery.of(context).size.width * 0.7,
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
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: margin, top: 38),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: margin),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: primaryColor,
                              ),
                              border: InputBorder.none,
                            ),
                            style: searchStyle,
                            onChanged: (value) => searchMovie(value),
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Text('Search Result (${(newMovies.length.toString())})',
                            style: pageNameStyle.copyWith(fontSize: 20)),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: newMovies.isNotEmpty
                              ? listMovies(newMovies)
                              : Text(
                                  'No results found',
                                  style: genreStyle,
                                ),
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void searchMovie(String query) {
    List<Movie> result = [];
    if (query.isEmpty) {
      result = movieList;
    } else {
      result = movieList.where((element) {
        final movieTitle = element.title.toLowerCase();
        final input = query.toLowerCase();
        return movieTitle.contains(input);
      }).toList();
    }
    setState(() {
      newMovies = result;
    });
  }
}
