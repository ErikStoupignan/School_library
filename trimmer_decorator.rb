require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    splited = @nameable.correct_name
    splited.length > 10 ? splited[0..9] : splited
  end
end
