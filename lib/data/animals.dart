class Plant {
  final String name;
  final List images;
  final String temp;
  final String pot;
  final String description;
  final String price;
  final String height;
  final String header;

  Plant({
    required this.name,
    required this.images,
    required this.temp,
    required this.pot,
    required this.description,
    required this.price,
    required this.height,
    required this.header,
  });
}

List<Plant> plants = [
  Plant(
    name: 'Foot-and-mouth disease',
    images: [
      'assets/image/mouth.png',
      'assets/image/mouth.png',
      'assets/image/mouth.png',
    ],
    temp: 'Available',
    pot: '50%-70%',
    header : 'The virus causes a high fever lasting two to six days, followed by blisters inside the mouth and on the feet.',
    description:
    'Slobbering and smacking lips,shivering,tender and sore feet,reduced milk yield,sores and blisters on feet,raised temperature.',
    price: '',
    height: 'Available',
  ),
  Plant(
    name: 'Lumpy skin disease',
    images: [
      'assets/image/lumby.png',
      'assets/image/lumby.png',
      'assets/image/lumby.png',
    ],
    temp: 'Not available',
    pot: '80%',
    description: 'After an initial period of high fever (41°C) and swollen lymph glands, the animal may develop large, firm nodules that are up to 5 cm in diameter in the skin.These can be found all over the body',
    header: 'Lumpy skin disease (LSD) is caused by infection of cattle or water buffalo with the poxvirus Lumpy skin disease virus (LSDV).',
    price: '',
    height: 'Not available',
  ),
  Plant(
    name: 'PROTOZOAL ABORTIONS',
    images: [
      'assets/image/protozoal.png',
      'assets/image/protozoal.png',
      'assets/image/protozoal.png',
    ],
    temp: 'Available',
    header: 'Zoonotic protozoal diseases causing abortion which caused by single-celled protozoan parasites;',
    pot: 'Self Watering Pot',
    description:
    'Clinical signs of the disease involve abortions usually at 3-8 months gestation but concentrated at 5-7 months. Abortions can occur in storms in herds as well as individually. Abortion storms have involved multiple years in some affected dairies. Infected cows that haveaborted may abort in subsequent gestations as well.',
    price: '',
    height: 'Available',
  ),
  Plant(
    name: 'Bird flu',
    images: [
      'assets/image/avian.png',
      'assets/image/avian.png',
      'assets/image/avian.png',
    ],
    temp: 'Available',
    header: 'Bird flu refers to the disease caused by infection with avian (bird) influenza (flu) Type A viruses',
    pot: '45-70%',
    description:
    'loss of appetite, cessation of egg laying, nervous signs, swelling and blue discoloration of combs and wattles due to disturbance of blood circulation, coughing, sneezing and diarrhoea',
    price: ' ',
    height: 'influenza drugs',
  ),
  Plant(
    name: 'Duck plague',
    images: [
      'assets/image/duck.png',
      'assets/image/duck.png',
      'assets/image/duck.png',
    ],
    pot: '30%',
    temp: 'Available',
    header: 'Duck plague that causes acute disease with high mortality rates in flocks of ducks, geese, and swans.',
    description:
    'Duck plague that causes acute disease with high mortality rates in flocks of ducks, geese, and swans.',
    price: '',
    height: 'Available',
  ),
  Plant(
    name: 'Newcastle disease',
    images: [
      'assets/image/newcastle.png',
      'assets/image/newcastle.png',
      'assets/image/newcastle.png',
    ],
    temp: 'Available',
    header: 'Newcastle disease is a highly contagious disease of birds caused by a para-myxo virus.',
    pot: '50%',
    description:
    'sneezing,nasal discharge,coughing,greenish, watery diarrhoea,depression,muscular tremors, drooping wings,complete paralysis',
    price: '',
    height: 'Available',
  ),
];
