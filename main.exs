defmodule ParesNones do

  def jugar(jugador, cpu) do
    suma = jugador + cpu

    case rem(suma, 2) do
      0 ->
        "Ganaste: #{jugador} + #{cpu} = #{suma} (es par)"
      _ ->
        "Perdiste: #{jugador} + #{cpu} = #{suma} (es impar)"
    end
  end
end

IO.puts("Elige un número del 1 al 5: ")

jugador = String.to_integer(String.trim(IO.gets("")))

if jugador >= 1 and jugador <= 5 do
  cpu = :rand.uniform(5) + 1
  resultado = ParesNones.jugar(jugador, cpu)

  IO.puts("Jugador eligió #{jugador}")
  IO.puts("CPU eligió #{cpu}")
  IO.puts(resultado)
else
  IO.puts("Número inválido. Elige un número del 1 al 5.")
end
