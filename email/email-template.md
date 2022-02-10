# Email Template

Raven provides a simple email form template to send emails via any provider. The email template is comprised of 3 parts -&#x20;

1. Subject
2. Body
3. Attachments

While the subject is pretty straightforward, the email body needs to be provided in HTML. If you have email templates designed already, you can just copy-paste the HTML.

#### Attachments

For attachments, you can add new attachments to the template as many as you would want to send. Each attachment has a type, file data key and a file name key. The file data key and file name key would be like `{{attachment_1}}` and `{{attachment_name_1}}`. The type specifies whether the attachment is a text file or some other format (PDF, JPEG etc). The attachment data should be encoded in Base64 encoding and passed as a value to the file data key in the Send Event API. Also, the name of the attachment that you want to send in the email should be passed as a value to the file name key.

#### Headers

You can add email headers like reply-to, sender etc in the Integration tab while setting up the email provider integration.

### Dynamic Content

Any dynamic content can be supplied in the template in handlebars. For example: `{{name}}`. Raven will replace these variables with the value passed in the Send Event API.



