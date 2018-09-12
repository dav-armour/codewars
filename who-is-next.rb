def whoIsNext(names, r)
  if r >= 10
    cycles = Math.log2(r/5).to_i
#     puts "Cycles: #{cycles}"
    dupes = 2**cycles
#     puts "dupes: #{dupes}"
    remainder = r - 5 * (dupes - 1)
#     puts "remainder: #{remainder}"
    index = remainder / dupes
#     puts "index: #{index}"
    names[index]
  else
    (r-1).times { names.append(names.first).rotate! }
    names.first
  end
end

p whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 1)=="Sheldon"
p whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 52)=="Penny"
p whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 7230702951)=="Leonard"
