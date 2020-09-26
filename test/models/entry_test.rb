require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do 
    entry = Entry.new(meal_type: "Valid Attributes", 
                      carbonhydrates: 35, proteins: 40,
                      fats: 30, calories: 40)

    assert entry.save
  end

  test "should not save entry without calories" do 
    entry = Entry.new(meal_type: "Valid Attributes", 
      carbonhydrates: 35, proteins: 40,
      fats: 30)

    assert entry.save
  end

  test "should not save entry without carbonhydrates" do 
    entry = Entry.new(meal_type: "Valid Attributes", 
      proteins: 40, fats: 30, calories: 40, carbonhydrates: 35)

    assert entry.save
  end
  
  test "should not save entry without meal_type" do 
    entry = Entry.new(proteins: 40, fats: 30, calories: 40)

    assert entry.save
  end
end 
