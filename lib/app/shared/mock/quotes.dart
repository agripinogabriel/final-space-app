const QUOTES = [
  {
    "id": 1,
    "quote": "How about fricken’ no?!",
    "character": 1,
  },
  {
    "id": 2,
    "quote": "You see, I like that. I like a girl with a lot of phones.",
    "character": 1,
  },
  {
    "id": 3,
    "quote": "Let's get wild. How about you buy me a drink?",
    "character": 1,
  },
  {
    "id": 4,
    "quote": "I am going to murder your face off!",
    "character": 1,
  },
  {
    "id": 5,
    "quote": "I need a face-hugger in my life!",
    "character": 1,
  },
  {
    "id": 6,
    "quote": "Chookity Dookity.",
    "character": 2,
  },
  {
    "id": 7,
    "quote": "Chookity-pok.",
    "character": 2,
  },
  {
    "id": 8,
    "quote": "Woooahhh!",
    "character": 2,
  },
  {
    "id": 9,
    "quote": "Awwwwwww!",
    "character": 2,
  },
  {
    "id": 10,
    "quote":
        "Speaking of problems, maybe you should leave before you become one.",
    "character": 3,
  },
  {
    "id": 11,
    "quote": "Wow. I mean, no, but wow.",
    "character": 3,
  },
  {
    "id": 12,
    "quote": "Is there not a single idiot who can hear me?",
    "character": 3,
  },
  {
    "id": 13,
    "quote": "Because I need you.",
    "character": 3,
  },
  {
    "id": 14,
    "quote": "What the tough titty whompus.",
    "character": 3,
  },
  {
    "id": 15,
    "quote":
        "You always look like crap, but right now you look like if crap built a house... on crap.",
    "character": 4,
  },
  {
    "id": 16,
    "quote": "Let's tear the Lord Commander a new butthole.",
    "character": 4,
  },
  {
    "id": 17,
    "quote": "This is for my dad!",
    "character": 4,
  },
  {
    "id": 18,
    "quote": "It was all my fault. He died because of me...",
    "character": 4,
  },
  {
    "id": 19,
    "quote": "Call me that again, and I'll kill you.",
    "character": 5,
  },
  {
    "id": 20,
    "quote": "I'm not a cat, I'm a Ventrexian.",
    "character": 5,
  },
  {
    "id": 21,
    "quote": "I'm back, baby!",
    "character": 5,
  },
  {
    "id": 22,
    "quote": "Hue, can you pass this in?",
    "character": 5,
  },
  {
    "id": 23,
    "quote":
        "Hey Gary, my name is KVN. I'm your Deep Space Insanity Avoidance Companion, nice to meet you!",
    "character": 6,
  },
  {
    "id": 24,
    "quote": "I have the key! In my butthole.",
    "character": 6,
  },
  {
    "id": 25,
    "quote": "Embrace the KVN!",
    "character": 6,
  },
  {
    "id": 26,
    "quote": "KVN saves the day!",
    "character": 6,
  },
  {
    "id": 27,
    "quote": "They're just soooooo good!",
    "character": 6,
  },
  {
    "id": 28,
    "quote": "Eat flames, you dipwads! Bathe in my punishing fire!",
    "character": 7,
  },
  {
    "id": 29,
    "quote": "You can call me Ash, Ms. Graven, or Mam but NOT Ashy!",
    "character": 7,
  },
  {
    "id": 30,
    "quote": "Oh, KVN! You're the best talkin' microwave I EVER had!",
    "character": 8,
  },
  {
    "id": 31,
    "quote": "Is that life, Gary?",
    "character": 9,
  },
  {
    "id": 32,
    "quote": "What the hell, Quinn? You failed to mention me.",
    "character": 9,
  },
  {
    "id": 33,
    "quote":
        "Sorry to be the bearer of bad news, but we're still in extreme danger. Those dickheads from the Infinity Guard found us, and Gary is not responding.",
    "character": 9,
  },
  {
    "id": 34,
    "quote": "You're my only friend, Gary.",
    "character": 9,
  },
  {
    "id": 35,
    "quote": "KVN is a jag-off, Gary. You know that.",
    "character": 9,
  },
  {
    "id": 36,
    "quote":
        "Ahh... Avocato, hmm, so good to see you. What brings you to my little shop of... Doo-dads?",
    "character": 10,
  },
  {
    "id": 37,
    "quote": "Well, papers are not cheap!",
    "character": 10,
  },
  {
    "id": 38,
    "quote":
        "Yes, right... I suppose you did, but this is the last time! Your papers are easy but this Primate is going to be much more difficult.",
    "character": 10,
  },
  {
    "id": 39,
    "quote": "All the pieces are in place...Let's play a little...",
    "character": 11,
  },
  {
    "id": 40,
    "quote": "Do you like games? I love games. I always win.",
    "character": 11,
  },
  {
    "id": 41,
    "quote": "Where is E35-1?!",
    "character": 11,
  },
  {
    "id": 42,
    "quote":
        "That's why I need \"Mooncake\", or whatever idiot calls him. I need him to live. Tell me where he is!",
    "character": 11,
  },
  {
    "id": 43,
    "quote": "Cause Einstein's a jerk.",
    "character": 12,
  },
  {
    "id": 44,
    "quote": "Gotta say, Gary, I missed your wit.",
    "character": 12,
  },
  {
    "id": 45,
    "quote": "I'm going to kill Mooncake, before he destroys all of us.",
    "character": 13,
  },
  {
    "id": 46,
    "quote": "Why would they be twiddling their wieners? Why?",
    "character": 14,
  },
  {
    "id": 47,
    "quote":
        "I know, it doesn't make any sense, I wish there were sense. Where did all the sense go?",
    "character": 14,
  },
  {
    "id": 48,
    "quote": "I am seeing it, I am!",
    "character": 14,
  },
  {
    "id": 49,
    "quote": "Ergon, we have orders to arrest your for, uh..., grand theft.",
    "character": 23,
  },
  {
    "id": 50,
    "quote": "Yes, that's Chuck, now please surrender and this all goes away.",
    "character": 23,
  },
  {
    "id": 51,
    "quote": "Oh...okay... yeah... I think you are under arrest.",
    "character": 23,
  }
];
