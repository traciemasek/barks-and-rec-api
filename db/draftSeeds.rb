
Dog.create!(
  name: "Leslie Knope",
  sex: "female",
  breed: "French Bulldog & Pit Bull Terrier Mix",
  img1: "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/46425000/2/?bust=1572446124&width=1080",
  img2: "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/46425000/1/?bust=1572446124&width=1080",
  # img3: "",
  weight: 48,
  size: "medium",
  age: "3 years",
  age_group: "adult",
  description: "Leslie graduated top of her class at Pawnee Dog School, where she was Co-Vice President of the student body. Leslie is an over-achiever who lives to serve and to snuggle. Leslie Knope is extremely cheerful, ambitious, hard-working and optimistic, and loves waffles."
  altered: true,
  dog_friendly: true,
  kid_friendly: true,
  cat_friendly: true,
  has_special_needs: false,
  # special_needs_desc:
 )
Dog.create!(
  name: "Ron Swanson",
  sex: "male",
  breed: "great dane mix",
  img1: ruby1,
  # img2: "",
  # img3: "",
  weight: 115,
  size: "huge",
  age: "4",
  age_group: "adult",
  description: "small for her breed",
  altered: true,
  dog_friendly: true,
  kid_friendly: true,
  cat_friendly: false,
  has_special_needs: false,
  # special_needs_desc:
 )
Dog.create!(
  name: "Seaweed",
  sex: "female",
  breed: "chihuahua",
  img1: ruby3,
  # img2: "",
  # img3: "",
  weight: 25,
  size: "medium",
  age: "12",
  age_group: "senior",
  description: "an old lady who loves blankets",
  altered: true,
  dog_friendly: true,
  kid_friendly: false,
  cat_friendly: true,
  has_special_needs: true,
  special_needs_desc: "medication for old age"
 )
Dog.create!(
  name: "Rufus",
  sex: "male",
  breed: "pitbull",
  img1: ruby4,
  # img2: "",
  # img3: "",
  weight: 45,
  size: "large",
  age: "7",
  age_group: "adult",
  description: "a lovable mush",
  altered: true,
  dog_friendly: true,
  kid_friendly: true,
  cat_friendly: true,
  has_special_needs: false,
  special_needs_desc: ""
 )

 Adopter.create!(username: "test2", password: "1234")
 Adopter.create!(username: "test3", password: "1234")
 Adopter.create!(username: "test4", password: "1234")
 Adopter.create!(username: "test5", password: "1234")