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


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_8 $      8; DROP _ARBFMT_8; 
_ARBFMT_8 = ' '; /* Initialize to avoid warning. */


 DROP _ARB_F_;
 DROP _ARB_BADF_;
     _ARB_F_ = 299133.63553;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   284 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

   DROP _BRANCH_;
  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             333637.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               183412 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -18632.32093;
      END;
    END;
  END;

********** LEAF     2  NODE   285 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             333637.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    183412 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -4059.436062;
      END;
    END;
  END;

********** LEAF     3  NODE   286 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                333637.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               3989.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 12899.635055;
      END;
    END;
  END;

********** LEAF     4  NODE   287 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                333637.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    3989.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 23586.071649;
      END;
    END;
  END;

********** LEAF     5  NODE   291 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               366365 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             208319.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -15619.86106;
      END;
    END;
  END;

********** LEAF     6  NODE   292 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               366365 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  208319.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1261.923178;
      END;
    END;
  END;

********** LEAF     7  NODE   290 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  366365 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 19346.008185;
    END;
  END;

********** LEAF     8  NODE   296 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             402355.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             231903.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -13026.74227;
      END;
    END;
  END;

********** LEAF     9  NODE   297 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             402355.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  231903.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1013.6199381;
      END;
    END;
  END;

********** LEAF    10  NODE   295 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                402355.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 20285.044011;
    END;
  END;

********** LEAF    11  NODE   301 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               309123 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             146273.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -15916.23538;
      END;
    END;
  END;

********** LEAF    12  NODE   302 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               309123 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  146273.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -4828.417816;
      END;
    END;
  END;

********** LEAF    13  NODE   303 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  309123 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD3 ) AND 
      TextCluster_SVD3  <    -0.00518320889252 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 10253.117051;
      END;
    END;
  END;

********** LEAF    14  NODE   304 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  309123 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD3 ) AND 
         -0.00518320889252 <= TextCluster_SVD3  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 13463.962545;
      END;
    END;
  END;

********** LEAF    15  NODE   308 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               449974 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             245085.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -10361.44218;
      END;
    END;
  END;

********** LEAF    16  NODE   309 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               449974 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  245085.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1824.9388905;
      END;
    END;
  END;

********** LEAF    17  NODE   307 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  449974 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 21498.164048;
    END;
  END;

********** LEAF    18  NODE   313 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               433649 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             171007.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -12262.48298;
      END;
    END;
  END;

********** LEAF    19  NODE   314 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               433649 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  171007.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -617.5065346;
      END;
    END;
  END;

********** LEAF    20  NODE   312 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  433649 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 17871.54478;
    END;
  END;

********** LEAF    21  NODE   318 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               349191 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               131611 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -13276.97138;
      END;
    END;
  END;

********** LEAF    22  NODE   319 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               349191 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    131611 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2848.607039;
      END;
    END;
  END;

********** LEAF    23  NODE   317 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  349191 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 11350.109656;
    END;
  END;

********** LEAF    24  NODE   323 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               294849 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               129281 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -11921.52031;
      END;
    END;
  END;

********** LEAF    25  NODE   324 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               294849 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    129281 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -4080.973106;
      END;
    END;
  END;

********** LEAF    26  NODE   325 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  294849 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               4443.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 4862.3300212;
      END;
    END;
  END;

********** LEAF    27  NODE   326 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  294849 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    4443.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 13760.422554;
      END;
    END;
  END;

********** LEAF    28  NODE   330 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               348579 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               159233 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -9529.759223;
      END;
    END;
  END;

********** LEAF    29  NODE   331 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               348579 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    159233 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1884.645726;
      END;
    END;
  END;

********** LEAF    30  NODE   329 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  348579 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 9127.7341215;
    END;
  END;

********** LEAF    31  NODE   335 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             281242.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               126355 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -10031.88345;
      END;
    END;
  END;

********** LEAF    32  NODE   336 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             281242.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    126355 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -3761.027416;
      END;
    END;
  END;

********** LEAF    33  NODE   337 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                281242.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               4538.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 3366.3297021;
      END;
    END;
  END;

********** LEAF    34  NODE   338 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                281242.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    4538.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 11485.985196;
      END;
    END;
  END;

********** LEAF    35  NODE   342 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               353555 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             196479.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -7049.772328;
      END;
    END;
  END;

********** LEAF    36  NODE   343 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               353555 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  196479.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -913.7959106;
      END;
    END;
  END;

********** LEAF    37  NODE   341 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  353555 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 7670.6889754;
    END;
  END;

********** LEAF    38  NODE   347 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             274442.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               128518 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -7996.84375;
      END;
    END;
  END;

********** LEAF    39  NODE   348 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             274442.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    128518 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -3191.327896;
      END;
    END;
  END;

********** LEAF    40  NODE   349 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                274442.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD44 ) AND 
      TextCluster_SVD44  <     0.01896550861991 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD44  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 3640.0993316;
      END;
    END;
  END;

********** LEAF    41  NODE   350 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                274442.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD44 ) AND 
          0.01896550861991 <= TextCluster_SVD44  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 5628.4046843;
      END;
    END;
  END;

********** LEAF    42  NODE   354 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             356114.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               139365 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -6891.026388;
      END;
    END;
  END;

********** LEAF    43  NODE   355 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             356114.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    139365 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1615.085962;
      END;
    END;
  END;

********** LEAF    44  NODE   353 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                356114.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 6491.9650546;
    END;
  END;

********** LEAF    45  NODE   359 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             347278.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             124364.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -6922.593479;
      END;
    END;
  END;

********** LEAF    46  NODE   360 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             347278.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  124364.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1596.209802;
      END;
    END;
  END;

********** LEAF    47  NODE   358 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                347278.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 5858.4116878;
    END;
  END;

********** LEAF    48  NODE   364 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             353150.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               219030 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -4490.443815;
      END;
    END;
  END;

********** LEAF    49  NODE   365 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             353150.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    219030 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -234.0422813;
      END;
    END;
  END;

********** LEAF    50  NODE   363 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                353150.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 5657.3270999;
    END;
  END;

********** LEAF    51  NODE   369 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               268132 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             124364.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -5555.047918;
      END;
    END;
  END;

********** LEAF    52  NODE   370 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               268132 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  124364.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2322.095844;
      END;
    END;
  END;

********** LEAF    53  NODE   371 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  268132 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             349633.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 677.99128859;
      END;
    END;
  END;

********** LEAF    54  NODE   372 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  268132 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  349633.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 4680.1890902;
      END;
    END;
  END;

********** LEAF    55  NODE   376 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4702.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             254476.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -3303.383992;
      END;
    END;
  END;

********** LEAF    56  NODE   377 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4702.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  254476.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 848.77654467;
      END;
    END;
  END;

********** LEAF    57  NODE   375 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4702.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 7398.4735993;
    END;
  END;

********** LEAF    58  NODE   381 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             318877.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             124756.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -4778.892186;
      END;
    END;
  END;

********** LEAF    59  NODE   382 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             318877.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  124756.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1283.535732;
      END;
    END;
  END;

********** LEAF    60  NODE   383 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                318877.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD7 ) AND 
      TextCluster_SVD7  <     0.02528326258404 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 2000.5727346;
      END;
    END;
  END;

********** LEAF    61  NODE   384 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                318877.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD7 ) AND 
          0.02528326258404 <= TextCluster_SVD7  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD7  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 4946.7787428;
      END;
    END;
  END;

********** LEAF    62  NODE   388 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               352369 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               216090 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2895.145332;
      END;
    END;
  END;

********** LEAF    63  NODE   389 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               352369 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    216090 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -250.5233867;
      END;
    END;
  END;

********** LEAF    64  NODE   387 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  352369 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 3788.8473856;
    END;
  END;

********** LEAF    65  NODE   393 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4606.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             199694.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2971.905852;
      END;
    END;
  END;

********** LEAF    66  NODE   394 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4606.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  199694.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -27.11666099;
      END;
    END;
  END;

********** LEAF    67  NODE   392 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4606.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 4989.687684;
    END;
  END;

********** LEAF    68  NODE   398 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             463440.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                745.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -3787.997188;
      END;
    END;
  END;

********** LEAF    69  NODE   399 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             463440.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     745.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1393.91548;
      END;
    END;
  END;

********** LEAF    70  NODE   397 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                463440.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 9475.164306;
    END;
  END;

********** LEAF    71  NODE   403 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             261091.5 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                  752 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -3391.527362;
      END;
    END;
  END;

********** LEAF    72  NODE   404 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             261091.5 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                       752 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1233.999886;
      END;
    END;
  END;

********** LEAF    73  NODE   405 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                261091.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               2546.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -32.09413899;
      END;
    END;
  END;

********** LEAF    74  NODE   406 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                261091.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    2546.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 2171.2635393;
      END;
    END;
  END;

********** LEAF    75  NODE   410 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <                 4870 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               125720 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2988.362443;
      END;
    END;
  END;

********** LEAF    76  NODE   411 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <                 4870 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    125720 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -366.4734819;
      END;
    END;
  END;

********** LEAF    77  NODE   409 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                    4870 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 3432.5023963;
    END;
  END;

********** LEAF    78  NODE   415 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               2556.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                744.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2762.408139;
      END;
    END;
  END;

********** LEAF    79  NODE   416 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               2556.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     744.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -668.1126897;
      END;
    END;
  END;

********** LEAF    80  NODE   417 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  2556.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD28 ) AND 
      TextCluster_SVD28  <     0.01892961418237 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD28  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 989.18376245;
      END;
    END;
  END;

********** LEAF    81  NODE   418 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  2556.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD28 ) AND 
          0.01892961418237 <= TextCluster_SVD28  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 3540.1116316;
      END;
    END;
  END;

********** LEAF    82  NODE   422 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               265930 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                748.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2485.603172;
      END;
    END;
  END;

********** LEAF    83  NODE   423 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               265930 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     748.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -971.3361365;
      END;
    END;
  END;

********** LEAF    84  NODE   424 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  265930 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               2593.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 104.05048545;
      END;
    END;
  END;

********** LEAF    85  NODE   425 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  265930 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    2593.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 2100.4054178;
      END;
    END;
  END;

********** LEAF    86  NODE   429 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4688.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             124351.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2450.333125;
      END;
    END;
  END;

********** LEAF    87  NODE   430 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4688.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  124351.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -335.3337751;
      END;
    END;
  END;

********** LEAF    88  NODE   428 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4688.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2626.9566359;
    END;
  END;

********** LEAF    89  NODE   434 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               355067 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                775.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -2175.739882;
      END;
    END;
  END;

********** LEAF    90  NODE   435 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               355067 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     775.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -469.1502454;
      END;
    END;
  END;

********** LEAF    91  NODE   433 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  355067 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2040.1729998;
    END;
  END;

********** LEAF    92  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4859.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             154287.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1764.73815;
      END;
    END;
  END;

********** LEAF    93  NODE   440 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4859.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  154287.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -228.0803167;
      END;
    END;
  END;

********** LEAF    94  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4859.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 3897.9118567;
    END;
  END;

********** LEAF    95  NODE   444 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4938.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               128184 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1823.227443;
      END;
    END;
  END;

********** LEAF    96  NODE   445 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4938.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    128184 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -283.5853657;
      END;
    END;
  END;

********** LEAF    97  NODE   443 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4938.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2678.4882769;
    END;
  END;

********** LEAF    98  NODE   449 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             283881.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                767.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1596.060804;
      END;
    END;
  END;

********** LEAF    99  NODE   450 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             283881.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     767.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -610.5688757;
      END;
    END;
  END;

********** LEAF   100  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                283881.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD52 ) AND 
      TextCluster_SVD52  <     0.01194302049732 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD52  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 277.43723173;
      END;
    END;
  END;

********** LEAF   101  NODE   452 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                283881.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD52 ) AND 
          0.01194302049732 <= TextCluster_SVD52  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 2021.3683334;
      END;
    END;
  END;

********** LEAF   102  NODE   456 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4538.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             223861.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1002.483967;
      END;
    END;
  END;

********** LEAF   103  NODE   457 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4538.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  223861.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -47.43912797;
      END;
    END;
  END;

********** LEAF   104  NODE   455 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4538.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1952.443813;
    END;
  END;

********** LEAF   105  NODE   461 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               355468 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             125503.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1487.883516;
      END;
    END;
  END;

********** LEAF   106  NODE   462 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               355468 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  125503.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -301.5096412;
      END;
    END;
  END;

********** LEAF   107  NODE   460 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  355468 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1403.2088565;
    END;
  END;

********** LEAF   108  NODE   466 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             258608.5 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                769.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1210.047386;
      END;
    END;
  END;

********** LEAF   109  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             258608.5 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     769.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -526.6608791;
      END;
    END;
  END;

********** LEAF   110  NODE   468 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                258608.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               4508.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 95.124257434;
      END;
    END;
  END;

********** LEAF   111  NODE   469 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                258608.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    4508.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1778.0968263;
      END;
    END;
  END;

********** LEAF   112  NODE   473 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               258152 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                791.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1209.514065;
      END;
    END;
  END;

********** LEAF   113  NODE   474 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               258152 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                     791.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -499.255537;
      END;
    END;
  END;

********** LEAF   114  NODE   475 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  258152 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD49 ) AND 
      TextCluster_SVD49  <    -0.04508051694845 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1650.9036317;
      END;
    END;
  END;

********** LEAF   115  NODE   476 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  258152 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD49 ) AND 
         -0.04508051694845 <= TextCluster_SVD49  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD49  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 34.503382125;
      END;
    END;
  END;

********** LEAF   116  NODE   480 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD19 ) AND 
    TextCluster_SVD19  <     0.01143227806419 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD19  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               2950.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -291.9956719;
      END;
    END;
  END;

********** LEAF   117  NODE   481 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD19 ) AND 
    TextCluster_SVD19  <     0.01143227806419 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD19  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    2950.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1655.6558127;
      END;
    END;
  END;

********** LEAF   118  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD19 ) AND 
        0.01143227806419 <= TextCluster_SVD19  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
      TextCluster_SVD9  <     0.00845084242119 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -289.4131314;
      END;
    END;
  END;

********** LEAF   119  NODE   483 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD19 ) AND 
        0.01143227806419 <= TextCluster_SVD19  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
          0.00845084242119 <= TextCluster_SVD9  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -1212.534924;
      END;
    END;
  END;

********** LEAF   120  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               351889 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <               190508 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -743.0724006;
      END;
    END;
  END;

********** LEAF   121  NODE   488 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <               351889 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                    190508 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -96.39166208;
      END;
    END;
  END;

********** LEAF   122  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                  351889 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 914.03922032;
    END;
  END;

********** LEAF   123  NODE   492 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <                 4890 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             123645.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -994.9031562;
      END;
    END;
  END;

********** LEAF   124  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <                 4890 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  123645.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -208.8240251;
      END;
    END;
  END;

********** LEAF   125  NODE   491 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                    4890 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 2248.3072717;
    END;
  END;

********** LEAF   126  NODE   497 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <                 4604 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <                  731 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -955.4468209;
      END;
    END;
  END;

********** LEAF   127  NODE   498 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <                 4604 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                       731 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -136.737407;
      END;
    END;
  END;

********** LEAF   128  NODE   496 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                    4604 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1253.7168442;
    END;
  END;

********** LEAF   129  NODE   502 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD24 ) AND 
    TextCluster_SVD24  <     0.10497822135333 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD24  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD6 ) AND 
      TextCluster_SVD6  <    -0.03228068874287 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 276.00971321;
      END;
    END;
  END;

********** LEAF   130  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD24 ) AND 
    TextCluster_SVD24  <     0.10497822135333 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD24  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD6 ) AND 
         -0.03228068874287 <= TextCluster_SVD6  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD6  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -688.0655013;
      END;
    END;
  END;

********** LEAF   131  NODE   501 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD24 ) AND 
        0.10497822135333 <= TextCluster_SVD24  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1113.7100781;
    END;
  END;

********** LEAF   132  NODE   507 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             349391.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_8 = PUT( Media_Type , $8.);
     %DMNORMIP( _ARBFMT_8);
      IF _ARBFMT_8 IN ('VIDEO' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Media_Type  ) THEN _BRANCH_ = 1;
      ELSE IF _ARBFMT_8 NOTIN (
        'VIDEO' ,'IMAGE' ,'CAROUSEL' 
         ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -471.8183236;
      END;
    END;
  END;

********** LEAF   133  NODE   508 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
    Likes_Count  <             349391.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_8 = PUT( Media_Type , $8.);
     %DMNORMIP( _ARBFMT_8);
      IF _ARBFMT_8 IN ('IMAGE' ,'CAROUSEL' ) THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 111.8942053;
      END;
    END;
  END;

********** LEAF   134  NODE   506 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Likes_Count ) AND 
                349391.5 <= Likes_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 982.85425221;
    END;
  END;

********** LEAF   135  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw6 ) AND 
    TextTopic_raw6  <               0.0075 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw6  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD31 ) AND 
      TextCluster_SVD31  <     0.01995387194602 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD31  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -577.0696303;
      END;
    END;
  END;

********** LEAF   136  NODE   513 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw6 ) AND 
    TextTopic_raw6  <               0.0075 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw6  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD31 ) AND 
          0.01995387194602 <= TextCluster_SVD31  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 234.06493976;
      END;
    END;
  END;

********** LEAF   137  NODE   511 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw6 ) AND 
                  0.0075 <= TextTopic_raw6  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1410.3663157;
    END;
  END;

********** LEAF   138  NODE   517 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw6 ) AND 
    TextTopic_raw6  <               0.0085 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw6  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD36 ) AND 
      TextCluster_SVD36  <     0.00673953644591 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD36  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -111.1869699;
      END;
    END;
  END;

********** LEAF   139  NODE   518 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw6 ) AND 
    TextTopic_raw6  <               0.0085 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw6  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD36 ) AND 
          0.00673953644591 <= TextCluster_SVD36  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -893.454914;
      END;
    END;
  END;

********** LEAF   140  NODE   516 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw6 ) AND 
                  0.0085 <= TextTopic_raw6  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 738.26765035;
    END;
  END;

********** LEAF   141  NODE   522 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw8 ) AND 
    TextTopic_raw8  <               0.0105 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw8  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD31 ) AND 
      TextCluster_SVD31  <     0.08703154409019 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD31  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -541.6865905;
      END;
    END;
  END;

********** LEAF   142  NODE   523 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw8 ) AND 
    TextTopic_raw8  <               0.0105 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw8  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD31 ) AND 
          0.08703154409019 <= TextCluster_SVD31  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 516.77042256;
      END;
    END;
  END;

********** LEAF   143  NODE   521 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw8 ) AND 
                  0.0105 <= TextTopic_raw8  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1206.4328026;
    END;
  END;

********** LEAF   144  NODE   527 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
    TextCluster_SVD3  <     0.07596397591425 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD42 ) AND 
      TextCluster_SVD42  <    -0.09763361417493 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 726.95540971;
      END;
    END;
  END;

********** LEAF   145  NODE   528 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
    TextCluster_SVD3  <     0.07596397591425 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD42 ) AND 
         -0.09763361417493 <= TextCluster_SVD42  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD42  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -476.9625427;
      END;
    END;
  END;

********** LEAF   146  NODE   526 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
        0.07596397591425 <= TextCluster_SVD3  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1052.8567282;
    END;
  END;

********** LEAF   147  NODE   532 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4736.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             348944.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -57.31252088;
      END;
    END;
  END;

********** LEAF   148  NODE   533 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
    Comments_Count  <               4736.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  348944.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -856.0010616;
      END;
    END;
  END;

********** LEAF   149  NODE   531 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(Comments_Count ) AND 
                  4736.5 <= Comments_Count  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1398.907492;
    END;
  END;

********** LEAF   150  NODE   537 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
    TextCluster_SVD3  <     0.08701669266851 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD46 ) AND 
      TextCluster_SVD46  <     0.01385970066361 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD46  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 60.255070923;
      END;
    END;
  END;

********** LEAF   151  NODE   538 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
    TextCluster_SVD3  <     0.08701669266851 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD3  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD46 ) AND 
          0.01385970066361 <= TextCluster_SVD46  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -674.5845184;
      END;
    END;
  END;

********** LEAF   152  NODE   536 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD3 ) AND 
        0.08701669266851 <= TextCluster_SVD3  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 998.10666063;
    END;
  END;

********** LEAF   153  NODE   542 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD49 ) AND 
    TextCluster_SVD49  <     0.01366380300204 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD49  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
      Comments_Count  <               3082.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Comments_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -152.109412;
      END;
    END;
  END;

********** LEAF   154  NODE   543 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD49 ) AND 
    TextCluster_SVD49  <     0.01366380300204 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD49  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Comments_Count ) AND 
                    3082.5 <= Comments_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 1361.3961159;
      END;
    END;
  END;

********** LEAF   155  NODE   544 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD49 ) AND 
        0.01366380300204 <= TextCluster_SVD49  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD32 ) AND 
      TextCluster_SVD32  <      0.0310690072417 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD32  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -900.2811452;
      END;
    END;
  END;

********** LEAF   156  NODE   545 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD49 ) AND 
        0.01366380300204 <= TextCluster_SVD49  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD32 ) AND 
           0.0310690072417 <= TextCluster_SVD32  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 78.96840052;
      END;
    END;
  END;

********** LEAF   157  NODE   549 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD36 ) AND 
    TextCluster_SVD36  <     0.05571102158507 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD36  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
      TextCluster_SVD9  <     0.06957378607334 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TextCluster_SVD9  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -166.7924414;
      END;
    END;
  END;

********** LEAF   158  NODE   550 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD36 ) AND 
    TextCluster_SVD36  <     0.05571102158507 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD36  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TextCluster_SVD9 ) AND 
          0.06957378607334 <= TextCluster_SVD9  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 943.41961663;
      END;
    END;
  END;

********** LEAF   159  NODE   548 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD36 ) AND 
        0.05571102158507 <= TextCluster_SVD36  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -660.4968697;
    END;
  END;

********** LEAF   160  NODE   554 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw8 ) AND 
    TextTopic_raw8  <               0.0015 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw8  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
      Character_Count  <                 43.5 THEN DO;
       _BRANCH_ =    1; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 376.07031866;
      END;
    END;
  END;

********** LEAF   161  NODE   555 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw8 ) AND 
    TextTopic_raw8  <               0.0015 THEN DO;
     _BRANCH_ =    1; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextTopic_raw8  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Character_Count ) AND 
                      43.5 <= Character_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Character_Count  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -422.7356129;
      END;
    END;
  END;

********** LEAF   162  NODE   553 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextTopic_raw8 ) AND 
                  0.0015 <= TextTopic_raw8  THEN DO;
     _BRANCH_ =    2; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 1032.0279499;
    END;
  END;

********** LEAF   163  NODE   557 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD48 ) AND 
    TextCluster_SVD48  <    -0.10090366881251 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -1055.822538;
    END;
  END;

********** LEAF   164  NODE   559 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD48 ) AND 
       -0.10090366881251 <= TextCluster_SVD48  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD48  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
      Likes_Count  <             286124.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( Likes_Count  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -287.2774228;
      END;
    END;
  END;

********** LEAF   165  NODE   560 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TextCluster_SVD48 ) AND 
       -0.10090366881251 <= TextCluster_SVD48  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TextCluster_SVD48  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(Likes_Count ) AND 
                  286124.5 <= Likes_Count  THEN DO;
       _BRANCH_ =    2; 
      END; 

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 789.16709867;
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

