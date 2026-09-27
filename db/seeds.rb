Character.destroy_all
Score.destroy_all
Game.destroy_all
Guess.destroy_all

characters = [
  {
    name: "Waldo",
    x: 88.3,
    y: 53.7,
    box_width: 5.5,
    box_height: 10
  },
  {
    name: "Ninja",
    x: 18.5,
    y: 18.5,
    box_width: 6,
    box_height: 10
  },
  {
    name: "Robot",
    x: 58.0,
    y: 65.8,
    box_width: 5.5,
    box_height: 11
  },
  {
    name: "Wizard",
    x: 59.5,
    y: 43.8,
    box_width: 6,
    box_height: 13
  },
  {
    name: "Alien",
    x: 71.5,
    y: 75.0,
    box_width: 5.5,
    box_height: 11
  }
]

characters.each do |character|
  Character.create!(character)
end