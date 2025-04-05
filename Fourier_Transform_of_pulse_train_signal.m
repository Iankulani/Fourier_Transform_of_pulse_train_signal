%Fourier Transform of pulse train signal
fy=1; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
Ty=1/fy; %signal period in seconds
N=256; W=20;
fs=N*fy; %sampling frequency in Hz
y1=zeros(256,1); y1(1:W)=1; y1((256-W):256)=1; %signal period
fou=fft(y1,fs); %Fourier Transform (set of complex numbers)
hmag=real(fou); ah=hmag/N; %get set of harmonic amplitudes
stem(0:49,ah(1:50)); hold on; %plot of first 50 harmonics
plot([0 50],[0 0],'k');
xlabel('Hz'); title('pulse train signal harmonics');
