/*
  State change detection (edge detection).
  Puzzle game
  created  9 Nov 2019
  modified 9 Nov 2019
  by Martin CORNU
  
*/

//#define DEBUG
#define VIDEO_DURATION_MS (55000)


/***************************** VARIABLES ***************************************/
const uint8_t magnetPin = 12;                                        // Pin a laquelle est branche laimant
const uint8_t numberOfButtons = 4;                                   // Nombre de boutons
const uint8_t arr_buttonPin[numberOfButtons] = { 2, 3, 4, 5 };    // Numero des pins auxquelles sont branches les boutons

const uint8_t ledGreenPin = A3;          /* Pin de la led verte */
const uint8_t ledRedPin = A2;           /* Pin de la led rouge */

/* ATTENTION : BIEN MODIFIER LE NOMBRE DE PRESSIONS SI MODIFICATION DE LA SUITE */
const uint8_t numberOfPress = 6;                                     // Nombre de pressions
const uint8_t arr_suite[numberOfPress] = {2, 3, 4, 5, 4, 5};      // Suite a trouver (numero des pins)


uint8_t suiteIndex = 0;                                       // index in the suite
uint8_t arr_buttonPushCounter[numberOfButtons] = {0};         // counter for the number of button presses
uint8_t arr_buttonState[numberOfButtons] = {0};               // current state of the button
uint8_t arr_lastButtonState[numberOfButtons] = {0};           // previous state of the button

// the following variables are unsigned longs because the time, measured in
// milliseconds, will quickly become a bigger number than can be stored in an int.
unsigned long lastDebounceTime = 0;  // the last time the output pin was toggled
unsigned long debounceDelay = 50;    // the debounce time; increase if the output flickers


/***************************** FUNCTIONS ***************************************/
void checkButton(uint8_t buttonPin, uint8_t * buttonState, uint8_t * lastButtonState, uint8_t * buttonPushCounter) { 
  // read the pushbutton input pin:
  int reading = digitalRead(buttonPin);

  // compare the buttonState to its previous state
  if (reading != *lastButtonState) {
      // reset the debouncing timer
      lastDebounceTime = millis();
  }
  
  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer than the debounce
    // delay, so take it as the actual current state:
    if (reading != *buttonState) {
       *buttonState = reading;
    
      // if the state has changed, increment the counter
      if (*buttonState == HIGH) {
        // if the current state is HIGH then the button went from off to on:
        (*buttonPushCounter)++;
  
        #ifdef DEBUG
        Serial.println("\non");
        Serial.print("number of button pushes: ");
        Serial.println(*buttonPushCounter);
        #endif
  
        if (buttonPin == arr_suite[suiteIndex]) {
          suiteIndex++;
        } else {
          suiteIndex = 0;
        }

      #ifdef DEBUG
        Serial.print("Suite index: ");Serial.println(suiteIndex);
        #endif
        
        if (suiteIndex == numberOfPress) {
          #ifdef DEBUG
            Serial.println("Win !!");
          #endif

          pinMode(magnetPin, OUTPUT);
          digitalWrite(magnetPin, LOW);
          digitalWrite(ledRedPin, LOW);
          digitalWrite(ledGreenPin, HIGH);
          delay(500);
          suiteIndex = 0;
          pinMode(magnetPin, INPUT);        /* floating input. pull-up raspberry pi side */
          
          delay(VIDEO_DURATION_MS - 15000); /* wait a bit less than video duration */
          digitalWrite(ledGreenPin, LOW);
        } else {
          pinMode(magnetPin, INPUT);        /* floating input. pull-up raspberry pi side */
          digitalWrite(ledGreenPin, LOW);
          digitalWrite(ledRedPin, HIGH);
        }
  
        
      } else {
        // if the current state is LOW then the button went from on to off:
        #ifdef DEBUG
        Serial.println("off");
        #endif
      }
    }
  }
  
  // save the current state as the last state, for next time through the loop
  *lastButtonState = reading;
}

/***************************** PROGRAM ***************************************/
void setup() {

  for (int i=0; i<numberOfButtons; ++i) {
    pinMode(arr_buttonPin[i], INPUT);
  }
  
  // initialize the LED as an output:
  pinMode(magnetPin, INPUT);      //floating input. pull-up raspberry pi side
  pinMode(ledGreenPin, OUTPUT);
  digitalWrite(ledGreenPin, LOW);
  pinMode(ledRedPin, OUTPUT);
  digitalWrite(ledRedPin, HIGH);
  
  // initialize serial communication:
  #ifdef DEBUG
  Serial.begin(9600);
  Serial.println("Start...");
  #endif
}


void loop() { 

  for (int i=0; i<numberOfButtons; ++i) {
    checkButton(arr_buttonPin[i], &arr_buttonState[i], &arr_lastButtonState[i], &arr_buttonPushCounter[i]);
    /*delay(20);*/
  }
  
}
