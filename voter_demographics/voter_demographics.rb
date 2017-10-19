voter_data = [{
  "First Name" => "Jon",
  "Last Name" => "Smith",
  "Age" => 25,
  "Income" => 50_000,
  "Household size" => 1,
  "Gender" => "Male",
  "Education" => "College"},
  {"First Name" => "Jane",
    "Last Name" => "Davies",
    "Age" => 30,
    "Income" => 60_000,
    "Household size" => 3,
    "Gender" => "Female",
    "Education" => "High School"},
    {"First Name" => "Sam",
      "Last Name" => "Farelly",
      "Age" => 32,
      "Income" => 80_000,
      "Household size" => 2,
      "Gender" => "Unspecified",
      "Education" => "College"},
      {"First Name" => "Joan",
        "Last Name" => "Favreau",
        "Age" => 35,
        "Income" => 65_000,
        "Household size" => 4,
        "Gender" => "Female",
        "Education" => "College"},
        {"First Name" => "Sam",
          "Last Name" => "McNulty",
          "Age" => 38,
          "Income" => 63_000,
          "Household size" => 3,
          "Gender" => "Male",
          "Education" => "College"},
          {"First Name" => "Mark",
            "Last Name" => "Minahan",
            "Age" => 48,
            "Income" => 78_000,
            "Household size" => 5,
            "Gender" => "Male",
            "Education" => "High School"},
            {"First Name" => "Susan",
              "Last Name" => "Umani",
              "Age" => 45,
              "Income" => 75_000,
              "Household size" => 2,
              "Gender" => "Female",
              "Education" => "College"},
              {"First Name" => "Bill",
                "Last Name" => "Perault",
                "Age" => 24,
                "Income" => 45_000,
                "Household size" => 1,
                "Gender" => "Male",
                "Education" => "Did Not Complete High School"},
                {"First Name" => "Doug",
                  "Last Name" => "Stamper",
                  "Age" => 45,
                  "Income" => 75_000,
                  "Household size" => 1,
                  "Gender" => "Male",
                  "Education" => "College"},
                  {"First Name" => "Francis",
                    "Last Name" => "Underwood",
                    "Age" => 52,
                    "Income" => 100_000,
                    "Household size" => 2,
                    "Gender" => "Male",
                    "Education" => "College"}
]

#we need average Age
voter_age = 0
voters = 0
voter_data.each do |voter|
  voter_age += voter["Age"]
  voters += 1
end
puts "The average voter age is #{voter_age.to_f / voters.to_f}."
#Average Income
voter_income = 0
voter_data.each do |voter|
  voter_income += voter["Income"]
end
puts "The average voter income is #{voter_income / voters}."
#Average Household Size:
voter_household = 0
voter_data.each do |voter|
  if voter["Household size"].nil?
    voter["Household size"] = 0
  else
voter_household += voter["Household size"]
end
end
puts "The average voter household size is :#{voter_household / voters}"
#Percentage of genders
male_count = 0
female_count = 0
unspecified = 0
voter_data.each do |voter|
  if voter["Gender"] == "Male"
    male_count += 1
  elsif voter["Gender"]== "Female"
    female_count += 1
  else
   unspecified += 1
  end
end
puts "Voters are #{male_count * 10}%  Male."
puts "Voters are #{female_count *10}% Female."
puts "Voters are #{unspecified * 10}% Unspecified."

#Education level
college = 0
high_school = 0
did_not_finish = 0
voter_data.each do |voter|
  if voter["Education"] == "College"
    college += 1
  elsif voter["Education"] == "High School"
    high_school += 1
  else
    did_not_finish += 1
  end
end

puts "#{college *10}% of voters finished college."
puts "#{high_school *10}% of voters finished high school."
puts "#{did_not_finish *10}% of voters did not finish high school."
