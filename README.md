# Pinger
## Summary
The H-bridge is an electronic circuit that uses transistors to switch the polarity of a voltage applied to a load. These circuits are 
often used to drive DC motors as you can get both forward and reverse motion, however for this application, we are going to create an 
oscilating signal using the arduino, which is essiential for a piezo to transmit. This configuration is commonly used as a dog repellent 
as dogs are annoyed by 40khz signals. It has been demonstrated to work on land, however underwater is unknown.

I have a couple of different piezo loads that can be run on this board, such as a ceramic disc, both large/small ultrasonic transducers, 
and a buzzer. I am open to suggestions on how to test this device without breaking it. 

## Arduino
Power: 5v regulated input
LEDs: 3 (1 for status, 2 for mode (00 25khz, 01 30khz, 10 35khz, 11 40 khz))
total current consumption: ~55mAH

## Drive circuit
Power: 9v (delibretly used pin instead of copper fill for testing)
