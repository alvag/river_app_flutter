class Todo {
  final String id;
  final String description;
  final DateTime? completedAt;

  const Todo({
    required this.id,
    required this.description,
    this.completedAt,
  });

  bool get done => completedAt != null;

  Todo copyWith({
    String? id,
    String? description,
    DateTime? completedAt,
  }) {
    return Todo(
      id: id ?? this.id,
      description: description ?? this.description,
      completedAt: completedAt,
    );
  }
}
