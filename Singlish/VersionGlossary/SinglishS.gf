concrete SinglishS of Singlish = {
  lin
    -- addDP s dp = {s = s.s ++ dp.s } ;

    addDPSChat s dp = {s = s.s ++ dp.s } ;
    addDPSQuest s dp = {s = s.s ++ dp.s } ;
    addDPSExclaimChat s dp = {s = s.s ++ dp.s } ;
    addDPSExclaimQuest s dp = {s = s.s ++ dp.s } ;

    -- for Chat ends
    Lah    = ss "lah"   ;
    Leh    = ss "leh"   ;
    Liao   = ss "liao"  ;
    Lor    = ss "lor"   ;
    Mah    = ss "mah"   ;

    -- for Question ends
    Ah      = ss "ah"   ;
    Anot    = ss "anot" ;
    Hor     = ss "hor"  ;
    Meh     = ss "meh"  ;


    -- for Exclaim end
    Sia    = ss "sia" ;

    KenaSaboC = ss "kena sabo" ;
    KenaSaboQ = ss "kena sabo" ;

  oper
    ss : Str -> {s : Str} = \s -> {s = s} ;
    -- addDP:  \s dp =  {s = s.s ++ dp.s } ;

}
