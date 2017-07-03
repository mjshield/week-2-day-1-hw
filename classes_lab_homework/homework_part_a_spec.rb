require('minitest/autorun')
require_relative('./homework_part_a')
require( 'minitest/reporters' )
Minitest::Reporters.use!( Minitest::Reporters::SpecReporter.new )

class TestStudent < Minitest::Test

  def setup
    student1 = Student.new("Matthew", 14)
    student2 = Student.new("Chris", 14)

  end

  def test_student

    assert_equal("Matthew", name)
    assert_equal("Chris", name)
  end

end
