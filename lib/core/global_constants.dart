class GlobalConstants {
  static final List<Map<String, dynamic>> questions = [
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
//
//
//
//
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
    }
  ];
  //
  //
  //
  //
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

  static final List<Map<String, dynamic>> verbalReasoning = [
    {
      "id": 1,
      "options": [
        {"option_text": "Square", "is_correct": false},
        {"option_text": "Circle", "is_correct": false},
        {"option_text": "Rectangle", "is_correct": true},
        {"option_text": "Triangle", "is_correct": false}
      ],
      "question_text": "Which shape does not belong to the group? Square, Circle, Rectangle, Triangle, Oval?"
    },
    {
      "id": 2,
      "options": [
        {"option_text": "Happy", "is_correct": false},
        {"option_text": "Joyful", "is_correct": false},
        {"option_text": "Pleasant", "is_correct": false},
        {"option_text": "Sad", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Happy, Joyful, Pleasant, Sad, Content?"
    },
    {
      "id": 3,
      "options": [
        {"option_text": "Cat", "is_correct": false},
        {"option_text": "Dog", "is_correct": false},
        {"option_text": "Lion", "is_correct": false},
        {"option_text": "Table", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Cat, Dog, Lion, Table, Elephant?"
    },
    {
      "id": 4,
      "options": [
        {"option_text": "Summer", "is_correct": false},
        {"option_text": "Winter", "is_correct": false},
        {"option_text": "Spring", "is_correct": false},
        {"option_text": "Square", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Summer, Winter, Spring, Square, Autumn?"
    },
    {
      "id": 5,
      "options": [
        {"option_text": "Pen", "is_correct": false},
        {"option_text": "Pencil", "is_correct": false},
        {"option_text": "Book", "is_correct": false},
        {"option_text": "Mango", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Pen, Pencil, Book, Mango, Eraser?"
    },
    {
      "id": 6,
      "options": [
        {"option_text": "Earth", "is_correct": false},
        {"option_text": "Mars", "is_correct": false},
        {"option_text": "Moon", "is_correct": false},
        {"option_text": "Oval", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Earth, Mars, Moon, Oval, Venus?"
    },
    {
      "id": 7,
      "options": [
        {"option_text": "Rug", "is_correct": false},
        {"option_text": "Carpet", "is_correct": false},
        {"option_text": "Lamp", "is_correct": false},
        {"option_text": "Triangle", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Rug, Carpet, Lamp, Triangle, Sofa?"
    },
    {
      "id": 8,
      "options": [
        {"option_text": "Laptop", "is_correct": false},
        {"option_text": "Desktop", "is_correct": false},
        {"option_text": "Mouse", "is_correct": false},
        {"option_text": "Cow", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Laptop, Desktop, Mouse, Cow, Tablet?"
    },
    {
      "id": 9,
      "options": [
        {"option_text": "Orange", "is_correct": false},
        {"option_text": "Grape", "is_correct": false},
        {"option_text": "Pear", "is_correct": false},
        {"option_text": "Pineapple", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Orange, Grape, Pear, Pineapple, Apple?"
    },
    {
      "id": 10,
      "options": [
        {"option_text": "Happy", "is_correct": false},
        {"option_text": "Sad", "is_correct": false},
        {"option_text": "Angry", "is_correct": false},
        {"option_text": "Circle", "is_correct": true}
      ],
      "question_text": "Which word does not belong to the group? Happy, Sad, Angry, Circle, Excited?"
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
        {"option_text": "Tennis", "is_correct": false},
        {"option_text": "Badminton", "is_correct": false},
        {"option_text": "Table Tennis", "is_correct": false},
        {"option_text": "Squash", "is_correct": true}
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
}
