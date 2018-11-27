module PostsHelper
    def flash_class(level)
        level = level.to_sym
        if level == :notice
            "alert alert-info"
        elsif level == :success
            "alert alert-success"
        elsif level == :error
            "alert alert-danger"
        else
            "alert alert-warning"
        end
    end

    def is_followed(fan, star)
        Follow.find_by(follower: fan, followed: star).present?
    end
end
