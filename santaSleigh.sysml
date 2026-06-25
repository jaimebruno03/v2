package L02_SantaSleigh {
    private import ScalarValues::*;

    part def SantaSleigh {
        // Components of the sleigh
        part cockpit {
            doc /* This is where Santa sits. */
            ref item driver = santa;
        }
        part cargoBay  { doc /* Place for the GiftBag. */  }
        part dashboard { doc /* Naughty-Nice dashboard. */ }

        // Entities related to the sleigh
        ref item santa;
        abstract ref part reindeer : Reindeer [9];
       
        ref part dasher  :> reindeer { constant attribute :>> noseColor = Color::orange; }
        ref part dancer  :> reindeer { constant attribute :>> noseColor = Color::yellow; }
        ref part prancer :> reindeer { constant attribute :>> noseColor = Color::green;  }
        ref part vixen   :> reindeer { constant attribute :>> noseColor = Color::blue;   }
        ref part comet   :> reindeer { constant attribute :>> noseColor = Color::indigo; }
        ref part cupid   :> reindeer { constant attribute :>> noseColor = Color::violet; }
        ref part donner  :> reindeer { constant attribute :>> noseColor = Color::silver; }
        ref part blitzen :> reindeer { constant attribute :>> noseColor = Color::gold;   }
        ref part rudolph :> reindeer { constant attribute :>> noseColor = Color::red;    
                                                     attribute :>> energyLevel := 200.0;      }
    }

    part def Reindeer {
        constant attribute noseColor : Color;
        attribute energyLevel : Real default := 100.0;
    }

    enum def Color {
        enum orange; enum yellow; enum green;
        enum blue;   enum indigo; enum violet;
        enum silver; enum gold;   enum red;
    }
}