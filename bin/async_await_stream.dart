//Archivo async_await_stream.dart
void main() async{
  Stream<int> stream = Stream<int>.periodic(Duration(seconds: 3),
   (count) => count).take(5); 
   await for (var data in stream) {
    print('Data recibida: $data');
  }
}