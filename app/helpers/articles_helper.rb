module ArticlesHelper
  def show_article?(article)
    current_user.is_owner?(article) || article.public?
  end

  def show_comment?(comment, article)
    article.user == current_user || comment.public?
  end

  def owner_article(article)
    current_user.is_owner?(article)
  end

  def owner_comment(comment)
    comment.user == current_user
  end

  def is_followings?(article)
    current_user.followings.include?(article.user)
  end
end
