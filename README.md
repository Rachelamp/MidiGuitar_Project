Digital Flying V: An Accessible MIDI Guitar
One of the most meaningful creative projects I am currently working on is building a custom MIDI guitar that mimics the playability and sound of a traditional electric guitar. This project represents a convergence of personal experience, accessibility design, and creative engineering.
💡 Inspiration & Goals
The idea was inspired by my guitar teacher, who had to undergo surgery after a hand injury that temporarily left him unable to play. That experience made me think more deeply about accessibility in music technology and sparked a desire to create an instrument that could offer high-level expression with reduced physical strain.
My primary goals for this project are:
• To build a functional prototype that bridges the gap between digital music and physical ergonomics.
• To provide an expressive, low-impact alternative for musicians of all physical abilities.
• To experiment with non-traditional control mapping in a real-time audio environment.
🛠️ The Hardware
The instrument is built around an Arduino Micro and a custom-designed Flying V-shaped frame.
• Ergonomics: The V-shape was specifically chosen because its geometry allows for the "classical" playing position. By cradling the leg in the "V" notch, the neck is naturally inclined at a 45-degree angle, which straightens the wrist and reduces the muscular force required to fret notes.
• Sensors: * Infrared Break Beam Sensors: Used to detect “pluck” motions in mid-air.
• Resistive Ribbons (SoftPots): Used for finger placement and pitch control along the neck.
💻 Software Architecture & Technical Challenges
Throughout this independent project, I faced and overcame several significant technical hurdles.
The OSC Bridge
I initially encountered major technical obstacles with Windows MIDI driver conflicts that prevented SuperCollider from detecting my hardware. I successfully solved this by pivoting to an Open Sound Control (OSC) architecture.
• I developed a custom serial bridge using the Processing IDE to translate raw serial data from the Arduino into OSC packets.
• This achieved seamless, low-latency communication that bypassed the restrictive Windows MIDI stack.
Sound Engine
I am using SuperCollider as the primary sound engine. This allows me to leverage the high-resolution data provided by OSC, which far exceeds the standard 127-step limitation of traditional MIDI, allowing for more nuanced and expressive synthesis.
🚧 Work in Progress: Solving "Pitch Crosstalk"
A remaining technical challenge I am currently solving is "pitch crosstalk." Because multiple SoftPots share a common power rail and analog-to-digital converter (ADC) on the Arduino, firm pressure on one ribbon can cause voltage fluctuations that unintentionally affect the pitch readings of others.
I am currently refining the code logic using a combination of software debouncing and conditional thresholds to isolate these signals.
🚀 Future Roadmap
• Visual Interface: Designing the fretboard with vinyl decals and a PET overlay to provide tactile and visual fret indicators.
• Polyphonic Expansion: Refining the code to support a full 6-string system.
• Educational Integration: Bringing the instrument into performance and education spaces to assist musicians with limited mobility.
