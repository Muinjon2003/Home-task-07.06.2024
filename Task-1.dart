import 'dart:isolate';


void isolateEntry(SendPort sendPort) {
  sendPort.send('Hello world');
}

void main() async {
  var receivePort = ReceivePort();

  await Isolate.spawn(isolateEntry, receivePort.sendPort);

  receivePort.listen((message) {
    print('Qabul shud: $message');
    receivePort.close();
  });
}
