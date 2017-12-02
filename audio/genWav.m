%generates wav files to be used for the github page

sampRate = 8192;
fileLen=30; %in seconds
filetype='.wav';
tt=(0:sampRate*fileLen)/sampRate;
% player = audioplayer(sin(tt*freq*2*pi), sampRate);


for i=[600:100:1600]
    fname=[num2str(i),filetype];
audiowrite(fname,sin(tt*i*2*pi),sampRate,...
'Comment',[num2str(i),'hz']);
end