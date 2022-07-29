class NewArticleMailer < ApplicationMailer

  def send_mail_new_product(article, email, opcion = '')
    @article = article
    @opcion = opcion
    mail(to: email, subject: "Producto #{opcion}!")
  end
end
