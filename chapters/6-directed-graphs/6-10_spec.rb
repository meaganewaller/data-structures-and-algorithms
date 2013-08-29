# Exercise 6.10: The root of a dag is a vertex r such that every vertex of the dag can be reached by a directed path from r. Write a program to determine whether a dag is rooted

# Matrix
# A[[1, 1, 1, :inf],
#   [:inf, :inf, 1, 1],
#   [1, 1, 1, 1]]


def has_root?(matrix)
  matrix.each do |row|
    if !row.include?(:inf)
      return true
    end
  end
  return false
end

A = [[0, 1, 1],
    [:inf, 0, 1],
    [:inf, :inf, 0]]

B = [[:inf, 1, 1],
    [:inf, 0, 0],
    [:inf, :inf, 0]]


puts has_root?(A)
puts has_root?(B)

