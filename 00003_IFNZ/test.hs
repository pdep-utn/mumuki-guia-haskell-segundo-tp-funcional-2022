 describe "Test Punto 2.3 - Tests de IFNZ" $ do
        it "ejecutar IFNZ sobre un micro que tiene acumulador A distinto de cero ejecuta las instrucciones - efecto sobre acumulador A" $ do
            ((acumuladorA . ifNZ [lodv 3, swap]) fp20) `shouldBe` 24
                    
        it "ejecutar IFNZ sobre un micro que tiene acumulador A distinto de cero ejecuta las instrucciones - efecto sobre acumulador B" $ do
            ((acumuladorB . ifNZ [lodv 3, swap]) fp20) `shouldBe` 3

        it "ejecutar IFNZ sobre un micro que tiene acumulador A igual a cero ejecuta las instrucciones - sin efecto sobre acumulador A" $ do
            ((acumuladorA . ifNZ [lodv 3, swap]) xt8088) `shouldBe` 0
                    
        it "ejecutar IFNZ sobre un micro que tiene acumulador A igual a cero ejecuta las instrucciones - sin efecto sobre acumulador B" $ do
            ((acumuladorB . ifNZ [lodv 3, swap]) xt8088) `shouldBe` 0
