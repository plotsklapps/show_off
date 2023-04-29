import 'package:showoff/all_imports.dart';

class EmailSender extends StatefulWidget {
  const EmailSender({Key? key}) : super(key: key);

  @override
  EmailSenderState createState() {
    return EmailSenderState();
  }
}

class EmailSenderState extends State<EmailSender> {
  late final TextEditingController _subjectCtrl;
  late final TextEditingController _recipientCtrl;
  late final TextEditingController _bodyCtrl;

  Future<void> send() async {
    String platformResponse;

    final Email email = Email(
      body: _bodyCtrl.text,
      subject: _subjectCtrl.text,
      recipients: [_recipientCtrl.text],
    );

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'Thank you for reaching out to me!';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  void initState() {
    _subjectCtrl = TextEditingController();
    _recipientCtrl = TextEditingController(text: 'plotsklapps@gmail.com');
    _bodyCtrl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _subjectCtrl.dispose();
    _recipientCtrl.dispose();
    _bodyCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send me a message'),
        actions: <Widget>[
          IconButton(
            onPressed: send,
            icon: const Icon(Icons.send),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _recipientCtrl,
                decoration: const InputDecoration(
                  labelText: 'Recipient',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _subjectCtrl,
                textCapitalization: TextCapitalization.values[0],
                decoration: const InputDecoration(
                  labelText: 'Subject',
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _bodyCtrl,
                  textCapitalization: TextCapitalization.values[0],
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                    labelText: 'Message',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
