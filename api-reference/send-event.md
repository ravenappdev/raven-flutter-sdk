# Send Event API

{% swagger baseUrl="https://api.ravenapp.dev" path="/v1/apps/:app_id/events/send" method="post" summary="Send Event" %}
{% swagger-description %}
This API allows you to send messages
{% endswagger-description %}

{% swagger-parameter in="path" name="app_id" type="string" %}
 
{% endswagger-parameter %}

{% swagger-parameter in="header" name="Authorization" type="string" %}
**AuthKey <api_key>.**
{% endswagger-parameter %}

{% swagger-parameter in="body" name="event" type="string" %}
event name
{% endswagger-parameter %}

{% swagger-parameter in="body" name="data" type="object" %}
{

\


   "param1" : "<value1>",

\


   "param2" : "<value2>",

\


   "param3" : object/array

\


}
{% endswagger-parameter %}

{% swagger-parameter in="body" name="user.user_id" type="string" %}
userId to send the notifications to. This is  your own user identifier which you have used to 

[create user on Raven](app-users.md#create-user)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="user.email" type="string" %}

{% endswagger-parameter %}

{% swagger-parameter in="body" name="user.mobile" type="string" %}
mobile with country code prefix (e.g +91)
{% endswagger-parameter %}

{% swagger-parameter in="body" name="user.whatsapp_mobile" type="string" %}
mobile with country code prefix (e.g. +91)

\


if empty,
{% endswagger-parameter %}

{% swagger-parameter in="body" name="user.onesignal_external_id" type="string" %}


[Onesignal External User Ids](https://documentation.onesignal.com/docs/external-user-ids)


{% endswagger-parameter %}

{% swagger-parameter in="body" name="user.fcm_tokens" type="[]string" %}
List of fcm tokens.  eg. ["<fcmtoken1"

_,_

 "<fcmtoken2>"]
{% endswagger-parameter %}

{% swagger-parameter in="body" name="override" type="object" %}

{% endswagger-parameter %}

{% swagger-response status="200" description="Message successfully accepted." %}
```
{    
    "request_id": "1d1ed73c-96e6-4aa3-abc2-2e9a926f773a",    
    "success": true
}
    
```
{% endswagger-response %}

{% swagger-response status="404" description="" %}
```
{    
    "success": false,
    "error" : "event not found"
}
```
{% endswagger-response %}
{% endswagger %}

#### Request Example

```
POST /v1/apps/{{app_id}}/events/send HTTP/1.1
Host: https://api.ravenapp.dev
Authorization: AuthKey {{secret_key}}
Content-Type: application/json

{
    "event": "sample_event_1",
    "user": {
        "mobile": "+919876543210",
        "email": "x@ravenapp.dev",
        "whatsapp_mobile": "+919876543210", // if empty, `mobile` is considered for whatsapp
    },
    "data": {
        "name": "John Doe",
        "date": "01 December 2020"
    }
}
```

{% swagger baseUrl="https://api.ravenapp.dev/v1/apps/:app_id/events/bulk_send" path="" method="post" summary="Send Event Bulk API" %}
{% swagger-description %}

{% endswagger-description %}

{% swagger-response status="200" description="" %}
```
```
{% endswagger-response %}
{% endswagger %}

```
POST /v1/apps/{{app_id}}/events/bulk_send HTTP/1.1
Host: https://api.ravenapp.dev
Authorization: AuthKey {{secret_key}}
Content-Type: application/json

{
    "event": "sample_event_1",
    "batch": [
        {
            "user": {
                "mobile": "+919876543210",
                "email": "x@ravenapp.dev",
                "whatsapp_mobile": "+919876543210", // if empty, `mobile` is considered for whatsapp
            },
            "data": {
                "name": "John Doe",
	        "date": "01 December 2020"
            }
        },
        {
            "user": {
                "mobile": "+919876543210",
                "email": "x@ravenapp.dev",
                "whatsapp_mobile": "+919876543210", // if empty, `mobile` is considered for whatsapp
            },
            "data": {
                "name": "John Doe",
	        "date": "01 December 2020"
            }
        }
    ]
}
```



### Advanced

If you have any extra parameters that need to be passed in the notification, you can add it in the override object in the request payload.

Here's an example payload where we add extra params - email recipients (_**cc**_, _**bcc**_) & override the _**from**_ parameter.

```
{
    "event": "sample_event_1",
    "user": {
        "mobile": "+919876543210",
        "email": "x@ravenapp.dev",
        "whatsapp_mobile": "+919876543210", // if empty, `mobile` is considered for whatsapp
    },
    "data": {
        "name": "John Doe",
        "date": "01 December 2020"
    },
   "override" : {
       "email" : {
          "from" : {                // overriding `from` 
             "name" : "Adam",
             "address" : "adam@ravenapp.dev"
          },
          "cc" : [                  
           {
             "name" : "Michael",
             "address" : "michael@ravenapp.dev"
           }
          ],
          "bcc" : [
           {
             "name" : "Max",
             "address" : "max@ravenapp.dev"
           }
          ]   
        }
    }
}
```



**Provider Override**

You can also override API payload being sent to the provider. Parameter passed in override will be merged with the final API call made to the provider. Currently overriding API payload has been enabled for Push Channel.&#x20;

Here's an example where we override API payload of Onesignal provider _**onesignal\_test**_ and pass additional parameters - _big\_picture & android\_channel\_id_

```
{
    "event": "sample_event_1",
    "user": {
        "mobile": "+919876543210",
        "onesignal_external_id" : "john123"
    },
    "data": {
        "name": "John Doe",
        "date": "01 December 2020"
    },
    "override" : {
       "providers" : {
          "onesignal_test" : {   // provider_name
              "payload" : {
                 "big_picture" : "<url>",
                 "android_channel_id" : "<channel_uuid>"
                 ....
              }
          }
        }
    }
}
```

