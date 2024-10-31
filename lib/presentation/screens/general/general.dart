part of 'general_imports.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {

    List<TabItem> items = [
    const TabItem(
      icon: FeatherIcons.home,
      title: 'Home',
    ),
    const TabItem(
      icon: FeatherIcons.tag,
      title: 'Categories',
    ),
    const TabItem(
      icon: FeatherIcons.plusSquare,
      title: 'Add_post',
    ),
    const TabItem(
      icon: FeatherIcons.hash,
      title: 'Cart',
    ),
    const TabItem(
      icon: FeatherIcons.user,
      title: 'profile',
    ),
  ];
  int visit = 0;

  List<Widget> pages = [
    Home(),
    Categories(),
    AddPosts(),
    Tags(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: visit,children: pages,),
      bottomNavigationBar:  BottomBarInspiredOutside(
              items: items,
              backgroundColor: MyColors.primaryColor,
              color: Colors.white,
              colorSelected: const Color.fromARGB(255, 143, 253, 194),
              indexSelected: visit,
              onTap: (int index) => setState(() {
                visit = index;
              }),
              top: -25,
              animated: true,
              itemStyle: ItemStyle.hexagon,
              chipStyle:const ChipStyle(drawHexagon: true,background : Color(0xffff9900)),
            ),
    );
  }
}
