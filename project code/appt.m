fs = 10000;              % Sampling Frequency 
t = hamming(4000); % Hamming window to smooth the speech signal 
w = [t ; zeros(6000,1)]; 
f = (1:10000); 
mel(f) = 2595 * log(1 + f / 700); % Linear to Mel frequency scale conversion  
tri = triang(100); 
win1 = [tri ; zeros(9900,1)]; % Defining overlapping triangular windows for  
win2 = [zeros(50,1) ; tri ; zeros(9850,1)]; % frequency domain analysis 
win3 = [zeros(100,1) ; tri ; zeros(9800,1)]; 
win4 = [zeros(150,1) ; tri ; zeros(9750,1)]; 
win5 = [zeros(200,1) ; tri ; zeros(9700,1)]; 
win6 = [zeros(250,1) ; tri ; zeros(9650,1)]; 
win7 = [zeros(300,1) ; tri ; zeros(9600,1)]; 
win8 = [zeros(350,1) ; tri ; zeros(9550,1)]; 
win9 = [zeros(400,1) ; tri ; zeros(9500,1)]; 
win10 = [zeros(450,1) ; tri ; zeros(9450,1)]; 
win11 = [zeros(500,1) ; tri ; zeros(9400,1)]; 
win12 = [zeros(550,1) ; tri ; zeros(9350,1)]; 
win13 = [zeros(600,1) ; tri ; zeros(9300,1)]; 
win14 = [zeros(650,1) ; tri ; zeros(9250,1)]; 
win15 = [zeros(700,1) ; tri ; zeros(9200,1)]; 
win16 = [zeros(750,1) ; tri ; zeros(9150,1)]; 
win17 = [zeros(800,1) ; tri ; zeros(9100,1)]; 
win18 = [zeros(850,1) ; tri ; zeros(9050,1)]; 
win19 = [zeros(900,1) ; tri ; zeros(9000,1)]; 
win20 = [zeros(950,1) ; tri ; zeros(8950,1)]; 
y = wavrecord(1 * fs, fs, 'double'); %Store the uttered password for authentication 
i = 1; 
while abs(y(i)) < 0.05             % Silence Detection 
     i = i + 1; 
end 
y(1 : i) = []; 
y(6000 : 10000) = 0; 
y1 = y.* w; 
my = fft(y1);                         % Transform to frequency domain 
ny = abs(my(floor(mel(f)))); % Mel warping 
ny = ny./ max(ny); 
ny1 = ny.* win1; 
ny2 = ny.* win2; 
ny3 = ny.* win3; 
ny4 = ny.* win4; 
ny5 = ny.* win5; 
ny6 = ny.* win6; 
ny7 = ny.* win7; 
ny8 = ny.* win8; 
ny9 = ny.* win9; 
ny10 = ny.* win10; 
ny11 = ny.* win11;  
ny12 = ny.* win12; 
ny13 = ny.* win13; 
ny14 = ny.* win14; 
ny15 = ny.* win15; 
ny16 = ny.* win16; 
ny17 = ny.* win17; 
ny18 = ny.* win18; 
ny19 = ny.* win19; 
ny20 = ny.* win20; 
sy1 = sum(ny1.^ 2); 
sy2 = sum(ny2.^ 2); 
sy3 = sum(ny3.^ 2); 
sy4 = sum(ny4.^ 2); 
sy5 = sum(ny5.^ 2); 
sy6 = sum(ny6.^ 2); 
sy7 = sum(ny7.^ 2); 
sy8 = sum(ny8.^ 2); 
sy9 = sum(ny9.^ 2); 
sy10 = sum(ny10.^ 2); % Determine the energy of the signal within each window 
sy11 = sum(ny11.^ 2); % by summing square of the magnitude of the spectrum 
sy12 = sum(ny12.^ 2); 
sy13 = sum(ny13.^ 2); 
sy14 = sum(ny14.^ 2); 
sy15 = sum(ny15.^ 2); 
sy16 = sum(ny16.^ 2); 
sy17 = sum(ny17.^ 2); 
sy18 = sum(ny18.^ 2); 
sy19 = sum(ny19.^ 2); 
sy20 = sum(ny20.^ 2); 
sy = [sy1, sy2, sy3, sy4, sy5, sy6, sy7, sy8, sy9, sy10, sy11, sy12, sy13, sy14, sy15, sy16, sy17, sy18, sy19, sy20];  
          
sy = log(sy);  
dy = dct(sy);              % Determine DCT of Log of the spectrum energies 
fid = fopen('notepad.dat','r'); 
dx = fread(fid, 20, 'real*8');            % Obtain the feature vector for the password  
fclose(fid);                                       % evaluated in the training phase 
dx = dx.'; 
MSE=(sum((dx - dy).^ 2)) / 20;     % Determine the Mean squared error  
if MSE<3   
    %fprintf('\n\nACCESS GRANTED\n\n'); 
	 winopen('C:\Program Files (x86)\Notepad++\Notepad++.exe');
    Grant=wavread('Grant.wav');  % “Access Granted” is output if within threshold  
    wavplay(Grant,52000); 
else 
    fprintf('\n\nACCESS DENIED\n\n'); 
    Deny=wavread('deny.wav');    % “Access Denied” is output in case of a failure 
    wavplay(Deny,52000); 
end 