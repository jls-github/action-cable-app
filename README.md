# Action Cable Lecture

## Resources

- Action Cable Docs - https://guides.rubyonrails.org/action_cable_overview.html
- Web Sockets Wiki - https://en.wikipedia.org/wiki/WebSocket 
- Backend setup (BUT DON’T USE THIS FOR FRONTEND. THEY IMPLEMENT THEIR FRONTEND INCORRECTLY, AND IT HAS CAUSED MANY DEVELOPERS GREAT PAIN, INCLUDING MYSELF) - https://medium.com/@dakota.lillie/using-action-cable-with-react-c37df065f296 
- Action Cable Protocol - https://github.com/NullVoxPopuli/action_cable_client#the-action-cable-protocol 

Recommended: Create a test action cable app before using this in a larger application

## Steps to Create

- Enable cors
- Set up cors config
    - cors.rb
    - Config/environments/development.rb (further will be needed for prod)
- Enable redis (for production)
- Create your resource (rails g resource)
- Create your cable route
    - Note: the Rails documentation differs from how most guides implement this.
    - class Application < Rails::Application
  config.action_cable.mount_path = '/websocket'
end
    - mount ActionCable.server => '/cable'
- Create channels
    - subscribed method
    - receive method 

## Standup

[x] Calvin
[x] Cameron Go Warriors
[x] Donaldo
[x] Jeremiah
[x] Johnny
[x] Mike
[x] Sydney
[x] Eric

- What have you done since our last standup?
- What are you working on next?
- Is anything blocking you?