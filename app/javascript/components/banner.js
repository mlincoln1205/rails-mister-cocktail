

import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Create your drink", "If you drink, don't drive", "Share with your friends"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
