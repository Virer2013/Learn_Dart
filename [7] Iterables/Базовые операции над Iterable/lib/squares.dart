class SquareIterator implements Iterator<int> {
  int _index = 0;

  @override
  int get current => _index * _index;

  @override
  bool moveNext() {
    _index++;
    return _index <= 100;
  }
}

class HundredSquares extends Iterable<int> {
  @override
  Iterator<int> get iterator => SquareIterator();
}
