class User
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include Concerns::MyAttributes

  my_attr :id, 1
  my_attr :name, 'Zeki'
  my_attr :age, 27
  my_attr :street, 'Cel. Genuino'
  my_attr :posts, [{comment: 'comment 1'}, {comment: 'comment 2'}], model: Post

  def persisted?
    true
  end
end
