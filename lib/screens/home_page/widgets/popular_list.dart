part of '../home_page.dart';

class _PopularList extends StatelessWidget {
  static const islandList = [
    {
      'name': 'Alesund viewpoint package',
      'location': 'Norway',
      'imagePath': 'assets/images/popular_1.png',
    },
    {
      'name': 'Manarola package',
      'location': 'La Spezia, Italy',
      'imagePath': 'assets/images/popular_2.png',
    },
    {
      'name': 'Heceta head viewpoint package',
      'location': 'Florence, USA ',
      'imagePath': 'assets/images/popular_3.png',
    },
  ];

  const _PopularList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SectionHeader(
          title: 'Popular package',
          onTap: () {},
        ),
        const SizedBox(height: 12),
        ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: islandList.length,
          itemBuilder: (context, index) {
            return _PopularTile(
              name: islandList[index]['name'] as String,
              location: islandList[index]['location'] as String,
              imagePath: islandList[index]['imagePath'] as String,
            );
          },
        )
      ],
    );
  }
}

class _PopularTile extends StatelessWidget {
  final String name;
  final String location;
  final String imagePath;
  const _PopularTile({
    Key? key,
    required this.name,
    required this.location,
    required this.imagePath,
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
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(11),
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
        child: Row(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: ThemeText.semibold.copyWith(
                      color: ThemeColor.black1,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      SizedBox(
                        height: 16,
                        child: Image.asset('assets/icons/location.png'),
                      ),
                      Expanded(
                        child: Text(
                          location,
                          style: ThemeText.medium.copyWith(
                            fontSize: 12,
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
          ],
        ),
      ),
    );
  }
}
