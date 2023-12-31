# Godzilla: Monster of Monsters disassembly
This project is not for Nintorch's portfolio purposes.

A (WIP) disassembly of the "Godzilla: Monster of Monsters" (USA/international version) game on the NES.

## How to use
A working bit-perfect ROM can be built by running build.bat.
Assembler (64tass) is bundled with the disassembly.
No installation of other tools required.

To check if the built ROM is bit-perfect, add the GMoM (USA) ROM into your directory
where you unzipped/cloned the disassembly under the name of "rom.nes" and run compare.bat.

I chose 64tass and not any other popular assembler (asm6 or nesasm)
because I want the assembler to be both powerful and more "user-friendly"
(check out [64tass documentation](https://tass64.sourceforge.net/)
for all the features it can offer, for example the user can use custom
encodings to map characters and escape sequences to byte values and
many more).

## This disassembly is WIP
There are a lot of TODOs, not-yet-decompiled code and most of the code and data
still needs to be documented.

## Credits
* Nintorch - Idea and the main maintainer of the disassembly
* frantik - Disasm6 NES disassembler
* FCEUX team - FCEUX emulator
* SourMesen - Mesen emulator

* Godzilla (C) Toho
* Godzilla: Monster of Monsters (C) Toho, Compile, Nintendo
* Nintendo Entertainment System (NES) (C) Nintendo
