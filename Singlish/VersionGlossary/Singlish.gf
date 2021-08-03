abstract Singlish = {
  cat
    SChat    ; DPChat ;
    SQuest   ; DPQuest ;
    SExclaim ; DPExclaim;

  fun
    addDPSChat          : SChat  -> DPChat      -> SChat  ;
    addDPSQuest         : SQuest -> DPQuest     -> SQuest ;
    addDPSExclaimChat   : SChat  -> DPExclaim   -> SExclaim ;
    addDPSExclaimQuest  : SQuest -> DPExclaim   -> SExclaim ;

  --end
    Lah , Leh  , Liao , Lor , Mah : DPChat ;
    Ah  , Anot ,  Hor , Meh       : DPQuest ;
    Sia                           : DPExclaim;

    KenaSaboC            : SChat ;
    KenaSaboQ            : SQuest;
}