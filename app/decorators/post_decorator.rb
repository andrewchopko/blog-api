class PostDecorator < Draper::Decorator

  delegate_all

  def as_json *args
    {
      id: id,
      title: title,
      content: content
    }
  end
end
