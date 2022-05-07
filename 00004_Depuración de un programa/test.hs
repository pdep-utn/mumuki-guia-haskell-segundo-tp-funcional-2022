  describe "Test Punto 2.4 - Depuración de un programa" $ do
        it "Depuración de un programa - Deben quedar solo las instrucciones que modifican el estado interno del microprocesador" $ do
            ((length . depurar) [swap, nop, lodv 133, lodv 0, str 1 3, str 2 0]) `shouldBe` 2
        
        it "Depuración de un programa - Chequeo primera instrucción" $ do
            ((acumuladorA . flip ($) xt8088 . head . depurar) [swap, nop, lodv 133, lodv 0, str 1 3, str 2 0]) `shouldBe` 133
                    
        it "Depuración de un programa - Chequeo segunda instrucción" $ do
            ((flip (!!) 0 . memoria . flip ($) xt8088 . flip (!!) 1 . depurar) [swap, nop, lodv 133, lodv 0, str 1 3, str 2 0]) `shouldBe` 3
            