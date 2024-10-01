%notes = [C C G G A A G’ F F E E D D C’ G G F F E E D’ G G F F E E’’F’’ D C C G G A A G’ F F E E D D” E” C’]

clear all

[C]=adnote(1,40);
[Cp] = adnote(0.5, 40);
[D] = adnote(1, 42);
[Dp] = adnote(0.5 , 42);
[Dpp] = adnote(0.25, 42);
[E] = adnote(1, 44);
[Epp] = adnote(0.25, 44);
[F] = adnote(1, 45);
[G]= adnote(1,47);
[Gp]= adnote(0.5,47);% generates G’
[Fpp]= adnote(0.25,45); % generates F’’
[A] = adnote(1, 49);


y=[C C G G A ];
soundsc(y, 44100);