class Fibonacci {
  final int quantity;

  Fibonacci({required this.quantity});

  List<int> get() {
    List<int> fibonacci = [];
    int sequency = 1;
    for (var i = 0; i < quantity; i++) {
      fibonacci.add(sequency);

      if (i > 0) {
        sequency = fibonacci[i - 1] + sequency;
      }
    }

    return fibonacci;
  }
}
