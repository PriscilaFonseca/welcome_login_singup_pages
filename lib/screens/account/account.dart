import 'package:flutter/material.dart';
import 'package:flutter_application_model/constants.dart';
import 'package:flutter_application_model/screens/account/components/delivery_addresses.dart';
import 'package:flutter_application_model/screens/account/components/drawer_header.dart';
import 'package:flutter_application_model/screens/account/components/favorites_bakerys.dart';
import 'package:flutter_application_model/screens/account/components/list_tile_account.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: ListTileAccount(
                      icon: Icons.chat,
                      title: 'Chat',
                      subTitle: true,
                      subtitle: 'My messages',
                      onPress: () {},
                    ),
                  ),
                  ListTileAccount(
                    icon: Icons.notifications,
                    title: 'Notification',
                    subTitle: true,
                    subtitle: 'My notification center',
                    onPress: () {},
                  ),
                  ListTileAccount(
                    icon: Icons.payment,
                    title: 'Payments',
                    subTitle: true,
                    subtitle: 'Wallets and credcards',
                    onPress: () {},
                  ),
                  ListTileAccount(
                    icon: Icons.favorite,
                    title: 'Favorites',
                    subTitle: true,
                    subtitle: 'My favorite places',
                    onPress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (builder) => const FavoritesBakerys(),
                        ),
                      );
                    },
                  ),
                  ListTileAccount(
                    icon: Icons.location_on,
                    title: 'Address',
                    subTitle: true,
                    subtitle: 'My delivery addresses',
                    onPress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (builder) => const DeliverysAddresses(),
                        ),
                      );
                    },
                  ),
                  ListTileAccount(
                    icon: Icons.fingerprint,
                    title: 'Data',
                    subTitle: true,
                    subtitle: 'My account information',
                    onPress: () {},
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ListTileAccount(
                    icon: Icons.help,
                    iconColor: pGreyLightColor,
                    title: 'Help',
                    onPress: () {},
                  ),
                  ListTileAccount(
                    icon: Icons.settings,
                    iconColor: pGreyLightColor,
                    title: 'Settigns',
                    onPress: () {},
                  ),
                  ListTileAccount(
                    icon: Icons.subdirectory_arrow_right_outlined,
                    iconColor: pGreyLightColor,
                    title: 'Logout',
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
