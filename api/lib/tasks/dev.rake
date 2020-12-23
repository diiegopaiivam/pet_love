namespace :dev do

  PASSWORD_DEFAULT = 139045

  desc "Configurando o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando DB...") { %x(rails db:drop) }
      show_spinner("Criando DB...") { %x(rails db:create) }
      show_spinner("Migrando DB...") { %x(rails db:migrate) }
      show_spinner("Criando Usuario Master...") { %x(rails dev:add_default_user) }
    else 
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

    desc "Criando Usuário Padrão"
    task add_default_user: :environment do
      User.create!(
        email: 'admin@admin.com.br',
        name: 'admin',
        phone: '85992777480',
        password: PASSWORD_DEFAULT,
        password_confirmation: PASSWORD_DEFAULT
      )
    end

    private
      def show_spinner(msg_start, msg_end = "Concluído!")
        spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
        spinner.auto_spin
        yield
        spinner.success("(#{msg_end})")
      end
end