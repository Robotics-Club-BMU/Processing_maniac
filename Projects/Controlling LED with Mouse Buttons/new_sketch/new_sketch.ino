const int ledPin = D0;    //define the LED pin

void setup(){

  pinMode(ledPin, OUTPUT);    //initialize LED output
  Serial.begin(115200);         //start the serial communication
}

void loop(){

  if(Serial.available() > 0){           //if some data is available of in the serial port
    char ledPinState = Serial.read();   //read the value
    if(ledPinState == '1'){             //if statement will be true(1)
      digitalWrite(ledPin, HIGH);       //turn ON the LED
    }
    if(ledPinState == '0'){             //if statement will be false(0)
      digitalWrite(ledPin, LOW);        //turn OFF the LED
    }
  }
}
