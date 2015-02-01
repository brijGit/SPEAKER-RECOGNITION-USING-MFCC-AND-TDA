fs = 10000;           % Sampling Frequency 
w = hamming(2500);    % Hamming window to smoothen speech frame 
h = hamming(256);     % Hamming window to find STFT 
win1 = [h ; zeros(2244,1)];   % Twelve windows in Time-domain to compute STFT 
win2 = [zeros(200,1) ; h ; zeros(2044,1)]; 
win3 = [zeros(400,1) ; h ; zeros(1844,1)]; 
win4 = [zeros(600,1) ; h ; zeros(1644,1)]; 
win5 = [zeros(800,1) ; h ; zeros(1444,1)]; 
win6 = [zeros(1000,1) ; h ; zeros(1244,1)]; 
win7 = [zeros(1200,1) ; h ; zeros(1044,1)]; 
win8 = [zeros(1400,1) ; h ; zeros(844,1)]; 
win9 = [zeros(1600,1) ; h ; zeros(644,1)]; 
win10 = [zeros(1800,1) ; h ; zeros(444,1)]; 
win11 = [zeros(2000,1) ; h ; zeros(244,1)]; 
win12 = [zeros(2244,1) ; h]; 
 
%fprintf('\nHit enter and store the password'); 
%pause; 
x=wavrecord(1 * fs,fs,'double');           % Record Training signal 
plot(x); 
wavplay(x); 
 
%Silence Detection 
i = 1; 
while abs(x(i)) < 0.05             % Detect Speech signal Position                     
     i = i + 1; 
end 
x(1 : i) = []; 
x(6000 : 10000) = 0;                 % Extract Only 2500 samples of Actual Speech 
x(2501 : 10000) = []; 
x1 = x; 
%figure; 
%plot(x1); 
nx= x1; 
 
nx1 = nx.* win1;      % Window the Speech Frame with a First Short-time Window 
i = 1; 
while abs(nx1(i)) == 0 
     i = i + 1; 
end 
nx1(1 : i) = []; 
nx1(6000 : 10000) = 0; 
nx1(501 : 10000) = []; 
X1 = abs(fft(nx1));           % Finds the position of Dominant Frequency Component 
while X1(i) ~= max(X1) 
     i = i + 1; 
end 
d1 = i ; 
nx2 = nx.* win2;  % Window the Speech Frame with a Second Short-time Window 
i = 1; 
while abs(nx2(i)) == 0  
   i = i + 1; 
end 
nx2(1 : i) = []; 
nx2(6000 : 10000) = 0; 
nx2(501 : 10000) = []; 
X2 = abs(fft(nx2));           % Finds the position of Dominant Frequency Component 
i = 1; 
while X2(i) ~= max(X2) 
      i = i + 1; 
end 
d2 = i ;
 
nx3 = nx.* win3;    % Window the Speech Frame with a Third Short-time Window 
i = 1; 
while abs(nx3(i)) == 0 
    i = i + 1; 
end 
nx3(1 : i) = []; 
nx3(6000 : 10000) = 0; 
nx3(501 : 10000) = []; 
X3 = abs(fft(nx3));          % Finds the position of Dominant Frequency Component 
i = 1; 
while X3(i) ~= max(X3) 
    i = i + 1; 
end 
d3 = i; 
 
nx4 = nx.* win4;   % Window the Speech Frame with a Fourth Short-time Window 
i = 1; 
while abs(nx4(i)) == 0 
     i = i + 1; 
end 
nx4(1 : i) = []; 
nx4(6000 : 10000) = 0; 
nx4(501 : 10000) = []; 
X4 = abs(fft(nx4));           % Finds the position of Dominant Frequency Component 
i = 1; 
while X4(i) ~= max(X4) 
     i = i + 1; 
end 
d4 = i ;
 
nx5 = nx.* win5;     % Window the Speech Frame with a Fifth Short-time Window 
i = 1; 
while abs(nx5(i)) == 0 
     i = i + 1; 
end 
nx5(1 : i) = []; 
nx5(6000 : 10000) = 0; 
nx5(501 : 10000) = []; 
X5 = abs(fft(nx5));            % Finds the position of Dominant Frequency Component 
i = 1; 
while X5(i ) ~= max(X5) 
     i = i + 1; 
end 
d5 = i; 
 
nx6 = nx.* win6;    % Window the Speech Frame with a Sixth Short-time Window 
i = 1; 
while abs(nx6(i)) == 0 
     i = i + 1; 
end 
nx6(1 : i) = []; 
nx6(6000 : 10000) = 0; 
nx6(501 : 10000) = []; 
X6 = abs(fft(nx6));           % Finds the position of Dominant Frequency Component 
i = 1; 
while X6(i) ~= max(X6) 
     i = i + 1; 
end 
d6 = i ;
 
nx7 = nx.* win7; % Window the Speech Frame with a Seventh Short-time Window 
i = 1; 
while abs(nx7(i)) == 0 
     i = i + 1; 
end 
nx7(1 : i) = []; 
nx7(6000 : 10000) = 0; 
nx7(501 : 10000) = []; 
X7 = abs(fft(nx7));           % Finds the position of Dominant Frequency Component 
i = 1; 
while X7(i) ~= max(X7) 
      i  = i  + 1; 
end 
d7 = i ;
 
nx8 = nx.* win8;   % Window the Speech Frame with a Eighth Short-time Window 
i = 1; 
while abs(nx8(i)) == 0 
      i = i + 1; 
end 
nx8(1 : i) = []; 
nx8(6000 : 10000) = 0; 
nx8(501 : 10000) = []; 
X8 = abs(fft(nx8));          % Finds the position of Dominant Frequency Component 
i = 1; 
while X8(i) ~= max(X8) 
      i = i + 1; 
end 
d8 = i ;
 
nx9 = nx.* win9;   % Window the Speech Frame with a Ninth Short-time Window 
i = 1; 
while abs(nx9(i)) == 0 
     i = i + 1; 
end 
nx9(1 : i) = []; 
nx9(6000 : 10000) = 0; 
nx9(501 : 10000) = []; 
X9 = abs(fft(nx9));           % Finds the position of Dominant Frequency Component 
i = 1; 
while X9(i) ~= max(X9) 
      i = i + 1; 
end 
d9 = i ;
nx10 = nx.*win10;  % Window the Speech Frame with a Tenth Short-time Window 
i = 1; 
while abs(nx10(i)) == 0 
      i = i + 1; 
end 
nx10(1 : i) = []; 
nx10(6000 : 10000) = 0; 
nx10(501 : 10000) = []; 
X10 = abs(fft(nx10));       % Finds the position of Dominant Frequency Component 
i = 1; 
while X10(i) ~= max(X10) 
      i = i + 1; 
end 
d10 = i; 
 
nx11 = nx.* win11;   %Window the Speech Frame with a Eleventh Window 
i = 1; 
while abs(nx11(i)) == 0 
      i = i + 1; 
end 
nx11(1 : i) = []; 
nx11(6000 : 10000) = 0; 
nx11(501 : 10000) = []; 
X11 = abs(fft(nx11));           % Finds the position of Dominant Frequency Component 
i = 1; 
while X11(i) ~= max(X11) 
      i = i + 1; 
end 
d11 = i ; 
 
nx12 = nx.*win12; % Window the Speech Frame with a Twelfth Window 
i = 1; 
while abs(nx12(i)) == 0  
      i = i + 1; 
end 
nx12(1 : i) = []; 
nx12(6000 : 10000) = 0; 
nx12(501 : 10000) = []; 
X12 = abs(fft(nx12));       % Finds the position of Dominant Frequency Component 
i = 1; 
while X12(i) ~= max(X12) 
      i = i + 1; 
end 
d12 = i ;
 
dy = [d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12]; 
 
fid = fopen('feature.dat', 'r');    %Retrieve the Feature Vector from Training Phase    
dx = fread(fid, 12, 'real*8'); 
fclose(fid); 
dx = dx.'; 
 
i = 1; 
j = 0; 
while(i < 13) 
    if(abs(dy(i) - dx(i)) < 5)   % Check the deviation between dominant  
         j = j + 1;                   % spectral Components in each window 
    end 
i = i + 1; 
end 
if j > 7                                        % Check for desired number of matches  
    msgbox('Access Granted');       
    Grant = wavread('Grant.wav');  % "Access Granted" previously stored as .dat 
    wavplay(Grant,60000); 
else
    msgbox('Access Denied');
    Deny = wavread('Deny.wav');  % "Access Denied" previously stored as .dat
    wavplay(Deny,60000); 
end 