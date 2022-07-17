puts "🌱 Seeding spices..."

@death_guard = Army.create(name: "Death Guard", alignment: "chaos", description: "The Death Guard are a Traitor Legion entirely steeped in the power of Nurgle, the god of death and plagues, their very essence the epitome of all that vile Chaos God stands for. Their bodies are hives of filth and decay, their ﬂesh eternally rotting away even as it is renewed by the ceaseless process of death and rebirth.")
@drukhari = Army.create(name: "Drukhari", alignment: "xenos", description: "The Drukhari are the living embodiments of all that is wanton and cruel in the Aeldari character. Highly intelligent and devious to the point of obsession, these piratical people revel in the physical and emotional pain of others, for feeding upon the psychic residue of suffering is the only way they can stave off the slow consumption by the Chaos God Slaanesh of their own souls.")
@tyranids = Army.create(name: "Tyranids", alignment: "xenos", description: "The Tyranids are likened to a galactic swarm consuming everything in its path, feeding on entire worlds and leaving only dead husks in their wake. Their threat is such that an unprotected planet can be infested and stripped clean of all its organic material in a matter of solar weeks without even slowing down the advance of the hive fleet.")

@typhus = ArmyModel.create(name:"Typhus", image_url:"https://www.games-workshop.com/en-US/Death-Guard-Typhus-2020", number_in_collection: 1, cost_per_box: 42, unit_points_cost:165, army_id:1)
@lord_of_virulence = ArmyModel.create(name:"Lord of Virulence", image_url:" https://www.games-workshop.com/en-US/Death-Guard-Lord-of-Virulence-2020", number_in_collection: 1, cost_per_box: 38, unit_points_cost:120, army_id:1)
@archon = ArmyModel.create(name:"Archon", image_url:"https://www.games-workshop.com/en-US/Drukhari-Archon", number_in_collection: 3, cost_per_box: 32, unit_points_cost: 70, army_id: 2)
@kabalite_warriors = ArmyModel.create(name:"Kabalite Warriors", image_url:"https://www.games-workshop.com/en-US/Drukhari-Kabalite-Warriors-2017", number_in_collection: 40, cost_per_box: 38, unit_points_cost: 80, army_id: 2)
@swarmlord = ArmyModel.create(name:"The Swarmlord", image_url:"https://www.games-workshop.com/en-US/The-Swarmlord-2019", number_in_collection: 1, cost_per_box: 60, unit_points_cost:240, army_id:3)
@hormagaunts = ArmyModel.create(name:"Hormagaunts", image_url:"https://www.games-workshop.com/en-US/Tyranid-Hormagaunt-Brood-12-Models", number_in_collection: 90, cost_per_box: 38, unit_points_cost:88, army_id:3)

puts "✅ Done seeding!"
