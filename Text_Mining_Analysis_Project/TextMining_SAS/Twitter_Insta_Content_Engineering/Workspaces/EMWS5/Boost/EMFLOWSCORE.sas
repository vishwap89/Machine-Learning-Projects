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
     _ARB_F_ = 13480.502042;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   266 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

   DROP _BRANCH_;
  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3870 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               9068.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -840.0324076;
      END;
    END;
  END;

********** LEAF     2  NODE   267 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 3870 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    9068.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 276.32760064;
      END;
    END;
  END;

********** LEAF     3  NODE   265 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    3870 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2970.4413212;
    END;
  END;

********** LEAF     4  NODE   271 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11888.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               5284.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -923.2061689;
      END;
    END;
  END;

********** LEAF     5  NODE   272 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11888.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    5284.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -356.7985186;
      END;
    END;
  END;

********** LEAF     6  NODE   270 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11888.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1740.5107388;
    END;
  END;

********** LEAF     7  NODE   276 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11861 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 6001 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -804.2924345;
      END;
    END;
  END;

********** LEAF     8  NODE   277 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11861 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      6001 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -282.774741;
      END;
    END;
  END;

********** LEAF     9  NODE   275 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11861 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1563.1416181;
    END;
  END;

********** LEAF    10  NODE   281 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2235 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
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
       _ARB_F_ + -770.8908074;
      END;
    END;
  END;

********** LEAF    11  NODE   282 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2235 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      4674 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -322.9281532;
      END;
    END;
  END;

********** LEAF    12  NODE   280 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2235 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1505.4547264;
    END;
  END;

********** LEAF    13  NODE   286 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11650 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 4012 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -742.593913;
      END;
    END;
  END;

********** LEAF    14  NODE   287 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11650 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      4012 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -340.6358874;
      END;
    END;
  END;

********** LEAF    15  NODE   285 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11650 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1250.1312287;
    END;
  END;

********** LEAF    16  NODE   291 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 4300 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -663.7412421;
      END;
    END;
  END;

********** LEAF    17  NODE   292 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      4300 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -290.9362576;
      END;
    END;
  END;

********** LEAF    18  NODE   290 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2172.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1141.2614463;
    END;
  END;

********** LEAF    19  NODE   296 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                12392 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               6274.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -537.0753713;
      END;
    END;
  END;

********** LEAF    20  NODE   297 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                12392 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    6274.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -191.2960219;
      END;
    END;
  END;

********** LEAF    21  NODE   295 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   12392 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1217.6847705;
    END;
  END;

********** LEAF    22  NODE   301 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2196.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               3380.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -591.5198715;
      END;
    END;
  END;

********** LEAF    23  NODE   302 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2196.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    3380.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -267.8120283;
      END;
    END;
  END;

********** LEAF    24  NODE   300 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2196.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 962.67984762;
    END;
  END;

********** LEAF    25  NODE   306 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11934.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               3179.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -540.7085309;
      END;
    END;
  END;

********** LEAF    26  NODE   307 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11934.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    3179.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -247.8185241;
      END;
    END;
  END;

********** LEAF    27  NODE   305 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11934.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 870.04822914;
    END;
  END;

********** LEAF    28  NODE   311 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2105.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 6568 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -396.1346751;
      END;
    END;
  END;

********** LEAF    29  NODE   312 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2105.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      6568 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -121.7226063;
      END;
    END;
  END;

********** LEAF    30  NODE   310 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2105.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 774.66040345;
    END;
  END;

********** LEAF    31  NODE   316 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                12056 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 2775 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -478.2504716;
      END;
    END;
  END;

********** LEAF    32  NODE   317 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                12056 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      2775 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -214.8079723;
      END;
    END;
  END;

********** LEAF    33  NODE   315 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   12056 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 795.65973577;
    END;
  END;

********** LEAF    34  NODE   321 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2113.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2543.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -445.96019;
      END;
    END;
  END;

********** LEAF    35  NODE   322 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2113.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2543.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -201.8735285;
      END;
    END;
  END;

********** LEAF    36  NODE   320 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2113.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 708.07926037;
    END;
  END;

********** LEAF    37  NODE   326 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11888.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
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
       _ARB_F_ + -291.1232394;
      END;
    END;
  END;

********** LEAF    38  NODE   327 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11888.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      6945 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -68.86306956;
      END;
    END;
  END;

********** LEAF    39  NODE   325 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11888.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 591.37559718;
    END;
  END;

********** LEAF    40  NODE   331 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2137 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                508.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -335.0140057;
      END;
    END;
  END;

********** LEAF    41  NODE   332 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2137 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                     508.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -148.4235392;
      END;
    END;
  END;

********** LEAF    42  NODE   330 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2137 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 559.8694568;
    END;
  END;

********** LEAF    43  NODE   336 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2171 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 2353 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -355.5061953;
      END;
    END;
  END;

********** LEAF    44  NODE   337 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2171 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      2353 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -151.8961805;
      END;
    END;
  END;

********** LEAF    45  NODE   335 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2171 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 468.31664668;
    END;
  END;

********** LEAF    46  NODE   341 ***************;
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
      Like_Count  <                 6945 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -218.4739641;
      END;
    END;
  END;

********** LEAF    47  NODE   342 ***************;
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
                      6945 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -42.00112466;
      END;
    END;
  END;

********** LEAF    48  NODE   340 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11617.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 557.08514979;
    END;
  END;

********** LEAF    49  NODE   346 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11687.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2183.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -303.3129218;
      END;
    END;
  END;

********** LEAF    50  NODE   347 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11687.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2183.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -122.4332065;
      END;
    END;
  END;

********** LEAF    51  NODE   345 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11687.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 423.77531228;
    END;
  END;

********** LEAF    52  NODE   351 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2119 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 3635 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -224.4532136;
      END;
    END;
  END;

********** LEAF    53  NODE   352 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2119 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      3635 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -98.12515106;
      END;
    END;
  END;

********** LEAF    54  NODE   350 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2119 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 379.55046555;
    END;
  END;

********** LEAF    55  NODE   356 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11650 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2203.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -248.1852574;
      END;
    END;
  END;

********** LEAF    56  NODE   357 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <                11650 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2203.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -104.5923499;
      END;
    END;
  END;

********** LEAF    57  NODE   355 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                   11650 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 292.70830236;
    END;
  END;

********** LEAF    58  NODE   361 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2138.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                812.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -166.801554;
      END;
    END;
  END;

********** LEAF    59  NODE   362 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2138.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                     812.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -61.30659641;
      END;
    END;
  END;

********** LEAF    60  NODE   360 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2138.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 305.39799378;
    END;
  END;

********** LEAF    61  NODE   366 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2151 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                330.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -205.5645556;
      END;
    END;
  END;

********** LEAF    62  NODE   367 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2151 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                     330.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -87.19275736;
      END;
    END;
  END;

********** LEAF    63  NODE   365 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2151 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 272.21467538;
    END;
  END;

********** LEAF    64  NODE   371 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11737.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 2192 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -192.3968817;
      END;
    END;
  END;

********** LEAF    65  NODE   372 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11737.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      2192 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -77.96351094;
      END;
    END;
  END;

********** LEAF    66  NODE   370 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11737.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 257.64735799;
    END;
  END;

********** LEAF    67  NODE   376 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2149 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                  669 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -132.7370731;
      END;
    END;
  END;

********** LEAF    68  NODE   377 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2149 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                       669 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -53.05413816;
      END;
    END;
  END;

********** LEAF    69  NODE   375 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2149 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 224.1532278;
    END;
  END;

********** LEAF    70  NODE   381 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11888.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               4992.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -117.5355691;
      END;
    END;
  END;

********** LEAF    71  NODE   382 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11888.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    4992.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -39.83700799;
      END;
    END;
  END;

********** LEAF    72  NODE   380 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11888.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 258.48255301;
    END;
  END;

********** LEAF    73  NODE   386 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               2108.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -151.1894829;
      END;
    END;
  END;

********** LEAF    74  NODE   387 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    2108.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -55.6246897;
      END;
    END;
  END;

********** LEAF    75  NODE   385 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11172.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 186.30159733;
    END;
  END;

********** LEAF    76  NODE   391 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0225 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD44 ) AND 
      TextCluster_SVD44  <     0.00383322673442 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD44  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2.109325433;
      END;
    END;
  END;

********** LEAF    77  NODE   392 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0225 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD44 ) AND 
          0.00383322673442 <= TextCluster_SVD44  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -136.6728311;
      END;
    END;
  END;

********** LEAF    78  NODE   390 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
                  0.0225 <= TextTopic_raw11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 201.2236636;
    END;
  END;

********** LEAF    79  NODE   396 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11512.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 7166 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -84.3836606;
      END;
    END;
  END;

********** LEAF    80  NODE   397 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
    Like_Count  <              11512.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      7166 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.60224109;
      END;
    END;
  END;

********** LEAF    81  NODE   395 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Like_Count ) AND 
                 11512.5 <= Like_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 217.80174023;
    END;
  END;

********** LEAF    82  NODE   401 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2202 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                327.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -115.3488651;
      END;
    END;
  END;

********** LEAF    83  NODE   402 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <                 2202 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                     327.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -48.79948758;
      END;
    END;
  END;

********** LEAF    84  NODE   400 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                    2202 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 99.746413402;
    END;
  END;

********** LEAF    85  NODE   404 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
    TextCluster_SVD40  <    -0.09233587205581 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 220.18151829;
    END;
  END;

********** LEAF    86  NODE   406 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
       -0.09233587205581 <= TextCluster_SVD40  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD40  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD17 ) AND 
      TextCluster_SVD17  <    -0.03191539740989 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -131.1431165;
      END;
    END;
  END;

********** LEAF    87  NODE   407 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
       -0.09233587205581 <= TextCluster_SVD40  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD40  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD17 ) AND 
         -0.03191539740989 <= TextCluster_SVD17  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD17  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 12.678944781;
      END;
    END;
  END;

********** LEAF    88  NODE   409 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
    TextCluster_SVD40  <      -0.088663457173 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 158.99166593;
    END;
  END;

********** LEAF    89  NODE   411 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
         -0.088663457173 <= TextCluster_SVD40  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD40  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD36 ) AND 
      TextCluster_SVD36  <     0.00012796238329 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD36  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 22.597216674;
      END;
    END;
  END;

********** LEAF    90  NODE   412 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
         -0.088663457173 <= TextCluster_SVD40  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD40  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD36 ) AND 
          0.00012796238329 <= TextCluster_SVD36  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -153.529729;
      END;
    END;
  END;

********** LEAF    91  NODE   416 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2068.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                315.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -110.2709052;
      END;
    END;
  END;

********** LEAF    92  NODE   417 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               2068.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                     315.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -37.41200524;
      END;
    END;
  END;

********** LEAF    93  NODE   418 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2068.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD16 ) AND 
      TextCluster_SVD16  <      0.0009771804304 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 300.66648178;
      END;
    END;
  END;

********** LEAF    94  NODE   419 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  2068.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD16 ) AND 
           0.0009771804304 <= TextCluster_SVD16  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD16  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -51.46488159;
      END;
    END;
  END;

********** LEAF    95  NODE   423 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD4 ) AND 
    TextCluster_SVD4  <     0.04436502840002 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD4  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <               8722.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -52.43306904;
      END;
    END;
  END;

********** LEAF    96  NODE   424 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD4 ) AND 
    TextCluster_SVD4  <     0.04436502840002 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD4  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                    8722.5 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 197.4584796;
      END;
    END;
  END;

********** LEAF    97  NODE   422 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD4 ) AND 
        0.04436502840002 <= TextCluster_SVD4  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -125.1993222;
    END;
  END;

********** LEAF    98  NODE   428 ***************;
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
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                 2121 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -36.80097365;
      END;
    END;
  END;

********** LEAF    99  NODE   429 ***************;
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
      IF  NOT MISSING(Retweet_Count ) AND 
                      2121 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1009.373404;
      END;
    END;
  END;

********** LEAF   100  NODE   427 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  3948.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1224.6939237;
    END;
  END;

********** LEAF   101  NODE   431 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
    TextCluster_SVD33  <    -0.13039139511569 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 179.43742091;
    END;
  END;

********** LEAF   102  NODE   433 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
       -0.13039139511569 <= TextCluster_SVD33  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD47 ) AND 
      TextCluster_SVD47  <    -0.00160100756983 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -122.2582522;
      END;
    END;
  END;

********** LEAF   103  NODE   434 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
       -0.13039139511569 <= TextCluster_SVD33  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD47 ) AND 
         -0.00160100756983 <= TextCluster_SVD47  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD47  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 23.571328105;
      END;
    END;
  END;

********** LEAF   104  NODE   436 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
    TextCluster_SVD33  <    -0.13186372862144 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 151.31593651;
    END;
  END;

********** LEAF   105  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
       -0.13186372862144 <= TextCluster_SVD33  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               3321.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -135.6139332;
      END;
    END;
  END;

********** LEAF   106  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
       -0.13186372862144 <= TextCluster_SVD33  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    3321.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 456.23337864;
      END;
    END;
  END;

********** LEAF   107  NODE   443 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0215 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD50 ) AND 
      TextCluster_SVD50  <    -0.11842350423322 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 101.50247614;
      END;
    END;
  END;

********** LEAF   108  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
    TextTopic_raw11  <               0.0215 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw11  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD50 ) AND 
         -0.11842350423322 <= TextCluster_SVD50  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD50  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -68.87673246;
      END;
    END;
  END;

********** LEAF   109  NODE   442 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw11 ) AND 
                  0.0215 <= TextTopic_raw11  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 147.29195346;
    END;
  END;

********** LEAF   110  NODE   446 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
    TextCluster_SVD33  <     -0.1319514997913 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 169.25522795;
    END;
  END;

********** LEAF   111  NODE   448 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
        -0.1319514997913 <= TextCluster_SVD33  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
      TextCluster_SVD9  <    -0.02286604130889 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 28.296464324;
      END;
    END;
  END;

********** LEAF   112  NODE   449 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD33 ) AND 
        -0.1319514997913 <= TextCluster_SVD33  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
         -0.02286604130889 <= TextCluster_SVD9  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -102.2242776;
      END;
    END;
  END;

********** LEAF   113  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw15 ) AND 
    TextTopic_raw15  <              -0.0135 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 199.78470184;
    END;
  END;

********** LEAF   114  NODE   453 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw15 ) AND 
                 -0.0135 <= TextTopic_raw15  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw15  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD46 ) AND 
      TextCluster_SVD46  <     0.01618039113673 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD46  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 26.184217805;
      END;
    END;
  END;

********** LEAF   115  NODE   454 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw15 ) AND 
                 -0.0135 <= TextTopic_raw15  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw15  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD46 ) AND 
          0.01618039113673 <= TextCluster_SVD46  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -106.2988053;
      END;
    END;
  END;

********** LEAF   116  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD6 ) AND 
    TextCluster_SVD6  <     0.06939608049578 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD6  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
      Character_Count  <                107.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Character_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -93.24143157;
      END;
    END;
  END;

********** LEAF   117  NODE   459 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD6 ) AND 
    TextCluster_SVD6  <     0.06939608049578 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD6  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
                     107.5 <= Character_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 116.74966345;
      END;
    END;
  END;

********** LEAF   118  NODE   457 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD6 ) AND 
        0.06939608049578 <= TextCluster_SVD6  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 196.35610063;
    END;
  END;

********** LEAF   119  NODE   463 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD42 ) AND 
    TextCluster_SVD42  <     0.10013370445902 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD42  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD41 ) AND 
      TextCluster_SVD41  <     0.01612618047413 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD41  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 48.368812007;
      END;
    END;
  END;

********** LEAF   120  NODE   464 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD42 ) AND 
    TextCluster_SVD42  <     0.10013370445902 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD42  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD41 ) AND 
          0.01612618047413 <= TextCluster_SVD41  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -144.1429001;
      END;
    END;
  END;

********** LEAF   121  NODE   462 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD42 ) AND 
        0.10013370445902 <= TextCluster_SVD42  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 153.20383569;
    END;
  END;

********** LEAF   122  NODE   468 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
    TextCluster_SVD40  <    -0.02860218422919 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                 8411 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -44.94225151;
      END;
    END;
  END;

********** LEAF   123  NODE   469 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
    TextCluster_SVD40  <    -0.02860218422919 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                      8411 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 285.04921139;
      END;
    END;
  END;

********** LEAF   124  NODE   470 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
       -0.02860218422919 <= TextCluster_SVD40  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD40  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               1821.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 4.0476985926;
      END;
    END;
  END;

********** LEAF   125  NODE   471 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD40 ) AND 
       -0.02860218422919 <= TextCluster_SVD40  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD40  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    1821.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -182.5902592;
      END;
    END;
  END;

********** LEAF   126  NODE   473 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
    TextCluster_SVD9  <    -0.06721774577798 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 110.3474287;
    END;
  END;

********** LEAF   127  NODE   475 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
       -0.06721774577798 <= TextCluster_SVD9  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <               3056.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -107.9288675;
      END;
    END;
  END;

********** LEAF   128  NODE   476 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
       -0.06721774577798 <= TextCluster_SVD9  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                    3056.5 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 145.50199262;
      END;
    END;
  END;

********** LEAF   129  NODE   480 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
    TextCluster_SVD9  <    -0.02521063200942 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD44 ) AND 
      TextCluster_SVD44  <     0.00938359386338 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD44  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 215.83577689;
      END;
    END;
  END;

********** LEAF   130  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
    TextCluster_SVD9  <    -0.02521063200942 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD44 ) AND 
          0.00938359386338 <= TextCluster_SVD44  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -80.77924645;
      END;
    END;
  END;

********** LEAF   131  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
       -0.02521063200942 <= TextCluster_SVD9  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
      Retweet_Count  <                 1983 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2.377935901;
      END;
    END;
  END;

********** LEAF   132  NODE   483 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD9 ) AND 
       -0.02521063200942 <= TextCluster_SVD9  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Retweet_Count ) AND 
                      1983 <= Retweet_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -174.8267549;
      END;
    END;
  END;

********** LEAF   133  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               4166.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
      Like_Count  <                11861 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Like_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -13.83986507;
      END;
    END;
  END;

********** LEAF   134  NODE   488 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
    Retweet_Count  <               4166.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Retweet_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Like_Count ) AND 
                     11861 <= Like_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -927.4031773;
      END;
    END;
  END;

********** LEAF   135  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Retweet_Count ) AND 
                  4166.5 <= Retweet_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1045.802518;
    END;
  END;

********** LEAF   136  NODE   492 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
    TextCluster_SVD3  <     0.03212600094198 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD5 ) AND 
      TextCluster_SVD5  <     0.00334224297531 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 265.41385864;
      END;
    END;
  END;

********** LEAF   137  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
    TextCluster_SVD3  <     0.03212600094198 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD5 ) AND 
          0.00334224297531 <= TextCluster_SVD5  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD5  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -30.91914263;
      END;
    END;
  END;

********** LEAF   138  NODE   494 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
        0.03212600094198 <= TextCluster_SVD3  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD10 ) AND 
      TextCluster_SVD10  <    -0.08433407422675 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 82.967249744;
      END;
    END;
  END;

********** LEAF   139  NODE   495 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
        0.03212600094198 <= TextCluster_SVD3  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD10 ) AND 
         -0.08433407422675 <= TextCluster_SVD10  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD10  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -101.7488316;
      END;
    END;
  END;

********** LEAF   140  NODE   499 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD25 ) AND 
    TextCluster_SVD25  <    -0.06558681764525 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD5 ) AND 
      TextCluster_SVD5  <     0.02073752179356 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 4.9654559698;
      END;
    END;
  END;

********** LEAF   141  NODE   500 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD25 ) AND 
    TextCluster_SVD25  <    -0.06558681764525 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD5 ) AND 
          0.02073752179356 <= TextCluster_SVD5  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD5  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -185.213259;
      END;
    END;
  END;

********** LEAF   142  NODE   501 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD25 ) AND 
       -0.06558681764525 <= TextCluster_SVD25  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD25  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD33 ) AND 
      TextCluster_SVD33  <    -0.08598971907266 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 218.00975427;
      END;
    END;
  END;

********** LEAF   143  NODE   502 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD25 ) AND 
       -0.06558681764525 <= TextCluster_SVD25  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD25  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD33 ) AND 
         -0.08598971907266 <= TextCluster_SVD33  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD33  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.7746827512;
      END;
    END;
  END;

********** LEAF   144  NODE   506 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD45 ) AND 
    TextCluster_SVD45  <     0.10667066684705 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD45  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD42 ) AND 
      TextCluster_SVD42  <     0.08248702966617 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD42  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -71.58215925;
      END;
    END;
  END;

********** LEAF   145  NODE   507 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD45 ) AND 
    TextCluster_SVD45  <     0.10667066684705 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD45  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD42 ) AND 
          0.08248702966617 <= TextCluster_SVD42  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 65.955837501;
      END;
    END;
  END;

********** LEAF   146  NODE   505 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD45 ) AND 
        0.10667066684705 <= TextCluster_SVD45  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 130.59941309;
    END;
  END;

********** LEAF   147  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD41 ) AND 
    TextCluster_SVD41  <    -0.12644619669873 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 149.12224963;
    END;
  END;

********** LEAF   148  NODE   511 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD41 ) AND 
       -0.12644619669873 <= TextCluster_SVD41  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD41  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD51 ) AND 
      TextCluster_SVD51  <    -0.07410235160073 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -142.8633368;
      END;
    END;
  END;

********** LEAF   149  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD41 ) AND 
       -0.12644619669873 <= TextCluster_SVD41  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD41  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD51 ) AND 
         -0.07410235160073 <= TextCluster_SVD51  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD51  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1.694411251;
      END;
    END;
  END;
P_Total_Actions  = _ARB_F_;

*****  RESIDUALS R_ *************;
IF MISSING( Total_Actions ) THEN R_Total_Actions  = .;
ELSE R_Total_Actions  = Total_Actions  - P_Total_Actions ;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

