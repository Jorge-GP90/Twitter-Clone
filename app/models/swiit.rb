class Swiit < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 1}, length: {maximum: 140}, presence: { message: " is too long (Max. 140 characters) or is not writen yet." }
end
