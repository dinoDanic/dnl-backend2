module Mutations
  class CreateCategory < BaseMutation
    argument :name, String, required: true

    type Types::CategoryType

    def resolve(name:)
      Category.create!(name: name )
    end
  end
end