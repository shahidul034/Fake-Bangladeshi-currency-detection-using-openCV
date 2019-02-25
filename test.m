A=imread('E:\mat lab\500\500.jpg');

B=imread('E:\mat lab\500\fake500.jpg');

c1 = corr2(A(:,:,1),B(:,:,1));
c2 = corr2(A(:,:,2),B(:,:,2));
c3 = corr2(A(:,:,3),B(:,:,3));
if (c1==1 && c2==1 && c3==1)
    fprintf('This note is real \n' );
else
    fprintf('This note is Fake \n' );
end
figure ,imshow(A);
figure,imshow(B);
r1=(A(:,:,1));
k=ones(194,259);
g1=(A(:,:,2));
b1=(A(:,:,3));
r2=(B(:,:,1));
g2=(B(:,:,2));
b2=(B(:,:,3)); 
I=cat(3,r1,g2,b1);
figure,imshow(I);
ss1 = corr2(A(:,:,1),I(:,:,1));
ss2 = corr2(A(:,:,2),I(:,:,2));
ss3 = corr2(A(:,:,3),I(:,:,3));
if ss1==1 && ss2==1 && ss3==1  
    fprintf('this tk is real');
else 
    fprintf('Fake note');
end


