import 'package:flutter/material.dart';
import 'package:rozgaar_app/screens/account_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static const routeName = '/profile-page';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey);
  var options;

  @override
  void initState() {
    options = [
      ProfilePage(),
      Text('hello'),
      const Center(
        child: Text(
          'Coming Soon',
          style: optionStyle,
        ),
      ),
      const Center(
        child: Text(
          'Coming Soon',
          style: optionStyle,
        ),
      ),
    ];
    super.initState();
  }

  int _selectedPage = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedPage = index;
    });
  }

  void myaccount(BuildContext context){
    Navigator.of(context).pushNamed(Account.routeName,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 640,
          child: Column(
            children: [
              const ProfilePic(),
              const SizedBox(
                height: 20,
              ),
              Profilemenu(
                text: 'My Account',
                myIcon: const Icon(Icons.person),
                press: (){myaccount(context);},
              ),
              const SizedBox(
                height: 20,
              ),
              Profilemenu(
                text: 'Education',
                myIcon: const Icon(Icons.school_sharp),
                press: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Profilemenu(
                text: 'Interests',
                myIcon: const Icon(Icons.note),
                press: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Profilemenu(
                text: 'Settings',
                myIcon: const Icon(Icons.settings),
                press: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Profilemenu(
                text: 'Log Out',
                myIcon: const Icon(Icons.logout_outlined),
                press: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_rounded),
            label: 'Jobs',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces),
            label: 'Collection',
            // backgroundColor: Colors.indigo,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class Profilemenu extends StatelessWidget {
  const Profilemenu({
    Key? key,
    required this.text,
    required this.myIcon,
    required this.press,
  }) : super(key: key);

  final String text;
  final Icon myIcon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: const Color.fromARGB(255, 236, 231, 231),
            onPressed: press,
            child: Row(
              children: [
                myIcon,
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          overflow: Overflow.visible,
          fit: StackFit.expand,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/dp.jpg'),
            ),
            Positioned(
              bottom: 0,
              right: -12,
              child: SizedBox(
                height: 46,
                width: 46,
                child: FlatButton(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(
                          color: Color.fromARGB(115, 112, 104, 104)),
                    ),
                    color: Colors.white,
                    onPressed: () {},
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
