require_relative '../services/create_lobby'

module Commands
  class Arduino
    def self.call(recipient)
      recipient.send_gif('./resources/button.gif')
      Services::CreateLobby.call(recipient: recipient)
    end
  end
end
