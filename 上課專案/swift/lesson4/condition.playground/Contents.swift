import UIKit

var temperatureInFahrenheit = 30;
if temperatureInFahrenheit <= 32 {
    print("非常冷");
}

temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
     print("非常冷");
}else{
    print("不會很冷");
}

temperatureInFahrenheit = 45

if temperatureInFahrenheit <= 32 {
    print("非常冷");
}else if temperatureInFahrenheit >= 86{
    print("非常熱");
}else{
    print("comfortable");
}



