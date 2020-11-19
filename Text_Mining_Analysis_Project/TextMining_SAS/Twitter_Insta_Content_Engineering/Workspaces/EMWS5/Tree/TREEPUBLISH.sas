****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_Total_Actions = 'Predicted: Total_Actions' ;
label V_Total_Actions = 'Validated: Total_Actions' ;
label _WARN_ = 'Warnings' ;



******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(Like_Count ) AND 
                 26244 <= Like_Count  THEN DO;
  IF  NOT MISSING(Like_Count ) AND 
                   61279 <= Like_Count  THEN DO;
    IF  NOT MISSING(Like_Count ) AND 
                   94861.5 <= Like_Count  THEN DO;
      _NODE_  =                   15;
      _LEAF_  =                   49;
      P_Total_Actions  =     158441.857142857;
      V_Total_Actions  =               176878;
      END;
    ELSE DO;
      IF  NOT MISSING(Like_Count ) AND 
                     73445.5 <= Like_Count  THEN DO;
        _NODE_  =                   29;
        _LEAF_  =                   48;
        P_Total_Actions  =     102068.222222222;
        V_Total_Actions  =               100576;
        END;
      ELSE DO;
        IF  NOT MISSING(TextCluster_SVD39 ) AND 
          TextCluster_SVD39  <    -0.01650754330562 THEN DO;
          _NODE_  =                   54;
          _LEAF_  =                   45;
          P_Total_Actions  =     86650.8571428571;
          V_Total_Actions  =              80876.5;
          END;
        ELSE DO;
          IF  NOT MISSING(Like_Count ) AND 
            Like_Count  <              65336.5 THEN DO;
            _NODE_  =                  104;
            _LEAF_  =                   46;
            P_Total_Actions  =                76800;
            V_Total_Actions  =                76985;
            END;
          ELSE DO;
            _NODE_  =                  105;
            _LEAF_  =                   47;
            P_Total_Actions  =                83134;
            V_Total_Actions  =                78421;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(Like_Count ) AND 
                   42625.5 <= Like_Count  THEN DO;
      IF  NOT MISSING(Like_Count ) AND 
                     50758.5 <= Like_Count  THEN DO;
        IF  NOT MISSING(Like_Count ) AND 
          Like_Count  <              54811.5 THEN DO;
          _NODE_  =                   52;
          _LEAF_  =                   42;
          P_Total_Actions  =     64541.7272727272;
          V_Total_Actions  =     65511.7142857142;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
            Retweet_Count  <                 9768 THEN DO;
            _NODE_  =                  102;
            _LEAF_  =                   43;
            P_Total_Actions  =              65888.6;
            V_Total_Actions  =              68721.5;
            END;
          ELSE DO;
            _NODE_  =                  103;
            _LEAF_  =                   44;
            P_Total_Actions  =     71534.9411764706;
            V_Total_Actions  =     73987.2857142857;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Like_Count ) AND 
                       47978.5 <= Like_Count  THEN DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                         10851.5 <= Retweet_Count  THEN DO;
            _NODE_  =                   99;
            _LEAF_  =                   41;
            P_Total_Actions  =                62895;
            V_Total_Actions  =                66275;
            END;
          ELSE DO;
            _NODE_  =                   98;
            _LEAF_  =                   40;
            P_Total_Actions  =                58360;
            V_Total_Actions  =                58556;
            END;
          END;
        ELSE DO;
          _NODE_  =                   50;
          _LEAF_  =                   39;
          P_Total_Actions  =     54199.6551724138;
          V_Total_Actions  =     55754.8333333333;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(Like_Count ) AND 
                       32578 <= Like_Count  THEN DO;
        IF  NOT MISSING(Like_Count ) AND 
                         36968 <= Like_Count  THEN DO;
          _NODE_  =                   49;
          _LEAF_  =                   38;
          P_Total_Actions  =     47490.1282051282;
          V_Total_Actions  =     46893.8235294117;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                          7815.5 <= Retweet_Count  THEN DO;
            _NODE_  =                   93;
            _LEAF_  =                   37;
            P_Total_Actions  =              44662.4;
            V_Total_Actions  =     43629.6666666666;
            END;
          ELSE DO;
            _NODE_  =                   92;
            _LEAF_  =                   36;
            P_Total_Actions  =     40920.8214285714;
            V_Total_Actions  =     41169.5714285714;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Like_Count ) AND 
                       29255.5 <= Like_Count  THEN DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                            6613 <= Retweet_Count  THEN DO;
            _NODE_  =                   91;
            _LEAF_  =                   35;
            P_Total_Actions  =             39058.25;
            V_Total_Actions  =     37837.3333333333;
            END;
          ELSE DO;
            _NODE_  =                   90;
            _LEAF_  =                   34;
            P_Total_Actions  =     36632.7619047619;
            V_Total_Actions  =     35467.7777777777;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                          5334.5 <= Retweet_Count  THEN DO;
            _NODE_  =                   89;
            _LEAF_  =                   33;
            P_Total_Actions  =     34467.4583333333;
            V_Total_Actions  =             33810.25;
            END;
          ELSE DO;
            _NODE_  =                   88;
            _LEAF_  =                   32;
            P_Total_Actions  =     32084.9285714285;
            V_Total_Actions  =                31388;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(Like_Count ) AND 
                   10555 <= Like_Count  THEN DO;
    IF  NOT MISSING(Like_Count ) AND 
                   17187.5 <= Like_Count  THEN DO;
      IF  NOT MISSING(Like_Count ) AND 
                     21711.5 <= Like_Count  THEN DO;
        IF  NOT MISSING(Like_Count ) AND 
                       24117.5 <= Like_Count  THEN DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                            5562 <= Retweet_Count  THEN DO;
            _NODE_  =                   87;
            _LEAF_  =                   31;
            P_Total_Actions  =              31488.5;
            V_Total_Actions  =     31188.3333333333;
            END;
          ELSE DO;
            _NODE_  =                   86;
            _LEAF_  =                   30;
            P_Total_Actions  =          29660.96875;
            V_Total_Actions  =                29453;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                            4904 <= Retweet_Count  THEN DO;
            _NODE_  =                   85;
            _LEAF_  =                   29;
            P_Total_Actions  =     28146.0666666666;
            V_Total_Actions  =              28982.2;
            END;
          ELSE DO;
            _NODE_  =                   84;
            _LEAF_  =                   28;
            P_Total_Actions  =          26633.65625;
            V_Total_Actions  =     26452.1538461538;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Like_Count ) AND 
          Like_Count  <              18993.5 THEN DO;
          _NODE_  =                   42;
          _LEAF_  =                   25;
          P_Total_Actions  =     21422.7540983606;
          V_Total_Actions  =     21518.3636363636;
          END;
        ELSE DO;
          IF  NOT MISSING(Like_Count ) AND 
                         20317.5 <= Like_Count  THEN DO;
            _NODE_  =                   83;
            _LEAF_  =                   27;
            P_Total_Actions  =     24651.3225806451;
            V_Total_Actions  =            24647.375;
            END;
          ELSE DO;
            _NODE_  =                   82;
            _LEAF_  =                   26;
            P_Total_Actions  =     23186.9428571428;
            V_Total_Actions  =     22820.5454545454;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(Like_Count ) AND 
                     13795.5 <= Like_Count  THEN DO;
        IF  NOT MISSING(Like_Count ) AND 
                       15594.5 <= Like_Count  THEN DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                            3274 <= Retweet_Count  THEN DO;
            _NODE_  =                   79;
            _LEAF_  =                   24;
            P_Total_Actions  =     20228.3181818181;
            V_Total_Actions  =              19983.2;
            END;
          ELSE DO;
            _NODE_  =                   78;
            _LEAF_  =                   23;
            P_Total_Actions  =           18886.5625;
            V_Total_Actions  =     18883.8571428571;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                          2779.5 <= Retweet_Count  THEN DO;
            _NODE_  =                   77;
            _LEAF_  =                   22;
            P_Total_Actions  =                18106;
            V_Total_Actions  =     18179.3636363636;
            END;
          ELSE DO;
            _NODE_  =                   76;
            _LEAF_  =                   21;
            P_Total_Actions  =     16885.9183673469;
            V_Total_Actions  =              16810.2;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Like_Count ) AND 
                         12214 <= Like_Count  THEN DO;
          IF  NOT MISSING(Retweet_Count ) AND 
            Retweet_Count  <                 2136 THEN DO;
            _NODE_  =                   74;
            _LEAF_  =                   19;
            P_Total_Actions  =     14740.9756097561;
            V_Total_Actions  =     14768.6666666666;
            END;
          ELSE DO;
            _NODE_  =                   75;
            _LEAF_  =                   20;
            P_Total_Actions  =     15928.8620689655;
            V_Total_Actions  =     15902.6153846153;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
            Retweet_Count  <               1943.5 THEN DO;
            _NODE_  =                   72;
            _LEAF_  =                   17;
            P_Total_Actions  =            12852.625;
            V_Total_Actions  =      12938.909090909;
            END;
          ELSE DO;
            _NODE_  =                   73;
            _LEAF_  =                   18;
            P_Total_Actions  =      14001.536231884;
            V_Total_Actions  =     14223.5416666666;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(Like_Count ) AND 
                    5354.5 <= Like_Count  THEN DO;
      IF  NOT MISSING(Like_Count ) AND 
                      7849.5 <= Like_Count  THEN DO;
        IF  NOT MISSING(Like_Count ) AND 
                          9086 <= Like_Count  THEN DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                          1738.5 <= Retweet_Count  THEN DO;
            _NODE_  =                   71;
            _LEAF_  =                   16;
            P_Total_Actions  =     12079.9516129032;
            V_Total_Actions  =     11995.5714285714;
            END;
          ELSE DO;
            _NODE_  =                   70;
            _LEAF_  =                   15;
            P_Total_Actions  =     11125.4054054054;
            V_Total_Actions  =     11061.3928571428;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Retweet_Count ) AND 
                            1714 <= Retweet_Count  THEN DO;
            _NODE_  =                   69;
            _LEAF_  =                   14;
            P_Total_Actions  =     10624.2857142857;
            V_Total_Actions  =      10373.923076923;
            END;
          ELSE DO;
            _NODE_  =                   68;
            _LEAF_  =                   13;
            P_Total_Actions  =     9763.95726495726;
            V_Total_Actions  =               9545.2;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Like_Count ) AND 
          Like_Count  <               6503.5 THEN DO;
          IF  NOT MISSING(Like_Count ) AND 
                          6042.5 <= Like_Count  THEN DO;
            _NODE_  =                   65;
            _LEAF_  =                   10;
            P_Total_Actions  =     7309.08860759493;
            V_Total_Actions  =     7526.45833333333;
            END;
          ELSE DO;
            _NODE_  =                   64;
            _LEAF_  =                    9;
            P_Total_Actions  =     6633.57272727272;
            V_Total_Actions  =     6593.03703703703;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Like_Count ) AND 
                          7226.5 <= Like_Count  THEN DO;
            _NODE_  =                   67;
            _LEAF_  =                   12;
            P_Total_Actions  =     8777.48979591836;
            V_Total_Actions  =              8906.25;
            END;
          ELSE DO;
            _NODE_  =                   66;
            _LEAF_  =                   11;
            P_Total_Actions  =     8068.19379844961;
            V_Total_Actions  =               7890.5;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(Like_Count ) AND 
        Like_Count  <               2944.5 THEN DO;
        IF  NOT MISSING(Like_Count ) AND 
          Like_Count  <                 1744 THEN DO;
          IF  NOT MISSING(Like_Count ) AND 
            Like_Count  <                 1003 THEN DO;
            _NODE_  =                   56;
            _LEAF_  =                    1;
            P_Total_Actions  =      681.48623853211;
            V_Total_Actions  =     816.085714285714;
            END;
          ELSE DO;
            _NODE_  =                   57;
            _LEAF_  =                    2;
            P_Total_Actions  =            1606.6625;
            V_Total_Actions  =     1590.79245283018;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Like_Count ) AND 
            Like_Count  <               2366.5 THEN DO;
            _NODE_  =                   58;
            _LEAF_  =                    3;
            P_Total_Actions  =       2372.700729927;
            V_Total_Actions  =           2423.46875;
            END;
          ELSE DO;
            _NODE_  =                   59;
            _LEAF_  =                    4;
            P_Total_Actions  =     3088.34666666666;
            V_Total_Actions  =               3053.5;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Like_Count ) AND 
          Like_Count  <               4050.5 THEN DO;
          IF  NOT MISSING(Like_Count ) AND 
            Like_Count  <               3480.5 THEN DO;
            _NODE_  =                   60;
            _LEAF_  =                    5;
            P_Total_Actions  =             3693.928;
            V_Total_Actions  =     3687.02222222222;
            END;
          ELSE DO;
            _NODE_  =                   61;
            _LEAF_  =                    6;
            P_Total_Actions  =     4424.82191780821;
            V_Total_Actions  =     4348.74193548387;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(Like_Count ) AND 
                            4674 <= Like_Count  THEN DO;
            _NODE_  =                   63;
            _LEAF_  =                    8;
            P_Total_Actions  =     5833.82442748091;
            V_Total_Actions  =     5768.81818181818;
            END;
          ELSE DO;
            _NODE_  =                   62;
            _LEAF_  =                    7;
            P_Total_Actions  =     5067.40782122905;
            V_Total_Actions  =             5136.825;
            END;
          END;
        END;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

