defmodule FakerTest.Email do
  # use Bamboo.Phoenix, view: FakerTest.EmailView
  import Bamboo.Email

  def user_creation_email do
    new_email(
      from: "no-reply@elixircasts.io",
      to: "hizqeel1214@gmail.com",
      subject: "User created",
      text_body: "User is created.",
      html_body:  "User is created."
    )
  end
end
