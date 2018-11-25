%% 
% foldername = 'dataout/0903-test8'
function main_XYZ (foldername)

tic
%camera2frame(foldername,1)

%[reflectance_array, sizey, sizex] = frame2reflectance_white(foldername);
%save([foldername '\reflectance'],'reflectance_array','-v7.3')

    disp('Loading reflectance...')
    load([foldername '\reflectance'],'reflectance_array')
    
% prepare the light source
load ('datain/spec_cied65','spec');
ls = spec(1:10:401,2);

XYZ = reflectance2XYZ(reflectance_array,ls);

save([foldername '\XYZ'],'XYZ')

toc

end
