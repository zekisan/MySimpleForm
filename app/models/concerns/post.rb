class Post
  include ActiveAttr::Attributes

  attribute :comment, type: :string

  def initialize(comment)
    @comment = comment
  end
end