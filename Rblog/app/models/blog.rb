class Blog < ApplicationRecord
  validates :content, length: { in: 1..140, message: "1~140字の間で入力してください。"}
end
