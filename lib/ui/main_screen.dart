import 'package:flutter/material.dart';
import 'package:pesona_indonesia/model/tempat_wisata.dart';
import 'package:pesona_indonesia/ui/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pesona Indonesia Size: ${MediaQuery.of(context).size.width}',
          style: TextStyle(
            fontFamily: 'GreyQo',
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints contraints) {
            if(contraints.maxWidth <= 600){
              return ListViewMobileWidget();
            } else {
              return GridViewDekstopWidget();
            }
          },
        ),
      ),
    );
  }
}

class ListViewMobileWidget extends StatelessWidget {
  const ListViewMobileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        final tempatWisata = tempatWisataList[index];
        return InkWell(
          onTap: () {
            print('Card Clicked');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(tempatWisata: tempatWisata),
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0)),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0)),
                    child: Image.asset(tempatWisata.image),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        tempatWisata.nama,
                        style: TextStyle(
                            fontFamily: 'GreyQo',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Text(tempatWisata.lokasi)
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: tempatWisataList.length,
    );
  }
}

class GridViewDekstopWidget extends StatelessWidget {
  const GridViewDekstopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (BuildContext context, index) {
        final tempatWisata = tempatWisataList[index];
        return InkWell(
          onTap: () {
            print('Card Clicked');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(tempatWisata: tempatWisata),
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0)),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0)),
                    child: Image.asset(tempatWisata.image),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        tempatWisata.nama,
                        style: TextStyle(
                            fontFamily: 'GreyQo',
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Text(tempatWisata.lokasi)
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: tempatWisataList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2
      ),
    );
  }
}