incomplete concrete SinglishGlobal of Singlish =
  open Syntax, Lexicon, WordNet in {

  lincat
    Phrase = Phr ;
    QPred  = QS ;
    Pred   = S;


    Actor  = LinActor ;  -- you, I
    Action = VP ;        -- kena, receive
    Object = NP ;        --  warning, fine, present

  oper
    LinActor : Type ;
    LinActor = {
        subj : NP ;
        impForm : ImpForm
        } ;

    LinPred : Type ;
    LinPred = LinActor ** {pred : VP} ;

    -- Helper function to make Cl out of Pred
    pred2cl   : LinPred -> Cl ;
    pred2cl p = mkCl p.subj p.pred ;

  lin
    -- Coercions to start category
    q2p q = mkPhr q ;
    c2p c = mkPhr c ;
    d2p d = mkPhr (decl2cl d) ;

-- Syntactic functions
    -- : Decl -> Command ;
    d2c d = mkUtt d.impForm (mkImp d.pred) ;

    -- : Decl -> Question ;
    d2q d = mkQS (decl2cl d) ;

    -- : Actor -> Action -> Decl ;
    Pred actor action = actor ** {
        pred = action
        } ;

-- Lexical functions, or those that come from the shared RGL
    I      = {subj = i_NP ; impForm = singularImpForm} ;
    YouSg  = {subj = you_NP ; impForm = singularImpForm} ;
    YouPl  = {subj = youPl_NP ; impForm = pluralImpForm} ;
    YouPol = {subj = youPol_NP ; impForm = politeImpForm} ;

-- Lexical functions, coming from WordNet

  Teacher = mkActor (teacherFem_N|teacherMasc_N) ;
  Customer = mkActor client_2_N ;
  Doctor = mkActor doctor_1_N ;
  Officer = mkActor officer_2_N ;
  Worker = mkActor worker_1_N ;

oper
  mkActor : N -> LinActor ;
  mkActor n = {subj = mkNP ; impForm = singularImpForm} ;

lin
    -- Actions
  Come = mkVP come_V ;
  Sleep = mkVP sleep_1_V ;
  Walk = mkVP walk_1_V ;
  Play = mkVP play_V ;

  Buy obj = mkVP buy_1_V2  obj;
  PayFor obj = mkVP pay_for_V2 obj ;
  Construct obj = mkVP construct_1_V2 obj ;

  Food = mkNP food_1_N ;
  Scolding = mkNP aPl_Det scolding_1_N ;
  Fine = mkNP a_Det fine_1_N ;
  Warning = mkNP a_Det warning_1_N ;


}