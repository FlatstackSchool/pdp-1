user = FactoryGirl.create(:user, email: "user@example.com")
FactoryGirl.create_list(:article, 5, user: user)
