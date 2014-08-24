import 'dart:html';

void main() {
  querySelector("#sample_text_id")
    ..text = "Click me!"
    ..onClick.listen(reverseText);
}

void reverseText(MouseEvent event) {
  var text = querySelector("#sample_text_id").text;
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  querySelector("#sample_text_id").text = buffer.toString();
}
// pub perve --hostname=0.0.0.0 --port=2000
// add /index.html
// http://web-2000.d1c012cf-3476-402a-bbeb-7ab3c57a72fb.vm1.dynobox.io/index.html