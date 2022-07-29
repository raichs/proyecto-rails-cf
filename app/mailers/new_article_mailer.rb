class NewArticleMailer < ApplicationMailer

  def send_mail_new_product(article)

    # @article = params[:article]

    # mail(to: "jcbances6@gmail.com", subject: "Producto agregado!")
    # mail(to: user.email, subject: "Resultado de exportación de #{text}")

    @article = article
    mail(to: "jcbances6@gmail.com", subject: "Producto agregado!")
    
    
    



  end
end
