 describe "Test Punto 2 - Tests de NOP" $ do
        --it "NOP incrementa el program counter" $ do
        --  ((programCounter . nop) xt8088) `shouldBe` 1
        
        it "NOP no cambia el acumulador" $ do
            ((acumuladorA . nop) xt8088) `shouldBe` 0
      
        --it "Programa con 3 NOP avanza 3 veces el program counter" $ do
        --    ((programCounter . nop . nop . nop) xt8088) `shouldBe` 3
        