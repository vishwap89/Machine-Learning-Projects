*------------------------------------------------------------*;
* Part: Create random partition;
*------------------------------------------------------------*;
data
EMWS5.Part_TRAIN(label="")
EMWS5.Part_VALIDATE(label="")
EMWS5.Part_TEST(label="")
;
retain _seed_ 12345;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
_dataobs_ = _N_;
drop _c00:;
set EMWS5.FIMPORT_train;
if (3849+1-_n_)*_genvalue_ <= (2694 - _C000001) then do;
_C000001 + 1;
output EMWS5.Part_TRAIN;
end;
else if (3849+1-_n_)*_genvalue_ <= (2694 - _C000001 + 770 - _C000002) then do;
_C000002 + 1;
output EMWS5.Part_VALIDATE;
end;
else do;
_C000003 + 1;
output EMWS5.Part_TEST;
end;
run;
run;
