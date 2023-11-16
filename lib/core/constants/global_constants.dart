class GlobalConstants {
  static final List<Map<String, dynamic>> testQuestions = [
    {
      "id": 1,
      "options": [
        {"option_text": "20", "is_correct": false},
        {"option_text": "24", "is_correct": false},
        {"option_text": "32", "is_correct": true},
        {"option_text": "64", "is_correct": false},
      ],
      "question_text": "What is the next number in the series? 2, 4, 8, 16, ?",
    },
    {
      "id": 2,
      "options": [
        {"option_text": "Apple", "is_correct": false},
        {"option_text": "Banana", "is_correct": false},
        {"option_text": "Orange", "is_correct": false},
        {"option_text": "Carrot", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Apple, Banana, Orange, Carrot, Grape?"
    },
    {
      "id": 3,
      "options": [
        {"option_text": "5 days", "is_correct": false},
        {"option_text": "6 days", "is_correct": true},
        {"option_text": "7 days", "is_correct": false},
        {"option_text": "8 days", "is_correct": false}
      ],
      "question_text":
          "A snail climbs up a 10-foot pole during the day and slips down 5 feet at night. How many days will it take for the snail to reach the top of the pole?"
    },
    {
      "id": 4,
      "options": [
        {"option_text": "All Oranges are Fruits", "is_correct": false},
        {"option_text": "All Fruits are Oranges", "is_correct": false},
        {"option_text": "Some Oranges are Fruits", "is_correct": true},
        {"option_text": "No conclusion can be drawn", "is_correct": false}
      ],
      "question_text":
          "If all Fruits are Apples, and some Apples are Oranges, which of the following statements must be true?"
    },
    {
      "id": 5,
      "options": [
        {"option_text": "United States", "is_correct": false},
        {"option_text": "Canada", "is_correct": false},
        {"option_text": "Survivors are not buried", "is_correct": true},
        {"option_text": "No conclusion can be drawn", "is_correct": false}
      ],
      "question_text":
          "If a plane crashes on the border between the United States and Canada, where would the survivors be buried?"
    },
    {
      "id": 6,
      "options": [
        {"option_text": "S", "is_correct": false},
        {"option_text": "T", "is_correct": false},
        {"option_text": "U", "is_correct": true},
        {"option_text": "V", "is_correct": false}
      ],
      "question_text": "What letter comes next in the series? A, C, F, J, O, ..."
    },
    {
      "id": 7,
      "options": [
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Triangle", "is_correct": false},
        {"option_text": "Circle", "is_correct": false},
        {"option_text": "Rectangle", "is_correct": true}
      ],
      "question_text": "Which shape is different from the others?"
    },
    {
      "id": 8,
      "options": [
        {"option_text": "Earth", "is_correct": false},
        {"option_text": "Venus", "is_correct": true},
        {"option_text": "Mars", "is_correct": false},
        {"option_text": "Mercury", "is_correct": false}
      ],
      "question_text":
          "Which planet in our solar system has the longest day, taking approximately 243 Earth days to complete one rotation?"
    },
    {
      "id": 9,
      "options": [
        {"option_text": "11", "is_correct": false},
        {"option_text": "13", "is_correct": false},
        {"option_text": "15", "is_correct": false},
        {"option_text": "17", "is_correct": true}
      ],
      "question_text":
          "The alphabet series follows a pattern: A=1, B=3, C=5, D=7, and so on. What number would represent the letter \"H\"?"
    },
    {
      "id": 10,
      "options": [
        {"option_text": "Australia", "is_correct": false},
        {"option_text": "Chile", "is_correct": false},
        {"option_text": "Argentina", "is_correct": true},
        {"option_text": "South Africa", "is_correct": false}
      ],
      "question_text": "Which country is closest to the South Pole?"
    }
  ];
///////////////////////////////////////////////////////////////
  static final List<Map<String, dynamic>> logicalReasoning = [
    {
      "id": 71,
      "options": [
        {"option_text": "Circle", "is_correct": false},
        {"option_text": "Triangle", "is_correct": false},
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Rectangle", "is_correct": true},
      ],
      "question_text":
          "All circles are triangles. All triangles are squares. What can be inferred from these ssatements?"
    },
    {
      "id": 72,
      "options": [
        {"option_text": "Elephant", "is_correct": false},
        {"option_text": "Lion", "is_correct": false},
        {"option_text": "Penguin", "is_correct": true},
        {"option_text": "Zebra", "is_correct": false},
      ],
      "question_text":
          "In a group of animals, some are elephants, some are lions, and some are zebras. All zebras are black and white. What can be concluded?"
    },
    {
      "id": 73,
      "options": [
        {"option_text": "Green", "is_correct": false},
        {"option_text": "Red", "is_correct": true},
        {"option_text": "Blue", "is_correct": false},
        {"option_text": "Yellow", "is_correct": false},
      ],
      "question_text":
          "If all green apples are red and some apples in the basket are green, what can be inferred about those apples?"
    },
    {
      "id": 74,
      "options": [
        {"option_text": "Cats", "is_correct": false},
        {"option_text": "Dogs", "is_correct": false},
        {"option_text": "Penguins", "is_correct": true},
        {"option_text": "Fish", "is_correct": false},
      ],
      "question_text":
          "In a zoo, there are cats, dogs, and fish. Some animals swim, and penguins are birds that swim. What can be concluded?"
    },
    {
      "id": 75,
      "options": [
        {"option_text": "Circle", "is_correct": true},
        {"option_text": "Blue", "is_correct": false},
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Triangle", "is_correct": false},
      ],
      "question_text":
          "All blue shapes are circles. Some shapes in the set are blue. What can be inferred about those shapes?"
    },
    {
      "id": 76,
      "options": [
        {"option_text": "Apples", "is_correct": false},
        {"option_text": "Oranges", "is_correct": false},
        {"option_text": "Bananas", "is_correct": false},
        {"option_text": "Fruits", "is_correct": true},
      ],
      "question_text": "Some fruits are oranges. All oranges are bananas. What can be inferred about fruits in general?"
    },
    {
      "id": 77,
      "options": [
        {"option_text": "Rectangle", "is_correct": false},
        {"option_text": "Circle", "is_correct": true},
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Triangle", "is_correct": false},
      ],
      "question_text":
          "All rectangles are squares. No squares are circles. What can be inferred about rectangles and circles?"
    },
    {
      "id": 78,
      "options": [
        {"option_text": "Blue", "is_correct": false},
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Triangle", "is_correct": false},
        {"option_text": "Circle", "is_correct": true},
      ],
      "question_text":
          "All blue shapes are circles. Some shapes in the set are blue. What can be inferred about those shapes?"
    },
    {
      "id": 79,
      "options": [
        {"option_text": "Penguins", "is_correct": true},
        {"option_text": "Birds", "is_correct": false},
        {"option_text": "Fish", "is_correct": false},
        {"option_text": "Mammals", "is_correct": false},
      ],
      "question_text": "All penguins are birds. Some birds can fly. What can be concluded about penguins and flying?"
    },
    {
      "id": 80,
      "options": [
        {"option_text": "Red", "is_correct": false},
        {"option_text": "Blue", "is_correct": false},
        {"option_text": "Yellow", "is_correct": true},
        {"option_text": "Green", "is_correct": false},
      ],
      "question_text":
          "If no yellow apples are red, and some apples in the basket are red, what can be inferred about those apples?"
    }
  ];

  static final List<Map<String, dynamic>> randomQuestions = [
    {
      "id": 1,
      "options": [
        {"option_text": "All cats chase mice", "is_correct": false},
        {"option_text": "Some cats chase mice", "is_correct": true},
        {"option_text": "No cats chase mice", "is_correct": false},
        {"option_text": "Cats don't like mice", "is_correct": false}
      ],
      "question_text":
          "If all cats are animals, and some animals chase mice, can we conclude that some cats chase mice?"
    },
    {
      "id": 2,
      "options": [
        {"option_text": "32", "is_correct": true},
        {"option_text": "24", "is_correct": false},
        {"option_text": "64", "is_correct": false},
        {"option_text": "128", "is_correct": false}
      ],
      "question_text": "What comes next in the sequence: 2, 4, 8, 16, ...?"
    },
    {
      "id": 3,
      "options": [
        {"option_text": "U", "is_correct": false},
        {"option_text": "Y", "is_correct": false},
        {"option_text": "A", "is_correct": false},
        {"option_text": "I", "is_correct": true}
      ],
      "question_text": "What comes next in the series: A, E, I, O, ...?"
    },
    {
      "id": 4,
      "options": [
        {"option_text": "\$16", "is_correct": false},
        {"option_text": "\$18", "is_correct": false},
        {"option_text": "\$25", "is_correct": true},
        {"option_text": "\$22", "is_correct": false}
      ],
      "question_text": "If a shirt costs \$20 after a 25% discount, what was its original price?"
    },
    {
      "id": 5,
      "options": [
        {"option_text": "5", "is_correct": true},
        {"option_text": "7", "is_correct": false},
        {"option_text": "10", "is_correct": false},
        {"option_text": "15", "is_correct": false}
      ],
      "question_text": "Solve the equation: 2x + 5 = 15"
    },
    {
      "id": 6,
      "options": [
        {"option_text": "O", "is_correct": false},
        {"option_text": "U", "is_correct": false},
        {"option_text": "X", "is_correct": true},
        {"option_text": "S", "is_correct": false}
      ],
      "question_text": "What comes next in the sequence: Q, T, W, ...?"
    },
    {
      "id": 7,
      "options": [
        {"option_text": "Black", "is_correct": false},
        {"option_text": "Red", "is_correct": false},
        {"option_text": "Yellow", "is_correct": true},
        {"option_text": "Blue", "is_correct": false}
      ],
      "question_text": "Which color does not belong to the group? Black, Red, Yellow, Blue, Green?"
    },
    {
      "id": 8,
      "options": [
        {"option_text": "Peach", "is_correct": false},
        {"option_text": "Plum", "is_correct": false},
        {"option_text": "Cherry", "is_correct": false},
        {"option_text": "Pear", "is_correct": true}
      ],
      "question_text": "Which fruit does not belong to the group? Peach, Plum, Cherry, Pear, Banana?"
    },
    {
      "id": 9,
      "options": [
        {"option_text": "Football", "is_correct": false},
        {"option_text": "Basketball", "is_correct": false},
        {"option_text": "Tennis", "is_correct": true},
        {"option_text": "Baseball", "is_correct": false}
      ],
      "question_text": "Which sport is played with a racket and a ball? Football, Basketball, Tennis, Baseball?"
    },
    {
      "id": 10,
      "options": [
        {"option_text": "Elephant", "is_correct": false},
        {"option_text": "Lion", "is_correct": false},
        {"option_text": "Giraffe", "is_correct": true},
        {"option_text": "Kangaroo", "is_correct": false}
      ],
      "question_text": "Which animal has a long neck? Elephant, Lion, Giraffe, Kangaroo?"
    }
  ];

  static final List<Map<String, dynamic>> criticalThinkingQuestions = [
    {
      "id": 1,
      "options": [
        {"option_text": "Brother", "is_correct": false},
        {"option_text": "Father", "is_correct": false},
        {"option_text": "Uncle", "is_correct": false},
        {"option_text": "The man in the portrait", "is_correct": true}
      ],
      "question_text":
          "A man is looking at a portrait. His friend asks, 'Who is it that you are looking at?' The man replies, 'Brothers and sisters, I have none. But the father of that man in the portrait is my father's son.' Who is in the portrait?"
    },
    {
      "id": 2,
      "options": [
        {"option_text": "The hotel clerk kept it", "is_correct": false},
        {"option_text": "The bellboy kept it", "is_correct": false},
        {"option_text": "The guests got it back", "is_correct": true},
        {"option_text": "The missing dollar never existed", "is_correct": false}
      ],
      "question_text":
          "Three people check into a hotel room that costs \$30. Later, the hotel clerk realizes there was a mistake, and the room only cost \$25. The hotel clerk gives \$5 to the bellboy to return to the guests. The bellboy decides to keep \$2 and gives \$1 back to each guest. Now, each guest has paid \$9, and the bellboy has kept \$2. What happened to the missing dollar?"
    },
    {
      "id": 3,
      "options": [
        {"option_text": "It's buried in the U.S.", "is_correct": false},
        {"option_text": "It's buried in Canada.", "is_correct": false},
        {"option_text": "They don't bury survivors.", "is_correct": true},
        {"option_text": "It depends on the survivors' wishes.", "is_correct": false}
      ],
      "question_text": "If a plane crashes on the border between the U.S. and Canada, where do they bury the survivors?"
    },
    {
      "id": 4,
      "options": [
        {"option_text": "Once", "is_correct": true},
        {"option_text": "Twice", "is_correct": false},
        {"option_text": "Thrice", "is_correct": false},
        {"option_text": "Infinite times", "is_correct": false}
      ],
      "question_text": "How many times can you subtract 10 from 100?"
    },
    {
      "id": 5,
      "options": [
        {"option_text": "The oldest", "is_correct": false},
        {"option_text": "The tallest", "is_correct": true},
        {"option_text": "The heaviest", "is_correct": false},
        {"option_text": "The smartest", "is_correct": false}
      ],
      "question_text": "Which word does not belong to the group? Elephant, Lion, Snake, Giraffe, Mango?"
    },
    {
      "id": 6,
      "options": [
        {"option_text": "All cars are blue", "is_correct": false},
        {"option_text": "Some cars are blue", "is_correct": true},
        {"option_text": "No cars are blue", "is_correct": false},
        {"option_text": "Cars are not blue", "is_correct": false}
      ],
      "question_text": "If all cars are vehicles, and some vehicles are blue, can we conclude that some cars are blue?"
    },
    {
      "id": 7,
      "options": [
        {"option_text": "30 seconds", "is_correct": false},
        {"option_text": "One minute", "is_correct": false},
        {"option_text": "Two minutes", "is_correct": false},
        {"option_text": "The egg won't hatch, it's a boiled egg", "is_correct": true}
      ],
      "question_text":
          "A chicken and a half lay an egg and a half in a day and a half. How long does it take for the egg to hatch?"
    },
    {
      "id": 8,
      "options": [
        {"option_text": "6", "is_correct": false},
        {"option_text": "8", "is_correct": true},
        {"option_text": "10", "is_correct": false},
        {"option_text": "12", "is_correct": false}
      ],
      "question_text": "What comes next in the sequence: 2, 5, 10, 17, ...?"
    },
    {
      "id": 9,
      "options": [
        {"option_text": "Tennis", "is_correct": false},
        {"option_text": "Badminton", "is_correct": false},
        {"option_text": "Table Tennis", "is_correct": false},
        {"option_text": "Squash", "is_correct": true}
      ],
      "question_text": "Which sport does not belong to the group? Tennis, Badminton, Table Tennis, Squash, Basketball?"
    },
    {
      "id": 10,
      "options": [
        {"option_text": "February", "is_correct": false},
        {"option_text": "April", "is_correct": false},
        {"option_text": "June", "is_correct": false},
        {"option_text": "August", "is_correct": true}
      ],
      "question_text": "Which month does not have 28 days?"
    }
  ];

  static final List<Map<String, dynamic>> math = [
    {
      "id": 61,
      "options": [
        {"option_text": "24", "is_correct": true},
        {"option_text": "15", "is_correct": false},
        {"option_text": "18", "is_correct": false},
        {"option_text": "21", "is_correct": false},
      ],
      "question_text": "If 3x + 6 = 18, what is the value of x?"
    },
    {
      "id": 62,
      "options": [
        {"option_text": "12", "is_correct": false},
        {"option_text": "21", "is_correct": true},
        {"option_text": "15", "is_correct": false},
        {"option_text": "18", "is_correct": false},
      ],
      "question_text": "If 5y - 3 = 12, what is the value of y?"
    },
    {
      "id": 63,
      "options": [
        {"option_text": "16", "is_correct": false},
        {"option_text": "18", "is_correct": false},
        {"option_text": "24", "is_correct": true},
        {"option_text": "20", "is_correct": false},
      ],
      "question_text": "If 2z + 4 = 28, what is the value of z?"
    },
    {
      "id": 64,
      "options": [
        {"option_text": "7", "is_correct": false},
        {"option_text": "9", "is_correct": false},
        {"option_text": "11", "is_correct": false},
        {"option_text": "13", "is_correct": true}
      ],
      "question_text": "If 2a - 5 = 3, what is the value of a?"
    },
    {
      "id": 65,
      "options": [
        {"option_text": "35", "is_correct": false},
        {"option_text": "45", "is_correct": false},
        {"option_text": "55", "is_correct": false},
        {"option_text": "65", "is_correct": true},
      ],
      "question_text": "If 4b + 15 = 100, what is the value of b?"
    },
    {
      "id": 66,
      "options": [
        {"option_text": "6", "is_correct": false},
        {"option_text": "12", "is_correct": true},
        {"option_text": "8", "is_correct": false},
        {"option_text": "10", "is_correct": false},
      ],
      "question_text": "If 3c + 6 = 30, what is the value of c?"
    },
    {
      "id": 67,
      "options": [
        {"option_text": "5", "is_correct": false},
        {"option_text": "8", "is_correct": false},
        {"option_text": "11", "is_correct": false},
        {"option_text": "14", "is_correct": true}
      ],
      "question_text": "If 2d - 3 = 11, what is the value of d?"
    },
    {
      "id": 68,
      "options": [
        {"option_text": "24", "is_correct": false},
        {"option_text": "30", "is_correct": false},
        {"option_text": "42", "is_correct": true},
        {"option_text": "36", "is_correct": false},
      ],
      "question_text": "If 5e + 12 = 30, what is the value of e?"
    },
    {
      "id": 69,
      "options": [
        {"option_text": "24", "is_correct": true},
        {"option_text": "15", "is_correct": false},
        {"option_text": "18", "is_correct": false},
        {"option_text": "21", "is_correct": false},
      ],
      "question_text": "If 3f + 9 = 30, what is the value of f?"
    },
    {
      "id": 70,
      "options": [
        {"option_text": "9", "is_correct": false},
        {"option_text": "12", "is_correct": false},
        {"option_text": "15", "is_correct": false},
        {"option_text": "18", "is_correct": true},
      ],
      "question_text": "If 2g - 6 = 12, what is the value of g?"
    }
  ];

  static final List<Map<String, dynamic>> generalKnowledge = [
    {
      "id": 21,
      "options": [
        {"option_text": "Pluto", "is_correct": false},
        {"option_text": "Saturn", "is_correct": false},
        {"option_text": "Square", "is_correct": true},
        {"option_text": "Mars", "is_correct": false}
      ],
      "question_text": "Which is not a planet in our solar system? Pluto, Saturn, Mars, Square, Jupiter?"
    },
    {
      "id": 22,
      "options": [
        {"option_text": "Rhombus", "is_correct": false},
        {"option_text": "Hydrogen", "is_correct": false},
        {"option_text": "Helium", "is_correct": false},
        {"option_text": "Circle", "is_correct": true}
      ],
      "question_text":
          "Which is not a primary element in the composition of water? Rhombus, Hydrogen, Helium, Circle, Nitrogen?"
    },
    {
      "id": 23,
      "options": [
        {"option_text": "Photosynthesis", "is_correct": true},
        {"option_text": "Respiration", "is_correct": false},
        {"option_text": "Circulation", "is_correct": false},
        {"option_text": "Trapezoid", "is_correct": false}
      ],
      "question_text":
          "Which process is responsible for the conversion of sunlight into energy in plants? Photosynthesis, Respiration, Circulation, Trapezoid, Transpiration?"
    },
    {
      "id": 24,
      "options": [
        {"option_text": "Newton", "is_correct": false},
        {"option_text": "Einstein", "is_correct": false},
        {"option_text": "Galileo", "is_correct": false},
        {"option_text": "Rectangle", "is_correct": true}
      ],
      "question_text":
          "Who is known for his laws of motion and universal gravitation? Newton, Einstein, Galileo, Rectangle, Tesla?"
    },
    {
      "id": 25,
      "options": [
        {"option_text": "Solar System", "is_correct": false},
        {"option_text": "Human Body", "is_correct": false},
        {"option_text": "Hexagon", "is_correct": true},
        {"option_text": "Computer Science", "is_correct": false}
      ],
      "question_text":
          "Which subject does not belong to the group? Solar System, Human Body, Computer Science, Hexagon, Chemistry?"
    },
    {
      "id": 26,
      "options": [
        {"option_text": "Celsius", "is_correct": false},
        {"option_text": "Fahrenheit", "is_correct": false},
        {"option_text": "Pentagon", "is_correct": true},
        {"option_text": "Kelvin", "is_correct": false}
      ],
      "question_text": "Which is not a unit of temperature measurement? Celsius, Fahrenheit, Kelvin, Pentagon, Rankine?"
    },
    {
      "id": 27,
      "options": [
        {"option_text": "Mars", "is_correct": false},
        {"option_text": "Saturn", "is_correct": false},
        {"option_text": "Jupiter", "is_correct": false},
        {"option_text": "Triangle", "is_correct": true}
      ],
      "question_text": "Which is not a gas giant in our solar system? Mars, Saturn, Jupiter, Triangle, Neptune?"
    },
    {
      "id": 28,
      "options": [
        {"option_text": "Evaporation", "is_correct": false},
        {"option_text": "Condensation", "is_correct": false},
        {"option_text": "Sublimation", "is_correct": false},
        {"option_text": "Square", "is_correct": true}
      ],
      "question_text":
          "Which is not a phase of the water cycle? Evaporation, Condensation, Sublimation, Square, Precipitation?"
    },
    {
      "id": 29,
      "options": [
        {"option_text": "Rectangle", "is_correct": true},
        {"option_text": "Nucleus", "is_correct": false},
        {"option_text": "Electron", "is_correct": false},
        {"option_text": "Proton", "is_correct": false}
      ],
      "question_text": "Which is not a subatomic particle? Nucleus, Electron, Proton, Rectangle, Neutron?"
    },
    {
      "id": 30,
      "options": [
        {"option_text": "Red Blood Cells", "is_correct": false},
        {"option_text": "White Blood Cells", "is_correct": false},
        {"option_text": "Platelets", "is_correct": false},
        {"option_text": "Plasma", "is_correct": false}
      ],
      "question_text": "Which component is not found in blood? Red Blood Cells, White Blood Cells, Platelets, Plasma?"
    }
  ];

  static final List<Map<String, dynamic>> countries = [
    {
      "id": 31,
      "options": [
        {"option_text": "Australia", "is_correct": true},
        {"option_text": "Brazil", "is_correct": false},
        {"option_text": "India", "is_correct": false},
        {"option_text": "Canada", "is_correct": false},
      ],
      "question_text": "Which is not a country? Brazil, India, Canada, Australia?"
    },
    {
      "id": 32,
      "options": [
        {"option_text": "Paris", "is_correct": false},
        {"option_text": "Madrid", "is_correct": true},
        {"option_text": "Rome", "is_correct": false},
        {"option_text": "Berlin", "is_correct": false},
      ],
      "question_text": "Which is not a capital city? Paris, Rome, Berlin, Madrid?"
    },
    {
      "id": 33,
      "options": [
        {"option_text": "Japan", "is_correct": false},
        {"option_text": "China", "is_correct": false},
        {"option_text": "Australia", "is_correct": true},
        {"option_text": "Russia", "is_correct": false},
      ],
      "question_text": "Which is not a country in Asia? Japan, China, Russia, Australia?"
    },
    {
      "id": 34,
      "options": [
        {"option_text": "Africa", "is_correct": false},
        {"option_text": "Asia", "is_correct": false},
        {"option_text": "Europe", "is_correct": false},
        {"option_text": "Antarctica", "is_correct": true},
      ],
      "question_text": "Which is not a continent? Africa, Asia, Europe, Antarctica?"
    },
    {
      "id": 35,
      "options": [
        {"option_text": "Brazil", "is_correct": true},
        {"option_text": "Mexico", "is_correct": false},
        {"option_text": "Canada", "is_correct": false},
        {"option_text": "United States", "is_correct": false},
      ],
      "question_text": "Which is not in North America? Mexico, Canada, United States, Brazil?"
    },
    {
      "id": 36,
      "options": [
        {"option_text": "Australia", "is_correct": false},
        {"option_text": "Brazil", "is_correct": false},
        {"option_text": "South Africa", "is_correct": true},
        {"option_text": "Canada", "is_correct": false},
      ],
      "question_text": "Which is not in the Southern Hemisphere? Australia, Brazil, Canada, South Africa?"
    },
    {
      "id": 37,
      "options": [
        {"option_text": "Tokyo", "is_correct": false},
        {"option_text": "Seoul", "is_correct": false},
        {"option_text": "Beijing", "is_correct": false},
        {"option_text": "Moscow", "is_correct": true},
      ],
      "question_text": "Which is not an Asian capital city? Tokyo, Seoul, Beijing, Moscow?"
    },
    {
      "id": 38,
      "options": [
        {"option_text": "Germany", "is_correct": false},
        {"option_text": "Italy", "is_correct": false},
        {"option_text": "France", "is_correct": false},
        {"option_text": "Poland", "is_correct": true},
      ],
      "question_text": "Which is not in Western Europe? Germany, Italy, France, Poland?"
    },
    {
      "id": 39,
      "options": [
        {"option_text": "Argentina", "is_correct": false},
        {"option_text": "Australia", "is_correct": true},
        {"option_text": "Chile", "is_correct": false},
        {"option_text": "Peru", "is_correct": false},
      ],
      "question_text": "Which is not in South America? Argentina, Chile, Peru, Australia?"
    },
    {
      "id": 40,
      "options": [
        {"option_text": "Bangladesh", "is_correct": true},
        {"option_text": "Egypt", "is_correct": false},
        {"option_text": "Kenya", "is_correct": false},
        {"option_text": "Nigeria", "is_correct": false},
      ],
      "question_text": "Which is not in Africa? Egypt, Kenya, Nigeria, Bangladesh?"
    }
  ];

  static final List<Map<String, dynamic>> verbalReasoning = [
    {
      "id": 1,
      "options": [
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Circle", "is_correct": false},
        {"option_text": "Rectangle", "is_correct": true},
        {"option_text": "Triangle", "is_correct": false}
      ],
      "question_text": "Which shape does not belong to the group?"
    },
    {
      "id": 2,
      "options": [
        {"option_text": "Happy", "is_correct": false},
        {"option_text": "Sad", "is_correct": true},
        {"option_text": "Joyful", "is_correct": false},
        {"option_text": "Pleasant", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group?"
    },
    {
      "id": 3,
      "options": [
        {"option_text": "Table", "is_correct": true},
        {"option_text": "Cat", "is_correct": false},
        {"option_text": "Dog", "is_correct": false},
        {"option_text": "Lion", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group? "
    },
    {
      "id": 4,
      "options": [
        {"option_text": "Summer", "is_correct": false},
        {"option_text": "Winter", "is_correct": false},
        {"option_text": "Square", "is_correct": true},
        {"option_text": "Spring", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group? "
    },
    {
      "id": 5,
      "options": [
        {"option_text": "Pen", "is_correct": false},
        {"option_text": "Mango", "is_correct": true},
        {"option_text": "Pencil", "is_correct": false},
        {"option_text": "Book", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group?"
    },
    {
      "id": 6,
      "options": [
        {"option_text": "Earth", "is_correct": false},
        {"option_text": "Mars", "is_correct": false},
        {"option_text": "Oval", "is_correct": true},
        {"option_text": "Moon", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group?"
    },
    {
      "id": 7,
      "options": [
        {"option_text": "Carpet", "is_correct": false},
        {"option_text": "Clothes", "is_correct": false},
        {"option_text": "Table", "is_correct": true},
        {"option_text": "Rug", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group?"
    },
    {
      "id": 8,
      "options": [
        {"option_text": "Lion", "is_correct": false},
        {"option_text": "Elephant", "is_correct": false},
        {"option_text": "Giraffe", "is_correct": false},
        {"option_text": "Mouse", "is_correct": true}
      ],
      "question_text": "Which animal does not belong to the group?"
    },
    {
      "id": 9,
      "options": [
        {"option_text": "Orange", "is_correct": false},
        {"option_text": "Grape", "is_correct": false},
        {"option_text": "Pineapple", "is_correct": true},
        {"option_text": "Pear", "is_correct": false},
      ],
      "question_text": "Which word does not belong to the group?"
    },
    {
      "id": 10,
      "options": [
        {"option_text": "Piano", "is_correct": false},
        {"option_text": "Guitar", "is_correct": false},
        {"option_text": "Trumpet", "is_correct": false},
        {"option_text": "Flute", "is_correct": true}
      ],
      "question_text": "Which musical instrument does not belong to the group? "
    }
  ];

  static final List<Map<String, dynamic>> analyticalReasoning = [
    {
      "id": 11,
      "options": [
        {"option_text": "Brother", "is_correct": false},
        {"option_text": "Father", "is_correct": false},
        {"option_text": "Uncle", "is_correct": false},
        {"option_text": "The man in the portrait", "is_correct": true}
      ],
      "question_text":
          "A man is looking at a portrait. His friend asks, 'Who is it that you are looking at?' The man replies, 'Brothers and sisters, I have none. But the father of that man in the portrait is my father's son.' Who is in the portrait?"
    },
    {
      "id": 12,
      "options": [
        {"option_text": "The hotel clerk kept it", "is_correct": false},
        {"option_text": "The bellboy kept it", "is_correct": false},
        {"option_text": "The guests got it back", "is_correct": true},
        {"option_text": "The missing dollar never existed", "is_correct": false}
      ],
      "question_text":
          "Three people check into a hotel room that costs \$30. Later, the hotel clerk realizes there was a mistake, and the room only cost \$25. The hotel clerk gives \$5 to the bellboy to return to the guests. The bellboy decides to keep \$2 and gives \$1 back to each guest. Now, each guest has paid \$9, and the bellboy has kept \$2. What happened to the missing dollar?"
    },
    {
      "id": 13,
      "options": [
        {"option_text": "It's buried in the U.S.", "is_correct": false},
        {"option_text": "It's buried in Canada.", "is_correct": false},
        {"option_text": "They don't bury survivors.", "is_correct": true},
        {"option_text": "It depends on the survivors' wishes.", "is_correct": false}
      ],
      "question_text": "If a plane crashes on the border between the U.S. and Canada, where do they bury the survivors?"
    },
    {
      "id": 14,
      "options": [
        {"option_text": "Once", "is_correct": true},
        {"option_text": "Twice", "is_correct": false},
        {"option_text": "Thrice", "is_correct": false},
        {"option_text": "Infinite times", "is_correct": false}
      ],
      "question_text": "How many times can you subtract 10 from 100?"
    },
    {
      "id": 15,
      "options": [
        {"option_text": "The oldest", "is_correct": false},
        {"option_text": "The tallest", "is_correct": true},
        {"option_text": "The heaviest", "is_correct": false},
        {"option_text": "The smartest", "is_correct": false}
      ],
      "question_text": "Which word does not belong to the group? Elephant, Lion, Snake, Giraffe, Mango?"
    },
    {
      "id": 16,
      "options": [
        {"option_text": "All cars are blue", "is_correct": false},
        {"option_text": "Some cars are blue", "is_correct": true},
        {"option_text": "No cars are blue", "is_correct": false},
        {"option_text": "Cars are not blue", "is_correct": false}
      ],
      "question_text": "If all cars are vehicles, and some vehicles are blue, can we conclude that some cars are blue?"
    },
    {
      "id": 17,
      "options": [
        {"option_text": "30 seconds", "is_correct": false},
        {"option_text": "One minute", "is_correct": false},
        {"option_text": "Two minutes", "is_correct": false},
        {"option_text": "The egg won't hatch, it's a boiled egg", "is_correct": true}
      ],
      "question_text":
          "A chicken and a half lay an egg and a half in a day and a half. How long does it take for the egg to hatch?"
    },
    {
      "id": 18,
      "options": [
        {"option_text": "6", "is_correct": false},
        {"option_text": "8", "is_correct": true},
        {"option_text": "10", "is_correct": false},
        {"option_text": "12", "is_correct": false}
      ],
      "question_text": "What comes next in the sequence: 2, 5, 10, 17, ...?"
    },
    {
      "id": 19,
      "options": [
        {"option_text": "Squash", "is_correct": true},
        {"option_text": "Tennis", "is_correct": false},
        {"option_text": "Badminton", "is_correct": false},
        {"option_text": "Table Tennis", "is_correct": false},
      ],
      "question_text": "Which sport does not belong to the group? Tennis, Badminton, Table Tennis, Squash, Basketball?"
    },
    {
      "id": 20,
      "options": [
        {"option_text": "February", "is_correct": false},
        {"option_text": "April", "is_correct": false},
        {"option_text": "June", "is_correct": false},
        {"option_text": "August", "is_correct": true}
      ],
      "question_text": "Which month does not have 28 days?"
    }
  ];

  static final List<Map<String, dynamic>> trickyQuestions = [
    {
      "id": 41,
      "options": [
        {"option_text": "An egg", "is_correct": false},
        {"option_text": "A clock", "is_correct": false},
        {"option_text": "A mirror", "is_correct": false},
        {"option_text": "Echo", "is_correct": true}
      ],
      "question_text":
          "I speak without a mouth and hear without ears. I have no body, but I come alive with the wind. What am I?"
    },
    {
      "id": 42,
      "options": [
        {"option_text": "The beginning", "is_correct": false},
        {"option_text": "The end", "is_correct": false},
        {"option_text": "The present", "is_correct": false},
        {"option_text": "The letter 'M'", "is_correct": true}
      ],
      "question_text": "What comes once in a minute, twice in a moment, but never in a thousand years?"
    },
    {
      "id": 43,
      "options": [
        {"option_text": "A candle", "is_correct": false},
        {"option_text": "A matchstick", "is_correct": false},
        {"option_text": "A flashlight", "is_correct": false},
        {"option_text": "Footsteps", "is_correct": true}
      ],
      "question_text": "The more you take, the more you leave behind. What am I? "
    },
    {
      "id": 44,
      "options": [
        {"option_text": "Tomorrow", "is_correct": false},
        {"option_text": "Yesterday", "is_correct": false},
        {"option_text": "Today", "is_correct": false},
        {"option_text": "The letter 'A'", "is_correct": true}
      ],
      "question_text": "What always comes but never arrives? "
    },
    {
      "id": 45,
      "options": [
        {"option_text": "A glove", "is_correct": false},
        {"option_text": "A hat", "is_correct": false},
        {"option_text": "A shirt", "is_correct": false},
        {"option_text": "A keyboard", "is_correct": true}
      ],
      "question_text":
          "I have keys but no locks. I have space but no room. You can enter, but you can't go inside. What am I? "
    },
    {
      "id": 46,
      "options": [
        {"option_text": "The letter 'H'", "is_correct": false},
        {"option_text": "The letter 'A'", "is_correct": false},
        {"option_text": "The letter 'B'", "is_correct": false},
        {"option_text": "The letter 'O'", "is_correct": true}
      ],
      "question_text": "What comes once in a year, twice in a month, but never in a week? "
    },
    {
      "id": 47,
      "options": [
        {"option_text": "A river", "is_correct": false},
        {"option_text": "A mountain", "is_correct": false},
        {"option_text": "A bridge", "is_correct": false},
        {"option_text": "Clouds", "is_correct": true}
      ],
      "question_text": "I can fly without wings. I can cry without eyes. Wherever I go, darkness follows me. What am I?"
    },
    {
      "id": 48,
      "options": [
        {"option_text": "A secret", "is_correct": false},
        {"option_text": "A riddle", "is_correct": false},
        {"option_text": "A mystery", "is_correct": false},
        {"option_text": "Footsteps", "is_correct": true}
      ],
      "question_text": "The more you take, the more you leave behind. What am I? "
    },
    {
      "id": 49,
      "options": [
        {"option_text": "A shoe", "is_correct": false},
        {"option_text": "A hat", "is_correct": false},
        {"option_text": "A shirt", "is_correct": false},
        {"option_text": "A bottle", "is_correct": true}
      ],
      "question_text": "What has a neck but no head? "
    },
    {
      "id": 50,
      "options": [
        {"option_text": "A candle", "is_correct": false},
        {"option_text": "A flashlight", "is_correct": false},
        {"option_text": "A bonfire", "is_correct": false},
        {"option_text": "A plant", "is_correct": true}
      ],
      "question_text": "The more you feed it, the more it grows. What is it?"
    }
  ];

  static final List<Map<String, dynamic>> moreTrickyQuestions = [
    {
      "id": 61,
      "options": [
        {"option_text": "A symphony", "is_correct": false},
        {"option_text": "A dream", "is_correct": false},
        {"option_text": "A memory", "is_correct": false},
        {"option_text": "A coin", "is_correct": true}
      ],
      "question_text":
          "I carry tales of the past, yet I'm not alive. People often flip me to make decisions. What am I?"
    },
    {
      "id": 62,
      "options": [
        {"option_text": "A mountain", "is_correct": false},
        {"option_text": "A valley", "is_correct": false},
        {"option_text": "A canyon", "is_correct": false},
        {"option_text": "A coin", "is_correct": true}
      ],
      "question_text": "I have peaks and valleys but no unevenness. What am I?"
    },
    {
      "id": 63,
      "options": [
        {"option_text": "A comet", "is_correct": false},
        {"option_text": "A planet", "is_correct": false},
        {"option_text": "A galaxy", "is_correct": false},
        {"option_text": "A coin", "is_correct": true}
      ],
      "question_text": "I wander through space, always looking for a place. What am I?"
    },
    {
      "id": 64,
      "options": [
        {"option_text": "A rainbow", "is_correct": false},
        {"option_text": "A cloud", "is_correct": false},
        {"option_text": "A star", "is_correct": false},
        {"option_text": "A coin", "is_correct": true}
      ],
      "question_text": "I'm born in the sky but fall to the ground. What am I?"
    },
    {
      "id": 65,
      "options": [
        {"option_text": "Alive", "is_correct": false},
        {"option_text": "Dead", "is_correct": false},
        {"option_text": "Square", "is_correct": true},
        {"option_text": "Unknown", "is_correct": false}
      ],
      "question_text":
          "I speak without a mouth and hear without ears. I have no body, but I come alive with the wind. What am I?"
    },
    {
      "id": 66,
      "options": [
        {"option_text": "A matchstick", "is_correct": false},
        {"option_text": "A candle", "is_correct": false},
        {"option_text": "A torch", "is_correct": false},
        {"option_text": "A sunflower", "is_correct": true}
      ],
      "question_text": "The more you take, the more you leave behind. What am I?"
    },
    {
      "id": 67,
      "options": [
        {"option_text": "A secret", "is_correct": false},
        {"option_text": "A story", "is_correct": false},
        {"option_text": "A puzzle", "is_correct": false},
        {"option_text": "A coin", "is_correct": true}
      ],
      "question_text": "I can be kept, unfolded, solved, and tossed. What am I?"
    },
    {
      "id": 68,
      "options": [
        {"option_text": "A needle", "is_correct": false},
        {"option_text": "A compass", "is_correct": false},
        {"option_text": "A ruler", "is_correct": false},
        {"option_text": "A coin", "is_correct": true}
      ],
      "question_text": "I have no physical form, yet I can be spent. What am I?"
    },
    {
      "id": 69,
      "options": [
        {"option_text": "A towel", "is_correct": false},
        {"option_text": "A sponge", "is_correct": false},
        {"option_text": "A bucket", "is_correct": true},
        {"option_text": "A cloud", "is_correct": false}
      ],
      "question_text": "I can be filled with holes and still hold water. What am I?"
    },
    {
      "id": 70,
      "options": [
        {"option_text": "A joke", "is_correct": true},
        {"option_text": "A riddle", "is_correct": false},
        {"option_text": "A mystery", "is_correct": false},
        {"option_text": "A coin", "is_correct": false}
      ],
      "question_text": "I can be cracked, made, told, and played. What am I?"
    }
  ];
}