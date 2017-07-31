students = ["Julian", "Jonathan", "Roselyne", "Etienne"]

# => to print the name of every student:
students.each do |name|
  puts name
end

students[2]
# => Roselyne

students.delete("Etienne")
students[0] = "Alex"


# want input and output of same size:
# .map
# smaller size output:
# .select or .reject
# output = 1 element: .reduce

students{
  "Julian" => 28,
  "Jonathan" => 30,
  "Roselyne" => 29,
  "Etienne" => 23
}

students.each do |name, age|
  puts "#{name} is #{age}"
end

# anniversaire de julian
students["julian"] = 29
+= 1

# supprimer jonathan
students.delete("Jonathan")

# ajouter Alexis
students["Alexis"] = 22
