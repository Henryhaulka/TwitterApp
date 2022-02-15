module UsersHelper
    def user_format(user)
        link = ''
        if  current_user.followings.where(receiver_id: user.id).present? 
         link  << link_to('Unfollow',followership_path(user: user), method: :delete, data: { confirm: "Are you sure you want to unfollow #{user.name}"}, class: 'btn btn-danger w-50' )
        elsif current_user == user
         link = content_tag :span, ' Current User',   class: 'btn btn-success w-50'
        else
         link  << link_to('Follow',followerships_path(user: user), method: :post, class: 'btn btn-primary w-50' )
        end  
        link.html_safe
    end 
end


 