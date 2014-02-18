class Dog < ActiveRecord::Base
  typed_store :properties, coder: DumbCoder do |p|
    p.boolean :is_fat
    p.string :toys, array: true, default: [], null: false
  end
end
