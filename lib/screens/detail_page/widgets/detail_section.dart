part of '../detail_page.dart';

class _DetailSection extends StatelessWidget {
  static const activityList = [
    'assets/images/activity_1.png',
    'assets/images/activity_2.png',
    'assets/images/activity_3.png'
  ];

  const _DetailSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Wilson island appeals through its sheer natural beauty of loom volcanoes and lush terraced rice fields that exude peace and  serenity. Wilson enchancts with its dramatic and colourful of a ceremonies',
            style: ThemeText.normal.copyWith(
              color: ThemeColor.grey6,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Activities',
                style: ThemeText.semibold.copyWith(
                  color: ThemeColor.black1,
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'View all',
                  style: ThemeText.semibold.copyWith(
                    color: ThemeColor.orange,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        _buildActivities(),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _buildActivities() {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        itemCount: activityList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(activityList[index]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
