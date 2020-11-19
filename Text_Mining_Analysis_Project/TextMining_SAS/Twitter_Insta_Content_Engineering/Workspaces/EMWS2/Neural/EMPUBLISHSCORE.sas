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

      label S_Comments_Count = 'Standard: Comments_Count' ;

      label S_Likes_Count = 'Standard: Likes_Count' ;

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

      label S_TextCluster_SVD55 = 'Standard: TextCluster_SVD55' ;

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

      label Includes_HashtagFALSE = 'Dummy: Includes_Hashtag=FALSE' ;

      label Media_Typecarousel = 'Dummy: Media_Type=carousel' ;

      label Media_Typeimage = 'Dummy: Media_Type=image' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label P_Total_Actions = 'Predicted: Total_Actions' ;

      label  _WARN_ = "Warnings";

*** Generate dummy variables for Includes_Hashtag ;
drop Includes_HashtagFALSE ;
if missing( Includes_Hashtag ) then do;
   Includes_HashtagFALSE = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm5 $ 5; drop _dm5 ;
   %DMNORMCP( Includes_Hashtag , _dm5 )
   if _dm5 = 'FALSE'  then do;
      Includes_HashtagFALSE = 1;
   end;
   else if _dm5 = 'TRUE'  then do;
      Includes_HashtagFALSE = -1;
   end;
   else do;
      Includes_HashtagFALSE = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for Media_Type ;
drop Media_Typecarousel Media_Typeimage ;
if missing( Media_Type ) then do;
   Media_Typecarousel = .;
   Media_Typeimage = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm8 $ 8; drop _dm8 ;
   %DMNORMCP( Media_Type , _dm8 )
   if _dm8 = 'VIDEO'  then do;
      Media_Typecarousel = -1;
      Media_Typeimage = -1;
   end;
   else if _dm8 = 'IMAGE'  then do;
      Media_Typecarousel = 0;
      Media_Typeimage = 1;
   end;
   else if _dm8 = 'CAROUSEL'  then do;
      Media_Typecarousel = 1;
      Media_Typeimage = 0;
   end;
   else do;
      Media_Typecarousel = .;
      Media_Typeimage = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   Character_Count ,
   Comments_Count ,
   Likes_Count ,
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
   TextCluster_SVD55 ,
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
   S_Character_Count  =    -1.50960855615214 +     0.02002926279902 *
        Character_Count ;
   S_Comments_Count  =      -0.801894075695 +     0.00026052278066 *
        Comments_Count ;
   S_Likes_Count  =     -1.7029231585012 +   5.7520380075828E-6 * Likes_Count
         ;
   S_TextCluster_SVD1  =    -1.81945217604807 +     10.2717264157232 *
        TextCluster_SVD1 ;
   S_TextCluster_SVD10  =     0.14547099810386 +     7.92996022015363 *
        TextCluster_SVD10 ;
   S_TextCluster_SVD11  =     0.02777093197558 +     7.60555207038777 *
        TextCluster_SVD11 ;
   S_TextCluster_SVD12  =      0.0034541728473 +      8.1299498813108 *
        TextCluster_SVD12 ;
   S_TextCluster_SVD13  =     -0.0775106201675 +     7.66941269272977 *
        TextCluster_SVD13 ;
   S_TextCluster_SVD14  =    -0.10105043704796 +     8.05581941948036 *
        TextCluster_SVD14 ;
   S_TextCluster_SVD15  =      0.1281536999344 +     8.06170560773958 *
        TextCluster_SVD15 ;
   S_TextCluster_SVD16  =     0.12011682284444 +     7.90113368199067 *
        TextCluster_SVD16 ;
   S_TextCluster_SVD17  =    -0.01708560680052 +     7.98323170562933 *
        TextCluster_SVD17 ;
   S_TextCluster_SVD18  =    -0.16679765833239 +     8.49738690521501 *
        TextCluster_SVD18 ;
   S_TextCluster_SVD19  =    -0.05588983066383 +     7.86802645517918 *
        TextCluster_SVD19 ;
   S_TextCluster_SVD2  =     0.24994665610751 +     7.21809369698505 *
        TextCluster_SVD2 ;
   S_TextCluster_SVD20  =     0.22412920410829 +      7.7637655409697 *
        TextCluster_SVD20 ;
   S_TextCluster_SVD21  =     -0.0277363130438 +     7.97461468139546 *
        TextCluster_SVD21 ;
   S_TextCluster_SVD22  =     0.10418278329742 +     8.48897715462694 *
        TextCluster_SVD22 ;
   S_TextCluster_SVD23  =     0.04991258066222 +     7.90701860832902 *
        TextCluster_SVD23 ;
   S_TextCluster_SVD24  =    -0.09016717215725 +     8.00042398304847 *
        TextCluster_SVD24 ;
   S_TextCluster_SVD25  =     0.01066343352865 +     7.77932644587469 *
        TextCluster_SVD25 ;
   S_TextCluster_SVD26  =     0.07376900833741 +     7.87899321739858 *
        TextCluster_SVD26 ;
   S_TextCluster_SVD27  =    -0.06927077050078 +     8.05906148737678 *
        TextCluster_SVD27 ;
   S_TextCluster_SVD28  =    -0.04811458660487 +     7.82475998442339 *
        TextCluster_SVD28 ;
   S_TextCluster_SVD29  =    -0.08315818969586 +     7.88360839988558 *
        TextCluster_SVD29 ;
   S_TextCluster_SVD3  =     0.08076184382549 +     5.69123738360424 *
        TextCluster_SVD3 ;
   S_TextCluster_SVD30  =     0.08734092739914 +     8.06782802617468 *
        TextCluster_SVD30 ;
   S_TextCluster_SVD31  =     0.01050958951824 +     7.80522258033401 *
        TextCluster_SVD31 ;
   S_TextCluster_SVD32  =     0.08423750387194 +     8.15266083913994 *
        TextCluster_SVD32 ;
   S_TextCluster_SVD33  =    -0.00406923373959 +      7.9442482515275 *
        TextCluster_SVD33 ;
   S_TextCluster_SVD34  =    -0.00911352720822 +     7.90826544385664 *
        TextCluster_SVD34 ;
   S_TextCluster_SVD35  =     0.04852391896762 +     7.82968324711135 *
        TextCluster_SVD35 ;
   S_TextCluster_SVD36  =     0.06207364836674 +     7.74521163972826 *
        TextCluster_SVD36 ;
   S_TextCluster_SVD37  =     0.05327911651105 +     8.05416458660944 *
        TextCluster_SVD37 ;
   S_TextCluster_SVD38  =    -0.06875661999371 +     7.70575743499859 *
        TextCluster_SVD38 ;
   S_TextCluster_SVD39  =    -0.07591572604122 +     8.07231919188322 *
        TextCluster_SVD39 ;
   S_TextCluster_SVD4  =    -0.07565189162049 +     6.87195700400848 *
        TextCluster_SVD4 ;
   S_TextCluster_SVD40  =     0.05022631244552 +      8.2122080933398 *
        TextCluster_SVD40 ;
   S_TextCluster_SVD41  =     0.02532606773528 +     7.75130510417163 *
        TextCluster_SVD41 ;
   S_TextCluster_SVD42  =     0.04274723963494 +     7.85850282551808 *
        TextCluster_SVD42 ;
   S_TextCluster_SVD43  =     0.05535162383562 +     7.96315003625237 *
        TextCluster_SVD43 ;
   S_TextCluster_SVD44  =     0.07182870863812 +     8.16006094194558 *
        TextCluster_SVD44 ;
   S_TextCluster_SVD45  =     0.01141953064992 +     7.57057064733827 *
        TextCluster_SVD45 ;
   S_TextCluster_SVD46  =     0.05904651917612 +     7.76039318529346 *
        TextCluster_SVD46 ;
   S_TextCluster_SVD47  =    -0.01858023234252 +     7.74214703199478 *
        TextCluster_SVD47 ;
   S_TextCluster_SVD48  =    -0.05099190745585 +     7.84427899416126 *
        TextCluster_SVD48 ;
   S_TextCluster_SVD49  =     0.01765756238246 +     7.87897831312057 *
        TextCluster_SVD49 ;
   S_TextCluster_SVD5  =    -0.59919104845386 +     8.17119325257442 *
        TextCluster_SVD5 ;
   S_TextCluster_SVD50  =     0.03925697105756 +     7.81886548637788 *
        TextCluster_SVD50 ;
   S_TextCluster_SVD51  =    -0.07272144207056 +     7.85353641705534 *
        TextCluster_SVD51 ;
   S_TextCluster_SVD52  =    -0.03378245974762 +     7.87566319564757 *
        TextCluster_SVD52 ;
   S_TextCluster_SVD53  =     0.04010205557767 +     7.58464855846054 *
        TextCluster_SVD53 ;
   S_TextCluster_SVD54  =    -0.01975139775748 +     7.76228730318857 *
        TextCluster_SVD54 ;
   S_TextCluster_SVD55  =    -0.07685661558405 +     7.42688226818184 *
        TextCluster_SVD55 ;
   S_TextCluster_SVD6  =     0.10634587865751 +     6.42229476997599 *
        TextCluster_SVD6 ;
   S_TextCluster_SVD7  =     -0.1207376499206 +     7.78226409538281 *
        TextCluster_SVD7 ;
   S_TextCluster_SVD8  =     0.07742541330887 +     7.47058606052903 *
        TextCluster_SVD8 ;
   S_TextCluster_SVD9  =    -0.04438458581114 +     6.96463310953248 *
        TextCluster_SVD9 ;
   S_TextTopic_raw1  =     -0.2887655457505 +     14.4853448151556 *
        TextTopic_raw1 ;
   S_TextTopic_raw10  =    -0.24669510202568 +     17.7789168889317 *
        TextTopic_raw10 ;
   S_TextTopic_raw11  =    -0.29477236998902 +     18.6914400975447 *
        TextTopic_raw11 ;
   S_TextTopic_raw12  =    -0.33592098420651 +      19.139409025535 *
        TextTopic_raw12 ;
   S_TextTopic_raw13  =    -0.19401263063863 +     19.6720145364805 *
        TextTopic_raw13 ;
   S_TextTopic_raw14  =    -0.22972748836817 +     19.0065858208319 *
        TextTopic_raw14 ;
   S_TextTopic_raw15  =    -0.24546747333684 +     19.3329998558734 *
        TextTopic_raw15 ;
   S_TextTopic_raw2  =    -0.34300682110036 +     14.4016745341036 *
        TextTopic_raw2 ;
   S_TextTopic_raw3  =    -0.24344160671967 +     14.0591383982324 *
        TextTopic_raw3 ;
   S_TextTopic_raw4  =    -0.21037883197494 +     15.3710621592811 *
        TextTopic_raw4 ;
   S_TextTopic_raw5  =    -0.25003204875621 +     16.5917277668424 *
        TextTopic_raw5 ;
   S_TextTopic_raw6  =    -0.24914347319983 +      16.960766317449 *
        TextTopic_raw6 ;
   S_TextTopic_raw7  =    -0.28786659289443 +     18.0874738226609 *
        TextTopic_raw7 ;
   S_TextTopic_raw8  =     -0.2260318618276 +     17.6763467597353 *
        TextTopic_raw8 ;
   S_TextTopic_raw9  =    -0.22636393025273 +     18.2627252847342 *
        TextTopic_raw9 ;
END;
ELSE DO;
   IF MISSING( Character_Count ) THEN S_Character_Count  = . ;
   ELSE S_Character_Count  =    -1.50960855615214 +     0.02002926279902 *
        Character_Count ;
   IF MISSING( Comments_Count ) THEN S_Comments_Count  = . ;
   ELSE S_Comments_Count  =      -0.801894075695 +     0.00026052278066 *
        Comments_Count ;
   IF MISSING( Likes_Count ) THEN S_Likes_Count  = . ;
   ELSE S_Likes_Count  =     -1.7029231585012 +   5.7520380075828E-6 *
        Likes_Count ;
   IF MISSING( TextCluster_SVD1 ) THEN S_TextCluster_SVD1  = . ;
   ELSE S_TextCluster_SVD1  =    -1.81945217604807 +     10.2717264157232 *
        TextCluster_SVD1 ;
   IF MISSING( TextCluster_SVD10 ) THEN S_TextCluster_SVD10  = . ;
   ELSE S_TextCluster_SVD10  =     0.14547099810386 +     7.92996022015363 *
        TextCluster_SVD10 ;
   IF MISSING( TextCluster_SVD11 ) THEN S_TextCluster_SVD11  = . ;
   ELSE S_TextCluster_SVD11  =     0.02777093197558 +     7.60555207038777 *
        TextCluster_SVD11 ;
   IF MISSING( TextCluster_SVD12 ) THEN S_TextCluster_SVD12  = . ;
   ELSE S_TextCluster_SVD12  =      0.0034541728473 +      8.1299498813108 *
        TextCluster_SVD12 ;
   IF MISSING( TextCluster_SVD13 ) THEN S_TextCluster_SVD13  = . ;
   ELSE S_TextCluster_SVD13  =     -0.0775106201675 +     7.66941269272977 *
        TextCluster_SVD13 ;
   IF MISSING( TextCluster_SVD14 ) THEN S_TextCluster_SVD14  = . ;
   ELSE S_TextCluster_SVD14  =    -0.10105043704796 +     8.05581941948036 *
        TextCluster_SVD14 ;
   IF MISSING( TextCluster_SVD15 ) THEN S_TextCluster_SVD15  = . ;
   ELSE S_TextCluster_SVD15  =      0.1281536999344 +     8.06170560773958 *
        TextCluster_SVD15 ;
   IF MISSING( TextCluster_SVD16 ) THEN S_TextCluster_SVD16  = . ;
   ELSE S_TextCluster_SVD16  =     0.12011682284444 +     7.90113368199067 *
        TextCluster_SVD16 ;
   IF MISSING( TextCluster_SVD17 ) THEN S_TextCluster_SVD17  = . ;
   ELSE S_TextCluster_SVD17  =    -0.01708560680052 +     7.98323170562933 *
        TextCluster_SVD17 ;
   IF MISSING( TextCluster_SVD18 ) THEN S_TextCluster_SVD18  = . ;
   ELSE S_TextCluster_SVD18  =    -0.16679765833239 +     8.49738690521501 *
        TextCluster_SVD18 ;
   IF MISSING( TextCluster_SVD19 ) THEN S_TextCluster_SVD19  = . ;
   ELSE S_TextCluster_SVD19  =    -0.05588983066383 +     7.86802645517918 *
        TextCluster_SVD19 ;
   IF MISSING( TextCluster_SVD2 ) THEN S_TextCluster_SVD2  = . ;
   ELSE S_TextCluster_SVD2  =     0.24994665610751 +     7.21809369698505 *
        TextCluster_SVD2 ;
   IF MISSING( TextCluster_SVD20 ) THEN S_TextCluster_SVD20  = . ;
   ELSE S_TextCluster_SVD20  =     0.22412920410829 +      7.7637655409697 *
        TextCluster_SVD20 ;
   IF MISSING( TextCluster_SVD21 ) THEN S_TextCluster_SVD21  = . ;
   ELSE S_TextCluster_SVD21  =     -0.0277363130438 +     7.97461468139546 *
        TextCluster_SVD21 ;
   IF MISSING( TextCluster_SVD22 ) THEN S_TextCluster_SVD22  = . ;
   ELSE S_TextCluster_SVD22  =     0.10418278329742 +     8.48897715462694 *
        TextCluster_SVD22 ;
   IF MISSING( TextCluster_SVD23 ) THEN S_TextCluster_SVD23  = . ;
   ELSE S_TextCluster_SVD23  =     0.04991258066222 +     7.90701860832902 *
        TextCluster_SVD23 ;
   IF MISSING( TextCluster_SVD24 ) THEN S_TextCluster_SVD24  = . ;
   ELSE S_TextCluster_SVD24  =    -0.09016717215725 +     8.00042398304847 *
        TextCluster_SVD24 ;
   IF MISSING( TextCluster_SVD25 ) THEN S_TextCluster_SVD25  = . ;
   ELSE S_TextCluster_SVD25  =     0.01066343352865 +     7.77932644587469 *
        TextCluster_SVD25 ;
   IF MISSING( TextCluster_SVD26 ) THEN S_TextCluster_SVD26  = . ;
   ELSE S_TextCluster_SVD26  =     0.07376900833741 +     7.87899321739858 *
        TextCluster_SVD26 ;
   IF MISSING( TextCluster_SVD27 ) THEN S_TextCluster_SVD27  = . ;
   ELSE S_TextCluster_SVD27  =    -0.06927077050078 +     8.05906148737678 *
        TextCluster_SVD27 ;
   IF MISSING( TextCluster_SVD28 ) THEN S_TextCluster_SVD28  = . ;
   ELSE S_TextCluster_SVD28  =    -0.04811458660487 +     7.82475998442339 *
        TextCluster_SVD28 ;
   IF MISSING( TextCluster_SVD29 ) THEN S_TextCluster_SVD29  = . ;
   ELSE S_TextCluster_SVD29  =    -0.08315818969586 +     7.88360839988558 *
        TextCluster_SVD29 ;
   IF MISSING( TextCluster_SVD3 ) THEN S_TextCluster_SVD3  = . ;
   ELSE S_TextCluster_SVD3  =     0.08076184382549 +     5.69123738360424 *
        TextCluster_SVD3 ;
   IF MISSING( TextCluster_SVD30 ) THEN S_TextCluster_SVD30  = . ;
   ELSE S_TextCluster_SVD30  =     0.08734092739914 +     8.06782802617468 *
        TextCluster_SVD30 ;
   IF MISSING( TextCluster_SVD31 ) THEN S_TextCluster_SVD31  = . ;
   ELSE S_TextCluster_SVD31  =     0.01050958951824 +     7.80522258033401 *
        TextCluster_SVD31 ;
   IF MISSING( TextCluster_SVD32 ) THEN S_TextCluster_SVD32  = . ;
   ELSE S_TextCluster_SVD32  =     0.08423750387194 +     8.15266083913994 *
        TextCluster_SVD32 ;
   IF MISSING( TextCluster_SVD33 ) THEN S_TextCluster_SVD33  = . ;
   ELSE S_TextCluster_SVD33  =    -0.00406923373959 +      7.9442482515275 *
        TextCluster_SVD33 ;
   IF MISSING( TextCluster_SVD34 ) THEN S_TextCluster_SVD34  = . ;
   ELSE S_TextCluster_SVD34  =    -0.00911352720822 +     7.90826544385664 *
        TextCluster_SVD34 ;
   IF MISSING( TextCluster_SVD35 ) THEN S_TextCluster_SVD35  = . ;
   ELSE S_TextCluster_SVD35  =     0.04852391896762 +     7.82968324711135 *
        TextCluster_SVD35 ;
   IF MISSING( TextCluster_SVD36 ) THEN S_TextCluster_SVD36  = . ;
   ELSE S_TextCluster_SVD36  =     0.06207364836674 +     7.74521163972826 *
        TextCluster_SVD36 ;
   IF MISSING( TextCluster_SVD37 ) THEN S_TextCluster_SVD37  = . ;
   ELSE S_TextCluster_SVD37  =     0.05327911651105 +     8.05416458660944 *
        TextCluster_SVD37 ;
   IF MISSING( TextCluster_SVD38 ) THEN S_TextCluster_SVD38  = . ;
   ELSE S_TextCluster_SVD38  =    -0.06875661999371 +     7.70575743499859 *
        TextCluster_SVD38 ;
   IF MISSING( TextCluster_SVD39 ) THEN S_TextCluster_SVD39  = . ;
   ELSE S_TextCluster_SVD39  =    -0.07591572604122 +     8.07231919188322 *
        TextCluster_SVD39 ;
   IF MISSING( TextCluster_SVD4 ) THEN S_TextCluster_SVD4  = . ;
   ELSE S_TextCluster_SVD4  =    -0.07565189162049 +     6.87195700400848 *
        TextCluster_SVD4 ;
   IF MISSING( TextCluster_SVD40 ) THEN S_TextCluster_SVD40  = . ;
   ELSE S_TextCluster_SVD40  =     0.05022631244552 +      8.2122080933398 *
        TextCluster_SVD40 ;
   IF MISSING( TextCluster_SVD41 ) THEN S_TextCluster_SVD41  = . ;
   ELSE S_TextCluster_SVD41  =     0.02532606773528 +     7.75130510417163 *
        TextCluster_SVD41 ;
   IF MISSING( TextCluster_SVD42 ) THEN S_TextCluster_SVD42  = . ;
   ELSE S_TextCluster_SVD42  =     0.04274723963494 +     7.85850282551808 *
        TextCluster_SVD42 ;
   IF MISSING( TextCluster_SVD43 ) THEN S_TextCluster_SVD43  = . ;
   ELSE S_TextCluster_SVD43  =     0.05535162383562 +     7.96315003625237 *
        TextCluster_SVD43 ;
   IF MISSING( TextCluster_SVD44 ) THEN S_TextCluster_SVD44  = . ;
   ELSE S_TextCluster_SVD44  =     0.07182870863812 +     8.16006094194558 *
        TextCluster_SVD44 ;
   IF MISSING( TextCluster_SVD45 ) THEN S_TextCluster_SVD45  = . ;
   ELSE S_TextCluster_SVD45  =     0.01141953064992 +     7.57057064733827 *
        TextCluster_SVD45 ;
   IF MISSING( TextCluster_SVD46 ) THEN S_TextCluster_SVD46  = . ;
   ELSE S_TextCluster_SVD46  =     0.05904651917612 +     7.76039318529346 *
        TextCluster_SVD46 ;
   IF MISSING( TextCluster_SVD47 ) THEN S_TextCluster_SVD47  = . ;
   ELSE S_TextCluster_SVD47  =    -0.01858023234252 +     7.74214703199478 *
        TextCluster_SVD47 ;
   IF MISSING( TextCluster_SVD48 ) THEN S_TextCluster_SVD48  = . ;
   ELSE S_TextCluster_SVD48  =    -0.05099190745585 +     7.84427899416126 *
        TextCluster_SVD48 ;
   IF MISSING( TextCluster_SVD49 ) THEN S_TextCluster_SVD49  = . ;
   ELSE S_TextCluster_SVD49  =     0.01765756238246 +     7.87897831312057 *
        TextCluster_SVD49 ;
   IF MISSING( TextCluster_SVD5 ) THEN S_TextCluster_SVD5  = . ;
   ELSE S_TextCluster_SVD5  =    -0.59919104845386 +     8.17119325257442 *
        TextCluster_SVD5 ;
   IF MISSING( TextCluster_SVD50 ) THEN S_TextCluster_SVD50  = . ;
   ELSE S_TextCluster_SVD50  =     0.03925697105756 +     7.81886548637788 *
        TextCluster_SVD50 ;
   IF MISSING( TextCluster_SVD51 ) THEN S_TextCluster_SVD51  = . ;
   ELSE S_TextCluster_SVD51  =    -0.07272144207056 +     7.85353641705534 *
        TextCluster_SVD51 ;
   IF MISSING( TextCluster_SVD52 ) THEN S_TextCluster_SVD52  = . ;
   ELSE S_TextCluster_SVD52  =    -0.03378245974762 +     7.87566319564757 *
        TextCluster_SVD52 ;
   IF MISSING( TextCluster_SVD53 ) THEN S_TextCluster_SVD53  = . ;
   ELSE S_TextCluster_SVD53  =     0.04010205557767 +     7.58464855846054 *
        TextCluster_SVD53 ;
   IF MISSING( TextCluster_SVD54 ) THEN S_TextCluster_SVD54  = . ;
   ELSE S_TextCluster_SVD54  =    -0.01975139775748 +     7.76228730318857 *
        TextCluster_SVD54 ;
   IF MISSING( TextCluster_SVD55 ) THEN S_TextCluster_SVD55  = . ;
   ELSE S_TextCluster_SVD55  =    -0.07685661558405 +     7.42688226818184 *
        TextCluster_SVD55 ;
   IF MISSING( TextCluster_SVD6 ) THEN S_TextCluster_SVD6  = . ;
   ELSE S_TextCluster_SVD6  =     0.10634587865751 +     6.42229476997599 *
        TextCluster_SVD6 ;
   IF MISSING( TextCluster_SVD7 ) THEN S_TextCluster_SVD7  = . ;
   ELSE S_TextCluster_SVD7  =     -0.1207376499206 +     7.78226409538281 *
        TextCluster_SVD7 ;
   IF MISSING( TextCluster_SVD8 ) THEN S_TextCluster_SVD8  = . ;
   ELSE S_TextCluster_SVD8  =     0.07742541330887 +     7.47058606052903 *
        TextCluster_SVD8 ;
   IF MISSING( TextCluster_SVD9 ) THEN S_TextCluster_SVD9  = . ;
   ELSE S_TextCluster_SVD9  =    -0.04438458581114 +     6.96463310953248 *
        TextCluster_SVD9 ;
   IF MISSING( TextTopic_raw1 ) THEN S_TextTopic_raw1  = . ;
   ELSE S_TextTopic_raw1  =     -0.2887655457505 +     14.4853448151556 *
        TextTopic_raw1 ;
   IF MISSING( TextTopic_raw10 ) THEN S_TextTopic_raw10  = . ;
   ELSE S_TextTopic_raw10  =    -0.24669510202568 +     17.7789168889317 *
        TextTopic_raw10 ;
   IF MISSING( TextTopic_raw11 ) THEN S_TextTopic_raw11  = . ;
   ELSE S_TextTopic_raw11  =    -0.29477236998902 +     18.6914400975447 *
        TextTopic_raw11 ;
   IF MISSING( TextTopic_raw12 ) THEN S_TextTopic_raw12  = . ;
   ELSE S_TextTopic_raw12  =    -0.33592098420651 +      19.139409025535 *
        TextTopic_raw12 ;
   IF MISSING( TextTopic_raw13 ) THEN S_TextTopic_raw13  = . ;
   ELSE S_TextTopic_raw13  =    -0.19401263063863 +     19.6720145364805 *
        TextTopic_raw13 ;
   IF MISSING( TextTopic_raw14 ) THEN S_TextTopic_raw14  = . ;
   ELSE S_TextTopic_raw14  =    -0.22972748836817 +     19.0065858208319 *
        TextTopic_raw14 ;
   IF MISSING( TextTopic_raw15 ) THEN S_TextTopic_raw15  = . ;
   ELSE S_TextTopic_raw15  =    -0.24546747333684 +     19.3329998558734 *
        TextTopic_raw15 ;
   IF MISSING( TextTopic_raw2 ) THEN S_TextTopic_raw2  = . ;
   ELSE S_TextTopic_raw2  =    -0.34300682110036 +     14.4016745341036 *
        TextTopic_raw2 ;
   IF MISSING( TextTopic_raw3 ) THEN S_TextTopic_raw3  = . ;
   ELSE S_TextTopic_raw3  =    -0.24344160671967 +     14.0591383982324 *
        TextTopic_raw3 ;
   IF MISSING( TextTopic_raw4 ) THEN S_TextTopic_raw4  = . ;
   ELSE S_TextTopic_raw4  =    -0.21037883197494 +     15.3710621592811 *
        TextTopic_raw4 ;
   IF MISSING( TextTopic_raw5 ) THEN S_TextTopic_raw5  = . ;
   ELSE S_TextTopic_raw5  =    -0.25003204875621 +     16.5917277668424 *
        TextTopic_raw5 ;
   IF MISSING( TextTopic_raw6 ) THEN S_TextTopic_raw6  = . ;
   ELSE S_TextTopic_raw6  =    -0.24914347319983 +      16.960766317449 *
        TextTopic_raw6 ;
   IF MISSING( TextTopic_raw7 ) THEN S_TextTopic_raw7  = . ;
   ELSE S_TextTopic_raw7  =    -0.28786659289443 +     18.0874738226609 *
        TextTopic_raw7 ;
   IF MISSING( TextTopic_raw8 ) THEN S_TextTopic_raw8  = . ;
   ELSE S_TextTopic_raw8  =     -0.2260318618276 +     17.6763467597353 *
        TextTopic_raw8 ;
   IF MISSING( TextTopic_raw9 ) THEN S_TextTopic_raw9  = . ;
   ELSE S_TextTopic_raw9  =    -0.22636393025273 +     18.2627252847342 *
        TextTopic_raw9 ;
END;
*** *************************;
*** Writing the Node nom ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.06931602193967 * S_Character_Count  +     0.12542669536382 *
        S_Comments_Count  +     0.42877158193651 * S_Likes_Count
          +     0.21087852378926 * S_TextCluster_SVD1
          +     0.10157786709809 * S_TextCluster_SVD10
          +    -0.09365401541274 * S_TextCluster_SVD11
          +     0.03277627017539 * S_TextCluster_SVD12
          +     0.13471329920983 * S_TextCluster_SVD13
          +     0.07092058718693 * S_TextCluster_SVD14
          +     -0.0282274519305 * S_TextCluster_SVD15
          +    -0.01628470734625 * S_TextCluster_SVD16
          +     0.06710363265341 * S_TextCluster_SVD17
          +    -0.05966617775379 * S_TextCluster_SVD18
          +    -0.04480615534405 * S_TextCluster_SVD19
          +     0.02990473235321 * S_TextCluster_SVD2
          +     0.02244100266044 * S_TextCluster_SVD20
          +    -0.14530010109577 * S_TextCluster_SVD21
          +    -0.04472706367957 * S_TextCluster_SVD22
          +    -0.00962230698036 * S_TextCluster_SVD23
          +    -0.03891088605365 * S_TextCluster_SVD24
          +    -0.04500344694898 * S_TextCluster_SVD25
          +    -0.07984494287295 * S_TextCluster_SVD26
          +     0.07978045431748 * S_TextCluster_SVD27
          +     0.01664174232889 * S_TextCluster_SVD28
          +     0.02507105212385 * S_TextCluster_SVD29
          +    -0.05664779456211 * S_TextCluster_SVD3
          +    -0.00635024869655 * S_TextCluster_SVD30
          +    -0.05802668184267 * S_TextCluster_SVD31
          +     0.02119947782713 * S_TextCluster_SVD32
          +     0.01604213744454 * S_TextCluster_SVD33
          +     0.05891293456416 * S_TextCluster_SVD34
          +     0.01086753695849 * S_TextCluster_SVD35
          +    -0.00852117941267 * S_TextCluster_SVD36
          +     0.07107864521946 * S_TextCluster_SVD37
          +     0.00495087759192 * S_TextCluster_SVD38
          +     0.09485651868562 * S_TextCluster_SVD39
          +     0.02235868333562 * S_TextCluster_SVD4
          +     0.02782370188385 * S_TextCluster_SVD40
          +    -0.02136908979584 * S_TextCluster_SVD41
          +     0.04859977560822 * S_TextCluster_SVD42
          +    -0.07518303183922 * S_TextCluster_SVD43
          +     0.04988115877249 * S_TextCluster_SVD44
          +    -0.09602210687444 * S_TextCluster_SVD45
          +     0.05590179779097 * S_TextCluster_SVD46
          +    -0.04872021187729 * S_TextCluster_SVD47
          +    -0.11219214515784 * S_TextCluster_SVD48
          +     0.00064599715867 * S_TextCluster_SVD49
          +     0.13171551504929 * S_TextCluster_SVD5
          +     0.01476433929421 * S_TextCluster_SVD50
          +    -0.00562785435123 * S_TextCluster_SVD51
          +     0.01136048539355 * S_TextCluster_SVD52
          +     0.11300795324974 * S_TextCluster_SVD53
          +    -0.04569360614776 * S_TextCluster_SVD54
          +    -0.01328079437622 * S_TextCluster_SVD55
          +     0.10051615272767 * S_TextCluster_SVD6
          +     0.02046972407032 * S_TextCluster_SVD7
          +    -0.14375013816032 * S_TextCluster_SVD8
          +     0.03435088764169 * S_TextCluster_SVD9
          +    -0.03234387790523 * S_TextTopic_raw1  +     0.01199851414765 *
        S_TextTopic_raw10  +    -0.05902822768869 * S_TextTopic_raw11
          +    -0.00263215539851 * S_TextTopic_raw12
          +    -0.04996437402644 * S_TextTopic_raw13
          +     0.06881026052083 * S_TextTopic_raw14
          +     0.06772065364518 * S_TextTopic_raw15
          +    -0.04661428237751 * S_TextTopic_raw2  +    -0.27128302677118 *
        S_TextTopic_raw3  +    -0.10947633629151 * S_TextTopic_raw4
          +     0.15402321623634 * S_TextTopic_raw5  +    -0.03245850240924 *
        S_TextTopic_raw6  +    -0.06770998478786 * S_TextTopic_raw7
          +     -0.0010313894425 * S_TextTopic_raw8  +     0.13474532863126 *
        S_TextTopic_raw9 ;
   H12  =      0.3148779643689 * S_Character_Count  +     0.24963480416351 *
        S_Comments_Count  +    -2.60086422852937 * S_Likes_Count
          +     0.30288431618999 * S_TextCluster_SVD1
          +    -0.02085811097221 * S_TextCluster_SVD10
          +    -0.40208323470959 * S_TextCluster_SVD11
          +     0.10641614276958 * S_TextCluster_SVD12
          +     0.36559384387869 * S_TextCluster_SVD13
          +     0.19098581977927 * S_TextCluster_SVD14
          +    -0.08883516192114 * S_TextCluster_SVD15
          +     0.04130857594078 * S_TextCluster_SVD16
          +    -0.11702482204799 * S_TextCluster_SVD17
          +     0.06353953028218 * S_TextCluster_SVD18
          +     0.04640553164916 * S_TextCluster_SVD19
          +    -0.06911136801639 * S_TextCluster_SVD2
          +    -0.04103251869975 * S_TextCluster_SVD20
          +    -0.54857898736378 * S_TextCluster_SVD21
          +    -0.38015107295888 * S_TextCluster_SVD22
          +    -0.12772016807444 * S_TextCluster_SVD23
          +    -0.27167270999403 * S_TextCluster_SVD24
          +    -0.30591689052349 * S_TextCluster_SVD25
          +    -0.59156689557742 * S_TextCluster_SVD26
          +     0.54297392436746 * S_TextCluster_SVD27
          +      0.2157348576356 * S_TextCluster_SVD28
          +     0.07912290468793 * S_TextCluster_SVD29
          +    -0.20594055713059 * S_TextCluster_SVD3
          +    -0.09752432371189 * S_TextCluster_SVD30
          +     -0.0722544990904 * S_TextCluster_SVD31
          +     0.02558880937393 * S_TextCluster_SVD32
          +     0.18362979744489 * S_TextCluster_SVD33
          +     0.00114268086934 * S_TextCluster_SVD34
          +     0.23968035849545 * S_TextCluster_SVD35
          +     -0.2328539349503 * S_TextCluster_SVD36
          +     0.33008369640484 * S_TextCluster_SVD37
          +     0.01125306491444 * S_TextCluster_SVD38
          +     0.07148714592342 * S_TextCluster_SVD39
          +      0.2408617610062 * S_TextCluster_SVD4
          +     0.07580045599478 * S_TextCluster_SVD40
          +    -0.07735721850115 * S_TextCluster_SVD41
          +     0.19675888791119 * S_TextCluster_SVD42
          +    -0.34970810742373 * S_TextCluster_SVD43
          +     0.21143454126901 * S_TextCluster_SVD44
          +    -0.44396324667287 * S_TextCluster_SVD45
          +     0.19917680051132 * S_TextCluster_SVD46
          +    -0.25475853484912 * S_TextCluster_SVD47
          +    -0.27505848956045 * S_TextCluster_SVD48
          +     0.09322185159532 * S_TextCluster_SVD49
          +     0.25622518302227 * S_TextCluster_SVD5
          +    -0.08410996487909 * S_TextCluster_SVD50
          +     0.03455867481961 * S_TextCluster_SVD51
          +      -0.032637513621 * S_TextCluster_SVD52
          +     0.54443842638835 * S_TextCluster_SVD53
          +    -0.20644903043145 * S_TextCluster_SVD54
          +    -0.18964469946425 * S_TextCluster_SVD55
          +     0.19575394238445 * S_TextCluster_SVD6
          +     0.20940876655616 * S_TextCluster_SVD7
          +     -0.2196109667858 * S_TextCluster_SVD8
          +     0.11456609218782 * S_TextCluster_SVD9
          +    -0.03600742618365 * S_TextTopic_raw1  +    -0.02747442180061 *
        S_TextTopic_raw10  +     0.03571676959108 * S_TextTopic_raw11
          +    -0.00699691333358 * S_TextTopic_raw12
          +    -0.30748507616158 * S_TextTopic_raw13
          +     0.24941315951383 * S_TextTopic_raw14
          +    -0.32000417200977 * S_TextTopic_raw15
          +    -0.16072731431068 * S_TextTopic_raw2  +     0.07927976711605 *
        S_TextTopic_raw3  +    -0.12902739349356 * S_TextTopic_raw4
          +     -0.4067224606199 * S_TextTopic_raw5  +     0.13935022607531 *
        S_TextTopic_raw6  +    -0.31740587288104 * S_TextTopic_raw7
          +      0.0061985725089 * S_TextTopic_raw8  +     0.26883966686443 *
        S_TextTopic_raw9 ;
   H13  =    -0.05951615475676 * S_Character_Count  +    -0.06704810747562 *
        S_Comments_Count  +     0.23599769815677 * S_Likes_Count
          +    -0.28151185718785 * S_TextCluster_SVD1
          +    -0.14338209697814 * S_TextCluster_SVD10
          +     0.08654456251616 * S_TextCluster_SVD11
          +    -0.03234572023999 * S_TextCluster_SVD12
          +    -0.14190851993445 * S_TextCluster_SVD13
          +    -0.08210082201458 * S_TextCluster_SVD14
          +     0.03309647715848 * S_TextCluster_SVD15
          +      0.0037287624864 * S_TextCluster_SVD16
          +    -0.09292247970623 * S_TextCluster_SVD17
          +     0.07769457880873 * S_TextCluster_SVD18
          +     0.03574647827412 * S_TextCluster_SVD19
          +    -0.05991109674028 * S_TextCluster_SVD2
          +    -0.03540198094774 * S_TextCluster_SVD20
          +     0.13029428168356 * S_TextCluster_SVD21
          +     0.03016067950561 * S_TextCluster_SVD22
          +     0.02275564935531 * S_TextCluster_SVD23
          +      0.0563851104165 * S_TextCluster_SVD24
          +     0.03527051622961 * S_TextCluster_SVD25
          +      0.0334324301679 * S_TextCluster_SVD26
          +    -0.05694727965386 * S_TextCluster_SVD27
          +    -0.01225205195817 * S_TextCluster_SVD28
          +    -0.03615516094695 * S_TextCluster_SVD29
          +     0.05692965856602 * S_TextCluster_SVD3
          +     0.00698047952902 * S_TextCluster_SVD30
          +     0.07797285702004 * S_TextCluster_SVD31
          +    -0.02597916660941 * S_TextCluster_SVD32
          +     0.00217915954721 * S_TextCluster_SVD33
          +    -0.07660189709163 * S_TextCluster_SVD34
          +    -0.00042771133397 * S_TextCluster_SVD35
          +    -0.01892040837688 * S_TextCluster_SVD36
          +    -0.06602926205125 * S_TextCluster_SVD37
          +    -0.00873294494755 * S_TextCluster_SVD38
          +    -0.10025720256664 * S_TextCluster_SVD39
          +    -0.04893535789828 * S_TextCluster_SVD4
          +    -0.02026280210299 * S_TextCluster_SVD40
          +     0.01261315018389 * S_TextCluster_SVD41
          +    -0.04048353036279 * S_TextCluster_SVD42
          +     0.06847539681704 * S_TextCluster_SVD43
          +    -0.05326333643974 * S_TextCluster_SVD44
          +     0.08807395270672 * S_TextCluster_SVD45
          +     -0.0728318885209 * S_TextCluster_SVD46
          +     0.04705762095254 * S_TextCluster_SVD47
          +     0.13389295392074 * S_TextCluster_SVD48
          +     0.00302047665114 * S_TextCluster_SVD49
          +    -0.14799236346323 * S_TextCluster_SVD5
          +    -0.02598667436952 * S_TextCluster_SVD50
          +     0.01337034675097 * S_TextCluster_SVD51
          +    -0.02589842350178 * S_TextCluster_SVD52
          +    -0.10462776760667 * S_TextCluster_SVD53
          +     0.04620753759353 * S_TextCluster_SVD54
          +    -0.00630771890631 * S_TextCluster_SVD55
          +    -0.08364653235975 * S_TextCluster_SVD6
          +    -0.02314016153286 * S_TextCluster_SVD7
          +      0.1564143449006 * S_TextCluster_SVD8
          +     -0.0639923416351 * S_TextCluster_SVD9
          +     0.05427523551688 * S_TextTopic_raw1  +    -0.02428830617112 *
        S_TextTopic_raw10  +      0.0828263951924 * S_TextTopic_raw11
          +     0.00368605416096 * S_TextTopic_raw12
          +     0.03676084010127 * S_TextTopic_raw13
          +    -0.06921088204058 * S_TextTopic_raw14
          +    -0.12183504158573 * S_TextTopic_raw15
          +     0.06053860273611 * S_TextTopic_raw2  +     0.56407899528058 *
        S_TextTopic_raw3  +     0.17382662185022 * S_TextTopic_raw4
          +    -0.24858025138326 * S_TextTopic_raw5  +     0.02262347832122 *
        S_TextTopic_raw6  +     0.05332884951611 * S_TextTopic_raw7
          +     0.01587694815408 * S_TextTopic_raw8  +    -0.14402641697322 *
        S_TextTopic_raw9 ;
   H11  = H11  +    -0.11773700454468 * Includes_HashtagFALSE
          +    -0.12609083312295 * Media_Typecarousel
          +    -0.16620577840635 * Media_Typeimage ;
   H12  = H12  +     0.26824251849019 * Includes_HashtagFALSE
          +    -0.68938434253733 * Media_Typecarousel
          +    -0.33147496478226 * Media_Typeimage ;
   H13  = H13  +     0.17457543744819 * Includes_HashtagFALSE
          +     0.10750305552078 * Media_Typecarousel
          +     0.19361634771864 * Media_Typeimage ;
   H11  =    -0.30282786551306 + H11 ;
   H12  =     1.23709598672272 + H12 ;
   H13  =     0.62145700469301 + H13 ;
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
   P_Total_Actions  =     257220.616772742 * H11  +    -77763.7172631695 * H12
          +     221310.318857644 * H13 ;
   P_Total_Actions  =     299133.635519075 + P_Total_Actions ;
END;
ELSE DO;
   P_Total_Actions  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_Total_Actions  =     299133.635532493;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
drop
H11
H12
H13
;
drop S_:;
