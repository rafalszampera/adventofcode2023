defmodule AdventofCode.List2023 do
	def task01(val) do	
		list = val |> String.replace(~r/[^\d]/, "") |> String.split("", trim: true)
		first = parseToInt(Enum.take(list, 1))
		last = parseToInt(Enum.take(list, -1))
		
		first * 10 + last
	end
	
	def parseToInt([h | _]) do
		{digit, _} = Integer.parse(h)
		digit
	end
end


#to run just do AdventofCode.List2023.task01("8eight1") + AdventofCode.List2023.task01("98126") +  ... + AdventofCode.List2023.task01("8four419eighteight1bpv")
