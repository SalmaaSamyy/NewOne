import 'package:flutter/material.dart';

// List dataList
List dataBase = [
  {
    "categoryName": 'sport test',
    'color': Colors.blue,
    'data': [
      {
        "question": "How many player in football team",
        "answers": [
          {"ans": "9", "score": 0},
          {"ans": "10", "score": 0},
          {"ans": "11", "score": 1},
          {"ans": "12", "score": 0},
        ]
      },
      {
        "question": "How many times Egypt won AFCON",
        "answers": [
          {"ans": "7", "score": 1},
          {"ans": "5", "score": 0},
          {"ans": "8", "score": 0},
          {"ans": "6", "score": 0},
        ]
      },

      {
        "question": "In which country was the last World Cup held?",
        "answers": [
          {"ans": "Egypt", "score": 0},
          {"ans": "Qatar", "score": 1},
          {"ans": "Abu Dhabi", "score": 0},
          {"ans": "saudi", "score": 0},
        ]
      },
      {
        "question": "Which sport is played at Wimbledon?",
        "answers": [
          {"ans": "Tennis", "score": 1},
          {"ans": "basketball", "score": 0},
          {"ans": "football", "score": 0},
          // {"ans": "12", "score": 0},
        ]
      },
      {
        "question": "Which country won the FIFA World Cup in 2018 ?",
        "answers": [
          {"ans": "Germany ", "score": 0},
          {"ans": "France", "score": 1},
          {"ans": "Spain ", "score": 0},
          {"ans": "Argentina", "score": 0},
        ]
      },

      // {
      //   "question": "who is the first country won  whe ?",
      //  "answers": [
      //     {"ans": "7", "score":1},
      //     {"ans": "5", "score": 0},
      //     {"ans": "8", "score": 0},
      //     {"ans": "6", "score": 0},
      //   ]
      // }
      //
      //
      // Which country won the FIFA World Cup in 2018?
    ]
  },
///////////////////////////////////////////////
  {
    "categoryName": 'History test',
    'color': Colors.red,
    'data': [
      {
        "question": "Who was the first president of the United States?",
        "answers": [
          {"ans": "George Washington.", "score": 1},
          {"ans": "John Adams", "score": 0},
          {"ans": "James Madison", "score": 0},
          {"ans": "James Monroe", "score": 0},
        ]
      },
      {
        "question": "When did the Cold War end?",
        "answers": [
          {"ans": "1997 ", "score": 0},
          {"ans": "1990 ", "score": 0},
          {"ans": "1991 ", "score": 1},
          {"ans": "1993 ", "score": 0},
        ]
      },
      {
        "question":
            "Which pharaoh is famous for building the Temple of Abu Simbel?",
        "answers": [
          {"ans": "Ramses I", "score": 0},
          {"ans": "Ramses II", "score": 1},
          {"ans": "Narmer ", "score": 0},
          {"ans": "Tutankhamun", "score": 0},
        ]
      }
    ]
  },
  //////////////////////////////////////////////////////////
  {
    "categoryName": 'General Test',
    'color': Colors.yellow,
    'data': [
      {
        "question": "Which planet is closest to the sun?",
        "answers": [
          {"ans": "Venus", "score": 0},
          {"ans": "Earth", "score": 0},
          {"ans": "Mercury", "score": 1},
          {"ans": "Mars", "score": 0},
        ]
      },
      {
        "question": " What is the largest organ in the human body?",
        "answers": [
          {"ans": "Heart", "score": 0},
          {"ans": "Brain", "score": 0},
          {"ans": "Liver", "score": 0},
          {"ans": "Skin", "score": 1},
        ]
      },
      {
        "question": "Who painted the Mona Lisa?",
        "answers": [
          {"ans": "Vincent van Gogh", "score": 0},
          {"ans": " Leonardo da Vinci", "score": 1},
          {"ans": "Pablo Picasso", "score": 0},
          {"ans": " Michelangelo", "score": 0},
        ]
      }
    ]
  },

  {
    "categoryName": 'Harry Potter Test',
    'color': Color(0xff916f64),

    //Color(0xff9d7465),
    'data': [
      {
        "question": " What is the name of Harry Potter's owl?",
        "answers": [
          {"ans": "Hedwig", "score": 1},
          {"ans": "Dobby", "score": 0},
          {"ans": "Crookshanks", "score": 0},
          {"ans": "Nagini", "score": 0},
        ]
      },
      {
        "question": " Which house does Harry Potter belong to?",
        "answers": [
          {"ans": "Gryffindor", "score": 1},
          {"ans": "Hufflepuff", "score": 0},
          {"ans": "Ravenclaw", "score": 0},
          {"ans": "Slytherin", "score": 0},
        ]
      },
      {
        "question":
            " Who is the headmaster of Hogwarts in the Harry Potter series?",
        "answers": [
          {"ans": " Albus Dumbledore", "score": 1},
          {"ans": " Severus Snape", "score": 0},
          {"ans": "Pablo Picasso", "score": 0},
          {"ans": " Michelangelo", "score": 0},
        ]
      },
      {
        "question":
            "What is the name of the third book in the Harry Potter series?",
        "answers": [
          {"ans": "HP and the Chamber of Secrets", "score": 0},
          {"ans": "Harry Potter and the Prisoner of Azkaban", "score": 1},
          {"ans": "Harry Potter and the Goblet of Fire", "score": 0},
          {"ans": "Harry Potter and the Order of the Phoenix", "score": 0}
        ]
      },
      {
        "question":
            "What is the name of the main antagonist in the Harry Potter series?",
        "answers": [
          {"ans": "Lord Voldemort", "score": 1},
          {"ans": "Bellatrix Lestrange", "score": 0},
          {"ans": "Draco Malfoy", "score": 0},
          {"ans": "Severus Snape", "score": 0}
        ]
      },
    ]
  },

  {
    "categoryName": 'sciences Test',
    'color': Color(0xffff6e3a),
    'data': [
      {
        "question": " What is the atomic number of hydrogen?",
        "answers": [
          {"ans": "1", "score": 1},
          {"ans": "2", "score": 0},
          {"ans": "3", "score": 0},
          {"ans": "4", "score": 0},
        ]
      },
      {
        "question":
            "What is the process by which plants convert sunlight into energy?",
        "answers": [
          {"ans": "Respiration", "score": 0},
          {"ans": "Photosynthesis", "score": 1},
          {"ans": "Digestion", "score": 0},
          {"ans": "Aerobic respiration", "score": 0},
        ]
      },
      {
        "question": "What is the formula for calculating density?",
        "answers": [
          {"ans": "Density = Mass/Volume", "score": 1},
          {"ans": "Density = Volume/Mass", "score": 0},
          {"ans": "Density = Mass x Volume", "score": 0},
          {"ans": "Density = Mass + Volume", "score": 0},
        ]
      },
      {
        "question":
            "Which type of rock is formed from the solidification of molten magma?",
        "answers": [
          {"ans": "Sedimentary rock", "score": 0},
          {"ans": "Metamorphic rock", "score": 0},
          {"ans": "Igneous rock", "score": 1},
          {"ans": "Fossil rock", "score": 0}
        ]
      },
      {
        "question": "What is the largest planet in our solar system?",
        "answers": [
          {"ans": "Earth", "score": 0},
          {"ans": "Mars", "score": 0},
          {"ans": "Jupiter", "score": 1},
          {"ans": "Saturn", "score": 0}
        ]
      },
      {
        "question": "What is the main component of the Earth's atmosphere?",
        "answers": [
          {"ans": "Oxygen", "score": 0},
          {"ans": "Nitrogen", "score": 1},
          {"ans": "Carbon dioxide", "score": 0},
          {"ans": "Hydrogen", "score": 0},
        ]
      },
      {
        "question":
            "What is the process by which liquid water turns into water vapor?",
        "answers": [
          {"ans": "Condensation", "score": 0},
          {"ans": "Evaporation", "score": 1},
          {"ans": "Sublimation", "score": 0},
          {"ans": "Transpiration", "score": 0},
        ]
      },
      {
        "question": "What is the role of the mitochondria in a cell?",
        "answers": [
          {"ans": "Protein synthesis", "score": 0},
          {"ans": "Energy production", "score": 1},
          {"ans": "Storage of genetic material", "score": 0},
          {"ans": "Cell division", "score": 0}
        ]
      },
      {
        "question": "What is the chemical symbol for gold?",
        "answers": [
          {"ans": "Ag", "score": 0},
          {"ans": "Fe", "score": 0},
          {"ans": "Gd", "score": 0},
          {"ans": "Au", "score": 1}
        ]
      },
      {
        "question": "What is the process by which plants make food?",
        "answers": [
          {"ans": "Photosynthesis", "score": 1},
          {"ans": "Respiration", "score": 0},
          {"ans": "Digestion", "score": 0},
        ]
      },
      {
        "question": "Which planet is known as the \"Red Planet\"?",
        "answers": [
          {"ans": "Mars", "score": 1},
          {"ans": "Earth", "score": 0},
          {"ans": "Venus", "score": 0},
        ]
      },
      {
        "question": "What is the process of liquid changing into gas called?",
        "answers": [
          {"ans": "Condensation", "score": 0},
          {"ans": "Evaporation", "score": 1},
          {"ans": "Sublimation", "score": 0},
        ]
      },
      {
        "question":
            "What is the force that pulls objects towards the center of the Earth?",
        "answers": [
          {"ans": "Gravity", "score": 1},
          {"ans": "Magnetism", "score": 0},
          {"ans": "Friction", "score": 0},
        ]
      },
    ]
  },
  {
    "categoryName": 'Maths Test',
    'color': Color(0xffff669a),
    'data': [
      {
        "question": "Solve the equation: x - 8 = 16 ",
        "answers": [
          {"ans": "25", "score": 0},
          {"ans": "26", "score": 0},
          {"ans": "22", "score": 0},
          {"ans": "x = 24", "score": 1},
        ]
      },
      {
        "question": "5 + 3 x 2 = ...",
        "answers": [
          {"ans": "18", "score": 0},
          {"ans": "8", "score": 0},
          {"ans": "11", "score": 1},
          {"ans": "16", "score": 0},
        ]
      },
      {
        "question": "Find the value of 'x' in the equation: 2x + 5 = 17",
        "answers": [
          {"ans": "4", "score": 0},
          {"ans": "6", "score": 1},
          {"ans": "8", "score": 0},
          {"ans": "12", "score": 0},
        ]
      },
      {
        "question": "Solve the proportion: 4/5 = x/20",
        "answers": [
          {"ans": "x =80", "score": 0},
          {"ans": "x =18", "score": 0},
          {"ans": "x =16", "score": 1},
          {"ans": "x =81", "score": 0},
        ]
      },
      {
        "question": "Find the area of a square with a side length of 6 units.",
        "answers": [
          {"ans": "12 square units", "score": 0},
          {"ans": "32 square units", "score": 0},
          {"ans": "36 square units", "score": 1},
          {"ans": "3 square units", "score": 0},
        ]
      },
      {
        "question": "Simplify the expression: 3 + 4 × (2 + 5)",
        "answers": [
          {"ans": "31", "score": 1},
          {"ans": "19", "score": 0},
          {"ans": "49", "score": 0},
          {"ans": "22", "score": 0},
        ]
      },
    ]
  },
];

TextEditingController usernamecontroll = TextEditingController();
