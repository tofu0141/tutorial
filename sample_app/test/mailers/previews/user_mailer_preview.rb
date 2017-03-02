# Preview all emails at https://ruby-tutorial-tofu0141.c9users.io/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at https://ruby-tutorial-tofu0141.c9users.io/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at https://ruby-tutorial-tofu0141.c9users.io/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end
