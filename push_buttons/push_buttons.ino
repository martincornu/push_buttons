/*
  State change detection (edge detection).

  created  9 Nov 2019
  modified 9 Nov 2019
  by Martin CORNU
*/

/***************************** VARIABLES ***************************************/
const uint8_t  buttonPinA = 2;       // the pin that the pushbutton is attached to
const uint8_t  ledPin = LED_BUILTIN; // the pin that the LED is attached to

uint8_t buttonPushCounterA = 0;   // counter for the number of button presses
uint8_t buttonStateA = 0;         // current state of the button
uint8_t lastButtonStateA = 0;     // previous state of the button


/***************************** FUNCTIONS ***************************************/
void checkButton(uint8_t buttonPin, uint8_t * buttonState, uint8_t * lastButtonState, uint8_t * buttonPushCounter) {
  // read the pushbutton input pin:
  *buttonState = digitalRead(buttonPin);

  // compare the buttonState to its previous state
  if (*buttonState != *lastButtonState) {
    // if the state has changed, increment the counter
    if (*buttonState == HIGH) {
      // if the current state is HIGH then the button went from off to on:
      (*buttonPushCounter)++;
      Serial.println("\non");
      Serial.print("number of button pushes: ");
      Serial.println(*buttonPushCounter);
    } else {
      // if the current state is LOW then the button went from on to off:
      Serial.println("off");
    }
  }
  // save the current state as the last state, for next time through the loop
  *lastButtonState = *buttonState;
}

void checkPushes(uint8_t buttonPushCounter) {
  // turns on the LED every four button pushes by checking the modulo of the
  // button push counter. the modulo function gives you the remainder of the
  // division of two numbers:
  if (buttonPushCounter != 0 && buttonPushCounter % 4 == 0) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
  }
}

/***************************** MAIN ***************************************/
void setup() {
  // initialize the button pin as a input:
  pinMode(buttonPinA, INPUT);
  // initialize the LED as an output:
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
  // initialize serial communication:
  Serial.begin(9600);
}


void loop() {

  checkButton(buttonPinA, &buttonStateA, &lastButtonStateA, &buttonPushCounterA);
  
  // Delay a little bit to avoid bouncing
    delay(50);

  checkPushes(buttonPushCounterA);

}
