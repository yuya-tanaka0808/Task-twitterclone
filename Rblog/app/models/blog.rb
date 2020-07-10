class Blog < ApplicationRecord
  validates :content, lenth: { in: 1..140, message: "1~140字の間で入力してください。"}
end
