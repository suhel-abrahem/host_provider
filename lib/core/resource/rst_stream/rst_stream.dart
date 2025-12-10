import 'dart:async';

class StreamSocket<T> {
  final _controller = StreamController<T>.broadcast();

  void addResponse(T data) {
    if (!_controller.isClosed) {
      _controller.sink.add(data);
    }
  }

  Stream<T> get stream => _controller.stream;

  void dispose() {
    _controller.close();
  }
}

// Create a global instance
final streamSocket = StreamSocket<dynamic>();
