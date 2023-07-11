'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "62a3a77c0f71c315ddc8bea335a2c221",
"assets/assets/6ob.gif": "8db5efdbe3f36746b18f7779c04b2d58",
"assets/assets/adopt_me_icon.png": "0f8a8a3a83356e13c6f108f67c635520",
"assets/assets/adopt_me_white_icon.png": "14407cfdc9a16c32680a22cd589c191f",
"assets/assets/age_icon.png": "a016e862c5027f3dcbfef7d0203b3899",
"assets/assets/bird0.png": "a0ccddadd0b08ae4d445c94e0b6e0bb0",
"assets/assets/bird1.png": "3d6f9d0556368803ca88a1e1cd43b38b",
"assets/assets/bird2.png": "2c4cea55bf5db6f03d27dc15b8e7c869",
"assets/assets/bird3.png": "d256b265738ed788b5594bcabc1723f2",
"assets/assets/bird_icon.png": "d30269856e387c959e099f39a3c4079f",
"assets/assets/blue_bg_decor.png": "9f3af2576fb5c0bee2ad1a6d5018a380",
"assets/assets/camel0.png": "2ea1be4d3e67c666f0f74d18d0b5a187",
"assets/assets/cat0.png": "ff980dbb93deaf5ee03b254212405c15",
"assets/assets/cat1.png": "be48287dbf4189b52207aadd4e913108",
"assets/assets/cat_icon.png": "0c4254276d73706379ff81f541368094",
"assets/assets/confetti.gif": "8db5efdbe3f36746b18f7779c04b2d58",
"assets/assets/dog0.png": "37e19deed0f2a71e693c9928c0849bfc",
"assets/assets/dog1.png": "c33e9e33ea466c88a113b994b0dced76",
"assets/assets/dog2.png": "c0cb02419132c58fb3d6cdb2779691e6",
"assets/assets/dog3.png": "d8ec14a18aacb0836900a653ff1b4f88",
"assets/assets/dog4.png": "f1cce1a2a4a1b0598c7a1055651957f6",
"assets/assets/dog_icon.png": "06dcc9c3dacb0afe0eb7b428e2ad19e7",
"assets/assets/filter_icon.png": "538f7b587b9692ef6b4e56e1f9ac7961",
"assets/assets/green_bg_decor.png": "b7a3a69f939ea5405b2fbfb69ded9ec2",
"assets/assets/know_me_icon.png": "5279b9d24190949817099dd3e9bf617d",
"assets/assets/location_icon.png": "fa3dbb9d908416afc1f97e3df5d06474",
"assets/assets/money_icon.png": "1b8e383421186c7b1a579bae9d92007f",
"assets/assets/orange_bg_decor.png": "4700d5723615fb7ba4609e47bb8f01f4",
"assets/assets/others_icon.png": "1162eb7183f0c88db92ff76c8191dad3",
"assets/assets/paw_icon.png": "ef973db4d6b0e902533cf8887ecf2406",
"assets/assets/pink_bg_decor.png": "1c4c8285928577f71325a2c8d5eab0c0",
"assets/assets/purple_bg_decor.png": "8a26f1a4b85e18356b2b332fef8dda0b",
"assets/assets/rabbit0.png": "6e6152172be549c9a2f0a22b63aada15",
"assets/assets/rabbit1.png": "b15e6e754d6880d01241a06fce8c531f",
"assets/assets/rabbit_icon.png": "24fcc1df090ded6bb73db58d141aaecc",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "5a1884585f1ea0acd062614b3b3cab0c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b00363533ebe0bfdb95f3694d7647f6d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "0a94bab8e306520dc6ae14c2573972ad",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "9cda082bd7cc5642096b56fa8db15b45",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "714efa91c0557888ed177f8305b57b53",
"/": "714efa91c0557888ed177f8305b57b53",
"main.dart.js": "653254c3e0eb1281beeb48a0e907e1f5",
"manifest.json": "b94a9377341d3e5b122d97054f8434e0",
"version.json": "a49caecb79e40dc1d9ca642bdefbfcbc"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
