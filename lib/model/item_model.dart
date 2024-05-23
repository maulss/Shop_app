class ItemModel {
  ItemModel({
    required this.name,
    required this.brand,
    required this.description,
    required this.price,
    required this.rating,
    required this.imageAsset,
  });
  final String name;

  final String brand;
  final String description;
  final double price;
  final double rating;
  final String imageAsset;

  static List<ItemModel> listItem = [
    ItemModel(
      name: 'Samsung Galaxy S21',
      brand: 'Samsung',
      description:
          'Ponsel flagship yang menawarkan kinerja tinggi dengan prosesor Exynos 2100, layar Dynamic AMOLED 2X 6.2 inci, dan kamera belakang triple 64MP. Ponsel ini juga dilengkapi dengan baterai 4000mAh yang mendukung pengisian cepat 25W.',
      price: 12.999,
      rating: 4,
      imageAsset: 'assets/images/Samsung-Galaxy-S21.png',
    ),
    ItemModel(
      name: 'Sony WH-1000XM4',
      brand: 'Sony',
      description:
          'Headphone nirkabel dengan fitur noise-canceling terbaik di kelasnya. Headphone ini menawarkan kualitas suara superior dengan dukungan codec LDAC, kenyamanan sepanjang hari dengan desain ergonomis, serta baterai yang tahan hingga 30 jam.',
      price: 4.999,
      rating: 4,
      imageAsset: 'assets/images/Sony WH-1000XM4.png',
    ),
    ItemModel(
      name: 'Apple MacBook Air M1',
      brand: 'Apple',
      description:
          'Apple MacBook Air dengan chip M1 menghadirkan performa yang luar biasa dengan daya tahan baterai hingga 18 jam. Laptop ini memiliki layar Retina 13.3 inci yang memukau, desain tipis dan ringan, serta berbagai fitur canggih termasuk Touch ID dan macOS Big Sur.',
      price: 16.499,
      rating: 4,
      imageAsset: 'assets/images/Apple MacBook Air M1.png',
    ),
    ItemModel(
      name: 'LG OLED CX Series',
      brand: 'LG',
      description:
          'Televisi OLED 4K yang menawarkan kualitas gambar yang luar biasa dengan warna hitam sempurna dan kontras tak terbatas. TV ini juga dilengkapi dengan prosesor α9 Gen 3 AI, Dolby Vision IQ, dan NVIDIA G-SYNC untuk pengalaman gaming yang optimal.',
      price: 29.999,
      rating: 4,
      imageAsset: 'assets/images/LG OLED CX Series.png',
    ),
    ItemModel(
      name: 'Canon EOS R5',
      brand: 'Canon',
      description:
          'Kamera mirrorless full-frame yang dirancang untuk fotografer dan videografer profesional. Kamera ini menawarkan sensor 45MP, video 8K, dan sistem autofokus canggih Dual Pixel CMOS AF II. Dengan bodi yang kokoh dan fitur lengkap, EOS R5 siap untuk berbagai kondisi pemotretan.',
      price: 64.999,
      rating: 4,
      imageAsset: 'assets/images/Canon EOS R5.png',
    ),
    ItemModel(
      name: 'PlayStation 5',
      brand: 'Sony',
      description:
          'Konsol game generasi terbaru dari Sony yang menawarkan pengalaman bermain game dengan grafis 4K, kecepatan loading yang cepat berkat SSD, dan controller DualSense dengan haptic feedback. PS5 juga mendukung game-game eksklusif yang memukau.',
      price: 8.799,
      rating: 4,
      imageAsset: 'assets/images/PlayStation 5.png',
    ),
    ItemModel(
      name: 'Apple iPad Pro 12.9',
      brand: 'Apple',
      description:
          'Apple iPad Pro 12.9 inci dengan chip M1 menawarkan kinerja luar biasa dan layar Liquid Retina XDR yang memukau. Tablet ini dilengkapi dengan kamera pro, dukungan Apple Pencil generasi kedua, dan kompatibilitas dengan Magic Keyboard.',
      price: 20.999,
      rating: 4,
      imageAsset: 'assets/images/Apple iPad Pro 12.9.png',
    ),
    ItemModel(
      name: 'Microsoft Surface Laptop 4',
      brand: 'Microsoft',
      description:
          'Microsoft Surface Laptop 4 menawarkan kinerja yang kuat dengan prosesor Intel Core generasi ke-11, layar PixelSense yang tajam, dan desain tipis dan ringan. Laptop ini juga dilengkapi dengan keyboard nyaman dan baterai tahan lama.',
      price: 18.999,
      rating: 4,
      imageAsset: 'assets/images/Microsoft Surface Laptop 4.png',
    ),
    ItemModel(
      name: 'Dyson V11 Absolute',
      brand: 'Dyson',
      description:
          'Vacuum cleaner nirkabel dengan daya hisap yang kuat dan teknologi cerdas untuk mengoptimalkan pembersihan. Vacuum ini memiliki layar LCD untuk memantau kinerja dan waktu operasi, serta berbagai alat tambahan untuk pembersihan menyeluruh.',
      price: 10.499,
      rating: 4,
      imageAsset: 'assets/images/Dyson V11 Absolute.png',
    ),
    ItemModel(
      name: 'Bose QuietComfort 35 II',
      brand: 'Bose',
      description:
          'Headphone nirkabel dengan teknologi noise-canceling yang canggih, suara berkualitas tinggi, dan kenyamanan luar biasa. Headphone ini juga mendukung asisten suara seperti Google Assistant dan Amazon Alexa.',
      price: 4.499,
      rating: 4,
      imageAsset: 'assets/images/Bose QuietComfort 35 II.png',
    ),
    ItemModel(
      name: 'Nintendo Switch',
      brand: 'Nintendo',
      description:
          'Konsol game hibrida yang dapat digunakan sebagai konsol rumah atau perangkat genggam. Konsol ini memiliki koleksi game yang luas dan inovatif, serta Joy-Con yang dapat dilepas untuk mode multiplayer.',
      price: 4.999,
      rating: 4,
      imageAsset: 'assets/images/Nintendo Switch.png',
    ),
    ItemModel(
      name: 'GoPro HERO9 Black',
      brand: 'GoPro',
      description:
          'Kamera aksi terbaru dari GoPro yang menawarkan kemampuan merekam video 5K, stabilisasi gambar HyperSmooth 3.0, dan layar depan untuk selfie. Kamera ini tahan air hingga 10 meter tanpa casing tambahan dan memiliki baterai yang lebih besar untuk waktu rekam lebih lama.',
      price: 7.499,
      rating: 4,
      imageAsset: 'assets/images/GoPro HERO9 Black.png',
    ),
  ];
}
