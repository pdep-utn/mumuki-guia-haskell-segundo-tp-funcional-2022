describe "Test Punto 2.5 - Orden de la memoria" $ do
        it "Micro con la memoria ordenada" $ do
            (memoriaOrdenada at8086) `shouldBe` True
                    
        it "Micro con la memoria desordenada" $ do
            (memoriaOrdenada microDesorden) `shouldBe` False
                