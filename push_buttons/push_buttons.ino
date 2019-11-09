/*
  State change detection (edge detection).
  Puzzle game
  created  9 Nov 2019
  modified 9 Nov 2019
  by Martin CORNU

  Suite de boutons à appuyer dans le bon ordre (boutons 1 à 5)
  -> 1;2;3;4;5
  
*/


/***************************** VARIABLES ***************************************/
const uint8_t numberOfButtons = 5;                                  // Nombre de boutons
const uint8_t  arr_buttonPin[numberOfButtons] = { 2, 3, 4, 5, 6 };  // Numero des pins auxquelles sont branches les boutons
const uint8_t arr_suite[numberOfButtons] = {2, 3, 4, 5, 6};         // Suite a trouver (numero des pins) 

uint8_t suiteIndex = 0;                                       // index in the suite
uint8_t arr_buttonPushCounter[numberOfButtons] = {0};         // counter for the number of button presses
uint8_t arr_buttonState[numberOfButtons] = {0};               // current state of the button
uint8_t arr_lastButtonState[numberOfButtons] = {0};           // previous state of the button

const uint8_t  ledPin = 12; // the pin that the LED is attached to


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

      if (buttonPin == arr_suite[suiteIndex]) {
        suiteIndex++;
      } else {
        suiteIndex = 0;
      }

      if (suiteIndex == numberOfButtons) {
        digitalWrite(ledPin, HIGH);
        suiteIndex = 0;
      } else {
        digitalWrite(ledPin, LOW);
      }

      
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

  for (int i=0; i<numberOfButtons; ++i) {
    pinMode(arr_buttonPin[i], INPUT);
  }
  
  // initialize the LED as an output:
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
  
  // initialize serial communication:
  Serial.begin(9600);
}


void loop() { 

  for (int i=0; i<numberOfButtons; ++i) {
    checkButton(arr_buttonPin[i], &arr_buttonState[i], &arr_lastButtonState[i], &arr_buttonPushCounter[i]);
    delay(20);
  }
  
}
