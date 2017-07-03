class Student

  def initialize(name, cohort, language)
    @student_name = name 
    @cohort = cohort
    @language = language
  end

  def get_name
    return @student_name
  end

  def get_cohort
    return @cohort
  end

  def get_language
    return @language
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk(name)
    p "#{name}: I can talk!"
  end

  def say_favourite_language(name, language)
    p "#{name}: I love #{language}"
  end

end
