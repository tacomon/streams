void main(){
  Stream<int> stream = Stream<int>.periodic(Duration(seconds: 1),
   (count) => count).take(5);

  stream.listen((data)=>print('Data recibida: $data'));

  Stream<int> otroStream = Stream.fromIterable([6,7,8,9,10]);

  otroStream.listen((data){
    print("Data recibida: $data");
  });

}