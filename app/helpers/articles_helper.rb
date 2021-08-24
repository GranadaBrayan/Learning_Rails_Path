module ArticlesHelper
  include Visible::Constants

  def show_article?(article)
    current_user.is_owner?(article) || article.status == PUBLIC
  end

  def show_comment?(comment, article)
    article.user == current_user || comment.status == PUBLIC
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
