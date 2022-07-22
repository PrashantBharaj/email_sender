
import 'package:email_sender/utility/uri_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test("create uri tester", (){
    //Arrange
    var expected = "mailto:support@rangde.in?subject=Delete%20my%20Account&body=Hello!%20My%20name%20is%20Prashant%20Singh.%20I'd%20like%20to%20request%20my%20Rang%20De%20account%20to%20be%20deleted%20at%20the%20earliest.%20My%20email%20address%20is%20prashant.bharaj%40gmail.com.%20I%20confirm%20that%20I've%20read%20and%20understand%20Rang%20De's%20policy%20regarding%20account%20deletion.%0Alink%3A%20https%3A%2F%2Fwww.rangde.in";

    //Act
    var uri = createEmailUri("Prashant Singh", "prashant.bharaj@gmail.com", "https://www.rangde.in");
    String actual = uri.toString();
    //Assert
    expect(actual, expected);
  });

  test("encodeQueryParameters method test", (){
    //Arrange
    Map<String, String> map = {
      'subject': "this is subject",
      'body': "this is body"
    };
    //Act
    var actual = encodeQueryParameters(map);
    //Assert
    var expected = "subject=this%20is%20subject&body=this%20is%20body";
    expect(actual, expected);
  });
}