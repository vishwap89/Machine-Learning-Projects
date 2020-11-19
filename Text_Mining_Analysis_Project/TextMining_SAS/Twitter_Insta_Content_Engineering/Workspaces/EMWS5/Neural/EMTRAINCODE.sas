*------------------------------------------------------------*;
* Neural: Create decision matrix;
*------------------------------------------------------------*;
data WORK.Total_Actions(label="Total_Actions");
  length   Total_Actions                        8
           ;

  label    Total_Actions="Total Actions"
           ;
 Total_Actions=48;
output;
 Total_Actions=187721;
output;
 Total_Actions=13480.5020423319;
output;
;
run;
proc datasets lib=work nolist;
modify Total_Actions(type=PROFIT label=Total_Actions);
run;
quit;
data EM_Neural;
set EMWS5.TextTopic_TRAIN(keep=
Character_Count Like_Count Retweet_Count TextCluster_SVD1 TextCluster_SVD10
TextCluster_SVD11 TextCluster_SVD12 TextCluster_SVD13 TextCluster_SVD14
TextCluster_SVD15 TextCluster_SVD16 TextCluster_SVD17 TextCluster_SVD18
TextCluster_SVD19 TextCluster_SVD2 TextCluster_SVD20 TextCluster_SVD21
TextCluster_SVD22 TextCluster_SVD23 TextCluster_SVD24 TextCluster_SVD25
TextCluster_SVD26 TextCluster_SVD27 TextCluster_SVD28 TextCluster_SVD29
TextCluster_SVD3 TextCluster_SVD30 TextCluster_SVD31 TextCluster_SVD32
TextCluster_SVD33 TextCluster_SVD34 TextCluster_SVD35 TextCluster_SVD36
TextCluster_SVD37 TextCluster_SVD38 TextCluster_SVD39 TextCluster_SVD4
TextCluster_SVD40 TextCluster_SVD41 TextCluster_SVD42 TextCluster_SVD43
TextCluster_SVD44 TextCluster_SVD45 TextCluster_SVD46 TextCluster_SVD47
TextCluster_SVD48 TextCluster_SVD49 TextCluster_SVD5 TextCluster_SVD50
TextCluster_SVD51 TextCluster_SVD52 TextCluster_SVD53 TextCluster_SVD54
TextCluster_SVD6 TextCluster_SVD7 TextCluster_SVD8 TextCluster_SVD9
TextTopic_raw1 TextTopic_raw10 TextTopic_raw11 TextTopic_raw12 TextTopic_raw13
TextTopic_raw14 TextTopic_raw15 TextTopic_raw2 TextTopic_raw3 TextTopic_raw4
TextTopic_raw5 TextTopic_raw6 TextTopic_raw7 TextTopic_raw8 TextTopic_raw9
Total_Actions Type);
run;
*------------------------------------------------------------* ;
* Neural: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Type(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Character_Count Like_Count Retweet_Count TextCluster_SVD1 TextCluster_SVD10
   TextCluster_SVD11 TextCluster_SVD12 TextCluster_SVD13 TextCluster_SVD14
   TextCluster_SVD15 TextCluster_SVD16 TextCluster_SVD17 TextCluster_SVD18
   TextCluster_SVD19 TextCluster_SVD2 TextCluster_SVD20 TextCluster_SVD21
   TextCluster_SVD22 TextCluster_SVD23 TextCluster_SVD24 TextCluster_SVD25
   TextCluster_SVD26 TextCluster_SVD27 TextCluster_SVD28 TextCluster_SVD29
   TextCluster_SVD3 TextCluster_SVD30 TextCluster_SVD31 TextCluster_SVD32
   TextCluster_SVD33 TextCluster_SVD34 TextCluster_SVD35 TextCluster_SVD36
   TextCluster_SVD37 TextCluster_SVD38 TextCluster_SVD39 TextCluster_SVD4
   TextCluster_SVD40 TextCluster_SVD41 TextCluster_SVD42 TextCluster_SVD43
   TextCluster_SVD44 TextCluster_SVD45 TextCluster_SVD46 TextCluster_SVD47
   TextCluster_SVD48 TextCluster_SVD49 TextCluster_SVD5 TextCluster_SVD50
   TextCluster_SVD51 TextCluster_SVD52 TextCluster_SVD53 TextCluster_SVD54
   TextCluster_SVD6 TextCluster_SVD7 TextCluster_SVD8 TextCluster_SVD9
   TextTopic_raw1 TextTopic_raw10 TextTopic_raw11 TextTopic_raw12 TextTopic_raw13
   TextTopic_raw14 TextTopic_raw15 TextTopic_raw2 TextTopic_raw3 TextTopic_raw4
   TextTopic_raw5 TextTopic_raw6 TextTopic_raw7 TextTopic_raw8 TextTopic_raw9
   Total_Actions
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural
dmdbcat=WORK.Neural_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
Total_Actions
;
run;
quit;
*------------------------------------------------------------* ;
* Neural: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    Character_Count Like_Count Retweet_Count TextCluster_SVD1 TextCluster_SVD10
   TextCluster_SVD11 TextCluster_SVD12 TextCluster_SVD13 TextCluster_SVD14
   TextCluster_SVD15 TextCluster_SVD16 TextCluster_SVD17 TextCluster_SVD18
   TextCluster_SVD19 TextCluster_SVD2 TextCluster_SVD20 TextCluster_SVD21
   TextCluster_SVD22 TextCluster_SVD23 TextCluster_SVD24 TextCluster_SVD25
   TextCluster_SVD26 TextCluster_SVD27 TextCluster_SVD28 TextCluster_SVD29
   TextCluster_SVD3 TextCluster_SVD30 TextCluster_SVD31 TextCluster_SVD32
   TextCluster_SVD33 TextCluster_SVD34 TextCluster_SVD35 TextCluster_SVD36
   TextCluster_SVD37 TextCluster_SVD38 TextCluster_SVD39 TextCluster_SVD4
   TextCluster_SVD40 TextCluster_SVD41 TextCluster_SVD42 TextCluster_SVD43
   TextCluster_SVD44 TextCluster_SVD45 TextCluster_SVD46 TextCluster_SVD47
   TextCluster_SVD48 TextCluster_SVD49 TextCluster_SVD5 TextCluster_SVD50
   TextCluster_SVD51 TextCluster_SVD52 TextCluster_SVD53 TextCluster_SVD54
   TextCluster_SVD6 TextCluster_SVD7 TextCluster_SVD8 TextCluster_SVD9
   TextTopic_raw1 TextTopic_raw10 TextTopic_raw11 TextTopic_raw12 TextTopic_raw13
   TextTopic_raw14 TextTopic_raw15 TextTopic_raw2 TextTopic_raw3 TextTopic_raw4
   TextTopic_raw5 TextTopic_raw6 TextTopic_raw7 TextTopic_raw8 TextTopic_raw9
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;
    Type
%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural dmdbcat=WORK.Neural_DMDB
validdata = EMWS5.TextTopic_VALIDATE
random=12345
;
nloptions
;
performance alldetails noutilfile;
netopts
decay=0;
input %INTINPUTS / level=interval id=intvl
;
input %NOMINPUTS / level=nominal id=nom
;
target
Total_Actions
/ level=interval id=intervalTargets
bias
;
arch MLP
Hidden=3
;
Prelim 5 preiter=10
pretime=3600
Outest=EMWS5.Neural_PRELIM_OUTEST
;
save network=EMWS5.Neural_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS5.Neural_outest estiter=1
Outfit=EMWS5.Neural_OUTFIT
;
run;
quit;
proc sort data=EMWS5.Neural_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural;
by _VAVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS5.Neural_INITIAL;
set EMWS5.Neural_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural dmdbcat=WORK.Neural_DMDB
validdata = EMWS5.TextTopic_VALIDATE
network = EMWS5.Neural_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS5.Neural_INITIAL;
train tech=NONE;
code file="P:\DMBI_Project\Twitter_Insta_Content_Engineering\Workspaces\EMWS5\Neural\SCORECODE.sas"
group=Neural
;
;
code file="P:\DMBI_Project\Twitter_Insta_Content_Engineering\Workspaces\EMWS5\Neural\RESIDUALSCORECODE.sas"
group=Neural
residual
;
;
score data=EMWS5.TextTopic_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS5.Neural_OUTKEY;
score data=EMWS5.TextTopic_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
outkey=EMWS5.Neural_OUTKEY;
score data=EMWS5.TextTopic_TEST out=_NULL_
outfit=WORK.FIT3
role=TEST
outkey=EMWS5.Neural_OUTKEY;
run;
quit;
data EMWS5.Neural_OUTFIT;
merge WORK.FIT1 WORK.FIT2 WORK.FIT3;
run;
data EMWS5.Neural_EMESTIMATE;
set EMWS5.Neural_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural;
run;
quit;
