class Plant {
  final String name;
  final List images;
  final String temp;
  final String pot;
  final String description;

  final String height;

  Plant({
    required this.name,
    required this.images,
    required this.temp,
    required this.pot,
    required this.description,

    required this.height,
  });
}

List<Plant> plants = [
  Plant(
    name: 'Tomato',
    images: [
      'assets/image/Tomato.png',
      'assets/image/Tomato.png',
      'assets/image/Tomato.png',
    ],
    temp: '21 C to 35 C',
    pot: '4.30 - 4.9',
    description:'Tomatoes provide a good amount of beta-carotene and vitamin C.',


    height: '180 120 150',
  ),
  Plant(
    name: 'Potato',
    images: [
      'assets/image/Potato.png',
      'assets/image/Potato.png',
      'assets/image/Potato.png',
    ],
    temp: '16 C to 35 C',
    pot: '5.4 - 5.9',
    description: 'Potatoes are one of the higher carbohydrate sources on this list of vegetables.',

    height: '109 526 231',
  ),
  Plant(
    name: 'Garlic',
    images: [
      'assets/image/Garlic.png',
      'assets/image/Garlic.png',
      'assets/image/Garlic.png',
    ],
    temp: '10 C to 30 C',
    pot: '6.0-7.0',
    description:
    'Garlic may help with lowering blood pressure',

    height: '200 150 270',
  ),
  Plant(
    name: 'Carrot',
    images: [
      'assets/image/Carrot.png',
      'assets/image/Carrot.png',
      'assets/image/Carrot.png',
    ],
    temp: '07 C to 29 C',
    pot: '5.88 - 6.40',
    description:
    'Carrot is possible to find rarer cultivars of the vegetable that are red, yellow and even black.',

    height: '90 50 80',
  ),
  Plant(
    name: 'Cucumber',
    images: [
      'assets/image/Cucumbar.png',
      'assets/image/Cucumbar.png',
      'assets/image/Cucumbar.png',
    ],
    temp: '18 C to 35 C',
    pot: '5.12 - 5.78',
    description:
    'cucumber provides a good amount of nutrition too.',

    height: '100 18 151',
  ),
  Plant(
    name: 'Cabbage',
    images: [
      'assets/image/Cabbage.png',
      'assets/image/Cabbage.png',
      'assets/image/Cabbage.png',
    ],
    temp: '07 C to 35 C',
    pot: '6.0 - 7.5',
    description:
    'Cabbage has links to similar anti-cancer health benefits.',

    height: '150 125 100',
  ),
  Plant(
    name: 'Chilli',
    images: [
      'assets/image/Chilli.png',
      'assets/image/Chilli.png',
      'assets/image/Chilli.png',
    ],
    temp: '18 C to 35 C',
    pot: '4.65 - 5.45',
    description:
    'Chilli  prevents the growth of cancer cells in our body..',

    height: '110 50 155',
  ),
  Plant(
    name: 'Onion',
    images: [
      'assets/image/Onion.png',
      'assets/image/Onion.png',
      'assets/image/Onion.png',
    ],
    temp: '10 C to 35 C',
    pot: '6.0 - 7.0',
    description:
    'Onions come in many varieties, but perhaps the most distinctive contrast is between the red and yellow onion.',

    height: '125 75 125',
  ),
  Plant(
    name: 'Brinjal',
    images: [
      'assets/image/Brinjal.png',
      'assets/image/Brinjal.png',
      'assets/image/Brinjal.png',
    ],
    temp: '15 C to 30 C',
    pot: '4.0 - 5.0',
    description:
    'The way of cooking probably has a lot to do with it.',

    height: '100 65 90',
  ),

  Plant(
    name: 'Beans',
    images: [
      'assets/image/Beans.png',
      'assets/image/Beans.png',
      'assets/image/Beans.png',
    ],
    temp: '16 C to 30 C',
    pot: '6.0 - 7.0',
    description:
    'Beans is an affordable source of protein, fiber, iron, and vitamins.',

    height: '100 60 90',
  ),
  Plant(
    name: 'Cauliflower',
    images: [
      'assets/image/Cauliflower.png',
      'assets/image/Cauliflower.png',
      'assets/image/Cauliflower.png',
    ],
    temp: '08 C to 30 C',
    pot: '5.5 - 7.5',
    description:
    'Cauliflower is one of the most popular types of vegetables around.',

    height: '150 100 100',
  ),
  Plant(
    name: 'Corn',
    images: [
      'assets/image/Corn.png',
      'assets/image/Corn.png',
      'assets/image/corn.png',
    ],
    temp: '16 C to 35 C',
    pot: '5.5 - 7.0',
    description:
    'Corn is typically yellow but comes in a variety of other colors, such as red, orange, purple, blue, white, and black.',

    height: '100 18 150',
  ),
  Plant(
    name: 'Muskmelon',
    images: [
      'assets/image/Muskmelon.png',
      'assets/image/Muskmelon.png',
      'assets/image/Muskmelon.png',
    ],
    temp: '24 C to 35 C',
    pot: '7.0 - 8.0',
    description:
    'Muskmelon can help you beat constipation.',

    height: '110 50 140',
  ),
  Plant(
    name: 'Pumpkin',
    images: [
      'assets/image/Pumpkin.png',
      'assets/image/Pumpkin.png',
      'assets/image/Pumpkin.png',
    ],
    temp: '21 C to 32 C',
    pot: '5.5 - 7.5',
    description:
    'Pumpkins are an excellent source of vitamin A (as beta-carotene).',

    height: '150 75 140',
  ),
  Plant(
    name: 'Radish',
    images: [
      'assets/image/Radish.png',
      'assets/image/Radish.png',
      'assets/image/Radish.png',
    ],
    temp: '7 C to 32 C',
    pot: '6.0 - 7.0',
    description:
    ' Radish has numerous culinary uses, and many different pickles, salads, soups.',

    height: '100 10 146',
  ),

];