import 'package:flutter/material.dart';

class Coffee {
  final String image, name, description;
  final int id;
  final double price;
  final Color bgcolor;

  Coffee({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.id,
    required this.bgcolor,
  });
}

List<Coffee> coffeeList = [
  Coffee(
    id: 0,
    name: 'Caffe Americano',
    description:
        'Minuman kopi yang dibuat dengan mencapurkan secangkir kecil espresso dengan seduhan air panas dan racikan sepenuh hati Fatkhu Kopi.',
    price: 19.99,
    image: 'assets/images/008-coffee.png',
    bgcolor: Color(0xFFEF5350),
  ),
  Coffee(
    id: 1,
    name: 'Latte',
    description:
        "Kopi espresso yang dicampur dengan susu dan memiliki lapisan busa tipis dibagian atasnya racikan yang sangat pas oleh barista kami.",
    price: 23.59,
    image: 'assets/images/014-coffee-cup.png',
    bgcolor: Color(0xFF3D82AE),
  ),
  Coffee(
    id: 2,
    name: 'Espresso',
    description:
        "dengan biji kopi pilihan langsung digiling sampe halus dengan menyemburkan air panas akan menghadirkan pengalam mengopi yang menakjubkan.",
    price: 14.49,
    image: 'assets/images/044-tea-cup.png',
    bgcolor: Color(0xFF3D6356),
  ),
  Coffee(
    id: 3,
    name: 'Cold Brew',
    description:
        'Seduhan kopi hitam dengan air dingin selama 1 hari penuh akan membawa kenikmatan hakiki bagi yang meminumnya.',
    price: 15.99,
    image: 'assets/images/025-frappe.png',
    bgcolor: Color(0xFFC980F2),
  ),
  Coffee(
    id: 4,
    name: 'Nitro Cold Brew',
    description:
        "Seduhan kopi hitam dengan air dingin selama 1 hari penuh akan membawa kenikmatan hakiki bagi yang meminumnya dengan toping caramel atau hazelnut.",
    price: 23.59,
    image: 'assets/images/013-coffee-cup.png',
    bgcolor: Color(0xFFDB657F),
  ),
  Coffee(
    id: 5,
    name: 'Cappucino',
    description:
        "kopi espresso diseduh dengan susu dan diberi toping bubuk coklat cocok untuk bersantai untuk menghilangkan penat hidup anda.",
    price: 14.49,
    image: 'assets/images/010-take-away.png',
    bgcolor: Color(0xFFC1E394),
  ),
];
