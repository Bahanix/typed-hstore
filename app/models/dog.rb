class Dog < ActiveRecord::Base
  typed_store :properties do |p|
    p.boolean :is_fat
  end
end
