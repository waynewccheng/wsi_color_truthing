% D65
% 7-23-2015
% convert reflectance into RGB using D65
% usage: rgb = reflectance2D65(reflectance_array7);

function XYZ = reflectance2XYZ (reflect_array, ls)

    disp('Combining reflectance and illuminant into XYZ...')
    
    XYZxyz0 = spd2XYZ(ls);
    whiteY = XYZxyz0(2);

%    ls_array = repmat(ls,1,480*640);
%    ls_array = repmat(ls,1,2736*2192);
    ls_array = repmat(ls,1,2704*3376);
    spd_array = reflect_array .* ls_array;
    
    % rescale to [0:1]
    % define the white level here
    XYZ = spd2XYZ(spd_array)/whiteY * 1;

end
