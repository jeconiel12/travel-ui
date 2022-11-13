part of '../home_page.dart';

class _RecommendedList extends StatelessWidget {
  static const islandList = [
    {
      'name': 'Wilson Island Tour',
      'location': 'Maldives, Asia',
      'imagePath': 'assets/images/recommended_1.jpg',
      'rating': 4.9
    },
    {
      'name': 'St. Lucia island',
      'location': 'Saint Lucia',
      'imagePath': 'assets/images/recommended_2.jpg',
      'rating': 4.9
    }
  ];

  const _RecommendedList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SectionHeader(
          title: 'Recommended',
          onTap: () {},
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 240,
          child: ListView.builder(
            clipBehavior: Clip.none,
            padding: const EdgeInsets.only(right: 30),
            scrollDirection: Axis.horizontal,
            itemCount: islandList.length,
            itemBuilder: (context, index) {
              return _IslandCard(
                name: islandList[index]['name'] as String,
                location: islandList[index]['location'] as String,
                imagePath: islandList[index]['imagePath'] as String,
                rating: islandList[index]['rating'] as double,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _IslandCard extends StatelessWidget {
  final String name;
  final String location;
  final String imagePath;
  final double rating;

  const _IslandCard({
    Key? key,
    required this.name,
    required this.location,
    required this.imagePath,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailPage(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: AspectRatio(
          aspectRatio: 5 / 6,
          child: Container(
            decoration: BoxDecoration(
              color: ThemeColor.white2,
              borderRadius: BorderRadius.circular(26),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0, 4),
                  color: Color(0x40D0D0D0),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: ThemeText.semibold.copyWith(
                                    fontSize: 14,
                                    color: ThemeColor.black1,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 14,
                                      child: Image.asset('assets/icons/location.png'),
                                    ),
                                    Expanded(
                                      child: Text(
                                        location,
                                        style: ThemeText.medium.copyWith(
                                          fontSize: 11,
                                          color: ThemeColor.grey4,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 2),
                          Row(
                            children: [
                              SizedBox(
                                height: 14,
                                child: Image.asset('assets/icons/star.png'),
                              ),
                              Text(
                                rating.toString(),
                                style: ThemeText.semibold.copyWith(
                                  fontSize: 11,
                                  color: ThemeColor.grey4,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
