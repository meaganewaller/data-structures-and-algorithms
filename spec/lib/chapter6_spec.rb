require 'spec_helper'

def has_root?(matrix)
  matrix.each do |row|
    if !row.include?(:inf)
      return true
    end
  end
  return false
end

describe "finding vertex of DAG" do
  it "has a root" do
    #   A
    #  / \
    # B   C
    #    / \
    #   D   E
    matrix = [[0, 1, 1, 2, 2],
              [:inf, 0, :inf, :inf, :inf],
              [:inf, :inf, 0, 1, 1],
              [:inf, :inf, :inf, 0, :inf],
              [:inf, :inf, :inf, :inf, 0]]
    has_root?(matrix).should be_true
  end

  it "doesn't have a root" do
    # A   C
    # |
    # B
    matrix = [[0, 1, :inf],
              [:inf, 0, :inf],
              [:inf, :inf, 0]]
    has_root?(matrix).should be_false
  end
end
