// import 'package:flutter/material.dart';
// import 'package:jara_merchant/presentation/helpers/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';


// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);

//   @override
//   _BottomNavState createState() {
//     return _BottomNavState();
//   }
// }

// class _BottomNavState extends State<BottomNav> {
//   //List<String> _titles = ["Home", "Profile", "Shop"];
//   final List<Widget> _items = [
//     const HomePage(),
//     Deals(),
//     const TopUpScreen(),
//     WalletPage(),
//     const Setup(),
//   ];
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(index: _selectedIndex, children: _items),
//       bottomNavigationBar: _showBottomNav(),
//     );
//   }

//   Widget _showBottomNav() {
//     return BottomNavigationBar(
//       backgroundColor: kWhite,
//       showUnselectedLabels: true,
//       items: [
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             'assets/homeIconGrey.svg',
//             color: _selectedIndex == 0 ? kGreen : const Color(0xffC8C7C7),
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             'assets/dealsIcon.svg',
//             color: _selectedIndex == 1 ? kGreen : const Color(0xffC8C7C7),
//           ),
//           label: 'Deals',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             'assets/pay bills icon.svg',
//             color: _selectedIndex == 2 ? kGreen : const Color(0xffC8C7C7),
//           ),
//           label: 'Pay Bills',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             'assets/wallet.svg',
//             color: _selectedIndex == 3 ? kGreen : const Color(0xffC8C7C7),
//           ),
//           label: 'Wallet',
//         ),
//         BottomNavigationBarItem(
//           icon: SvgPicture.asset(
//             'assets/settings.svg',
//             color: _selectedIndex == 4 ? kGreen : const Color(0xffC8C7C7),
//           ),
//           label: 'Settings',
//         ),
//       ],
//       currentIndex: _selectedIndex,
//       selectedItemColor: kGreen,
//       unselectedItemColor: const Color(0xffC8C7C7),
//       onTap: _onTap,
//     );
//   }

//   void _onTap(int index) {
//     _selectedIndex = index;
//     setState(() {});
//   }
// }
