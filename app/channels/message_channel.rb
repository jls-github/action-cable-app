class MessageChannel < ApplicationCable::Channel
    def subscribed
        stream_from "messages_channel"
    end

    def unsubscribed
    end

    def speak(data)
        @message = Message.create!(message_params(data))
        ActionCable.server.broadcast("messages_channel", @message)
    end

    private

    def message_params(data)
        {name: data["name"], content: data["content"]}
    end
end