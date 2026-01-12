import processing.serial.*;
import oscP5.*;
import netP5.*;

Serial myPort;
OscP5 oscP5;
NetAddress scAddress;

void setup() {
  size(400,200);
  
 printArray(Serial.list());
 
 String portName = Serial.list()[0];
 myPort = new Serial(this, portName, 115200);
 
 oscP5 = new OscP5(this, 12000);
 scAddress = new NetAddress("127.0.0.1", 57120); 
}

void serialEvent(Serial p) {
String inString = p.readStringUntil('>'); 

  if (inString != null) {
    OscMessage msg = new OscMessage("/guitar");
    msg.add(inString); 
    oscP5.send(msg, scAddress);
    println("Sent to SC: " + inString);
  }
}

void draw() {
  background(0);
  fill(255);
  text("BRIDGE ACTIVE", 50, 50);
  text("Reading from: " + Serial.list()[0], 50, 80);
  text("Sending to SuperCollider on Port 57120", 50, 110);
}
