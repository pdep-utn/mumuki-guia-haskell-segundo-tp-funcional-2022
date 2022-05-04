Modelar la instrucción múltiple IFNZ, que ejecutará una serie de instrucciones en caso de que el acumulador A no tenga el valor 0.

Por ejemplo, si tenemos IFNZ de las siguientes instrucciones:

<img src="https://raw.githubusercontent.com/pdep-utn/mumuki-guia-haskell-segundo-tp-funcional-2022/master/assets/Captura_1651625509983.JPG" alt="Captura_1651625509983.JPG" width="auto" height="auto">

Y lo ejecutamos en el microprocesador fp20, en el acumulador A debe quedar 24, y en el B el valor 3. No nos interesa cómo queda el program counter ya que el usuario todavía no lo definió.

En caso de error en alguna de las instrucciones, el resto no debe ejecutarse.
