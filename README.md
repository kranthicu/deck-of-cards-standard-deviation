deck-of-cards-standard-deviation
================================

This repo is intended for looking standard deviation model for picking a card from deck of cards.

deck.rb -> initializes the deck and is used to simulate the model of drawing a random card from the deck.

game.rb -> calculates the standard deviation over multiple picks.


Fromt the output given below we can see that as the number of picks from the deck are increased the average number of times a card is picked is the same as any other card.
That is, we see that for larger number of picks C1/52 will most probably be equal to C3
The standard deviation however, is more unpredictable.

$ ./game.rb
C1: Total number of picks executed.
C2: Total number of unique cards picked in these total picks.
C3: Average number of times each of these unique picked cards was picked.
C4: The standard_deviation from this average in Column 3.
C1    C2    C3    C4
--    --    --    --
52    30    1.733    0.854
104    42    2.476    1.052
156    48    3.25    1.774
208    50    4.16    1.891
260    52    5.0    2.304
312    52    6.0    2.473
364    52    7.0    2.922
416    52    8.0    2.496
468    52    9.0    2.442
520    52    10.0    2.981
572    51    11.216    3.455
624    52    12.0    4.243
676    52    13.0    3.442
728    52    14.0    3.873
780    52    15.0    3.436
832    52    16.0    3.961
884    52    17.0    3.903
936    52    18.0    4.816
988    52    19.0    4.377
1040    52    20.0    4.337
1092    52    21.0    4.323
1144    52    22.0    3.888
1196    52    23.0    4.973
1248    52    24.0    4.662
1300    52    25.0    5.215
1352    52    26.0    5.346
1404    52    27.0    4.875
1456    52    28.0    4.574
1508    52    29.0    5.023
1560    52    30.0    5.67
1612    52    31.0    5.939
1664    52    32.0    5.877
1716    52    33.0    6.117
1768    52    34.0    6.086
1820    52    35.0    6.035
1872    52    36.0    5.841
1924    52    37.0    5.785
1976    52    38.0    6.239
2028    52    39.0    5.701
2080    52    40.0    6.013
2132    52    41.0    5.801
2184    52    42.0    5.88
2236    52    43.0    6.358
2288    52    44.0    6.895
2340    52    45.0    7.033
2392    52    46.0    6.202
2444    52    47.0    6.953
2496    52    48.0    6.223
2548    52    49.0    6.694
2600    52    50.0    6.9
2652    52    51.0    6.654
2704    52    52.0    8.197
2756    52    53.0    6.844
2808    52    54.0    8.077
2860    52    55.0    6.723
2912    52    56.0    8.263
2964    52    57.0    7.008
3016    52    58.0    6.501
3068    52    59.0    8.716
3120    52    60.0    7.901
3172    52    61.0    7.401
3224    52    62.0    7.983
3276    52    63.0    7.854
3328    52    64.0    7.606
3380    52    65.0    8.76
3432    52    66.0    9.424
3484    52    67.0    6.595
3536    52    68.0    7.184
3588    52    69.0    9.864
3640    52    70.0    7.32
3692    52    71.0    8.197
3744    52    72.0    8.048
3796    52    73.0    8.444
3848    52    74.0    7.998
3900    52    75.0    7.155
3952    52    76.0    7.686
4004    52    77.0    8.274
4056    52    78.0    9.43
4108    52    79.0    8.589
4160    52    80.0    8.412
4212    52    81.0    10.763
4264    52    82.0    10.226
4316    52    83.0    8.29
4368    52    84.0    8.611
4420    52    85.0    8.682
4472    52    86.0    10.071
4524    52    87.0    8.362
4576    52    88.0    9.066
4628    52    89.0    8.088
4680    52    90.0    8.951
4732    52    91.0    9.521
4784    52    92.0    9.255
4836    52    93.0    9.091
4888    52    94.0    8.806
4940    52    95.0    10.865
4992    52    96.0    9.389
5044    52    97.0    10.088
5096    52    98.0    10.402
5148    52    99.0    8.851
5200    52    100.0    10.536
$