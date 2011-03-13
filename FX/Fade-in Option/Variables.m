
cp=1;
T1=(datenum(2006,10,10)-datenum(2006,6,8))/365;
T2=(datenum(2006,12,12)-datenum(2006,6,8))/365;
T=(datenum(2006,12,13)-datenum(2006,6,8))/365;

r1=(0.0538581-0.0533506)/(182/365-91/365)*(T1-91/365)+0.0533506;
r2=(0.0540439-0.0538581)/(365/365-182/365)*(T2-182/365)+0.0538581;
r=[r1;r2];

rf1=(0.0308937-0.0302108)/(182/365-91/365)*(T1-91/365)+0.0302108;
rf2=(0.0323596-0.0308937)/(365/365-182/365)*(T2-91/365)+0.0308937;
rf=[rf1;rf2];

vol1=sqrt((0.0875^2-0.087^2)/(184/365-93/365)*(T1-93/365)+0.087^2);
vol2=sqrt((0.088^2-0.0875^2)/(276/365-184/365)*(T2-184/365)+0.0875^2);
vol=[vol1;vol2];

rT=(0.0540439-0.0538581)/(182/365-91/365)*(T-91/365)+0.0533506;
df=exp(-rT*T);

S=1.265;
h=1.4;
K=1.2;
t0=0;
