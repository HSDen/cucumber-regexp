
include DataMagic
Given(/^I verify the pattern matcher equal to$/) do
  exp_val = "Hello"
  act_val = "Hello"
  expect(act_val).to eq(exp_val)
end

Then(/^I verify the pattern matcher include$/) do
  exp_str = "H"
  act_str = "Hello"
  expect(act_str).to include(exp_str)
end

Then(/^I verify the pattern matcher equal to for an array$/) do
  exp_arr = ["cat","mouse"]
  act_arr = ["cat","mouse"]
  expect(act_arr).to eq(exp_arr)

end

Then(/^I verify the pattern matcher include for an array$/) do
  act_arr = ["cat","mouse"]
  expect(act_arr).to include("cat")

end

And(/^I verify the pattern matcher not to inlcude a particular value$/) do
  exp_not_val = "best"
  act_not_val = "better"
  expect(act_not_val).not_to include(exp_not_val)
end

And(/^I verify the pattern matcher not to inlcude a particular value in an array$/) do
  exp_not_arr = ["tom"]
  act_not_arr = ["dick","harry"]
  expect(act_not_arr).not_to include(exp_not_arr)
end



Given(/^I verify if false not to be true$/) do
  expect(false).not_to be_truthy
end


And(/^I verify if true to be true$/) do
  expect(true).to be_truthy
end

Given(/^I verify pattern matching for string$/) do
  expect("testing").to match(/test/)

end

Then(/^I verify pattern not to match the string$/) do
  expect("testing not to ").not_to match(/true/)
end

Given(/^I verify relational operators greater than$/) do
  expect(100).to be > 25
end

And(/^I verify relational operators lesser than$/) do
  expect(100).to be < 125
end

And(/^I verify predicate methods$/) do
  0.zero?
end

And(/^I verify if array is empty$/) do
  emp_arr = []
  emp_arr.empty?
end




And(/^I verify float value is not a zero$/) do
  flt_val = 20.00
  expect(flt_val).not_to be_zero



end

Given(/^I verify array has odd_values$/) do
  arr_vals = [25,29,47]
  expect(arr_vals).to has_odd_values
end

Given(/^I verify array matching an array$/) do
  arr1 = [100, 112, 240]

  expect(arr1).to contain_exactly(240,112,100)
end

And(/^I verify values to match exactly$/) do
  arr3 = ["heath","ledger"]
  arr4 = ["heath","ledger"]
  expect(arr3).to match_array(arr4)
end

Then(/^I verify if a value is present in the given range of values$/) do
  expect(200..500).to cover(250)
end

Then(/^I verify if a value is not present in the given range of values$/) do
  expect(200..500).not_to cover(600)
end

And(/^I verify end of string to contain the given values$/) do
  str1 = "this is a test"
  expect(str1).to end_with "test"
end

And(/^I verify if an array to end with the given values$/) do
  arr5 = [100,200,300]
  expect(arr5).to end_with 300
end

And(/^I verify hash to contain given keys$/) do

 exp_hash = data_for(:Hash1)
 exp_hash.has_key?(:a)
 exp_hash.has_key?(:b)
end

Given(/^I verify hash to include certain values$/) do
  @exp_hash2 = data_for(:Hash2)
  expect(@exp_hash2.values).to include(100)
end

And(/^I verify not include for the hash values$/) do
  expect(@exp_hash2).not_to include(400)
end