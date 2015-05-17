GameListSorters["Last Played"] = function(Item1, Item2, Type)
	if (Type == SortType.Descending) then
		if ((Item1.LastPlayed.HighPart == 0) and (Item1.LastPlayed.LowPart == 0) or (Item2.LastPlayed.HighPart == 0) and (Item2.LastPlayed.LowPart == 0) or (Item1.LastPlayed == Item2.LastPlayed)) then
			return string.lower(Item1.Name) > string.lower(Item2.Name)
		end
		return ((Item1.LastPlayed.HighPart > Item2.LastPlayed.HighPart) or (Item1.LastPlayed.LowPart > Item2.LastPlayed.LowPart))
	end
	if ((Item1.LastPlayed.HighPart == 0) and (Item1.LastPlayed.LowPart == 0) or (Item2.LastPlayed.HighPart == 0) and (Item2.LastPlayed.LowPart == 0) or (Item1.LastPlayed == Item2.LastPlayed)) then
		return string.lower(Item1.Name) < string.lower(Item2.Name)
	end
	return ((Item1.LastPlayed.HighPart > Item2.LastPlayed.HighPart) or (Item1.LastPlayed.LowPart > Item2.LastPlayed.LowPart))
end
