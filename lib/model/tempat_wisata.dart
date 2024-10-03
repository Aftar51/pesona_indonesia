class TempatWisata{
  //Properti / attribute
  String nama;
  String image;
  String lokasi;
  String day;
  String open;
  String close;
  String price;
  String description;
  List<String> imageUrl;

  //constructor
  TempatWisata({
    required this.nama,
    required this.image,
    required this.lokasi,
    required this.day,
    required this.open,
    required this.close,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

var tempatWisataList = [
  TempatWisata(
    nama: 'Ranca Upas',
    image: 'assets/images/ranca-upas.jpg',
    lokasi: 'Bandung',
    day: 'Everyday',
    open: '09.00-12.00',
    close: '12.00-09.00',
    price: 'Rp.10.000.000',
    description: 'Ranca Upas atau Kampung Cai Ranca Upas adalah salah satu bumi perkemahan di Bandung, Jawa Barat, Indonesia. Terletak di Jalan Raya Ciwidey Patenggang KM. 11, Alam Endah, Ciwidey Kabupaten Bandung, dengan jarak sekitar 50 km dari pusat Kota Bandung.Ranca Upas atau Kampung Cai Ranca Upas adalah salah satu bumi perkemahan di Bandung, Jawa Barat, Indonesia. Terletak di Jalan Raya Ciwidey Patenggang KM. 11, Alam Endah, Ciwidey Kabupaten Bandung, dengan jarak sekitar 50 km dari pusat Kota Bandung.',
    imageUrl: [
      'https://rancaupas.com/wp-content/uploads/2023/12/Ranca-upas-2023-17.jpg',
      'https://rancaupas.com/wp-content/uploads/2023/12/Ranca-upas-2023-17.jpg',
      'https://rancaupas.com/wp-content/uploads/2023/12/Ranca-upas-2023-17.jpg',
    ]),
  TempatWisata(
      nama: 'bosscha',
      image: 'assets/images/bosscha.jpg',
      lokasi: 'Bandung',
      day: 'Everyday',
      open: '09.00-12.00',
      close: '12.00-09.00',
      price: '10.000.000',
      description: 'Karel Albert Rudolf Bosscha (15 Mei 1865 – 26 November 1928) adalah seorang Belanda keturunan Jerman yang peduli terhadap kesejahteraan masyarakat pribumi Hindia Belanda pada masa itu dan juga merupakan seorang pemerhati ilmu pendidikan khususnya astronomi.',
      imageUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3v1RByanbIB3U7hgMZEUAjH1YAwB7XViy5ab3Dz2LNHd3dfHHHq213XfNdQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3v1RByanbIB3U7hgMZEUAjH1YAwB7XViy5ab3Dz2LNHd3dfHHHq213XfNdQ&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3v1RByanbIB3U7hgMZEUAjH1YAwB7XViy5ab3Dz2LNHd3dfHHHq213XfNdQ&s',
      ]),
  TempatWisata(
      nama: 'Farm House',
      image: 'assets/images/farm-house.jpg',
      lokasi: 'Bandung',
      day: 'Everyday',
      open: '09.00-12.00',
      close: '12.00-09.00',
      price: '10.000.000',
      description: 'Taman hiburan dengan bangunan bergaya Eropa, kostum Belanda untuk disewa, kebun binatang mini & resto trendi.',
      imageUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchlwWDmkOrQbhyO55erpWTtYvBsooUrY_c0_G38qwDVBuQJKu2_ZX&usqp=CAE&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchlwWDmkOrQbhyO55erpWTtYvBsooUrY_c0_G38qwDVBuQJKu2_ZX&usqp=CAE&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchlwWDmkOrQbhyO55erpWTtYvBsooUrY_c0_G38qwDVBuQJKu2_ZX&usqp=CAE&s',
      ]),
  TempatWisata(
      nama: 'stone garden',
      image: 'assets/images/stone-garden.jpg',
      lokasi: 'Bandung',
      day: 'Everyday',
      open: '09.00-12.00',
      close: '12.00-09.00',
      price: '10.000.000',
      description: 'Floating Market Lembang atau pasar apung menjadi salah satu tempat wisata yang banyak dikunjungi oleh para wisatawan di Lembang, Bandung.',
      imageUrl: [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchlwWDmkOrQbhyO55erpWTtYvBsooUrY_c0_G38qwDVBuQJKu2_ZX&usqp=CAE&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchlwWDmkOrQbhyO55erpWTtYvBsooUrY_c0_G38qwDVBuQJKu2_ZX&usqp=CAE&s',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQchlwWDmkOrQbhyO55erpWTtYvBsooUrY_c0_G38qwDVBuQJKu2_ZX&usqp=CAE&s',
      ]),
  TempatWisata(
      nama: 'kawah putih',
      image: 'assets/images/kawah-putih.jpg',
      lokasi: 'Bandung',
      day: 'Everyday',
      open: '09.00-12.00',
      close: '12.00-09.00',
      price: '10.000.000',
      description: 'Kawah Putih adalah sebuah tempat wisata di Jawa Barat yang terletak di Desa Alam Endah, Kecamatan Rancabali, Kabupaten Bandung Jawa Barat yang terletak di kaki Gunung Patuha. Kawah putih merupakan sebuah danau yang terbentuk dari letusan Gunung Patuha',
      imageUrl: [
        'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRYpqARlWyC3OQ7BDhbHRZzOxz9pconoIerbTEO10akYENjbfeby5NRadDo3DlMlTKi7zeWfa3m2Pjg54YKPRs2CY9JSQzIw35ABxX-jg',
        'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRYpqARlWyC3OQ7BDhbHRZzOxz9pconoIerbTEO10akYENjbfeby5NRadDo3DlMlTKi7zeWfa3m2Pjg54YKPRs2CY9JSQzIw35ABxX-jg',
        'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcRYpqARlWyC3OQ7BDhbHRZzOxz9pconoIerbTEO10akYENjbfeby5NRadDo3DlMlTKi7zeWfa3m2Pjg54YKPRs2CY9JSQzIw35ABxX-jg',
      ]),
];