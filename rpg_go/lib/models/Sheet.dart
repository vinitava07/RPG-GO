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

  factory Sheet.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'name': String name,
        'playerClass': String playerClass,
        'race' : String race,
        'playerLevel': int level,
        'spells': String spells,
      } =>
        Sheet(
          id: id,
          name: name,
          playerClass: playerClass,
          race: race,
          level: level,
          spells: spells,
        ),
      _ => throw const FormatException('Failed to load Sheet.'),
    };
  }
}

