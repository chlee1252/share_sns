//fb://profile?id=
class Data {
  static const preURL = "https://share-sns.herokuapp.com";
  static const SNSData = {
    "Facebook": {
      "deeplink": "fb://profile/",
      "image": "asset/facebook.jpeg",
    },
    "Instagram": {
      "deeplink": "$preURL/instagram/",
      "image": "asset/instagram.jpeg",
    },
    "Phone": {
      "deeplink": "tel:",
      "image": "asset/phone.png",
    },
    "Email": {
      "deeplink": "mailto:",
      "image": "asset/email.jpeg",
    },
    "Snapchat": {
      "deeplink": "$preURL/snapchat/",
      "image": "asset/snapchat.jpeg",
    },
    "All": {
      "deeplink": "",
      "image": "",
    },
  };
}
