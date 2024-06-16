class Sheet {
  final int id;
  String name;
  String playerClass;
  String race;
  String attack;
  String inventory;
  String skills;
  String features;
  String tools;
  String spells;
  int level;
  int health;
  int strength;
  int intelligence;
  int dexterity;
  int constitution;
  int wisdom;
  int charisma;
  int armorClass;
  int movement;

  Sheet({
    required this.id,
    required this.name,
    required this.playerClass,
    required this.race,
    required this.level,
    this.spells = '',
    this.attack = '',
    this.inventory = '',
    this.skills = '',
    this.features = '',
    this.tools = '',
    this.health = 1,
    this.strength = 1,
    this.intelligence = 1,
    this.dexterity = 1,
    this.constitution = 1,
    this.wisdom = 1,
    this.charisma = 1,
    this.armorClass = 1,
    this.movement = 1,
  });

  Sheet.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        playerClass = json['playerClass'],
        race = json['race'],
        level = json['playerLevel'],
        spells = json['spells'],
        attack = json['attack'] ?? '',
        inventory = json['inventory'] ?? '',
        skills = json['skills'] ?? '',
        features = json['features'] ?? '',
        tools = json['tools'] ?? '',
        health = json['health'] ?? 1,
        strength = json['strength'] ?? 1,
        intelligence = json['intelligence'] ?? 1,
        dexterity = json['dexterity'] ?? 1,
        constitution = json['constitution'] ?? 1,
        wisdom = json['wisdom'] ?? 1,
        charisma = json['charisma'] ?? 1,
        armorClass = json['armorClass'] ?? 1,
        movement = json['movement'] ?? 1;

  Map<String, dynamic> toJson({required bool withId}) {
    final body = <String, dynamic>{
      'name': name,
      'playerClass': playerClass,
      'race': race,
      'playerLevel': level,
      'spells': spells,
      'attack': attack,
      'inventory': inventory,
      'skills': skills,
      'features': features,
      'tools': tools,
      'health': health,
      'strength': strength,
      'intelligence': intelligence,
      'dexterity': dexterity,
      'constitution': constitution,
      'wisdom': wisdom,
      'charisma': charisma,
      'armorClass': armorClass,
      'movement': movement,
    };
    if(withId){
      body['id'] = id;
    }
    return body;
  }

  @override
  String toString() {
    return 'Sheet(id: $id, name: $name, playerClass: $playerClass, race: $race, level: $level, spells: $spells, '
        'attack: $attack, inventory: $inventory, skills: $skills, features: $features, tools: $tools, '
        'health: $health, strength: $strength, intelligence: $intelligence, dexterity: $dexterity, '
        'constitution: $constitution, wisdom: $wisdom, charisma: $charisma, movement: $movement, armorClass: $armorClass)';
  }
}
