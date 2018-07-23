
class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort

  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talk(talk)
    return talk
  end

  def say_fav_language(fav_lan)
    return "I love #{fav_lan}!"
  end





end
