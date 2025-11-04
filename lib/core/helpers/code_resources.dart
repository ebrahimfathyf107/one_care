class CodesResources {
  
  static final String hideAppBarCSS = '''
  header, 
  .header, 
  .return-to-shop,
  #header, 
  nav:first-of-type,
  .ht-ctc, .ht-ctc-chat, .ht-ctc-chat-style-2, .ctc-analytics, .ctc_wp_desktop, .ht_ctc_animation,
  footer, 
  .footer,
  .modal,
  .modal-backdrop,
  .modal-overlay,
  .overlay,
  .cookie-banner,
  .cookie-popup,
  #cookie-dialog,
  .wd-cookies-popup.popup-display,
  #footer,
  .wd-toolbar { /* <== ده السطر الجديد */
    display: none !important;
    height: 0 !important;
    min-height: 0 !important;
    padding: 0 !important;
    margin: 0 !important;
  }
  body { 
    padding-top: 0 !important; 
    margin-top: 0 !important;
  }
''';
  static final String hideMyaccountCSS = '''
  .wd-page-title {
    display: none !important;
  }
''';

  static final String hideElementsJS = '''
  function hideElements() {
    const elementsToHide = document.querySelectorAll('header, .header, #header, [class*="header"],
    .ht-ctc, .ht-ctc-chat, .ht-ctc-chat-style-2, .ctc-analytics, .ctc_wp_desktop, .ht_ctc_animation,
    .modal, .modal-backdrop, .modal-overlay, .overlay, [class*="overlay"], [class*="modal"],
    .return-to-shop, nav:first-of-type, footer, .footer, #footer, [class*="footer"],
    .cookie-banner, .cookie-popup, #cookie-dialog, .wd-cookies-popup.popup-display'); // New selector added
    elementsToHide.forEach(element => {
      element.style.display = 'none';
      element.style.height = '0';
      element.style.minHeight = '0';
      element.style.padding = '0';
      element.style.margin = '0';
    });
  }
  
  // Run initially
  hideElements();
  
  // Set up observer for dynamic content
  const observer = new MutationObserver(hideElements);
  observer.observe(document.body, { 
    childList: true, 
    subtree: true 
  });
''';

  static final String hideMyAcountTextJs = '''
    const element = document.querySelector('.woocommerce-MyAccount-title.entry-title');
    if (element) {
      element.style.display = 'none';
    }
  ''';
  static final String hideNotice1Css = '''
  .woocommerce-MyAccount-content p:first-of-type {
    display: none !important;
  }
''';
  static final String hideNotice2Js = '''
  const paragraphs = document.querySelectorAll('.woocommerce-MyAccount-content p');
  paragraphs.forEach(p => {
    if (p.innerText.includes("From your account dashboard")) {
      p.style.display = 'none';
    }
  });
''';
static final String hideGoogleLoginCSS = '''
  .wd-social-login .login-goo-link {
    display: none !important;
  }
''';

}
