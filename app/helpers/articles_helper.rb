module ArticlesHelper
  def persisted_comments(comments)
    #rejects any comments not in database
    comments.reject{ |comment| comment.new_record? }
  end
end
