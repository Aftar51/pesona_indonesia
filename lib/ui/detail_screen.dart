import 'package:flutter/material.dart';
import 'package:pesona_indonesia/model/tempat_wisata.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.tempatWisata});

  final TempatWisata tempatWisata;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.asset(widget.tempatWisata.image),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            print('Back');
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        ),
                        ButtonFaforie()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.tempatWisata.nama,
              style: TextStyle(
                fontFamily: 'GreyQO',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Text(
              widget.tempatWisata.lokasi,
              style: TextStyle(
                fontFamily: 'GreyQO',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.date_range),
                    Text(widget.tempatWisata.day)
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    Text('${widget.tempatWisata.open} - ${widget.tempatWisata.close}')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.monetization_on),
                    Text(widget.tempatWisata.price)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                widget.tempatWisata.description,
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 4.0, top: 8.0, bottom: 8.0, left: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(widget.tempatWisata.imageUrl[index]),
                    ),
                  );
                },
                itemCount: widget.tempatWisata.imageUrl.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonFaforie extends StatefulWidget {
  const ButtonFaforie({super.key});

  @override
  State<ButtonFaforie> createState() => _ButtonFaforieState();
}

class _ButtonFaforieState extends State<ButtonFaforie> {
  var isFaforite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFaforite = !isFaforite;
          print('Favorite: $isFaforite');
        });
      },
      icon: Icon(
        isFaforite ? Icons.favorite : Icons.favorite_border,
        color: isFaforite ? Colors.red : Colors.white,
      ),
    );
  }
}
