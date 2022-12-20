import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/profile/components/drawer_header.dart';
import 'package:flutter_application_model/screens/profile/components/list_tile_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Drawer(
        width: double.infinity,
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  DrawerHeaderWidget(
                    radius: 50,
                    image: Image.asset('assets/images/avatar.png'),
                    text: 'Jon Lison',
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  ListTileProfile(
                    icon: Icons.chat,
                    title: 'Chat',
                    subTitle: true,
                    subtitle: 'My messages',
                    onPress: () {},
                  ),
                  ListTileProfile(
                    icon: Icons.notifications,
                    title: 'Notification',
                    subTitle: true,
                    subtitle: 'My notification center',
                    onPress: () {},
                  ),
                  ListTileProfile(
                    icon: Icons.payment,
                    title: 'Payments',
                    subTitle: true,
                    subtitle: 'Wallets and credcards',
                    onPress: () {},
                  ),
                  ListTileProfile(
                    icon: Icons.favorite,
                    title: 'Favorites',
                    subTitle: true,
                    subtitle: 'My favorite places',
                    onPress: () {},
                  ),
                  ListTileProfile(
                    icon: Icons.location_on,
                    title: 'Address',
                    subTitle: true,
                    subtitle: 'My delivery addresses',
                    onPress: () {},
                  ),
                  ListTileProfile(
                    icon: Icons.fingerprint,
                    title: 'Data',
                    subTitle: true,
                    subtitle: 'My account information',
                    onPress: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  ListTileProfile(
                    icon: Icons.help,
                    iconColor: pGreyLightColor,
                    title: 'Help',
                    onPress: () {},
                  ),
                  ListTileProfile(
                    icon: Icons.settings,
                    iconColor: pGreyLightColor,
                    title: 'Settigns',
                    onPress: () {},
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
