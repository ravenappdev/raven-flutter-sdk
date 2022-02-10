# Languages

## 🔘 Enable Languages

Raven allows you to create notifications in multiple languages and manage them from within a single event. By default **English (en)**, is enabled for all Events. To enable other languages you can select from the available languages below -&#x20;

![Available languages](<../../.gitbook/assets/image (19).png>)

Once you save the languages, you will be able to see them in the Events.

## 🌐 Languages in Event Templates

You can create templates in multiple languages in the same Event.&#x20;

![Template in multiple languages (right)](<../../.gitbook/assets/image (10).png>)

1. Create an Event or Edit an existing Event. Go to the Event Templates section.
2. You will see a Language dropdown on the right side. You will see the Languages that are enabled at the App level in the dropdown. Enable the ones that are required for this template and add the localised content.
3. When sending the notification, Raven will select the template based on the user's language preference. You can either manage the language preference with Raven or send the language preference in the Send Event API itself.

* Managing preferences with Raven: In this case, Raven will select the preferred language for the user. Check out our doc on [Users & Preferences ](../users.md)to know more.
* Sending preference in the API: You can send the language preference in the below format. Check our [Send Event API doc](../../api-reference/send-event.md) for more details.&#x20;

```
...,
"user": {
    ...,
    "preferences" : {
        "locale" : "hi"
    }   
}
```

4\. If Raven is not able to find the preferred language for a user or a template does not exist with the preferred language, it will default to the **English** template.

