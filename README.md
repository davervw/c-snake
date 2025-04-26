# Snake for Commodore #

This is the classic snake game currently written to target Commodore computers: PET, Vic-20, 64, Plus/4, 16

Programmed in Commodore BASIC, pokes(peeks) to(from) screen/color memory

Blog entry: [Snake for Commodore PET, Vic-20, 64, 16, Plus/4, etc.](https://techwithdave.davevw.com/2025/04/snake-for-commodore-vic-20.html)

PRG and D64 files are included

MIT License

Instructions:

* RETURN (or Joystick fire) to pause the game, press again to resume
* Use Z to turn left from perspective of snake
* Use / to turn right from perspective of snake
* Can also use cursor keys, but have to use with SHIFT to turn left
* Joystick also supported, point direction you want the snake to go
* Use STOP+RESTORE to exit and restore proper keyboard use (Vic-20 only)

Compatibility:
  
* SNAKE20 runs on all Vic-20 RAM sizes (5K to 40K), including two different screen/color memory addresses.
* SNAKEPET should run on most PET models, 40 column and 80 column, with 8K RAM or more (also runs on C64 for green on black nostalgia; also runs on Plus/4, 16, etc. recommend COLOR 0,1,1 : COLOR 4,1,1: COLOR 1,6,6 : REM for green on black; also runs on Vic-20 in B/W)
* SNAKE64 runs on ROM revisions 1, 2, 3 assumes screen memory is at 1024, and also runs on C128 40 column screen (but slower) -- not designed for 80 column C128 screen
* SNAKETED should run on all Plus/4, 16, etc. systems

And my emulators:

* SNAKE20, SNAKE64, and SNAKEPET are compatible with [c-simple/emu6502-cbm/unified branch](https://github.com/davervw/c-simple-emu6502-cbm/tree/unified)
* SNAKEPET is compatible with [ts-emu-64](https://github.com/davervw/ts-emu-c64) aka [c64emu.davevw.com](http://c64emu.davevw.com/) (but not SNAKE64)

![screenshot](media/snake.png)
