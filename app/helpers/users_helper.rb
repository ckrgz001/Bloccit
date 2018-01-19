module UsersHelper
    def has_posts?
        posts.count > 0
    end

    def has_comments?
        comments.count > 0
    end
end
