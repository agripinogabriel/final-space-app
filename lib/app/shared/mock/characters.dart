const CHARACTERS = [
  {
    "id": 1,
    "name": "Gary Goodspeed",
    "status": "Alive",
    "species": "Human",
    "gender": "Male",
    "hair": "Blonde",
    "alias": [
      "The Gary(by Lord Commander)",
      "Thunder Bandit(code name)",
      "Star Dragon(new code name)",
      "Primate(By Clarence)"
    ],
    "origin": "Earth",
    "abilities": ["Piloting", "Marksmanship"],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/gary_goodspeed.jpg"
  },
  {
    "id": 2,
    "name": "Mooncake",
    "status": "Alive",
    "species": "Mooncake's Species",
    "gender": "Male",
    "hair": "None",
    "alias": [
      "Specimen E - 351",
      "Little Buddy",
      "Planet Destroyer",
      "Dude cake",
      "Little Guy"
    ],
    "origin":
        "Created when John Goodspeed used an Anti-matter bomb to close a breach to Final Space.",
    "abilities": ["Hovering", "Firing Laser Beams", "Planet Destruction"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/mooncake.jpg"
  },
  {
    "id": 3,
    "name": "Quinn Ergon",
    "status": "Alive",
    "species": "Human",
    "gender": "Female",
    "hair": "Dark Brown",
    "alias": ["Nightfall(codename)"],
    "origin": "Earth",
    "abilities": [
      "Astrophysicist",
      "Engineer",
      "Piloting",
      "Hand - to - hand Combat"
    ],
    "img_url": "https://finalspaceapi.com/api/character/avatar/quinn_ergon.jpg"
  },
  {
    "id": 4,
    "name": "Little Cato",
    "status": "Alive",
    "species": "Ventrexian",
    "gender": "Male",
    "hair": "Orange,Turquoise(dyed)",
    "alias": [
      "Small Fry",
      "Spider Cat ",
      "Man Cat",
      "Hell Cat",
      "Little Avocato"
    ],
    "origin": "Unknown",
    "abilities": ["Electronics"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/little_cato.jpg"
  },
  {
    "id": 5,
    "name": "Avocato",
    "status": "Alive",
    "species": "Ventrexian",
    "gender": "Male",
    "hair": "Dark Teal / White ",
    "alias": ["General Avocato"],
    "origin": "Unknown",
    "abilities": ["Combat", "Surgery"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/avocato.jpg"
  },
  {
    "id": 6,
    "name": "KVN",
    "status": "Operational",
    "species": "Robot",
    "gender": "None(referred to as Male)",
    "hair": "None",
    "alias": [],
    "origin": "Some Factory",
    "abilities": ["Hovering ", "Marksmanship", "Solving riddles"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/kvn.jpg"
  },
  {
    "id": 7,
    "name": "Ash Graven",
    "status": "Alive",
    "species": "Serepentian",
    "gender": "Female",
    "hair": "Pink",
    "alias": ["Ashy"],
    "origin": "Serepentis",
    "abilities": ["Dark Energy"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/ash_graven.jpg"
  },
  {
    "id": 8,
    "name": "Fox",
    "status": "Alive",
    "species": "Tryvuulian",
    "gender": "Female",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": ["MiniGun attached to Right Arm."],
    "img_url": "https://finalspaceapi.com/api/character/avatar/fox.jpg"
  },
  {
    "id": 9,
    "name": "H.U.E",
    "status": "Operational",
    "species": "Artificial Intelligence(Season 1) Robot(Season 2)",
    "gender": "None(referred to as Male)",
    "hair": "None",
    "alias": ["Heuristic Unified Entity ", "H.U.E.Buttersmooth "],
    "origin": "Unknown",
    "abilities": [
      "Controls on the Galaxy One ",
      "Strength(Season 2)",
      "Stretchable Limbs(Season 2)",
      "Flight(Season 2)"
    ],
    "img_url": "https://finalspaceapi.com/api/character/avatar/hue.jpg"
  },
  {
    "id": 10,
    "name": "Clarence",
    "status": "Alive",
    "gender": "Male",
    "hair": "Black",
    "alias": ["Clarence Polkawitz "],
    "origin": "Unknown",
    "abilities": [
      "Multiple Forms - a snake-rat hybrid and a large, wasp-like alien ",
      "Flight",
      "Quick Heal",
      "Regenerate"
    ],
    "img_url": "https://finalspaceapi.com/api/character/avatar/clarence.jpg"
  },
  {
    "id": 11,
    "name": "Lord Commander",
    "status": "Deceased (Possessed)",
    "species": "Lord Commander's Species",
    "gender": "Male",
    "hair": "None",
    "alias": [
      "Fun Sized Devil (by Gary)",
      "Cosmic Tic - Tac ",
      "Jack(real name)"
    ],
    "origin": "Unknown",
    "abilities": ["Light(Telekinesis)", "Flight"],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/lord_commander.jpg"
  },
  {
    "id": 12,
    "name": "Nightfall",
    "status": "Deceased (Possessed)",
    "species": "Human",
    "gender": "Female",
    "hair": "Dark Brown and Gray",
    "alias": ["Future Quinn"],
    "origin": "Unknown",
    "abilities": ["Time Travel", "Fighting"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/nightfall.jpg"
  },
  {
    "id": 13,
    "name": "A.V.A",
    "status": "Operational",
    "species": "Artificial Intelligence",
    "gender": "None (Female Voice)",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": ["Artificial Intelligence"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/ava.jpg"
  },
  {
    "id": 14,
    "name": "Tribore",
    "status": "Alive",
    "species": "Unknown",
    "gender":
        "Genderfluid (his/hers gender changes every 6 months, currently identifies as a male)",
    "hair": "None",
    "alias": [],
    "origin": "Hacthed",
    "abilities": ["Competent Leader", "Combatant", "Capable Shrink"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/tribore.jpg"
  },
  {
    "id": 15,
    "name": "John Goodspeed",
    "status": "Deceased",
    "species": "Human",
    "gender": "Male",
    "hair": "Brown",
    "alias": ["Captain Goodspeed"],
    "origin": "Earth",
    "abilities": [],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/john_goodspeed.jpg"
  },
  {
    "id": 16,
    "name": " Sheryl Goodspeed",
    "status": "Alive",
    "species": "Human",
    "gender": "Female",
    "hair": "Bright Blonde",
    "alias": ["Notorious"],
    "origin": "Earth",
    "abilities": [],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/sheryl_goodspeed.jpg"
  },
  {
    "id": 17,
    "name": "Gary Goodspeed (Nightfall's timeline)",
    "status": "Deceased",
    "species": "Human",
    "gender": "Male",
    "hair": "Blonde",
    "alias": [],
    "origin": "Earth",
    "abilities": ["Piloting ", "Marksmanship"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/gg_timeline.jpg"
  },
  {
    "id": 18,
    "name": "Bolo",
    "status": "Alive",
    "species": "Titan",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Final Space",
    "abilities": ["Cosmic Being", "Telepathy"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/bolo.jpg"
  },
  {
    "id": 19,
    "name": "Invictus",
    "status": "Alive",
    "species": "Cosmic Entity",
    "gender": "Unknown",
    "hair": "None",
    "alias": [],
    "origin": "Final Space",
    "abilities": ["Possession", "Corruption", "Telepathy"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/invictus.jpg"
  },
  {
    "id": 20,
    "name": "Melanie Dewinter",
    "status": "Deceased",
    "species": "Hooblot",
    "gender": "Female",
    "hair": "Rust",
    "alias": [],
    "origin": "Level 4, Tera Con Prime",
    "abilities": [],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/melanie_dewinter.jpg"
  },
  {
    "id": 21,
    "name": "Harp Graven",
    "status": "Deceased",
    "species": "Serepentian",
    "gender": "Female",
    "hair": "Pink",
    "alias": [],
    "origin": "Serepentis",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/harp_graven.jpg"
  },
  {
    "id": 22,
    "name": " Shannon Thunder",
    "status": "Alive",
    "species": "Human",
    "gender": "Female",
    "hair": "Black",
    "alias": [],
    "origin": "Earth",
    "abilities": ["Tribore's Second in Command"],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/shannon_thunder.jpg"
  },
  {
    "id": 23,
    "name": "Chuck",
    "status": "Unknown(presumably dead)",
    "species": "Human",
    "gender": "Male",
    "hair": "Ginger",
    "alias": ["Douche Canoe", "Jerk - nuts "],
    "origin": "Earth",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/chuck.jpg"
  },
  {
    "id": 24,
    "name": "Septim",
    "status": "Deceased",
    "species": "Unknown",
    "gender": "Male",
    "hair": "Unknown",
    "alias": [],
    "origin": "Unknown",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/septim.jpg"
  },
  {
    "id": 25,
    "name": "Fraskenhaur",
    "status": "Alive",
    "species": "Alien",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/fraskenhaur.jpg"
  },
  {
    "id": 26,
    "name": "Dartrichio",
    "status": "Alive",
    "species": "Unknown",
    "gender": "Female",
    "hair": "White",
    "alias": [],
    "origin": "Unknown",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/dartrichio.jpg"
  },
  {
    "id": 27,
    "name": "David Dewinter",
    "status": "Alive",
    "species": "Hooblot",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Tera Con Prime",
    "abilities": [],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/david_dewinter.jpg"
  },
  {
    "id": 28,
    "name": "General Cataloupe",
    "status": "Alive",
    "species": "Ventrexian",
    "gender": "Male",
    "hair": "Light Gray",
    "alias": [],
    "origin": "Ventrexia",
    "abilities": ["Marksman", "Leadership"],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/general_cataloupe.jpg"
  },
  {
    "id": 29,
    "name": "Jeff",
    "status": "Alive",
    "species": "Human",
    "gender": "Male",
    "hair": "Unknown",
    "alias": [],
    "origin": "Earth",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/jeff.jpg"
  },
  {
    "id": 30,
    "name": "Meowlapeño",
    "status": "Alive",
    "species": "Ventrexian",
    "gender": "Male",
    "hair": "Honey Mustard",
    "alias": [],
    "origin": "Tera Con Prime",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/meowlapeno.jpg"
  },
  {
    "id": 31,
    "name": "Oreskis",
    "status": "Alive",
    "species": "Titan",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Final Space",
    "abilities": ["Telephathy"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/oreskis.jpg"
  },
  {
    "id": 32,
    "name": "Sal",
    "status": "Alive",
    "species": "Unknown",
    "gender": "Male",
    "hair": "Grey fur",
    "alias": [],
    "origin": "Unknown",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/sal.jpg"
  },
  {
    "id": 33,
    "name": "Terk",
    "status": "Deceased",
    "species": "Unknown",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": ["Piloting"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/terk.jpg"
  },
  {
    "id": 34,
    "name": "The Blade",
    "status": "Alive",
    "species": "Unknown",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": ["Saw hands"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/the_blade.jpg"
  },
  {
    "id": 35,
    "name": "Thud",
    "status": "Alive",
    "species": "Unknown",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": ["Regeneration"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/thud.jpg"
  },
  {
    "id": 36,
    "name": "Time Swap Sammy",
    "status": "Alive",
    "species": "Unknown",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": ["Time Travel"],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/time_swap_sammy.jpg"
  },
  {
    "id": 37,
    "name": "Todd H. Watson",
    "status": "Alive",
    "species": "Human",
    "gender": "Male",
    "hair": "Brown",
    "alias": ["Hushfluffles"],
    "origin": "Earth",
    "abilities": [],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/todd_h_watson.jpg"
  },
  {
    "id": 38,
    "name": "Viro",
    "status": "Deceased",
    "species": "Cyborg",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Unknown",
    "abilities": [],
    "img_url": "https://finalspaceapi.com/api/character/avatar/viro.jpg"
  },
  {
    "id": 39,
    "name": "Werthrent",
    "status": "Deceased",
    "species": "Fire Snake",
    "gender": "Male",
    "hair": "None",
    "alias": ["Serpent God", "Snake God"],
    "origin": "Serepentis",
    "abilities": ["Telepathy", "Mind-breaking"],
    "img_url": "https://finalspaceapi.com/api/character/avatar/werthrent.jpg"
  },
  {
    "id": 40,
    "name": "Zargon Tukalishi",
    "status": "Deceased",
    "species": "Unknown",
    "gender": "Male",
    "hair": "None",
    "alias": [],
    "origin": "Yarno",
    "abilities": [],
    "img_url":
        "https://finalspaceapi.com/api/character/avatar/zargon_tukalishi.jpg"
  }
];
