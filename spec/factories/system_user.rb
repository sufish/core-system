FactoryGirl.define do
  factory :system_user, class: Users::SystemUser do
    name 'tester'
    real_name 'tester'
    role_name Users::SystemUser::DEPT_MANAGER
    password 'qqqwww'
    password_confirmation 'qqqwww'
  end
end