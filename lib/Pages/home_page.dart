import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Discover New Groups In Your Area',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      height: 1.5,
                      fontFamily: 'LeagueSpartan',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SvgPicture.asset(
                    'lib/assets/icons/location_on.svg', // Ensure this path is correct
                    height: 40,
                  ),
                  const SizedBox(height: 24),
                  const DiscoverGroups(),
                  const SizedBox(height: 24),
                  const UpcomingEvents(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiscoverGroups extends StatefulWidget {
  const DiscoverGroups({super.key});

  @override
  _DiscoverGroupsState createState() => _DiscoverGroupsState();
}

class _DiscoverGroupsState extends State<DiscoverGroups> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final List<DiscoverGroup> discoverGroupsList = [
      DiscoverGroup(imagePath: 'lib/assets/Images/image.png'),
      DiscoverGroup(imagePath: 'lib/assets/Images/image2.png'),
      DiscoverGroup(imagePath: 'lib/assets/Images/image3.png'),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: _pageController,
            itemCount: discoverGroupsList.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final group = discoverGroupsList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    // Add your onTap functionality here
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: AssetImage(group.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Group Name',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            discoverGroupsList.length,
                (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: _currentPage == index ? 12.0 : 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DiscoverGroup {
  final String imagePath;

  DiscoverGroup({required this.imagePath});
}
class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    final List<UpcomingEvent> upcomingEventsList = [
      UpcomingEvent(
        imagePath: 'lib/assets/Images/image3.png',
        title: 'Event Title 1',
        description: 'Short description of event 1.',
        location: 'Location 1',
      ),
      UpcomingEvent(
        imagePath: 'lib/assets/Images/image.png',
        title: 'Event Title 2',
        description: 'Short description of event 2.',
        location: 'Location 2',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Upcoming Events',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: upcomingEventsList.length,
            itemBuilder: (context, index) {
              final event = upcomingEventsList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Card( // Elevation applied here
                  elevation: 4.0, // Apply elevation to each card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        // Add your onTap functionality here
                      },
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              event.imagePath,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  event.title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  event.description,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    SvgPicture.asset('lib/assets/icons/location_on.svg', height: 20),
                                    const SizedBox(width: 8),
                                    Text(
                                      event.location,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    // Handle register button press
                                    print('Join Button Pressed');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF5A895),
                                    foregroundColor: Colors.black,
                                    minimumSize: const Size(50, 20),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                                  ),
                                  child: const Text(
                                    'Join',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class UpcomingEvent {
  final String imagePath;
  final String title;
  final String description;
  final String location;

  UpcomingEvent({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.location,
  });
}
