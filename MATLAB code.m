clear all;
original_image=imread('Captureface.PNG'); %give image path
original_image=rgb2gray(original_image);
figure(1);
imshow(original_image);
[m,n]=size(original_image);
tans_matrix=[1 1 ; 2 2] %transformation matrix
disp('determinant of tansformation matrix');
disp(det(tans_matrix));
for k=1m  %two for loops goes through all pixels of original image
    for l=1n
        coor=[k;l];
        t=tans_matrixcoor;     
        transformed_image(t(1,1),t(2,1))=original_image(k,l);
    end
end
figure(2);
imshow(transformed_image);