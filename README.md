# Electrostatic-Sandbox

## Preface:
An electronic monstrosity workstation designed to examine and develop systems for distributed simulations by providing an integrated environment housing the basic nostalgic communication protocols (i.e., Serial and Parallel COMs), the abstract networking interfaces, and a range of other electronic modules providing standards for controller interfaces, and sensor modules (e.g., the underdeveloped ShiftAvr, and Arduinos).

## Software specification overview:

| Item | Explanation |
|-------|-------------|
| _Problem Definition_ | Obtaining an integrated environment to efficiently integrate embedded systems with other resources like graphics-based applications and games, with an essential predicate of providing the blend of the old communication protocols, and external pluggable electronic modules. |
| _Scientific Recall of the Problem_ | Using the abstract _Set Theory_ and _Predicate Logic_ annotations, the main problem can be described as a universal set of predicates. In other words, the main problem is the universe set $P_{Environment}$; where _P_ designates a problem universe set, and _Environment_ stands for the environment. Now, $P_{Graphics}$ represents another requirement set of graphics-based applications, and $P_{COM}$ represents the problem set of COM protocols and finally $P_{Modules}$ designating a problem set of pluggable electronic modules including sensor modules that are indirectly established with the $P_{Environment}$. Thus, the general scientific model for the problem is $P_{Environment} = [ P_{Motherboard}, P_{Graphics}, P_{COM}, P_{Modules} ]$, and then recall their binary relations set in a duplex transmission system as $$R_{Environment} = \[(P_{Motherboard}, P_{Motherboard}), (P_{Motherboard}, P_{Graphics}), (P_{Motherboard}, P_{COM}), (P_{Motherboard}, P_{Modules}), (P_{Graphics}, P_{Motherboard}), (P_{Graphics}, P_{Graphics}), (P_{Graphics}, P_{COM}), (P_{Graphics}, P_{Modules}), (P_{COM}, P_{Motherboard}), (P_{COM}, P_{Graphics}), (P_{COM}, P_{COM}), (P_{COM}, P_{Modules}), (P_{Modules}, P_{Motherboard}), (P_{Modules}, P_{Graphics}), (P_{Modules}, P_{COM}), (P_{Modules}, P_{Modules})\]$$. Thus the final analogy of the problem is: $$P_{Environment} = [ P_{Motherboard}\ U\ P_{Graphics}\ U\ P_{COM}\ U\  P_{Modules} \ \|\  R_{Environment}\ {\neq}\ {\phi}]$$ |
| _General Approach_ | The general approach entails buying one of the available workstations or toolkits for embedded systems. |
| _Draw Backs of the General Approach_ | The problem with the general solution that it didn't address providing an efficient realtime graphics simulation environment, so the performance is quite poor when advanced graphics-based applications are required to be tested in conjunction with the communication protocols and the electronics modules. |
| _Specific Minimal Approach_ |
| _Upgrading the system_ | 
| _Scientific Recall of the solution_ | Again, using the _Set Theory_ and the _Group Theory_, envision the environment to build is a universe set _E_ with a main board known as _GA_, and a set of peripherals _P_, and a set of external electronic modules _M_; thus the final scientific model will be _E = {GA, P, M}_; where _P = {p \| p is a peripheral device connected directly to the GA motherboard}_, and _M = {m \| m is an electronic module connected indirectly to the GA motherboard using one or more of the board communication protocols}_. |

## Table of content: 
### Hardware:
- General Components.
- General Circuitry scheme layout.
- Substantial Circuitry description (i.e., main board, peripherals, and modules).
### Software:
- Basic Environment.
- Electrostatic-Sandbox Tools (i.e., development tools, frameworks, and APIs).
### Main Attachments:
- GA-H61M-SP2V Rev-2.0
- PCI-e USB Card.

## DIY Tutorial:
Find the do-it-yourself tutorial at [diy-tutorial]().

### Credits:
Credits should go to these products for being open-source and widely available with no constraints, hooray to them:
- The Java Platform.
- The CMake Building Framework.
- The jMonkeyEngine game engine.
- The Gradle API.
- The Avrdude tool.
- The Arduino Platform.
- The Gigabyte Company (not open-source, but the main board depends on).
- Zorin OS (the main OS currently in-use).
- SanDisk (flash drive).
- Microchip & ATMEL (for AVR microcontrollers).
- The Linux Man Page & Micheal Kerrisk Linux Interfacing Book.
- The GNU/Linux glibc and the interfacing libraries.

And, To others who I didn't mention, and were essential predicates for the success of this project.
