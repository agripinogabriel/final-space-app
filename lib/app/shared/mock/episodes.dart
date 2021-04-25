const EPISODES = [
  {
    "id": 1,
    "name": "Chapter 1",
    "air_date": "02/15/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "2", "3", "5", "6", "9", "11"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter1.jpg"
  },
  {
    "id": 2,
    "name": "Chapter 2",
    "air_date": "02/15/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "2", "3", "4", "5", "6", "9", "10", "12", "14"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter2.jpg"
  },
  {
    "id": 3,
    "name": "Chapter 3",
    "air_date": "02/26/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "5", "6", "9", "11", "14"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter3.jpg"
  },
  {
    "id": 4,
    "name": "Chapter 4",
    "air_date": "03/19/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "6", "5", "9", "15", "11"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter4.jpg"
  },
  {
    "id": 5,
    "name": "Chapter 5",
    "air_date": "03/19/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "5", "6", "9", "11", "14"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter5.jpg"
  },
  {
    "id": 6,
    "name": "Chapter 6",
    "air_date": "03/26/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "5", "6", "9", "11"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter6.jpg"
  },
  {
    "id": 7,
    "name": "Chapter 7",
    "air_date": "04/09/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "6", "9", "12"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter7.jpg"
  },
  {
    "id": 8,
    "name": "Chapter 8",
    "air_date": "04/16/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "6", "9", "11", "12", "15", "18"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter8.jpg"
  },
  {
    "id": 9,
    "name": "Chapter 9",
    "air_date": "04/23/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "6", "9", "11", "14", "22"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter9.jpg"
  },
  {
    "id": 10,
    "name": "Chapter 10",
    "air_date": "04/30/2018",
    "director": "Mike Roberts",
    "writer": "Olan Rogers",
    "characters": ["1", "3", "4", "6", "9", "11", "14", "15", "22"],
    "img_url": "http://finalspaceapi.com/api/episode/image/chapter10.jpg"
  },
  {
    "id": 11,
    "name": "The Toro Regatta",
    "air_date": "06/22/2019",
    "director": "Ben Bjelajac",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "11", "12", "13"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_toro_regatta.jpg"
  },
  {
    "id": 12,
    "name": "The Happy Place",
    "air_date": "06/22/2019",
    "director": "Yoriaki Mochizuki",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "12", "13"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_happy_place.jpg"
  },
  {
    "id": 13,
    "name": "The Grand Surrender",
    "air_date": "07/08/2019",
    "director": "Anne Walker Farrell",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "12", "13"],
    "img_url":
        "http://finalspaceapi.com/api/episode/image/the_grand_surrender.jpg"
  },
  {
    "id": 14,
    "name": "The Other Side",
    "air_date": "06/15/2019",
    "director": "Ben Bjelajac",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "11", "12", "13"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_other_side.jpg"
  },
  {
    "id": 15,
    "name": "The Notorious Mrs. Goodspeed",
    "air_date": "06/22/2019",
    "director": "Yoriaki Mochizuki",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "11", "12", "13", "16"],
    "img_url":
        "http://finalspaceapi.com/api/episode/image/the_notorious_mrs_goodspeed.jpg"
  },
  {
    "id": 16,
    "name": "The Arachnitects",
    "air_date": "06/29/2019",
    "director": "Anne Walker Farrell",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "11", "12", "13", "18"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_arachnitects.jpg"
  },
  {
    "id": 17,
    "name": "The First Times They Met",
    "air_date": "07/05/2019",
    "director": "Olan Rogers",
    "writer": "Ben Bjelajac",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "12", "13"],
    "img_url":
        "http://finalspaceapi.com/api/episode/image/the_first_times_they_met.jpg"
  },
  {
    "id": 18,
    "name": "The Remembered",
    "air_date": "07/12/2019",
    "director": "Olan Rogers",
    "writer": "Yoriaki Mochizuki",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "11", "12", "13"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_remembered.jpg"
  },
  {
    "id": 19,
    "name": "The Closer You Get",
    "air_date": "07/19/2019",
    "director": "Ben Bjelajac",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "11", "12", "13", "22"],
    "img_url":
        "http://finalspaceapi.com/api/episode/image/the_closer_you_get.jpg"
  },
  {
    "id": 20,
    "name": "The Lost Spy",
    "air_date": "07/26/2019",
    "director": "Anne Walker Farrell",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "12", "13", "15", "16"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_lost_spy.jpg"
  },
  {
    "id": 21,
    "name": "The Set Up",
    "air_date": "08/09/2019",
    "director": "Anne Walker Farrell",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "10", "12", "13", "16"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_set_up.jpg"
  },
  {
    "id": 22,
    "name": "The Descent Into Darkness",
    "air_date": "08/16/2019",
    "director": "Yoriaki Mochizuki",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "6", "7", "8", "9", "12", "13", "16", "17"],
    "img_url":
        "http://finalspaceapi.com/api/episode/image/the_descent_into_darkness.jpg"
  },
  {
    "id": 23,
    "name": "The Sixth Key",
    "air_date": "08/23/2019",
    "director": "Yoriaki Mochizuki",
    "writer": "Olan Rogers",
    "characters": ["1", "4", "5", "6", "7", "8", "9", "12", "13", "16"],
    "img_url": "http://finalspaceapi.com/api/episode/image/the_sixth_key.jpg"
  }
];
