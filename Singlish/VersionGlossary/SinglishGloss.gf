concrete SinglishGloss of Singlish = {
  lin
    -- addDP s dp = {s = s.s ++ dp.s } ;


    addDPSChat s dp = {s = s.s ++ dp.s } ;
    addDPSQuest s dp = {s = s.s ++ dp.s } ;
    addDPSExclaimChat s dp = {s = s.s ++ dp.s } ;
    addDPSExclaimQuest s dp = {s = s.s ++ dp.s } ;

    -- Lah = ss "(passive-aggressive)" ;

    -- for Chat ends
    Lah    = ss "to make a firm statement"   ;
    Leh    = ss "to make a mild statement"   ;
    Liao   = ss "to emphasize it is over in a statement"  ;
    Lor    = ss "to make a zen statement"   ;
    Mah    = ss "to toe a contradiction in a statement"   ;

    -- for Question ends
    Ah      = ss "a masked passive-agressive question"   ;
    Anot    = ss "a question for yes-no answer" ;
    Hor     = ss "a question seeking consensus"  ;
    Meh     = ss "a question that carries pre-conceived, sometimes condescending notion"  ;


    -- for Exclaim end
    Sia    = ss "to express disbelief" ;

    KenaASaboKing = ss "kena a sabo king" ;
    KenaSabo = ss "kena sabo-ed by him" ;

  oper
    ss : Str -> {s : Str} = \s -> {s = s} ;
}