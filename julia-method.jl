### A Pluto.jl notebook ###
# v0.19.29

using Markdown
using InteractiveUtils

# ╔═╡ a0e2c270-6936-11ee-216d-09bba29a35f4
md"# Calculations of Pi, but in Julia !"

# ╔═╡ 87f2b0da-e61d-49d9-a768-4b96745b7609
function LittleOne(sides, diameter)
	big_triangle_corner = 360 / sides
	little_triangle_corner = big_triangle_corner / 2

	adjacent_side = cos(deg2rad(little_triangle_corner)) * diameter
	opposite_side = sin(deg2rad(little_triangle_corner)) / diameter
	area_size = ( adjacent_side * opposite_side ) / 2

	total_area = ( area_size * 2 ) * sides

	return total_area
end

# ╔═╡ 840a0eb0-1dd2-41bd-b8d2-19cb628a0420
function BigOne(sides, diameter)
	big_triangle_corner = 360 / sides
	little_triangle_corner = big_triangle_corner / 2

	adjacent_side = diameter
	opposite_side = tan(deg2rad(little_triangle_corner)) / diameter
	area_size = ( adjacent_side * opposite_side ) / 2

	total_area = ( area_size * 2 ) * sides

	return total_area
end

# ╔═╡ bf2944bf-3317-4802-9437-e5424966d521
begin
	diameter = 1
	sides = 6
	print(LittleOne(sides, diameter))
	print("\n")
	print(BigOne(sides, diameter))
end

# ╔═╡ Cell order:
# ╟─a0e2c270-6936-11ee-216d-09bba29a35f4
# ╠═87f2b0da-e61d-49d9-a768-4b96745b7609
# ╠═840a0eb0-1dd2-41bd-b8d2-19cb628a0420
# ╟─bf2944bf-3317-4802-9437-e5424966d521
