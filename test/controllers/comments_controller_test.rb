require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "add comment" do
  	user = FactoryGirl.create(:user)
	sign_in user	
  	place = FactoryGirl.create(:place)

  	assert_difference 'Comment.count' do
  		post :create, :place_id => place.id, {:comment => {
  			:message => 'yay', 
  			:rating => '5_stars',
  			}
  		}
  	end
  assert_redirected_to places_path
  assert_equal 1, user.places.comments.count
  end
end