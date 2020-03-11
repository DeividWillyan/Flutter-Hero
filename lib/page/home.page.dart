import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hero/controller/hero.controller.dart' as h;
import 'package:hero/model/hero.model.dart' as m;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  h.HeroController _controller = new h.HeroController();

  @override
  void initState() {
    super.initState();
    _controller.fetchHero();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        title: Image.asset(
          "assets/image/dc.png",
          height: 100,
          width: 100,
        ),
        leading: Icon(Icons.menu),
      ),
      body: _body(),
    );
  }

  _body() {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 25, left: 35),
        child: Text(
          "SUPER-HEROS",
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 26,
              fontStyle: FontStyle.italic,
              fontFamily: 'Ghotam Bold'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 65, left: 25, right: 25),
        child: Observer(
          builder: (_) {
            return _controller.heros.isEmpty
                ? Center(child: CircularProgressIndicator())
                : _listView();
          },
        ),
      ),
    ]);
  }

  _listView() {
    return ListView.builder(
      itemCount: _controller.heros.length ?? 0,
      itemBuilder: (context, index) {
        m.Hero _hero = _controller.heros[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(20),
          ),
          height: 200,
          width: 200,
          margin: EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                child: Image.network(
                  _hero.image.url,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _hero.name,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Intelligence"),
                                Text(_hero.powerstats.intelligence),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Strength"),
                                Text(_hero.powerstats.strength),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Speed"),
                                Text(_hero.powerstats.speed),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Durability"),
                                Text(_hero.powerstats.durability),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Power"),
                                Text(_hero.powerstats.power),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Combat"),
                                Text(_hero.powerstats.combat),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
