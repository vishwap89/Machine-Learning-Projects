***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4
;
      label S_Character_Count = 'Standard: Character_Count' ;

      label S_Like_Count = 'Standard: Like_Count' ;

      label S_Retweet_Count = 'Standard: Retweet_Count' ;

      label S_TextCluster_SVD1 = 'Standard: TextCluster_SVD1' ;

      label S_TextCluster_SVD10 = 'Standard: TextCluster_SVD10' ;

      label S_TextCluster_SVD11 = 'Standard: TextCluster_SVD11' ;

      label S_TextCluster_SVD12 = 'Standard: TextCluster_SVD12' ;

      label S_TextCluster_SVD13 = 'Standard: TextCluster_SVD13' ;

      label S_TextCluster_SVD14 = 'Standard: TextCluster_SVD14' ;

      label S_TextCluster_SVD15 = 'Standard: TextCluster_SVD15' ;

      label S_TextCluster_SVD16 = 'Standard: TextCluster_SVD16' ;

      label S_TextCluster_SVD17 = 'Standard: TextCluster_SVD17' ;

      label S_TextCluster_SVD18 = 'Standard: TextCluster_SVD18' ;

      label S_TextCluster_SVD19 = 'Standard: TextCluster_SVD19' ;

      label S_TextCluster_SVD2 = 'Standard: TextCluster_SVD2' ;

      label S_TextCluster_SVD20 = 'Standard: TextCluster_SVD20' ;

      label S_TextCluster_SVD21 = 'Standard: TextCluster_SVD21' ;

      label S_TextCluster_SVD22 = 'Standard: TextCluster_SVD22' ;

      label S_TextCluster_SVD23 = 'Standard: TextCluster_SVD23' ;

      label S_TextCluster_SVD24 = 'Standard: TextCluster_SVD24' ;

      label S_TextCluster_SVD25 = 'Standard: TextCluster_SVD25' ;

      label S_TextCluster_SVD26 = 'Standard: TextCluster_SVD26' ;

      label S_TextCluster_SVD27 = 'Standard: TextCluster_SVD27' ;

      label S_TextCluster_SVD28 = 'Standard: TextCluster_SVD28' ;

      label S_TextCluster_SVD29 = 'Standard: TextCluster_SVD29' ;

      label S_TextCluster_SVD3 = 'Standard: TextCluster_SVD3' ;

      label S_TextCluster_SVD30 = 'Standard: TextCluster_SVD30' ;

      label S_TextCluster_SVD31 = 'Standard: TextCluster_SVD31' ;

      label S_TextCluster_SVD32 = 'Standard: TextCluster_SVD32' ;

      label S_TextCluster_SVD33 = 'Standard: TextCluster_SVD33' ;

      label S_TextCluster_SVD34 = 'Standard: TextCluster_SVD34' ;

      label S_TextCluster_SVD35 = 'Standard: TextCluster_SVD35' ;

      label S_TextCluster_SVD36 = 'Standard: TextCluster_SVD36' ;

      label S_TextCluster_SVD37 = 'Standard: TextCluster_SVD37' ;

      label S_TextCluster_SVD38 = 'Standard: TextCluster_SVD38' ;

      label S_TextCluster_SVD39 = 'Standard: TextCluster_SVD39' ;

      label S_TextCluster_SVD4 = 'Standard: TextCluster_SVD4' ;

      label S_TextCluster_SVD40 = 'Standard: TextCluster_SVD40' ;

      label S_TextCluster_SVD41 = 'Standard: TextCluster_SVD41' ;

      label S_TextCluster_SVD42 = 'Standard: TextCluster_SVD42' ;

      label S_TextCluster_SVD43 = 'Standard: TextCluster_SVD43' ;

      label S_TextCluster_SVD44 = 'Standard: TextCluster_SVD44' ;

      label S_TextCluster_SVD45 = 'Standard: TextCluster_SVD45' ;

      label S_TextCluster_SVD46 = 'Standard: TextCluster_SVD46' ;

      label S_TextCluster_SVD47 = 'Standard: TextCluster_SVD47' ;

      label S_TextCluster_SVD48 = 'Standard: TextCluster_SVD48' ;

      label S_TextCluster_SVD49 = 'Standard: TextCluster_SVD49' ;

      label S_TextCluster_SVD5 = 'Standard: TextCluster_SVD5' ;

      label S_TextCluster_SVD50 = 'Standard: TextCluster_SVD50' ;

      label S_TextCluster_SVD51 = 'Standard: TextCluster_SVD51' ;

      label S_TextCluster_SVD52 = 'Standard: TextCluster_SVD52' ;

      label S_TextCluster_SVD53 = 'Standard: TextCluster_SVD53' ;

      label S_TextCluster_SVD54 = 'Standard: TextCluster_SVD54' ;

      label S_TextCluster_SVD6 = 'Standard: TextCluster_SVD6' ;

      label S_TextCluster_SVD7 = 'Standard: TextCluster_SVD7' ;

      label S_TextCluster_SVD8 = 'Standard: TextCluster_SVD8' ;

      label S_TextCluster_SVD9 = 'Standard: TextCluster_SVD9' ;

      label S_TextTopic_raw1 = 'Standard: TextTopic_raw1' ;

      label S_TextTopic_raw10 = 'Standard: TextTopic_raw10' ;

      label S_TextTopic_raw11 = 'Standard: TextTopic_raw11' ;

      label S_TextTopic_raw12 = 'Standard: TextTopic_raw12' ;

      label S_TextTopic_raw13 = 'Standard: TextTopic_raw13' ;

      label S_TextTopic_raw14 = 'Standard: TextTopic_raw14' ;

      label S_TextTopic_raw15 = 'Standard: TextTopic_raw15' ;

      label S_TextTopic_raw2 = 'Standard: TextTopic_raw2' ;

      label S_TextTopic_raw3 = 'Standard: TextTopic_raw3' ;

      label S_TextTopic_raw4 = 'Standard: TextTopic_raw4' ;

      label S_TextTopic_raw5 = 'Standard: TextTopic_raw5' ;

      label S_TextTopic_raw6 = 'Standard: TextTopic_raw6' ;

      label S_TextTopic_raw7 = 'Standard: TextTopic_raw7' ;

      label S_TextTopic_raw8 = 'Standard: TextTopic_raw8' ;

      label S_TextTopic_raw9 = 'Standard: TextTopic_raw9' ;

      label Typelink = 'Dummy: Type=link' ;

      label Typephoto = 'Dummy: Type=photo' ;

      label Typestatus = 'Dummy: Type=status' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label P_Total_Actions = 'Predicted: Total_Actions' ;

      label R_Total_Actions = 'Residual: Total_Actions' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for Type ;
drop Typelink Typephoto Typestatus ;
*** encoding is sparse, initialize to zero;
Typelink = 0;
Typephoto = 0;
Typestatus = 0;
if missing( Type ) then do;
   Typelink = .;
   Typephoto = .;
   Typestatus = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm6 $ 6; drop _dm6 ;
   _dm6 = put( Type , $6. );
   %DMNORMIP( _dm6 )
   if _dm6 = 'VIDEO'  then do;
      Typelink = -1;
      Typephoto = -1;
      Typestatus = -1;
   end;
   else if _dm6 = 'PHOTO'  then do;
      Typephoto = 1;
   end;
   else if _dm6 = 'LINK'  then do;
      Typelink = 1;
   end;
   else if _dm6 = 'STATUS'  then do;
      Typestatus = 1;
   end;
   else do;
      Typelink = .;
      Typephoto = .;
      Typestatus = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   Character_Count ,
   Like_Count ,
   Retweet_Count ,
   TextCluster_SVD1 ,
   TextCluster_SVD10 ,
   TextCluster_SVD11 ,
   TextCluster_SVD12 ,
   TextCluster_SVD13 ,
   TextCluster_SVD14 ,
   TextCluster_SVD15 ,
   TextCluster_SVD16 ,
   TextCluster_SVD17 ,
   TextCluster_SVD18 ,
   TextCluster_SVD19 ,
   TextCluster_SVD2 ,
   TextCluster_SVD20 ,
   TextCluster_SVD21 ,
   TextCluster_SVD22 ,
   TextCluster_SVD23 ,
   TextCluster_SVD24 ,
   TextCluster_SVD25 ,
   TextCluster_SVD26 ,
   TextCluster_SVD27 ,
   TextCluster_SVD28 ,
   TextCluster_SVD29 ,
   TextCluster_SVD3 ,
   TextCluster_SVD30 ,
   TextCluster_SVD31 ,
   TextCluster_SVD32 ,
   TextCluster_SVD33 ,
   TextCluster_SVD34 ,
   TextCluster_SVD35 ,
   TextCluster_SVD36 ,
   TextCluster_SVD37 ,
   TextCluster_SVD38 ,
   TextCluster_SVD39 ,
   TextCluster_SVD4 ,
   TextCluster_SVD40 ,
   TextCluster_SVD41 ,
   TextCluster_SVD42 ,
   TextCluster_SVD43 ,
   TextCluster_SVD44 ,
   TextCluster_SVD45 ,
   TextCluster_SVD46 ,
   TextCluster_SVD47 ,
   TextCluster_SVD48 ,
   TextCluster_SVD49 ,
   TextCluster_SVD5 ,
   TextCluster_SVD50 ,
   TextCluster_SVD51 ,
   TextCluster_SVD52 ,
   TextCluster_SVD53 ,
   TextCluster_SVD54 ,
   TextCluster_SVD6 ,
   TextCluster_SVD7 ,
   TextCluster_SVD8 ,
   TextCluster_SVD9 ,
   TextTopic_raw1 ,
   TextTopic_raw10 ,
   TextTopic_raw11 ,
   TextTopic_raw12 ,
   TextTopic_raw13 ,
   TextTopic_raw14 ,
   TextTopic_raw15 ,
   TextTopic_raw2 ,
   TextTopic_raw3 ,
   TextTopic_raw4 ,
   TextTopic_raw5 ,
   TextTopic_raw6 ,
   TextTopic_raw7 ,
   TextTopic_raw8 ,
   TextTopic_raw9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_Character_Count  =    -1.50772740105793 +     0.02202883001686 *
        Character_Count ;
   S_Like_Count  =    -0.81117037111359 +     0.00007192094186 * Like_Count ;
   S_Retweet_Count  =     -0.6704939809844 +     0.00030451217933 *
        Retweet_Count ;
   S_TextCluster_SVD1  =     -1.3856515320289 +     10.1608934581611 *
        TextCluster_SVD1 ;
   S_TextCluster_SVD10  =     0.12272881336929 +     7.77484415513011 *
        TextCluster_SVD10 ;
   S_TextCluster_SVD11  =    -0.40837430016405 +     6.99576865314473 *
        TextCluster_SVD11 ;
   S_TextCluster_SVD12  =    -0.04368763174079 +     7.13099602253336 *
        TextCluster_SVD12 ;
   S_TextCluster_SVD13  =    -0.07230742606142 +     8.25270770505862 *
        TextCluster_SVD13 ;
   S_TextCluster_SVD14  =     0.06663764213107 +     8.01257268738538 *
        TextCluster_SVD14 ;
   S_TextCluster_SVD15  =      -0.099314909136 +     7.60047041439492 *
        TextCluster_SVD15 ;
   S_TextCluster_SVD16  =     0.06954129279213 +     7.56455828418283 *
        TextCluster_SVD16 ;
   S_TextCluster_SVD17  =    -0.05602732592764 +     8.05553308172488 *
        TextCluster_SVD17 ;
   S_TextCluster_SVD18  =      -0.126929416854 +     8.02674791093576 *
        TextCluster_SVD18 ;
   S_TextCluster_SVD19  =    -0.09826028920012 +     8.06272103331879 *
        TextCluster_SVD19 ;
   S_TextCluster_SVD2  =     0.79145810684265 +     8.55580721649596 *
        TextCluster_SVD2 ;
   S_TextCluster_SVD20  =     0.16277640145089 +     7.57681446339076 *
        TextCluster_SVD20 ;
   S_TextCluster_SVD21  =    -0.21183112457176 +     7.43760480068948 *
        TextCluster_SVD21 ;
   S_TextCluster_SVD22  =     0.13841223081068 +      7.9126783169232 *
        TextCluster_SVD22 ;
   S_TextCluster_SVD23  =    -0.21411142170292 +     7.23436309177026 *
        TextCluster_SVD23 ;
   S_TextCluster_SVD24  =    -0.03690074530811 +      7.5485779788752 *
        TextCluster_SVD24 ;
   S_TextCluster_SVD25  =     0.05493787507541 +     7.88968966054691 *
        TextCluster_SVD25 ;
   S_TextCluster_SVD26  =     0.17323909686137 +     8.25856002311019 *
        TextCluster_SVD26 ;
   S_TextCluster_SVD27  =     0.02946967796265 +     7.71791432640898 *
        TextCluster_SVD27 ;
   S_TextCluster_SVD28  =     0.05299500706637 +     7.91784971925469 *
        TextCluster_SVD28 ;
   S_TextCluster_SVD29  =     0.14899712607603 +     7.78099804331307 *
        TextCluster_SVD29 ;
   S_TextCluster_SVD3  =     -0.4921403221675 +     14.7359896963493 *
        TextCluster_SVD3 ;
   S_TextCluster_SVD30  =      0.0455465665473 +      7.6765264491127 *
        TextCluster_SVD30 ;
   S_TextCluster_SVD31  =     0.02098658342811 +     7.44826291152429 *
        TextCluster_SVD31 ;
   S_TextCluster_SVD32  =     -0.0796508706445 +     7.72786405913352 *
        TextCluster_SVD32 ;
   S_TextCluster_SVD33  =     0.02472041795985 +     7.74516447606141 *
        TextCluster_SVD33 ;
   S_TextCluster_SVD34  =    -0.23154223934009 +     7.79812811579636 *
        TextCluster_SVD34 ;
   S_TextCluster_SVD35  =       0.072496371042 +     7.76989322241088 *
        TextCluster_SVD35 ;
   S_TextCluster_SVD36  =      0.0067402576455 +     7.76336822723478 *
        TextCluster_SVD36 ;
   S_TextCluster_SVD37  =     0.14737002441508 +      8.2564629548531 *
        TextCluster_SVD37 ;
   S_TextCluster_SVD38  =    -0.06957068481163 +     8.24274274424895 *
        TextCluster_SVD38 ;
   S_TextCluster_SVD39  =     0.03765317545513 +     7.54158953703754 *
        TextCluster_SVD39 ;
   S_TextCluster_SVD4  =    -0.03853972944426 +     7.87687534591825 *
        TextCluster_SVD4 ;
   S_TextCluster_SVD40  =    -0.11186980540835 +     7.64987492228556 *
        TextCluster_SVD40 ;
   S_TextCluster_SVD41  =     0.05039611653462 +     8.02519358678314 *
        TextCluster_SVD41 ;
   S_TextCluster_SVD42  =    -0.07366818601574 +     7.67181046717297 *
        TextCluster_SVD42 ;
   S_TextCluster_SVD43  =     -0.0721848249743 +     7.49425777533955 *
        TextCluster_SVD43 ;
   S_TextCluster_SVD44  =    -0.06343252950842 +     7.67344160082685 *
        TextCluster_SVD44 ;
   S_TextCluster_SVD45  =     0.02624354115835 +      7.2947378223497 *
        TextCluster_SVD45 ;
   S_TextCluster_SVD46  =     0.00332750929308 +      7.3788089179436 *
        TextCluster_SVD46 ;
   S_TextCluster_SVD47  =     -0.1230099661355 +     7.24147611337303 *
        TextCluster_SVD47 ;
   S_TextCluster_SVD48  =    -0.08566790243397 +     7.65285883585267 *
        TextCluster_SVD48 ;
   S_TextCluster_SVD49  =     0.08715384202758 +     7.61534749327375 *
        TextCluster_SVD49 ;
   S_TextCluster_SVD5  =    -0.23003829861088 +     6.83394507743529 *
        TextCluster_SVD5 ;
   S_TextCluster_SVD50  =    -0.08529885224136 +     7.49972334126481 *
        TextCluster_SVD50 ;
   S_TextCluster_SVD51  =    -0.04012753196484 +     7.04288750232012 *
        TextCluster_SVD51 ;
   S_TextCluster_SVD52  =    -0.01184870164032 +     7.38273326124007 *
        TextCluster_SVD52 ;
   S_TextCluster_SVD53  =     0.04382556972814 +     7.40255336232628 *
        TextCluster_SVD53 ;
   S_TextCluster_SVD54  =    -0.04359549611862 +     6.54917073515702 *
        TextCluster_SVD54 ;
   S_TextCluster_SVD6  =     0.06766437253241 +     7.19102036498905 *
        TextCluster_SVD6 ;
   S_TextCluster_SVD7  =     -0.0471971123433 +     7.27408997577317 *
        TextCluster_SVD7 ;
   S_TextCluster_SVD8  =    -0.05241745571046 +     8.27974070317003 *
        TextCluster_SVD8 ;
   S_TextCluster_SVD9  =     0.01750014713424 +      7.0927417175168 *
        TextCluster_SVD9 ;
   S_TextTopic_raw1  =    -0.29295441050733 +      16.230061116391 *
        TextTopic_raw1 ;
   S_TextTopic_raw10  =    -0.27559548633652 +     18.0115533390894 *
        TextTopic_raw10 ;
   S_TextTopic_raw11  =    -0.24484638853576 +     17.4032022245618 *
        TextTopic_raw11 ;
   S_TextTopic_raw12  =    -0.33949432565874 +     17.5035924620046 *
        TextTopic_raw12 ;
   S_TextTopic_raw13  =    -0.26369983635866 +     18.1392952494702 *
        TextTopic_raw13 ;
   S_TextTopic_raw14  =    -0.27114303604583 +     17.5321461959362 *
        TextTopic_raw14 ;
   S_TextTopic_raw15  =    -0.23653073790704 +     18.2771284970624 *
        TextTopic_raw15 ;
   S_TextTopic_raw2  =    -0.21666543166399 +     12.4830871683058 *
        TextTopic_raw2 ;
   S_TextTopic_raw3  =     -0.1901912897921 +     13.0707993545902 *
        TextTopic_raw3 ;
   S_TextTopic_raw4  =    -0.27016821182233 +     14.3181233185011 *
        TextTopic_raw4 ;
   S_TextTopic_raw5  =    -0.27494106062671 +     15.0534756793833 *
        TextTopic_raw5 ;
   S_TextTopic_raw6  =    -0.22173767247229 +      15.789006968345 *
        TextTopic_raw6 ;
   S_TextTopic_raw7  =    -0.28227928896921 +     17.1960383620075 *
        TextTopic_raw7 ;
   S_TextTopic_raw8  =    -0.22437896546723 +     16.0803631978059 *
        TextTopic_raw8 ;
   S_TextTopic_raw9  =    -0.23883297714915 +     16.6051419541605 *
        TextTopic_raw9 ;
END;
ELSE DO;
   IF MISSING( Character_Count ) THEN S_Character_Count  = . ;
   ELSE S_Character_Count  =    -1.50772740105793 +     0.02202883001686 *
        Character_Count ;
   IF MISSING( Like_Count ) THEN S_Like_Count  = . ;
   ELSE S_Like_Count  =    -0.81117037111359 +     0.00007192094186 *
        Like_Count ;
   IF MISSING( Retweet_Count ) THEN S_Retweet_Count  = . ;
   ELSE S_Retweet_Count  =     -0.6704939809844 +     0.00030451217933 *
        Retweet_Count ;
   IF MISSING( TextCluster_SVD1 ) THEN S_TextCluster_SVD1  = . ;
   ELSE S_TextCluster_SVD1  =     -1.3856515320289 +     10.1608934581611 *
        TextCluster_SVD1 ;
   IF MISSING( TextCluster_SVD10 ) THEN S_TextCluster_SVD10  = . ;
   ELSE S_TextCluster_SVD10  =     0.12272881336929 +     7.77484415513011 *
        TextCluster_SVD10 ;
   IF MISSING( TextCluster_SVD11 ) THEN S_TextCluster_SVD11  = . ;
   ELSE S_TextCluster_SVD11  =    -0.40837430016405 +     6.99576865314473 *
        TextCluster_SVD11 ;
   IF MISSING( TextCluster_SVD12 ) THEN S_TextCluster_SVD12  = . ;
   ELSE S_TextCluster_SVD12  =    -0.04368763174079 +     7.13099602253336 *
        TextCluster_SVD12 ;
   IF MISSING( TextCluster_SVD13 ) THEN S_TextCluster_SVD13  = . ;
   ELSE S_TextCluster_SVD13  =    -0.07230742606142 +     8.25270770505862 *
        TextCluster_SVD13 ;
   IF MISSING( TextCluster_SVD14 ) THEN S_TextCluster_SVD14  = . ;
   ELSE S_TextCluster_SVD14  =     0.06663764213107 +     8.01257268738538 *
        TextCluster_SVD14 ;
   IF MISSING( TextCluster_SVD15 ) THEN S_TextCluster_SVD15  = . ;
   ELSE S_TextCluster_SVD15  =      -0.099314909136 +     7.60047041439492 *
        TextCluster_SVD15 ;
   IF MISSING( TextCluster_SVD16 ) THEN S_TextCluster_SVD16  = . ;
   ELSE S_TextCluster_SVD16  =     0.06954129279213 +     7.56455828418283 *
        TextCluster_SVD16 ;
   IF MISSING( TextCluster_SVD17 ) THEN S_TextCluster_SVD17  = . ;
   ELSE S_TextCluster_SVD17  =    -0.05602732592764 +     8.05553308172488 *
        TextCluster_SVD17 ;
   IF MISSING( TextCluster_SVD18 ) THEN S_TextCluster_SVD18  = . ;
   ELSE S_TextCluster_SVD18  =      -0.126929416854 +     8.02674791093576 *
        TextCluster_SVD18 ;
   IF MISSING( TextCluster_SVD19 ) THEN S_TextCluster_SVD19  = . ;
   ELSE S_TextCluster_SVD19  =    -0.09826028920012 +     8.06272103331879 *
        TextCluster_SVD19 ;
   IF MISSING( TextCluster_SVD2 ) THEN S_TextCluster_SVD2  = . ;
   ELSE S_TextCluster_SVD2  =     0.79145810684265 +     8.55580721649596 *
        TextCluster_SVD2 ;
   IF MISSING( TextCluster_SVD20 ) THEN S_TextCluster_SVD20  = . ;
   ELSE S_TextCluster_SVD20  =     0.16277640145089 +     7.57681446339076 *
        TextCluster_SVD20 ;
   IF MISSING( TextCluster_SVD21 ) THEN S_TextCluster_SVD21  = . ;
   ELSE S_TextCluster_SVD21  =    -0.21183112457176 +     7.43760480068948 *
        TextCluster_SVD21 ;
   IF MISSING( TextCluster_SVD22 ) THEN S_TextCluster_SVD22  = . ;
   ELSE S_TextCluster_SVD22  =     0.13841223081068 +      7.9126783169232 *
        TextCluster_SVD22 ;
   IF MISSING( TextCluster_SVD23 ) THEN S_TextCluster_SVD23  = . ;
   ELSE S_TextCluster_SVD23  =    -0.21411142170292 +     7.23436309177026 *
        TextCluster_SVD23 ;
   IF MISSING( TextCluster_SVD24 ) THEN S_TextCluster_SVD24  = . ;
   ELSE S_TextCluster_SVD24  =    -0.03690074530811 +      7.5485779788752 *
        TextCluster_SVD24 ;
   IF MISSING( TextCluster_SVD25 ) THEN S_TextCluster_SVD25  = . ;
   ELSE S_TextCluster_SVD25  =     0.05493787507541 +     7.88968966054691 *
        TextCluster_SVD25 ;
   IF MISSING( TextCluster_SVD26 ) THEN S_TextCluster_SVD26  = . ;
   ELSE S_TextCluster_SVD26  =     0.17323909686137 +     8.25856002311019 *
        TextCluster_SVD26 ;
   IF MISSING( TextCluster_SVD27 ) THEN S_TextCluster_SVD27  = . ;
   ELSE S_TextCluster_SVD27  =     0.02946967796265 +     7.71791432640898 *
        TextCluster_SVD27 ;
   IF MISSING( TextCluster_SVD28 ) THEN S_TextCluster_SVD28  = . ;
   ELSE S_TextCluster_SVD28  =     0.05299500706637 +     7.91784971925469 *
        TextCluster_SVD28 ;
   IF MISSING( TextCluster_SVD29 ) THEN S_TextCluster_SVD29  = . ;
   ELSE S_TextCluster_SVD29  =     0.14899712607603 +     7.78099804331307 *
        TextCluster_SVD29 ;
   IF MISSING( TextCluster_SVD3 ) THEN S_TextCluster_SVD3  = . ;
   ELSE S_TextCluster_SVD3  =     -0.4921403221675 +     14.7359896963493 *
        TextCluster_SVD3 ;
   IF MISSING( TextCluster_SVD30 ) THEN S_TextCluster_SVD30  = . ;
   ELSE S_TextCluster_SVD30  =      0.0455465665473 +      7.6765264491127 *
        TextCluster_SVD30 ;
   IF MISSING( TextCluster_SVD31 ) THEN S_TextCluster_SVD31  = . ;
   ELSE S_TextCluster_SVD31  =     0.02098658342811 +     7.44826291152429 *
        TextCluster_SVD31 ;
   IF MISSING( TextCluster_SVD32 ) THEN S_TextCluster_SVD32  = . ;
   ELSE S_TextCluster_SVD32  =     -0.0796508706445 +     7.72786405913352 *
        TextCluster_SVD32 ;
   IF MISSING( TextCluster_SVD33 ) THEN S_TextCluster_SVD33  = . ;
   ELSE S_TextCluster_SVD33  =     0.02472041795985 +     7.74516447606141 *
        TextCluster_SVD33 ;
   IF MISSING( TextCluster_SVD34 ) THEN S_TextCluster_SVD34  = . ;
   ELSE S_TextCluster_SVD34  =    -0.23154223934009 +     7.79812811579636 *
        TextCluster_SVD34 ;
   IF MISSING( TextCluster_SVD35 ) THEN S_TextCluster_SVD35  = . ;
   ELSE S_TextCluster_SVD35  =       0.072496371042 +     7.76989322241088 *
        TextCluster_SVD35 ;
   IF MISSING( TextCluster_SVD36 ) THEN S_TextCluster_SVD36  = . ;
   ELSE S_TextCluster_SVD36  =      0.0067402576455 +     7.76336822723478 *
        TextCluster_SVD36 ;
   IF MISSING( TextCluster_SVD37 ) THEN S_TextCluster_SVD37  = . ;
   ELSE S_TextCluster_SVD37  =     0.14737002441508 +      8.2564629548531 *
        TextCluster_SVD37 ;
   IF MISSING( TextCluster_SVD38 ) THEN S_TextCluster_SVD38  = . ;
   ELSE S_TextCluster_SVD38  =    -0.06957068481163 +     8.24274274424895 *
        TextCluster_SVD38 ;
   IF MISSING( TextCluster_SVD39 ) THEN S_TextCluster_SVD39  = . ;
   ELSE S_TextCluster_SVD39  =     0.03765317545513 +     7.54158953703754 *
        TextCluster_SVD39 ;
   IF MISSING( TextCluster_SVD4 ) THEN S_TextCluster_SVD4  = . ;
   ELSE S_TextCluster_SVD4  =    -0.03853972944426 +     7.87687534591825 *
        TextCluster_SVD4 ;
   IF MISSING( TextCluster_SVD40 ) THEN S_TextCluster_SVD40  = . ;
   ELSE S_TextCluster_SVD40  =    -0.11186980540835 +     7.64987492228556 *
        TextCluster_SVD40 ;
   IF MISSING( TextCluster_SVD41 ) THEN S_TextCluster_SVD41  = . ;
   ELSE S_TextCluster_SVD41  =     0.05039611653462 +     8.02519358678314 *
        TextCluster_SVD41 ;
   IF MISSING( TextCluster_SVD42 ) THEN S_TextCluster_SVD42  = . ;
   ELSE S_TextCluster_SVD42  =    -0.07366818601574 +     7.67181046717297 *
        TextCluster_SVD42 ;
   IF MISSING( TextCluster_SVD43 ) THEN S_TextCluster_SVD43  = . ;
   ELSE S_TextCluster_SVD43  =     -0.0721848249743 +     7.49425777533955 *
        TextCluster_SVD43 ;
   IF MISSING( TextCluster_SVD44 ) THEN S_TextCluster_SVD44  = . ;
   ELSE S_TextCluster_SVD44  =    -0.06343252950842 +     7.67344160082685 *
        TextCluster_SVD44 ;
   IF MISSING( TextCluster_SVD45 ) THEN S_TextCluster_SVD45  = . ;
   ELSE S_TextCluster_SVD45  =     0.02624354115835 +      7.2947378223497 *
        TextCluster_SVD45 ;
   IF MISSING( TextCluster_SVD46 ) THEN S_TextCluster_SVD46  = . ;
   ELSE S_TextCluster_SVD46  =     0.00332750929308 +      7.3788089179436 *
        TextCluster_SVD46 ;
   IF MISSING( TextCluster_SVD47 ) THEN S_TextCluster_SVD47  = . ;
   ELSE S_TextCluster_SVD47  =     -0.1230099661355 +     7.24147611337303 *
        TextCluster_SVD47 ;
   IF MISSING( TextCluster_SVD48 ) THEN S_TextCluster_SVD48  = . ;
   ELSE S_TextCluster_SVD48  =    -0.08566790243397 +     7.65285883585267 *
        TextCluster_SVD48 ;
   IF MISSING( TextCluster_SVD49 ) THEN S_TextCluster_SVD49  = . ;
   ELSE S_TextCluster_SVD49  =     0.08715384202758 +     7.61534749327375 *
        TextCluster_SVD49 ;
   IF MISSING( TextCluster_SVD5 ) THEN S_TextCluster_SVD5  = . ;
   ELSE S_TextCluster_SVD5  =    -0.23003829861088 +     6.83394507743529 *
        TextCluster_SVD5 ;
   IF MISSING( TextCluster_SVD50 ) THEN S_TextCluster_SVD50  = . ;
   ELSE S_TextCluster_SVD50  =    -0.08529885224136 +     7.49972334126481 *
        TextCluster_SVD50 ;
   IF MISSING( TextCluster_SVD51 ) THEN S_TextCluster_SVD51  = . ;
   ELSE S_TextCluster_SVD51  =    -0.04012753196484 +     7.04288750232012 *
        TextCluster_SVD51 ;
   IF MISSING( TextCluster_SVD52 ) THEN S_TextCluster_SVD52  = . ;
   ELSE S_TextCluster_SVD52  =    -0.01184870164032 +     7.38273326124007 *
        TextCluster_SVD52 ;
   IF MISSING( TextCluster_SVD53 ) THEN S_TextCluster_SVD53  = . ;
   ELSE S_TextCluster_SVD53  =     0.04382556972814 +     7.40255336232628 *
        TextCluster_SVD53 ;
   IF MISSING( TextCluster_SVD54 ) THEN S_TextCluster_SVD54  = . ;
   ELSE S_TextCluster_SVD54  =    -0.04359549611862 +     6.54917073515702 *
        TextCluster_SVD54 ;
   IF MISSING( TextCluster_SVD6 ) THEN S_TextCluster_SVD6  = . ;
   ELSE S_TextCluster_SVD6  =     0.06766437253241 +     7.19102036498905 *
        TextCluster_SVD6 ;
   IF MISSING( TextCluster_SVD7 ) THEN S_TextCluster_SVD7  = . ;
   ELSE S_TextCluster_SVD7  =     -0.0471971123433 +     7.27408997577317 *
        TextCluster_SVD7 ;
   IF MISSING( TextCluster_SVD8 ) THEN S_TextCluster_SVD8  = . ;
   ELSE S_TextCluster_SVD8  =    -0.05241745571046 +     8.27974070317003 *
        TextCluster_SVD8 ;
   IF MISSING( TextCluster_SVD9 ) THEN S_TextCluster_SVD9  = . ;
   ELSE S_TextCluster_SVD9  =     0.01750014713424 +      7.0927417175168 *
        TextCluster_SVD9 ;
   IF MISSING( TextTopic_raw1 ) THEN S_TextTopic_raw1  = . ;
   ELSE S_TextTopic_raw1  =    -0.29295441050733 +      16.230061116391 *
        TextTopic_raw1 ;
   IF MISSING( TextTopic_raw10 ) THEN S_TextTopic_raw10  = . ;
   ELSE S_TextTopic_raw10  =    -0.27559548633652 +     18.0115533390894 *
        TextTopic_raw10 ;
   IF MISSING( TextTopic_raw11 ) THEN S_TextTopic_raw11  = . ;
   ELSE S_TextTopic_raw11  =    -0.24484638853576 +     17.4032022245618 *
        TextTopic_raw11 ;
   IF MISSING( TextTopic_raw12 ) THEN S_TextTopic_raw12  = . ;
   ELSE S_TextTopic_raw12  =    -0.33949432565874 +     17.5035924620046 *
        TextTopic_raw12 ;
   IF MISSING( TextTopic_raw13 ) THEN S_TextTopic_raw13  = . ;
   ELSE S_TextTopic_raw13  =    -0.26369983635866 +     18.1392952494702 *
        TextTopic_raw13 ;
   IF MISSING( TextTopic_raw14 ) THEN S_TextTopic_raw14  = . ;
   ELSE S_TextTopic_raw14  =    -0.27114303604583 +     17.5321461959362 *
        TextTopic_raw14 ;
   IF MISSING( TextTopic_raw15 ) THEN S_TextTopic_raw15  = . ;
   ELSE S_TextTopic_raw15  =    -0.23653073790704 +     18.2771284970624 *
        TextTopic_raw15 ;
   IF MISSING( TextTopic_raw2 ) THEN S_TextTopic_raw2  = . ;
   ELSE S_TextTopic_raw2  =    -0.21666543166399 +     12.4830871683058 *
        TextTopic_raw2 ;
   IF MISSING( TextTopic_raw3 ) THEN S_TextTopic_raw3  = . ;
   ELSE S_TextTopic_raw3  =     -0.1901912897921 +     13.0707993545902 *
        TextTopic_raw3 ;
   IF MISSING( TextTopic_raw4 ) THEN S_TextTopic_raw4  = . ;
   ELSE S_TextTopic_raw4  =    -0.27016821182233 +     14.3181233185011 *
        TextTopic_raw4 ;
   IF MISSING( TextTopic_raw5 ) THEN S_TextTopic_raw5  = . ;
   ELSE S_TextTopic_raw5  =    -0.27494106062671 +     15.0534756793833 *
        TextTopic_raw5 ;
   IF MISSING( TextTopic_raw6 ) THEN S_TextTopic_raw6  = . ;
   ELSE S_TextTopic_raw6  =    -0.22173767247229 +      15.789006968345 *
        TextTopic_raw6 ;
   IF MISSING( TextTopic_raw7 ) THEN S_TextTopic_raw7  = . ;
   ELSE S_TextTopic_raw7  =    -0.28227928896921 +     17.1960383620075 *
        TextTopic_raw7 ;
   IF MISSING( TextTopic_raw8 ) THEN S_TextTopic_raw8  = . ;
   ELSE S_TextTopic_raw8  =    -0.22437896546723 +     16.0803631978059 *
        TextTopic_raw8 ;
   IF MISSING( TextTopic_raw9 ) THEN S_TextTopic_raw9  = . ;
   ELSE S_TextTopic_raw9  =    -0.23883297714915 +     16.6051419541605 *
        TextTopic_raw9 ;
END;
*** *************************;
*** Writing the Node nom ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.03222645453793 * S_Character_Count  +    -0.58213805225284 *
        S_Like_Count  +    -0.26002535780205 * S_Retweet_Count
          +     0.02242703553857 * S_TextCluster_SVD1
          +    -0.06694112891821 * S_TextCluster_SVD10
          +     0.10694489260515 * S_TextCluster_SVD11
          +     0.01684487234694 * S_TextCluster_SVD12
          +     0.02220346090388 * S_TextCluster_SVD13
          +     0.11171042789963 * S_TextCluster_SVD14
          +    -0.01291240440016 * S_TextCluster_SVD15
          +     0.05184757798302 * S_TextCluster_SVD16
          +     0.05893540622504 * S_TextCluster_SVD17
          +     0.00090925825922 * S_TextCluster_SVD18
          +     0.07130199446249 * S_TextCluster_SVD19
          +     -0.1437291965137 * S_TextCluster_SVD2
          +     0.01554179742328 * S_TextCluster_SVD20
          +    -0.01266455014655 * S_TextCluster_SVD21
          +    -0.05420846952101 * S_TextCluster_SVD22
          +     0.01913917829069 * S_TextCluster_SVD23
          +    -0.01983515693161 * S_TextCluster_SVD24
          +    -0.06116949525044 * S_TextCluster_SVD25
          +    -0.04522919056129 * S_TextCluster_SVD26
          +    -0.00891564883589 * S_TextCluster_SVD27
          +    -0.02142627271025 * S_TextCluster_SVD28
          +     0.03527743410881 * S_TextCluster_SVD29
          +    -0.03095203790308 * S_TextCluster_SVD3
          +    -0.04484201837834 * S_TextCluster_SVD30
          +     0.02588659935609 * S_TextCluster_SVD31
          +    -0.01901898125985 * S_TextCluster_SVD32
          +     0.03282654804576 * S_TextCluster_SVD33
          +     0.02177369087358 * S_TextCluster_SVD34
          +      0.0145511580068 * S_TextCluster_SVD35
          +    -0.03422790841399 * S_TextCluster_SVD36
          +     0.00477362825338 * S_TextCluster_SVD37
          +      0.0317731909132 * S_TextCluster_SVD38
          +    -0.04635011951515 * S_TextCluster_SVD39
          +    -0.01842994945151 * S_TextCluster_SVD4
          +    -0.04289133592322 * S_TextCluster_SVD40
          +      0.0001165313191 * S_TextCluster_SVD41
          +    -0.00203945767685 * S_TextCluster_SVD42
          +    -0.02328248513595 * S_TextCluster_SVD43
          +     0.01712717408962 * S_TextCluster_SVD44
          +    -0.05015548415715 * S_TextCluster_SVD45
          +    -0.01084196445319 * S_TextCluster_SVD46
          +     0.01984960300035 * S_TextCluster_SVD47
          +    -0.01187505615308 * S_TextCluster_SVD48
          +    -0.05732975636733 * S_TextCluster_SVD49
          +    -0.07516975999137 * S_TextCluster_SVD5
          +    -0.01804404201093 * S_TextCluster_SVD50
          +     0.05174020493232 * S_TextCluster_SVD51
          +      0.0000487503173 * S_TextCluster_SVD52
          +    -0.04100086742661 * S_TextCluster_SVD53
          +     0.04004121588652 * S_TextCluster_SVD54
          +     0.01308469059604 * S_TextCluster_SVD6
          +    -0.02154076593079 * S_TextCluster_SVD7
          +     0.04543282160511 * S_TextCluster_SVD8
          +    -0.05844042251848 * S_TextCluster_SVD9
          +     -0.0190554116327 * S_TextTopic_raw1  +    -0.00311750381882 *
        S_TextTopic_raw10  +    -0.65399543725161 * S_TextTopic_raw11
          +     0.05133499293473 * S_TextTopic_raw12
          +    -0.02626152598361 * S_TextTopic_raw13
          +    -0.00299266737491 * S_TextTopic_raw14
          +    -0.00669159845251 * S_TextTopic_raw15
          +     0.01949488973479 * S_TextTopic_raw2  +     0.02392803471558 *
        S_TextTopic_raw3  +    -0.15128515451453 * S_TextTopic_raw4
          +    -0.03802196648861 * S_TextTopic_raw5  +     0.07059122117079 *
        S_TextTopic_raw6  +    -0.10349074629333 * S_TextTopic_raw7
          +    -0.01138795360848 * S_TextTopic_raw8  +     0.02951577564394 *
        S_TextTopic_raw9 ;
   H12  =     0.02811334895897 * S_Character_Count  +     -1.2991259582303 *
        S_Like_Count  +     1.31802041556103 * S_Retweet_Count
          +     1.07082216936676 * S_TextCluster_SVD1
          +      0.6347426172918 * S_TextCluster_SVD10
          +     1.60422690595609 * S_TextCluster_SVD11
          +     0.91356727861707 * S_TextCluster_SVD12
          +    -0.25781620359622 * S_TextCluster_SVD13
          +      -0.041559000047 * S_TextCluster_SVD14
          +     0.52611389836693 * S_TextCluster_SVD15
          +    -0.77475755580992 * S_TextCluster_SVD16
          +     0.87558246733923 * S_TextCluster_SVD17
          +     0.10461135155598 * S_TextCluster_SVD18
          +     0.11220607666983 * S_TextCluster_SVD19
          +      -0.215984022793 * S_TextCluster_SVD2
          +     0.07442762840555 * S_TextCluster_SVD20
          +    -0.25056698839608 * S_TextCluster_SVD21
          +     0.17974804432372 * S_TextCluster_SVD22
          +    -0.44660242018288 * S_TextCluster_SVD23
          +     0.39392556388973 * S_TextCluster_SVD24
          +     -0.1904480151173 * S_TextCluster_SVD25
          +    -0.07225114416138 * S_TextCluster_SVD26
          +     0.10075733041688 * S_TextCluster_SVD27
          +    -0.22250521709497 * S_TextCluster_SVD28
          +     -0.1693221853061 * S_TextCluster_SVD29
          +     0.35080649355393 * S_TextCluster_SVD3
          +    -0.35430435400487 * S_TextCluster_SVD30
          +      0.2432286656648 * S_TextCluster_SVD31
          +     0.75999286160993 * S_TextCluster_SVD32
          +    -0.17960046809313 * S_TextCluster_SVD33
          +    -0.38656790104009 * S_TextCluster_SVD34
          +    -0.19525390523932 * S_TextCluster_SVD35
          +    -0.23690523236706 * S_TextCluster_SVD36
          +    -0.37759328776515 * S_TextCluster_SVD37
          +    -0.18384353355777 * S_TextCluster_SVD38
          +     0.66121373322674 * S_TextCluster_SVD39
          +     0.03107768145869 * S_TextCluster_SVD4
          +    -0.66318813334946 * S_TextCluster_SVD40
          +     -0.0618071013373 * S_TextCluster_SVD41
          +     0.02019225459289 * S_TextCluster_SVD42
          +     0.14879731884991 * S_TextCluster_SVD43
          +    -0.33758916528191 * S_TextCluster_SVD44
          +     0.33316137265961 * S_TextCluster_SVD45
          +     0.15347448288517 * S_TextCluster_SVD46
          +     0.48762148692039 * S_TextCluster_SVD47
          +     0.46435644052538 * S_TextCluster_SVD48
          +    -0.11764704717366 * S_TextCluster_SVD49
          +    -0.04195889377186 * S_TextCluster_SVD5
          +    -0.37357349475801 * S_TextCluster_SVD50
          +    -0.31352024521853 * S_TextCluster_SVD51
          +     0.31885031751627 * S_TextCluster_SVD52
          +    -0.11420910165101 * S_TextCluster_SVD53
          +     0.44032293429184 * S_TextCluster_SVD54
          +    -0.39825907742176 * S_TextCluster_SVD6
          +     0.29530254801855 * S_TextCluster_SVD7
          +    -0.37744429306175 * S_TextCluster_SVD8
          +     0.40653068032187 * S_TextCluster_SVD9
          +     0.04751038561684 * S_TextTopic_raw1  +     0.94234474849757 *
        S_TextTopic_raw10  +    -0.33004813700402 * S_TextTopic_raw11
          +    -0.48049553867731 * S_TextTopic_raw12
          +    -0.15615853564187 * S_TextTopic_raw13
          +    -0.44933159706236 * S_TextTopic_raw14
          +     -0.3634590994188 * S_TextTopic_raw15
          +     2.55681088386932 * S_TextTopic_raw2  +     0.53149989182367 *
        S_TextTopic_raw3  +      0.8575223682849 * S_TextTopic_raw4
          +    -0.12994302587896 * S_TextTopic_raw5  +     0.19867092564463 *
        S_TextTopic_raw6  +     -0.1654217621212 * S_TextTopic_raw7
          +      0.3696196186116 * S_TextTopic_raw8  +    -0.20027381341239 *
        S_TextTopic_raw9 ;
   H13  =     0.02060584331771 * S_Character_Count  +     0.80778320751162 *
        S_Like_Count  +     0.02918302641438 * S_Retweet_Count
          +    -0.01986724065987 * S_TextCluster_SVD1
          +    -0.03860564725935 * S_TextCluster_SVD10
          +    -0.04367569840462 * S_TextCluster_SVD11
          +     0.00543953881094 * S_TextCluster_SVD12
          +    -0.06198545769896 * S_TextCluster_SVD13
          +     0.01426027767031 * S_TextCluster_SVD14
          +     0.00505675563454 * S_TextCluster_SVD15
          +     0.01465851391976 * S_TextCluster_SVD16
          +    -0.05552672199949 * S_TextCluster_SVD17
          +    -0.02305084398092 * S_TextCluster_SVD18
          +    -0.02112120718178 * S_TextCluster_SVD19
          +    -0.17563429008304 * S_TextCluster_SVD2
          +     -0.0123777718423 * S_TextCluster_SVD20
          +    -0.03536187904184 * S_TextCluster_SVD21
          +    -0.02868647302697 * S_TextCluster_SVD22
          +    -0.05223706527722 * S_TextCluster_SVD23
          +     0.04476012913954 * S_TextCluster_SVD24
          +    -0.01888699908363 * S_TextCluster_SVD25
          +    -0.05191435755083 * S_TextCluster_SVD26
          +    -0.01995732267446 * S_TextCluster_SVD27
          +     0.01404578414518 * S_TextCluster_SVD28
          +     0.02528677756366 * S_TextCluster_SVD29
          +     -0.0264081340055 * S_TextCluster_SVD3
          +    -0.00037943499383 * S_TextCluster_SVD30
          +      0.0058574007028 * S_TextCluster_SVD31
          +    -0.03275862130839 * S_TextCluster_SVD32
          +     -0.0011979288557 * S_TextCluster_SVD33
          +    -0.03453940875215 * S_TextCluster_SVD34
          +     -0.0314759141971 * S_TextCluster_SVD35
          +    -0.02008592167271 * S_TextCluster_SVD36
          +     0.08857732700069 * S_TextCluster_SVD37
          +    -0.00455756560115 * S_TextCluster_SVD38
          +    -0.05721177068739 * S_TextCluster_SVD39
          +     0.08526612898618 * S_TextCluster_SVD4
          +      0.0247115728842 * S_TextCluster_SVD40
          +     0.02722357079508 * S_TextCluster_SVD41
          +    -0.05755053263286 * S_TextCluster_SVD42
          +    -0.03226865220562 * S_TextCluster_SVD43
          +     0.02898344754562 * S_TextCluster_SVD44
          +    -0.05629294054883 * S_TextCluster_SVD45
          +     0.03156431877349 * S_TextCluster_SVD46
          +     0.02345102512589 * S_TextCluster_SVD47
          +    -0.01756069903485 * S_TextCluster_SVD48
          +    -0.01352180509717 * S_TextCluster_SVD49
          +    -0.15713753193881 * S_TextCluster_SVD5
          +     0.01428063866195 * S_TextCluster_SVD50
          +     0.03370757261769 * S_TextCluster_SVD51
          +    -0.03777004176041 * S_TextCluster_SVD52
          +    -0.02124097981824 * S_TextCluster_SVD53
          +     0.06386526887802 * S_TextCluster_SVD54
          +     -0.0912969481781 * S_TextCluster_SVD6
          +    -0.00118988927819 * S_TextCluster_SVD7
          +     0.08240345363471 * S_TextCluster_SVD8
          +     0.01584531378803 * S_TextCluster_SVD9
          +     0.04407124512843 * S_TextTopic_raw1  +     0.01690674371845 *
        S_TextTopic_raw10  +    -0.03245423453888 * S_TextTopic_raw11
          +    -0.07312200716554 * S_TextTopic_raw12
          +     0.08776828691735 * S_TextTopic_raw13
          +     0.07492316075581 * S_TextTopic_raw14
          +    -0.02987665475641 * S_TextTopic_raw15
          +     0.06887688660806 * S_TextTopic_raw2  +     0.04387759262903 *
        S_TextTopic_raw3  +    -1.09471622659302 * S_TextTopic_raw4
          +    -0.07816524821908 * S_TextTopic_raw5  +    -0.13819994576029 *
        S_TextTopic_raw6  +    -0.12731303463985 * S_TextTopic_raw7
          +    -0.02731681144955 * S_TextTopic_raw8  +     0.04299624270787 *
        S_TextTopic_raw9 ;
   H11  = H11  +     -0.6485831686374 * Typelink  +     0.35707795211917 *
        Typephoto  +     0.05225840613969 * Typestatus ;
   H12  = H12  +    -0.93146849530519 * Typelink  +     2.65553690716087 *
        Typephoto  +    -1.36308119062214 * Typestatus ;
   H13  = H13  +    -0.16339884422069 * Typelink  +    -0.08165497772905 *
        Typephoto  +     0.30397568337332 * Typestatus ;
   H11  =    -1.50890527091856 + H11 ;
   H12  =     5.60921698690496 + H12 ;
   H13  =    -1.24697563537057 + H13 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
END;
*** *************************;
*** Writing the Node intervalTargets ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   P_Total_Actions  =    -12774.2462559188 * H11  +     10658.8789210877 * H12
          +     29960.3735752219 * H13 ;
   P_Total_Actions  =     13480.5085035963 + P_Total_Actions ;
END;
ELSE DO;
   P_Total_Actions  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_Total_Actions  =     13480.5020423319;
END;
*** *****************************;
*** Writing the Residuals  of the Node intervalTargets ;
*** ******************************;
IF MISSING( Total_Actions ) THEN R_Total_Actions  = . ;
ELSE R_Total_Actions  = Total_Actions  - P_Total_Actions ;
********************************;
*** End Scoring Code for Neural;
********************************;
drop
H11
H12
H13
;
drop S_:;
