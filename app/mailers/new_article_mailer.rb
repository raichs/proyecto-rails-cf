class NewArticleMailer < ApplicationMailer

  def send_mail_new_product(article)
    @article = article
    mail(to: "jcbances6@gmail.com", subject: "Producto agregado!")
  end
end
