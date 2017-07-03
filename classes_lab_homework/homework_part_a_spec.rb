require('minitest/autorun')
require_relative('./homework_part_a')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestStudent < Minitest::Test

  def test_get_name
    new_student = Student.new("Matthew", 14, "Ruby")
    assert_equal("Matthew", new_student.get_name)
  end

  def test_get_cohort
    new_student = Student.new("Matthew", 14, "Ruby")
    assert_equal("Matthew", new_student.get_name)
  end

  def test_set_name()
   new_student = Student.new("Matthew", 14, "Ruby")
   assert_equal("Roger", new_student.set_name("Roger"))
  end

  def test_set_cohort
    new_student = Student.new("Matthew", 14, "Ruby")
    assert_equal(20, new_student.set_cohort(20))
  end

  def test_student_talk
    new_student = Student.new("Matthew", 14, "Ruby")
    name = new_student.get_name
    assert_equal("Matthew: I can talk!", new_student.student_talk(name))
  end

  def test_say_favourite_language
    new_student = Student.new("Matthew", 14, "Ruby")
    name = new_student.get_name
    language = new_student.get_language
    assert_equal("Matthew: I love Ruby", new_student.say_favourite_language(name, language))
  end

end
