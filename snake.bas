

1 REM:SNAKE (C) 2025 DAVID R. VAN WAGNER
2 REM:GITHUB.COM/DAVERVW
3 :
10 POKE 646, 1
20 POKE 36879, 12
25 PRINT CHR$(147);
26 FORI=1TO22:PRINT:NEXT
27 PRINTCHR$(18)"SNAKE"CHR$(159)"(C)"CHR$(5)"2025"CHR$(159)"DAVERVW"CHR$(5)" ";
28 FORI=1TO2:PRINT CHR$(157)CHR$(148)" ";:NEXT
29 PRINTCHR$(19)CHR$(17)CHR$(29)"ARROW KEYS Z/ TURN"
30 S=30*256:IFPEEK(56)>30THENS=4096
40 C=9.375*4096:IFPEEK(56)>30THENC=9.25*4096
50 B=81:H=87:D=86:F=90
55 SD=10:REM DELAY
56 SZ=22*22+1
60 DIM S%(SZ):L=0:R=0
61 FORO=0TOSZ-1:POKEC+O,1:NEXT
62 TM=TI
63 DT=TI-TM:IFDT>=0ANDDT<90THEN63
64 PRINTCHR$(19)CHR$(17)"                      "
70 X=10:Y=11:DX=1:DY=0:N=X+Y*22
71 GOSUB300
73 GOSUB400
74 UP$=CHR$(145)
75 LT$=CHR$(157)
76 RT$=CHR$(29)
77 DN$=CHR$(17)
78 GOTO 130
79 :
80 TM=TI
90 DT=TI-TM:IFDT>=0 AND DT<SD THEN 90
100 X=X+DX:Y=Y+DY
110 IF X<0 OR Y<0 OR X>21 OR Y>21 THEN POKE S+S%(R),D:GOTO200
111 N=X+Y*22
112 IF PEEK(S+N)=F THEN GOSUB 300:R=R+1:GOSUB 400:R=R-1:GOTO 125
113 IF N<>S%(L) THEN IF PEEK(S+N)<>32 THEN POKE S+S%(R),D:GOTO 200
120 POKE S+S%(L),32
121 L=L+1:IFL>SZTHENL=0
125 IF PEEK(S+S%(R))=H THEN POKE S+S%(R),B
126 R=R+1:IFR>SZTHENR=0
130 S%(R)=N
131 POKE S+S%(R),H
140 GETK$
150 IFK$<>UP$ANDK$<>LT$ANDK$<>"Z"THEN170
151 IFDX=1THENDX=0:DY=-1:GOTO190
152 IFDY=1THENDX=1:DY=0:GOTO190
153 IFDX=-1THENDX=0:DY=1:GOTO190
154 IFDY=-1THENDX=-1:DY=0:GOTO190
170 IFK$<>DN$ANDK$<>RT$ANDK$<>"/"THEN190
171 IFDX=1THENDX=0:DY=1:GOTO190
172 IFDY=1THENDX=-1:DY=0:GOTO190
173 IFDX=-1THENDX=0:DY=-1:GOTO190
174 IFDY=-1THENDX=1:DY=0
190 GOTO 80
200 TM=TI
201 GETK$:DT=TI-TM:IFDT>=0ANDDT<120THEN201
210 GETK$:IFK$=""THEN210
220 RUN
300 J=INT(RND(1)*22*22)
301 LN=R+1-L:IFLN<0THENLN=LN+SZ+1
302 IF(LN/2)=INT(LN/2)ANDSD>1THENSD=SD-1
310 IFPEEK(S+J)<>32THEN300
320 POKES+J,F
330 RETURN
400 LN=R-L+1:IFLN<0THENLN=LN+SZ+1
410 LN$=MID$(STR$(LN),2)
420 IFLEN(LN$)<3THENLN$=" "+LN$:GOTO420
430 POKES+22*22+19,ASC(MID$(LN$,1,1))+128
440 POKES+22*22+20,ASC(MID$(LN$,2,1))+128
450 POKES+22*22+21,ASC(MID$(LN$,3,1))+128
460 RETURN

READY.


