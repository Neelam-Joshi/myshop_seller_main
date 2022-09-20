class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage(this.messageContent, this.messageType);
}

List<ChatMessage> messages = [
  ChatMessage("Hello, Will", "receiver"),
  ChatMessage("How have you been?", "receiver"),
  ChatMessage("Hey Kriss, I am doing fine dude. wbu?", "sender"),
  ChatMessage("ehhhh, doing OK.", "receiver"),
  ChatMessage("Is there any thing wrong?", "sender"),
];
