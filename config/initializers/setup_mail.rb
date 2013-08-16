
ActionMailer::Base.delivery_method = :smtp


ActionMailer::Base.smtp_settings = {
  :address              => "smtp.mail.yahoo.com",
  :port                 => 587,
  :domain               => "yahoo.com",
  :user_name            => "rubyrails@yahoo.com",
  :password             => "shards13",
  :authentication       => "plain",
  :enable_starttls_auto => true
}


#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?