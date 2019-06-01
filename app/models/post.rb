class Post < ApplicationRecord
	acts_as_tenant(:author)
end
