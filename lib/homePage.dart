import 'package:flutter/material.dart';
import 'package:enuchat/ui/chamadas.dart';
import 'package:enuchat/ui/mensagens.dart';
import 'package:enuchat/ui/midias.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  var iconButton = Icons.message;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 3)
      ..addListener(() {
        setState(() {
          switch (_tabController.index) {
            case 0:
              iconButton = Icons.message;
              break;
            case 1:
              iconButton = Icons.camera_alt;
              break;
            case 2:
              iconButton = Icons.add_call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EnuChat',
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: Icon(
              Icons.search,
              size: 28.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.more_vert,
              size: 28.0,
            ),
          ),
        ],
        bottom: TabBar(
          indicatorWeight: 3.0,
          indicatorColor: Colors.white,
          controller: _tabController,
          isScrollable: true,
          labelPadding: EdgeInsets.only(left: 15.0, right: 15.0),
          tabs: <Widget>[
            Tab(
                child: Text(
              'CONVERSAS',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Tab(
                child: Text(
              'MÍDIAS',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Tab(
                child: Text(
              'CHAMADAS',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Mensagens(),
          Midias(),
          Chamadas(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          iconButton,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
