require( 'minitest/autorun' )
require_relative( '../homeworkparta' )

class TestStudent < MiniTest::Test

  def setup
    @team = Student.new("Pim", "G7")

    @student2 = Student.new("John", "G10")

    @students = [@student1, @student2]

  end

  def test_get_name
    result = @student1.name()
    assert_equal("Pim", result)
  end

  def test_get_cohort
    result = @student2.cohort()
    assert_equal("G10", result)
  end

  def test_set_name
    @student1.set_name("Not Pim anymore")
    assert_equal("Not Pim anymore", @student1.name())
  end

  def test_set_cohort
    @student2.set_cohort("G8")
    assert_equal("G8", @student2.cohort())
  end

  def test_talk
    assert_equal("I can talk!", @student1.talk("I can talk!"))
  end

  def test_say_fav_language
    ruby = "Ruby"
    assert_equal("I love Ruby!", @student1.say_fav_language(ruby))
  end

end
