****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label P_Total_Actions = 'Predicted: Total_Actions' ;
      P_Total_Actions  = 0;
label R_Total_Actions = 'Residual: Total_Actions' ;
label _WARN_ = 'Warnings' ;



 DROP _ARB_F_;
 DROP _ARB_BADF_;
     _ARB_F_ = 13651.015852;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   272 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

   DROP _BRANCH_;
  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3904.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 9875 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -832.4267109;
      END;
    END;
  END;

********** LEAF     2  NODE   273 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3904.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      9875 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 365.13743437;
      END;
    END;
  END;

********** LEAF     3  NODE   271 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  3904.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 3152.1599924;
    END;
  END;

********** LEAF     4  NODE   277 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 8562 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -793.5681981;
      END;
    END;
  END;

********** LEAF     5  NODE   278 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      8562 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 227.95626196;
      END;
    END;
  END;

********** LEAF     6  NODE   276 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    3951 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2958.6984777;
    END;
  END;

********** LEAF     7  NODE   282 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3803.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 7384 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -770.5807818;
      END;
    END;
  END;

********** LEAF     8  NODE   283 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3803.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      7384 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 86.209536822;
      END;
    END;
  END;

********** LEAF     9  NODE   281 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  3803.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2605.8605613;
    END;
  END;

********** LEAF    10  NODE   287 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11403.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 4674 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -819.5928526;
      END;
    END;
  END;

********** LEAF    11  NODE   288 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11403.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      4674 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -335.8171601;
      END;
    END;
  END;

********** LEAF    12  NODE   286 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11403.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1339.1551977;
    END;
  END;

********** LEAF    13  NODE   292 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11905 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 5007 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -723.746143;
      END;
    END;
  END;

********** LEAF    14  NODE   293 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11905 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      5007 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -281.5285091;
      END;
    END;
  END;

********** LEAF    15  NODE   291 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11905 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1360.0305343;
    END;
  END;

********** LEAF    16  NODE   297 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2167.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               3983.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -709.6482237;
      END;
    END;
  END;

********** LEAF    17  NODE   298 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2167.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    3983.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -303.5608986;
      END;
    END;
  END;

********** LEAF    18  NODE   296 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2167.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1196.5523752;
    END;
  END;

********** LEAF    19  NODE   302 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11709.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 3752 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -657.8308076;
      END;
    END;
  END;

********** LEAF    20  NODE   303 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11709.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      3752 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -290.7863137;
      END;
    END;
  END;

********** LEAF    21  NODE   301 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11709.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1139.1921561;
    END;
  END;

********** LEAF    22  NODE   307 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2141.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 5614 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -523.5866044;
      END;
    END;
  END;

********** LEAF    23  NODE   308 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2141.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      5614 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -188.3735337;
      END;
    END;
  END;

********** LEAF    24  NODE   306 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2141.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 969.95930747;
    END;
  END;

********** LEAF    25  NODE   312 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11948 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 3288 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -557.4454246;
      END;
    END;
  END;

********** LEAF    26  NODE   313 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11948 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      3288 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -251.249762;
      END;
    END;
  END;

********** LEAF    27  NODE   311 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11948 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 942.46370093;
    END;
  END;

********** LEAF    28  NODE   317 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2082 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2951.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -528.8169712;
      END;
    END;
  END;

********** LEAF    29  NODE   318 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2082 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2951.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -240.4627714;
      END;
    END;
  END;

********** LEAF    30  NODE   316 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2082 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 715.24096653;
    END;
  END;

********** LEAF    31  NODE   322 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11876 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               5354.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -395.2075158;
      END;
    END;
  END;

********** LEAF    32  NODE   323 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11876 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    5354.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -149.2840249;
      END;
    END;
  END;

********** LEAF    33  NODE   321 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11876 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 728.45852151;
    END;
  END;

********** LEAF    34  NODE   327 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2143 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2607.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -457.9707268;
      END;
    END;
  END;

********** LEAF    35  NODE   328 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2143 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2607.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -201.3795994;
      END;
    END;
  END;

********** LEAF    36  NODE   326 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2143 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 609.6639711;
    END;
  END;

********** LEAF    37  NODE   332 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11969 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               4308.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -347.7439209;
      END;
    END;
  END;

********** LEAF    38  NODE   333 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11969 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    4308.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -149.9052358;
      END;
    END;
  END;

********** LEAF    39  NODE   331 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11969 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 637.38199422;
    END;
  END;

********** LEAF    40  NODE   337 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2130.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2366.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -394.3950278;
      END;
    END;
  END;

********** LEAF    41  NODE   338 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2130.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2366.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -172.717545;
      END;
    END;
  END;

********** LEAF    42  NODE   339 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2130.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD3 ) AND 
      TextCluster_SVD3  <     0.12678776784366 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 723.74526822;
      END;
    END;
  END;

********** LEAF    43  NODE   340 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2130.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD3 ) AND 
          0.12678776784366 <= TextCluster_SVD3  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 408.75583685;
      END;
    END;
  END;

********** LEAF    44  NODE   344 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11861.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 6041 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -262.4294123;
      END;
    END;
  END;

********** LEAF    45  NODE   345 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11861.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      6041 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -84.1321749;
      END;
    END;
  END;

********** LEAF    46  NODE   343 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11861.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 587.46915295;
    END;
  END;

********** LEAF    47  NODE   349 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11794.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2211.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -340.4624422;
      END;
    END;
  END;

********** LEAF    48  NODE   350 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11794.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2211.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -141.4914845;
      END;
    END;
  END;

********** LEAF    49  NODE   348 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11794.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 435.60168898;
    END;
  END;

********** LEAF    50  NODE   354 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2216.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                598.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -244.4024401;
      END;
    END;
  END;

********** LEAF    51  NODE   355 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2216.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                     598.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -106.5890552;
      END;
    END;
  END;

********** LEAF    52  NODE   353 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2216.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 466.79846878;
    END;
  END;

********** LEAF    53  NODE   359 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                12115 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 2277 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -277.0371512;
      END;
    END;
  END;

********** LEAF    54  NODE   360 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                12115 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      2277 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -123.566221;
      END;
    END;
  END;

********** LEAF    55  NODE   358 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   12115 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 374.03594464;
    END;
  END;

********** LEAF    56  NODE   364 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2120.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               6043.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -177.1283502;
      END;
    END;
  END;

********** LEAF    57  NODE   365 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2120.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    6043.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -50.58309611;
      END;
    END;
  END;

********** LEAF    58  NODE   363 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2120.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 305.1059373;
    END;
  END;

********** LEAF    59  NODE   369 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3939.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               2105.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -114.6001497;
      END;
    END;
  END;

********** LEAF    60  NODE   370 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3939.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    2105.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -587.7779974;
      END;
    END;
  END;

********** LEAF    61  NODE   368 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  3939.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1399.9238196;
    END;
  END;

********** LEAF    62  NODE   374 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2147 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                  312 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -225.5178961;
      END;
    END;
  END;

********** LEAF    63  NODE   375 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2147 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                       312 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -82.26285504;
      END;
    END;
  END;

********** LEAF    64  NODE   373 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2147 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 343.58391222;
    END;
  END;

********** LEAF    65  NODE   379 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2080.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                  779 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -147.0768978;
      END;
    END;
  END;

********** LEAF    66  NODE   380 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2080.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                       779 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -38.80529522;
      END;
    END;
  END;

********** LEAF    67  NODE   381 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2080.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD5 ) AND 
      TextCluster_SVD5  <     0.00378259700652 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD5  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 145.80037116;
      END;
    END;
  END;

********** LEAF    68  NODE   382 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2080.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD5 ) AND 
          0.00378259700652 <= TextCluster_SVD5  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 238.7773664;
      END;
    END;
  END;

********** LEAF    69  NODE   386 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2115 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2266.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -186.6538208;
      END;
    END;
  END;

********** LEAF    70  NODE   387 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2115 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2266.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -65.45692437;
      END;
    END;
  END;

********** LEAF    71  NODE   385 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2115 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 164.21724175;
    END;
  END;

********** LEAF    72  NODE   391 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11794.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 6096 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -113.9848899;
      END;
    END;
  END;

********** LEAF    73  NODE   392 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11794.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      6096 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -16.57719717;
      END;
    END;
  END;

********** LEAF    74  NODE   390 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11794.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 215.52116464;
    END;
  END;

********** LEAF    75  NODE   396 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11617.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2173.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -159.7476846;
      END;
    END;
  END;

********** LEAF    76  NODE   397 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11617.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2173.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -50.77432065;
      END;
    END;
  END;

********** LEAF    77  NODE   395 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11617.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 275.98159246;
    END;
  END;

********** LEAF    78  NODE   401 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2115 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                  314 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -141.9641109;
      END;
    END;
  END;

********** LEAF    79  NODE   402 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2115 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                       314 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -49.82771359;
      END;
    END;
  END;

********** LEAF    80  NODE   400 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2115 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 229.51832099;
    END;
  END;

********** LEAF    81  NODE   406 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2163 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                  823 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -89.98151609;
      END;
    END;
  END;

********** LEAF    82  NODE   407 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2163 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                       823 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -19.69110556;
      END;
    END;
  END;

********** LEAF    83  NODE   405 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2163 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 112.04859334;
    END;
  END;

********** LEAF    84  NODE   411 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11543.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               6223.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -76.66565265;
      END;
    END;
  END;

********** LEAF    85  NODE   412 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11543.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    6223.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -3.139472658;
      END;
    END;
  END;

********** LEAF    86  NODE   410 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11543.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 137.60968992;
    END;
  END;

********** LEAF    87  NODE   416 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3948.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                11520 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -40.68847461;
      END;
    END;
  END;

********** LEAF    88  NODE   417 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               3948.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                     11520 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -682.4092311;
      END;
    END;
  END;

********** LEAF    89  NODE   415 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  3948.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 862.01914919;
    END;
  END;

********** LEAF    90  NODE   421 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11516 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 3094 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -89.51763352;
      END;
    END;
  END;

********** LEAF    91  NODE   422 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11516 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      3094 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -21.79741108;
      END;
    END;
  END;

********** LEAF    92  NODE   423 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11516 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD7 ) AND 
      TextCluster_SVD7  <    -0.04975457556625 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 253.68909436;
      END;
    END;
  END;

********** LEAF    93  NODE   424 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11516 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD7 ) AND 
         -0.04975457556625 <= TextCluster_SVD7  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 30.839702286;
      END;
    END;
  END;

********** LEAF    94  NODE   428 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               4048.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                11643 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -36.57947192;
      END;
    END;
  END;

********** LEAF    95  NODE   429 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               4048.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                     11643 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -683.3955941;
      END;
    END;
  END;

********** LEAF    96  NODE   427 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  4048.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1034.7672037;
    END;
  END;

********** LEAF    97  NODE   433 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                 1295 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -42.11321732;
      END;
    END;
  END;

********** LEAF    98  NODE   434 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                      1295 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -280.0879314;
      END;
    END;
  END;

********** LEAF    99  NODE   432 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    3951 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 754.45963991;
    END;
  END;

********** LEAF   100  NODE   436 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD4 ) AND 
    TextCluster_SVD4  <     -0.3124300221123 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -100.5541818;
    END;
  END;

********** LEAF   101  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD4 ) AND 
        -0.3124300221123 <= TextCluster_SVD4  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD4  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 6945 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -47.4933802;
      END;
    END;
  END;

********** LEAF   102  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD4 ) AND 
        -0.3124300221123 <= TextCluster_SVD4  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD4  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      6945 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 140.09184348;
      END;
    END;
  END;

********** LEAF   103  NODE   441 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Character_Count ) AND 
    Character_Count  <                 26.5 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 158.02400541;
    END;
  END;

********** LEAF   104  NODE   443 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Character_Count ) AND 
                    26.5 <= Character_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Character_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD11 ) AND 
      TextCluster_SVD11  <     0.33566449149053 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -77.78916156;
      END;
    END;
  END;

********** LEAF   105  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Character_Count ) AND 
                    26.5 <= Character_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Character_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD11 ) AND 
          0.33566449149053 <= TextCluster_SVD11  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 115.01521741;
      END;
    END;
  END;

********** LEAF   106  NODE   448 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw4 ) AND 
    TextTopic_raw4  <               0.0125 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw4  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD11 ) AND 
      TextCluster_SVD11  <     0.40977075189142 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -59.16333505;
      END;
    END;
  END;

********** LEAF   107  NODE   449 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw4 ) AND 
    TextTopic_raw4  <               0.0125 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw4  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD11 ) AND 
          0.40977075189142 <= TextCluster_SVD11  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 111.45533539;
      END;
    END;
  END;

********** LEAF   108  NODE   447 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw4 ) AND 
                  0.0125 <= TextTopic_raw4  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 134.80148163;
    END;
  END;

********** LEAF   109  NODE   453 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11508.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               6353.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -44.59400123;
      END;
    END;
  END;

********** LEAF   110  NODE   454 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11508.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    6353.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 26.941448223;
      END;
    END;
  END;

********** LEAF   111  NODE   452 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11508.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 129.05076356;
    END;
  END;

********** LEAF   112  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw9 ) AND 
    TextTopic_raw9  <               0.0265 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw9  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
      Character_Count  <                 27.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 96.0687198;
      END;
    END;
  END;

********** LEAF   113  NODE   459 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw9 ) AND 
    TextTopic_raw9  <               0.0265 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw9  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
                      27.5 <= Character_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Character_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -51.81948119;
      END;
    END;
  END;

********** LEAF   114  NODE   457 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw9 ) AND 
                  0.0265 <= TextTopic_raw9  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 148.32314274;
    END;
  END;

********** LEAF   115  NODE   463 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
    TextCluster_SVD7  <    -0.06688184067891 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD1 ) AND 
      TextCluster_SVD1  <     0.40149424484605 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -48.9786409;
      END;
    END;
  END;

********** LEAF   116  NODE   464 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
    TextCluster_SVD7  <    -0.06688184067891 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD1 ) AND 
          0.40149424484605 <= TextCluster_SVD1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 100.19309467;
      END;
    END;
  END;

********** LEAF   117  NODE   465 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
       -0.06688184067891 <= TextCluster_SVD7  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               2117.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -15.63137387;
      END;
    END;
  END;

********** LEAF   118  NODE   466 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
       -0.06688184067891 <= TextCluster_SVD7  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    2117.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -239.7887821;
      END;
    END;
  END;

********** LEAF   119  NODE   470 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
    TextCluster_SVD11  <     0.40656460266648 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD8 ) AND 
      TextCluster_SVD8  <  -5.8700680457899E-6 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -81.48870296;
      END;
    END;
  END;

********** LEAF   120  NODE   471 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
    TextCluster_SVD11  <     0.40656460266648 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD8 ) AND 
       -5.8700680457899E-6 <= TextCluster_SVD8  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD8  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 37.621253549;
      END;
    END;
  END;

********** LEAF   121  NODE   469 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
        0.40656460266648 <= TextCluster_SVD11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 145.57854412;
    END;
  END;

********** LEAF   122  NODE   475 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw9 ) AND 
    TextTopic_raw9  <               0.0195 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw9  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
      TextCluster_SVD9  <    -0.14083862168611 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -89.26715559;
      END;
    END;
  END;

********** LEAF   123  NODE   476 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw9 ) AND 
    TextTopic_raw9  <               0.0195 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw9  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
         -0.14083862168611 <= TextCluster_SVD9  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 18.534221551;
      END;
    END;
  END;

********** LEAF   124  NODE   474 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw9 ) AND 
                  0.0195 <= TextTopic_raw9  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 120.71221578;
    END;
  END;

********** LEAF   125  NODE   480 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                11622 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -20.14406455;
      END;
    END;
  END;

********** LEAF   126  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                     11622 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -558.7118841;
      END;
    END;
  END;

********** LEAF   127  NODE   479 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    3951 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 634.91478747;
    END;
  END;

********** LEAF   128  NODE   485 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
    TextCluster_SVD7  <      0.1075403711011 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               3076.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -87.56171792;
      END;
    END;
  END;

********** LEAF   129  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
    TextCluster_SVD7  <      0.1075403711011 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    3076.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 427.42892795;
      END;
    END;
  END;

********** LEAF   130  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
         0.1075403711011 <= TextCluster_SVD7  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               6927.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -23.80129856;
      END;
    END;
  END;

********** LEAF   131  NODE   488 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
         0.1075403711011 <= TextCluster_SVD7  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    6927.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -151.9362288;
      END;
    END;
  END;

********** LEAF   132  NODE   492 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               7717.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -17.97292988;
      END;
    END;
  END;

********** LEAF   133  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3951 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    7717.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -249.4730231;
      END;
    END;
  END;

********** LEAF   134  NODE   491 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    3951 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 533.16638141;
    END;
  END;

********** LEAF   135  NODE   497 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
    TextCluster_SVD11  <     0.40747653486653 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
      Character_Count  <                 28.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 85.882112944;
      END;
    END;
  END;

********** LEAF   136  NODE   498 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
    TextCluster_SVD11  <     0.40747653486653 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
                      28.5 <= Character_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Character_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -54.20278776;
      END;
    END;
  END;

********** LEAF   137  NODE   496 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
        0.40747653486653 <= TextCluster_SVD11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 110.45007481;
    END;
  END;

********** LEAF   138  NODE   502 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD1 ) AND 
    TextCluster_SVD1  <     0.31208281572499 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD1 ) AND 
      TextCluster_SVD1  <     0.23214652887397 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD1  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -44.19814335;
      END;
    END;
  END;

********** LEAF   139  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD1 ) AND 
    TextCluster_SVD1  <     0.31208281572499 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD1 ) AND 
          0.23214652887397 <= TextCluster_SVD1  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -127.4614175;
      END;
    END;
  END;

********** LEAF   140  NODE   504 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD1 ) AND 
        0.31208281572499 <= TextCluster_SVD1  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD1  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextTopic_raw9 ) AND 
      TextTopic_raw9  <               0.0195 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextTopic_raw9  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1.3730272947;
      END;
    END;
  END;

********** LEAF   141  NODE   505 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD1 ) AND 
        0.31208281572499 <= TextCluster_SVD1  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD1  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextTopic_raw9 ) AND 
                    0.0195 <= TextTopic_raw9  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 151.25763278;
      END;
    END;
  END;

********** LEAF   142  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0085 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               3156.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -64.24088777;
      END;
    END;
  END;

********** LEAF   143  NODE   510 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0085 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    3156.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 408.68731511;
      END;
    END;
  END;

********** LEAF   144  NODE   511 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
                  0.0085 <= TextTopic_raw11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD11 ) AND 
      TextCluster_SVD11  <     0.07325694927544 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -152.1217747;
      END;
    END;
  END;

********** LEAF   145  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
                  0.0085 <= TextTopic_raw11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD11 ) AND 
          0.07325694927544 <= TextCluster_SVD11  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -54.45254683;
      END;
    END;
  END;

********** LEAF   146  NODE   516 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
    TextCluster_SVD11  <     0.40747653486653 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               2105.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 18.537077976;
      END;
    END;
  END;

********** LEAF   147  NODE   517 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
    TextCluster_SVD11  <     0.40747653486653 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    2105.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -164.1577149;
      END;
    END;
  END;

********** LEAF   148  NODE   515 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD11 ) AND 
        0.40747653486653 <= TextCluster_SVD11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 97.874200655;
    END;
  END;

********** LEAF   149  NODE   521 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
    TextCluster_SVD9  <    -0.06203054137746 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD4 ) AND 
      TextCluster_SVD4  <    -0.12294456281495 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD4  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -36.92007248;
      END;
    END;
  END;

********** LEAF   150  NODE   522 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
    TextCluster_SVD9  <    -0.06203054137746 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD4 ) AND 
         -0.12294456281495 <= TextCluster_SVD4  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 149.28723771;
      END;
    END;
  END;

********** LEAF   151  NODE   523 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
       -0.06203054137746 <= TextCluster_SVD9  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                 2081 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.230178497;
      END;
    END;
  END;

********** LEAF   152  NODE   524 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
       -0.06203054137746 <= TextCluster_SVD9  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                      2081 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -213.0302589;
      END;
    END;
  END;

********** LEAF   153  NODE   528 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
    TextCluster_SVD7  <    -0.13756638083573 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 7764 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -21.25554502;
      END;
    END;
  END;

********** LEAF   154  NODE   529 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
    TextCluster_SVD7  <    -0.13756638083573 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      7764 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 180.44421823;
      END;
    END;
  END;

********** LEAF   155  NODE   530 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
       -0.13756638083573 <= TextCluster_SVD7  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               2099.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 7.0161508894;
      END;
    END;
  END;

********** LEAF   156  NODE   531 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD7 ) AND 
       -0.13756638083573 <= TextCluster_SVD7  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    2099.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -117.6590811;
      END;
    END;
  END;

********** LEAF   157  NODE   535 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0095 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
      Character_Count  <                 87.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Character_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 3.6849997231;
      END;
    END;
  END;

********** LEAF   158  NODE   536 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0095 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
                      87.5 <= Character_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 176.53224828;
      END;
    END;
  END;

********** LEAF   159  NODE   534 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
                  0.0095 <= TextTopic_raw11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -66.4631631;
    END;
  END;
P_Total_Actions  = _ARB_F_;

*****  RESIDUALS R_ *************;
IF MISSING( Total_Actions ) THEN R_Total_Actions  = .;
ELSE R_Total_Actions  = Total_Actions  - P_Total_Actions ;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

