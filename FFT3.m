 prompt = 'What time do you wish to start analysis from? ';
Time_window1 = input(prompt);
prompt = 'What time do you wish to end the analysis? ';
Time_window2 = input(prompt);
FFTinput = imudata(200*Time_window1:200*Time_window2,:);


xdft = fft(FFTinput(:,5));

     % sampling interval -- assuming equal sampling
     DT = imudata(2,1)-imudata(1,1);
     % sampling frequency
     Fs = 1/DT;
     DF = Fs/length(FFTinput);
     freq = 0:DF:Fs/2;
    Freq = freq'
     xdft = xdft(1:round(length(xdft)/2,1));
     figure;
     z= abs(xdft);
     plot(Freq(10:500,1),z(10:500,1));
     title('Single-Sided Amplitude Spectrum of me walking')
xlabel('f /Hz')
ylabel('Relative Amplitude')