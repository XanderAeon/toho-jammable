//if asdawdasdawd; {} //this code works
mmod = 0;
cmod = 0;
bar = 64;
//mini = 1; //1.4
global.mini = 1;
minibig = (global.mini-1)*64;
bop[0] = 1;
bop[1] = 1;
bop[2] = 1;
bop[3] = 1;
bop[4] = 1;
bop[5] = 1;
bop[6] = 1;
bop[7] = 1;
bop[8] = 1;
infoalpha = 0;
combocolour = array_create(4);
combo = 0;
realscore = 0;
highscore = 0;
draw_set_font(ft_ronaldo);
state = c_receptorinput;
offset = 0;
noterank = 5;
ranktext = 11037;
timecounter = 0;
songstarting = false;
laneleft = 544-minibig*1.5;
lanedown = 608-minibig*.5;
laneup = 672+minibig*.5;
laneright = 736+minibig*1.5;
bluepos = 640;
lanespacing = 64;
lanes = 4;
laneselected = lanedown+(lanespacing/2);

blueposaved = bluepos;
bluehspd = 0;
lanespeed = 0;
hp = 12;
songbg = s_kaguya;
script_execute(c_drivin);
upwave = 0;
downwave = 0;
arraypos = 0;
comborank = 3;
notechange = false;

count = 0;
countwo = 0;
global.truetime = 1;

c_inputwocreate();
rumble = array_create(4);