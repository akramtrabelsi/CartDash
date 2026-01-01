importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js');

firebase.initializeApp({
    apiKey: "AIzaSyDkQ1Hn7SnfxZMmPs7nLfR30nNAHVr4tFY",
    authDomain: "cart-dash-194fb.firebaseapp.com",
    projectId: "cart-dash-194fb",
    storageBucket: "cart-dash-194fb.firebasestorage.app",
    messagingSenderId: "714020105233",
    appId: "1:714020105233:web:06cde05cc9939d7bb115b0",
    measurementId: "G-REN2R6VHB1"
});

const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
    return self.registration.showNotification(payload.data.title, {
        body: payload.data.body ? payload.data.body : '',
        icon: payload.data.icon ? payload.data.icon : ''
    });
});