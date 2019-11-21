# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    Admin.create!(username: "admin", password: "1234")
  

    Dog.destroy_all

    Dog.create!(
      name: "Leslie Knope",
      sex: "female",
      breed: "French Bulldog & Pit Bull Terrier Mix",
      img1: "https://live.staticflickr.com/65535/49061217166_9b1d746bfb_w.jpg",
      img2: "https://live.staticflickr.com/65535/49060706588_70852a1367_o.jpg",
      img3: "",
      color: "tan",
      size: "medium",
      age: "adult",
      about: "Although born in the neighboring rival town of Eagleton, due to the fact that the Pawnee hospital was overrun with raccoons, Leslie is a definite Pawneean. She vowed early on to give back to this vibrant and fascinating town by living a life of public service. Leslie graduated top of her class at Pawnee Dog School, where she was Co-Vice President of the student body. Leslie is an over-achiever who lives to serve. Leslie Knope is extremely cheerful, ambitious, hard-working and optimistic, and loves waffles.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "other dogs, cats, children",
      badHome: "Eagletonians, salad"
     )
    Dog.create!(
      name: "Ron Swanson",
      sex: "male",
      breed: "Boxer & Mastiff Mix",
      img1: "https://live.staticflickr.com/65535/49061283896_05836182be.jpg",
      img2: "https://live.staticflickr.com/65535/49061512552_9c84c74487.jpg",
      img3: "https://live.staticflickr.com/65535/49060773338_3abc480ab7_w.jpg",
      color: "brindle",
      size: "large",
      age: "senior",
      about: "Ron Swanson has a deadpan personality and seldom expresses any kind of emotion, although he is often shown to be very giddy when it comes to riddles and meat. He adheres to many stereotypically masculine traits. He claims to have only cried twice: once when he was hit by a school bus at age 7; secondly when miniature horse Li'l Sebastian died. Ron is an outdoor enthusiast who loves hunting, fishing, camping, and woodworking. For years, Ron has used a park ranger station in the woods as a lodge for private hunting trips with his male colleagues at city hall. He loves breakfast foods and red meats; among the types of food he enjoys are bacon-wrapped shrimp, fried turkey legs inside a grilled hamburger, and bacon-wrapped turkey legs",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "children",
      badHome: "bananas, skim milk, Tammy 1, Tammy 2"
     )
    Dog.create!(
      name: "Ben Wyatt",
      sex: "male",
      breed: "Jindo & Terrier Mix",
      img1: "https://live.staticflickr.com/65535/49061547802_1f966656ef.jpg",
      img2: "",
      img3: "",
      color: "brown",
      size: "small",
      age: "puppy",
      about: "Ben is very serious, mature and work-oriented, and usually doesn't seem fazed by much of the immature, eccentric behavior from some of the other members of the Pawnee Barks and Recreation Department. Ben is often teased for his affinity for, references to,and vast knowledge in Star Wars, Lord of the Rings, Star Trek, Game of Thrones and other things considered to be nerdy. His love for calzones is also well known. Ben created a game called The Cones of Dunshire.",
      houseTrained: "Working on it",
      health: "N/A",
      goodHome: "dogs, children, ultimate frisbee, calzones",
      badHome: "cats"
     )
    
    Dog.create!(
      name: "April Ludgate",
      sex: "female",
      breed: "pocket pittie",
      img1: "https://live.staticflickr.com/65535/49065057637_63a7397887.jpg",
      img2: "https://live.staticflickr.com/65535/49064328563_b406e7e886.jpg",
      img3: "",
      color: "black and white",
      size: "medium",
      age: "young",
      about: "April Ludgate was born in Björk’s house in Iceland and grew up on Easter Island, where her parents were giant stone heads. She has the ability to fire beams of tacos out of her hands and she can turn her legs into tigers. On Sundays, April enjoys reading Family Circus and traveling through time. Her favorite color is greenish-transparent and her favorite movie is the one you just watched. April is in charge of uploading the staff bios to the website, and no one has checked over her work.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "three-legged dogs, other dogs, cats, occult ritual sacrifice",
      badHome: "anything normal or boring"
     )
    
     Dog.create!(
      name: "Andy Dwyer",
      sex: "male",
      breed: "German Shepherd Dog",
      img1: "https://live.staticflickr.com/65535/49061851437_07cab439e5.jpg",
      img2: "https://live.staticflickr.com/65535/49061851407_e5c521a16e.jpg",
      img3: "https://live.staticflickr.com/65535/49061630506_c7ee79235d_o.jpg",
      color: "black and tan",
      size: "large",
      age: "young",
      about: "Andy Dwyer is a successful musician in the band Mouse Rat, and formerly ran the Shoe Polishing Stand in Pawnee City Hall. His alter egos are Burt Macklin, Chip Hackman, Johnny Karate, and Sargent Thunderfist MD. Andy's favorite food is a skittle, mashed between two star-burst, which he has named Andy's Mouth Surprise. Andy once forgot to brush his teeth for five weeks.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "other dogs, children,",
      badHome: ""
     )
     Dog.create!(
      name: "Ann Perkins",
      sex: "female",
      breed: "terrier mix",
      img1: "https://live.staticflickr.com/65535/49064396007_878987216e.jpg",
      img2: "",
      img3: "",
      color: "white and tan",
      size: "small",
      age: "young",
      about: "Ann Perkins is a nurse and best friends with Leslie Knope. She once consumed an entire cheesecake, at Leslie's request. Her eBay username is FutureMrsTigerWoods. Ann likes to own stuffed animal bears.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "children, cats, stuffed animal bears",
      badHome: ""
     )
     Dog.create!(
      name: "Tom Haverford",
      sex: "male",
      breed: "Pit Bull Terrier ",
      img1: "https://live.staticflickr.com/65535/49061716441_620f406fd1.jpg",
      img2: "https://live.staticflickr.com/65535/49061716436_6a45259ab2.jpg",
      img3: "",
      color: "Black, White / Cream",
      size: "large",
      age: "adult",
      about: "Tom Haverford works as Leslie Knope's immediate subordinate at the Pawnee parks and recreation department, often serving as her right-hand man. Tom displays an extremely sarcastic, mischievous and cocky attitude. He takes his appearance very seriously, often donning office-casual polo shirts and fancy suits. Tom has complete authority over the Pawnee tennis court reservation system. Tom’s heroes include Vin Diesel, Flo Rida, and Patrick Jane. He created the annual holiday Treat Yo Self.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "spare bedroom he can use as a closet, apps, zerts, tray trays, sammies, sandoozles, cool blasterz, fry fry chicky chick, chicky chicky parm parm, bean blankies",
      badHome: "children, cats"
     )
     Dog.create!(
      name: "Donna Meagle",
      sex: "female",
      breed: "basset hound",
      img1: "https://live.staticflickr.com/65535/49064177531_0aa70ce0d7.jpg",
      img2: "",
      img3: "",
      color: "brown, white and black",
      size: "medium",
      age: "puppy",
      about: "Donna is the office manager for the Pawnee Parks and Recreation Department. She is now accepting of her coworkers, previously dismissing them as boring. She can sometimes be selfish. Donna loves her Mercedes-Benz ML350 SUV. Donna only thinks some people are cool, such as Tom Haverford. She has had two annulments, and is the cousin of R&B singer Ginuwine. Legally, only 3 members of Donna's family can be on an international flight together at a time.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "Scandal, time traveling romances, skill positions only",
      badHome: "cars that aren't Mercedes"
     )
     Dog.create!(
      name: "Chris Traeger",
      sex: "male",
      breed: " Poodle & Rat Terrier Mix",
      img1: "https://live.staticflickr.com/65535/49061782096_43e9ec6c47.jpg",
      img2: "https://live.staticflickr.com/65535/49061272133_f221bf8884.jpg",
      img3: "https://live.staticflickr.com/65535/49061782061_6e91f33d99.jpg",
      color: "white/tan",
      size: "small",
      age: "puppy",
      about: " Chris Traeger is very cheerful and energetic. As a baby, Chris Traeger was diagnosed with a rare blood disorder and was only supposed to live for 3 weeks, but he survived and is therefore always an optimistic person. He frequently compares his body to a microchip, saying that a grain of sand could destroy it. He has 2.8 percent body fat. He believes he will be the first person to live to 150. He also commonly refers to people by their first and last name.",
      houseTrained: "Working on it",
      health: "Impeccable health",
      goodHome: "Other dogs, cats, children.",
      badHome: ""
     )
     Dog.create!(
      name: "Jerry/Garry/Larry/Terry/Gengurch Gergich",
      sex: "male",
      breed: "cattle dog mix",
      img1: "https://live.staticflickr.com/65535/49063663018_a8bb1354a6.jpg",
      img2: "",
      img3: "",
      color: "spotted white and brown",
      size: "medium",
      age: "puppy",
      about: "Jerry is a married father of three girls, who works for the Department of Parks and Recreation. Jerry was often mistreated due to his embarrassing history, which is a collection of awkward incidents resulting from his apparent clumsiness and ineptitude. He has a strong artistic side. He once created a mural of an alcove of Pawnee City Hall, which was actually composed of small pictures of Pawnee citizens. He is also a skilled pianist and an amateur inventor. Due to his reputation as a sad excuse for a human, Jerry is often dismissed even if he is clearly in the right and what he has created is breathtaking. Jerry is a frequent customer at Sherm's Ice Cream parlor in Muncie, where he drops his ice cream about half the time",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "children, other dogs, an overly attractive and loving family",
      badHome: ""
     )
     Dog.create!(
      name: "Tammy One",
      sex: "female",
      breed: "pug mix",
      img1: "https://live.staticflickr.com/65535/49063662983_49252e63fc.jpg",
      img2: "https://live.staticflickr.com/65535/49064177456_9539c96d1c.jpg",
      img3: "https://live.staticflickr.com/65535/49063662943_a3c3446000.jpg",
      color: "grey",
      size: "small",
      age: "senior",
      about: "Tammy is an IRS Agent and taught Ron everything he knows. Tammy is cold and manipulative.  She can scare and manipulate anyone she comes across.",
      houseTrained: "Yes",
      health: "Lost use of her hind legs and uses a wheelie cart",
      goodHome: "",
      badHome: "cats, other dogs, children"
     )
     Dog.create!(
      name: "Tammy Two",
      sex: "female",
      breed: "dachshund mix",
      img1: "https://live.staticflickr.com/65535/49064389837_98f20725d1.jpg",
      img2: "",
      img3: "",
      color: "black and tan",
      size: "small",
      age: "adult",
      about: "Tammy is conniving and ruthless, taking advantage of Ron to get Lot 48 and doing anything to see him miserable. When she and Ron first got together, Ron's first wife Tammy 1 threw acid on her foot. Tammy once hid in the attic for 6 days. She survived by drinking rain water and eating rats.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "Ron",
      badHome: "other dogs, cats, children"
     )
     Dog.create!(
      name: "Li'l Sebastian",
      sex: "male",
      breed: "miniature horse",
      img1: "https://live.staticflickr.com/65535/49061102763_da3a9d088e.jpg",
      img2: "https://live.staticflickr.com/65535/49061613041_e699132aca.jpg",
      img3: "https://live.staticflickr.com/65535/49061102723_f3959d22e6_o.jpg",
      color: "brown",
      size: "small",
      age: "adult",
      about: "Li'l Sebastian was a miniature horse, who debuted at the Pawnee Harvest Festival in 1987, as an instant sensation. That week he was the eighth most photographed item in the United States. He also received an honorary degree from Notre Dame. Leslie brings him back for the Harvest Festival in season three, although he was much older and had many ailments, including cataracts, diabetes, and arthritis.",
      houseTrained: "Working on it",
      health: "He had many ailments, including cataracts, diabetes, and arthritis",
      goodHome: "hay",
      badHome: ""
     )
     Dog.create!(
      name: "Champion",
      sex: "male",
      breed: "pit bull terrier mix",
      img1: "https://live.staticflickr.com/65535/49061982837_ca1f47dfc1_o.jpg",
      img2: "https://live.staticflickr.com/65535/49061250458_3cdd695b5a_o.jpg",
      img3: "",
      color: "white and brown",
      size: "large",
      age: "adult",
      about: "Dog World Champion. Once peed on Ron Swanson",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "other dogs, children, cats, anything he's the dog world champion",
      badHome: ""
     )
     Dog.create!(
      name: "Ethel Beavers",
      sex: "female",
      breed: "poodle mix",
      img1: "https://live.staticflickr.com/65535/49064177516_deb2904635.jpg",
      img2: "",
      img3: "",
      color: "white and grey",
      size: "small",
      age: "senior",
      about: "Ethel Beavers is a court stenographer who works on The Fourth Floor.",
      houseTrained: "Yes",
      health: "N/A",
      goodHome: "cats, other dogs",
      badHome: ""
     )
     Dog.create!(
      name: "Jean-Ralphio Saperstein",
      sex: "male",
      breed: "Pomeranian Mix",
      img1: "https://live.staticflickr.com/65535/49064465432_78a6fbabe4.jpg",
      img2: "https://live.staticflickr.com/65535/49063738058_4b061906b6.jpg",
      img3: "",
      color: "brown",
      size: "small",
      age: "young",
      about: "Jean-Ralphio Saperstein is the idiotic and cocky friend of Tom Haverford who, like Tom himself, fancies himself a pickup artist and baller, although he is looked upon with contempt by most people around him except Tom. He tries to dress stylishly, makes up and raps spontaneous rhymes and often speaks in slang terms such as variations of the suffix-izzle as popularized by rapper Snoop Dogg.",
      houseTrained: "Working on it",
      health: "N/A",
      goodHome: "Entertainment 720",
      badHome: "house arrest bracelets"
     )
     Dog.create!(
      "name": "Mona-Lisa Saperstein",
      "breed": "Yorkie mix",
      "img1": "https://live.staticflickr.com/65535/49064634832_764b59e94f.jpg",
      "img2": "",
      "img3": "",
      "size": "Small",
      "age": "Young",
      "sex": "female",
      "color": "light brown",
      "about": "Mona-Lisa Saperstein is the crazy, outgoing twin sister of Jean-Ralphio Saperstein, described by him as a klepto, and a nympho, and a pyro. She is also the former girlfriend of Tom Haverford. She is an unreformed lunatic who frightens/terrorizes anyone in her path. Her father offers an embarrassed explanation for her insanity by telling Ben and April one word: pills.",
      "houseTrained": "Working on it",
      "health": "kleptomania",
      "goodHome": "other dogs, cats, ideas she can steal",
      "badHome": ""
    )
    Dog.create!(
      "name": "Craig Middlebrooks",
      "breed": "Great Pyrenees mix",
      "img1": "https://live.staticflickr.com/65535/49064828787_33a1f98662.jpg",
      "img2": "https://live.staticflickr.com/65535/49064099328_336ca7eb32.jpg",
      "img3": "https://live.staticflickr.com/65535/49064828737_255e2b1436.jpg",
      "size": "XL",
      "age": "Young",
      "sex": "male",
      "color": "white",
      "about": "Craig is a competent (though volatile) government employee. He is seen as being loud and opinionated and possibly caring even more than Leslie. He is also a wine expert, and was hired by Tom Haverford to be sommelier for Tom's Bistro.The overdramatic Craig often raises his voice to the point of shouting, and frequently blows things out of proportion, although he proves to be a highly efficient employee who is familiar with city politics and a strong negotiator. ",
      "houseTrained": "Yes",
      "health": "",
      "goodHome": "other dogs, cats, Scandal",
      "badHome": ""
    )

      # name: "",
    # breed: "",
    # color: "",
    # sex: "",
    # size: "",
    # age: "",
    # houseTrained: "",
    # health: "",
    # goodHome: "",
    # badHome: "",
    # about: "",
    # img1: "",
    # img2: "",
    # img3: ""