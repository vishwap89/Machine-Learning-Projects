drop _temp_;
if (P_Total_Actions ge 46076.2641025641) then do;
b_Total_Actions = 1;
end;
else
if (P_Total_Actions ge 31786.7142857142) then do;
b_Total_Actions = 2;
end;
else
if (P_Total_Actions ge 23919.1327188939) then do;
b_Total_Actions = 3;
end;
else
if (P_Total_Actions ge 18496.28125) then do;
b_Total_Actions = 4;
end;
else
if (P_Total_Actions ge 15334.9188393608) then do;
b_Total_Actions = 5;
end;
else
if (P_Total_Actions ge 12466.2883064516) then do;
b_Total_Actions = 6;
end;
else
if (P_Total_Actions ge 10874.8455598455) then do;
b_Total_Actions = 7;
end;
else
if (P_Total_Actions ge 9270.72353043781) then do;
b_Total_Actions = 8;
end;
else
if (P_Total_Actions ge 8422.84179718398) then do;
b_Total_Actions = 9;
end;
else
if (P_Total_Actions ge 7688.64120302227) then do;
b_Total_Actions = 10;
end;
else
if (P_Total_Actions ge 6233.69857737681) then do;
b_Total_Actions = 11;
end;
else
if (P_Total_Actions ge 5450.61612435498) then do;
b_Total_Actions = 12;
end;
else
if (P_Total_Actions ge 4746.11486951863) then do;
b_Total_Actions = 13;
end;
else
if (P_Total_Actions ge 4059.3749589041) then do;
b_Total_Actions = 14;
end;
else
if (P_Total_Actions ge 3391.13733333333) then do;
b_Total_Actions = 15;
end;
else
if (P_Total_Actions ge 2730.52369829683) then do;
b_Total_Actions = 16;
end;
else
if (P_Total_Actions ge 2372.700729927) then do;
b_Total_Actions = 17;
end;
else
if (P_Total_Actions ge 1144.07436926605) then do;
_temp_ = dmran(1234);
b_Total_Actions = floor(18 + 2*_temp_);
end;
else
do;
b_Total_Actions = 20;
end;
