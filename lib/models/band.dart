class Band {
  String id;
  String name;
  int votes;

  Band({
    required this.id,
    required this.name,
    required this.votes,
  });

  // El factory constructor tiene como objetivo regresar una nueva instancia de la clase
  // Al poner fromMap lo que hacemos es que a partir de un Map<> establecemos los valores y devolvemos una nueva instancia de la banda.
  factory Band.fromMap(Map<String, dynamic> obj) => Band(
        id: obj.containsKey('id') ? obj['id'] : 'no-id',
        name: obj.containsKey('name') ? obj['name'] : 'no-name',
        votes: obj.containsKey('votes') ? obj['votes'] : 'no-votes',
      );
}
