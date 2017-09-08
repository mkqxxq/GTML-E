%%%%%%%%%%%%%%%%%%
%   T  [200K~2200K]
%%%%%%%%%%%%%%%%%%
function h=H_T(t,f)

%h:J/kg

%t:K
%f:-

if nargin == 1
    f = 0;
end

if t < 199
    t = 199;
elseif t > 2201
    t = 2201;
end

tz=t/1000;

A0=0.992313;
A1=0.236688;
A2=-1.852148;
A3=6.083152;
A4=-8.893933;
A5=7.097112;
A6=-3.234725;
A7=0.794571;
A8=-0.081873;
A9=0.422178;

B0=-0.718874;
B1=8.747481;
B2=-15.863157;
B3=17.254096;
B4=-10.233795;
B5=3.081778;
B6=-0.361112;
% B7=-0.003919;
B8=0.0555930;

h=(A0*tz+A1*tz^2/2+A2*tz^3/3+A3*tz^4/4+A4*tz^5/5+A5*tz^6/6+A6*tz^7/7+A7*tz^8/8+A8*tz^9/9+A9)+((f/(1+f))*(B0*tz+B1*tz^2/2+B2*tz^3/3+B3*tz^4/4+B4*tz^5/5+B5*tz^6/6+B6*tz^7/7+B8));

h=h*1e6;

end
