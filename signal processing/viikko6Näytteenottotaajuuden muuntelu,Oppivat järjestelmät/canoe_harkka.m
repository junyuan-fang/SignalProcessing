clear('all')
close('all')

% Ladataan kuva muistiin ja n‰ytet‰‰n n‰ytˆll‰.
img = imread('canoe.jpg');
figure(1)
imshow(img, []);

% Ker‰t‰‰n kuvasta opetusn‰ytteit‰ (esim 5-10 kpl molempia):
% - Hiiren vasen nappi = kanootti
% - Hiiren oikea nappi = tausta
% - Keskinappi = lopetus

X1 = []; % kohteen data t‰nne
X2 = []; % taustan data t‰nne

while 1
    % Pyyd‰ k‰ytt‰j‰lt‰ piste kuvasta:    
    [x, y, button] = ginput(1);
    x = round(x);
    y = round(y);
    
    % Ker‰‰ 9kpl n‰ytteit‰ klikkauksen l‰helt‰
    window = img(y-1:y+1, x-1:x+1, :);
    window = double(reshape(window, 9, 3));
    
    % Sijoita n‰ytteet kanootti (X1) tai tausta (X2) -matriisiin.
    switch button
        case 1 
            X1 = [X1; window];
        case 3
            X2 = [X2; window];
        otherwise
            break
    end
        
end

