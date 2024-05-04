class Sheet {
  final int id;
  final String name;
  final String playerClass;
  final String race;
  final int level;
  final String spells;


  const Sheet({
    required this.id,
    required this.name,
    required this.playerClass,
    required this.race,
    required this.level,
    required this.spells,
  });

  Sheet.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        playerClass = json['playerClass'],
        race = json['race'],
        level = json['playerLevel'],
        spells = json['spells'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'playerClass': playerClass,
        'race' : race,
        'playerLevel' : level,
        'spells' : spells,
      };
}

