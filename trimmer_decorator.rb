require_relative './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    splited = @nameable.correct_name
    splited.length > 10 ? splited[0...10] : splited
  end
end
