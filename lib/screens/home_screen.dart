import 'package:dribble_clone/widgets/home_button.dart';
import 'package:dribble_clone/widgets/items_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeButton(),
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              // SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's a Great Day for Coffee",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  // color: Colors.grey[900],
                  alignment: Alignment.center,
                  child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  width: 0, style: BorderStyle.none)),
                          fillColor: Colors.grey.withOpacity(0.1),
                          filled: true,
                          hintText: 'Find Your Coffee',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          )))),

              TabBar(
                  controller: _tabController,
                  labelColor: Colors.orange,
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  isScrollable: true,
                  labelStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.orange,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: 16)),
                  tabs: const [
                    Tab(text: 'Hot Coffee'),
                    Tab(text: 'Cold Coffee'),
                    Tab(text: 'Cappuiccino'),
                    Tab(text: 'Amerucano'),
                  ]),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                  ItemsWidget(),
                ][_tabController.index],
              )
            ],
          ),
        ),
      ),
    );
  }
}
