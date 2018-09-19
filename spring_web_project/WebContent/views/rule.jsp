<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Privacy Policy</title>
<link rel="stylesheet" href="resources/css/policy.css">

<style type="text/css">
/* The basic stuff to make it work */
.ptag{color:#1074c5; font-weight:bold;}
.contenedor {
  width: 100vw;
  height: 100vh;
  background: pink;
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}
.contenedor form {
  box-sizing: border-box;
  text-align: center;
  padding: 22px;
  display: -webkit-inline-box;
  display: -ms-inline-flexbox;
  display: inline-flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  position: fixed;
  height: 100vh;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}
.contenedor form input {
  height: 0;
  margin: 12px 0;
  z-index: 1;
}
.contenedor form input:checked {
  outline: 0;
  border: 0;
}
.contenedor form input:before {
  content: "";
  position: absolute;
  display: inline-block;
  width: 8px;
  height: 8px;
  border: 1px solid rgba(255, 255, 255, 0.81);
  border-radius: 11px;
  cursor: pointer;
  -webkit-transition: all 0.25s linear;
  transition: all 0.25s linear;
}
.contenedor form input:checked:before {
  background-color: white;
}
.contenedor form input:after {
  content: "" attr(titulo) "";
  position: relative;
  left: 30px;
  opacity: 0;
  color: white;
  font-size: 9px;
  display: block;
  min-width: 80px;
  -webkit-transition: all 0.25s linear;
  transition: all 0.25s linear;
}
.contenedor form input:checked:after {
  opacity: 1;
  left: 20px;
}
.contenedor form input:hover:after:not(label) {
  opacity: 1;
}
.contenedor form input:nth-of-type(1):checked ~ .labels label {
  -webkit-transform: translateY(-0%);
          transform: translateY(-0%);
}
.contenedor form input:nth-of-type(2):checked ~ .labels label {
  -webkit-transform: translateY(-100%);
          transform: translateY(-100%);
}
.contenedor form input:nth-of-type(3):checked ~ .labels label {
  -webkit-transform: translateY(-200%);
          transform: translateY(-200%);
}
.contenedor form input:nth-of-type(4):checked ~ .labels label {
  -webkit-transform: translateY(-300%);
          transform: translateY(-300%);
}
.contenedor form input:nth-of-type(5):checked ~ .labels label {
  -webkit-transform: translateY(-400%);
          transform: translateY(-400%);
}
.contenedor form input:nth-of-type(6):checked ~ .labels label {
  -webkit-transform: translateY(-500%);
          transform: translateY(-500%);
}
.contenedor form input:nth-of-type(7):checked ~ .labels label {
  -webkit-transform: translateY(-600%);
          transform: translateY(-600%);
}
.contenedor form .labels {
  position: absolute;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
}
.contenedor form .labels label {
  min-width: 100vw;
  min-height: 100vh;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  background-color: #2B2B38;
  z-index: 0;
  -webkit-transition: all 0.75s cubic-bezier(0.75, 0.25, 0, 1.05);
  transition: all 0.75s cubic-bezier(0.75, 0.25, 0, 1.05);
}
.contenedor form .labels label:nth-child(odd) {
  background-color: #312f27;
  color: white !important;
}

/* Fancy style */
body {
  font-family: "Open sans", sans-serif;
  font-size: 16px;
  font-weight: 100;
  color: white;
}

.content {
  width: 100%;
  box-sizing: border-box;
  padding: 0 110px;
}
.content .block {
  width: inherit;
  font-size: 11px;
  font-weight: 400;
  line-height: 1.5;
  margin: 42px 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}
.content .block span, .content .block span i {
  margin: 0 42px;
}
.content .block span i {
  margin-bottom: 22px;
}
.content .block span i:before {
  font-size: 30px;
}

.Slide:nth-child(even) .content .block {
  color: #717171;
}

.icon {
  position: absolute;
  bottom: 30px;
  left: 0;
  right: 0;
  font-size: 11px;
  text-align: center;
  line-height: 1.5;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
}

#Slide5 .content .block {
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
}
#Slide5 .content .block i {
  margin: 0 12px;
  vertical-align: middle;
}

strong {
  font-weight: 400;
}

h1 {
  /* text-transform: uppercase; */
  font-size:50px;
}

ol {
  text-align: left;
  list-style-type: decimal;
}

a {
  text-decoration: none;
  color: inherit;
  -webkit-transition: all 0.25s linear;
  transition: all 0.25s linear;
}
a:hover {
  color: rebeccapurple;
}

</style>
</head>
<body>
<div class="contenedor">
      <form>
         <input type="radio" id="Slide1" name="slider" titulo="Terms(약관)" autofocus="autofocus" checked="checked" />
            <input type="radio" id="Slide2" name="slider" titulo="Privacy(개인정보 보호)" />
            <input type="radio" id="Slide3" name="slider" titulo="Community(커뮤니티)" />
            <input type="radio" id="Slide4" name="slider" titulo="Buyable Pins(구매가능 핀)" />
            <input type="radio" id="Slide5" name="slider" titulo="Advertising(광고)" />
            <input type="radio" id="Slide6" name="slider" titulo="Copyright(저작권)" />
            <input type="radio" id="Slide7" name="slider" titulo="Trademark(상표)" />
         <div class="labels">
            
            <!-- 서비스 -->
            <label class="Slide" for="Slide1" id="Slide1">
               <div class="content">
                  <h1>Terms of service(서비스 약관)</h1>
                  <h3>Thank you for using BigPic!</h3>
                  <p>
                     These Terms of Service ("Terms") govern your access to and use of the BigPic website, apps, APIs, and widgets (“BigPic” or the “Service”).<br />
                     Please read these Terms carefully, and contact us if you have any questions.<br />
                     By accessing or using BigPic, you agree to be bound by these Terms, our
                     <a href="">Privacy Policy</a>, 
                      our
                     <a href="">Cookies Policy</a>, 
                     and our
                     <a href=""> Community Guidelines</a>.
                  </p>
                  <p>
                     <h3 class="ptag">More simply put</h3>
                     <p class="ptag">Every company has its terms. These are ours.</p>
                  </p>
                  
                  <h3>1. Our service</h3>
                  <p>
                     BigPic helps you discover and do what you love.<br />
                     To do that, we show you things we think will be relevant, interesting and personal to you based on your onsite and offsite activity.<br />
                     To provide our Service, we need to be able to identify you and your interests.<br />
                     Some of the things we show you are promoted by advertisers.<br />
                     As part of our service we try to ensure that even promoted content is relevant and interesting to you.<br />
                     You can identify promoted content because it will be clearly labelled.
                  </p>
                  <p>
                     <h3 class="ptag">More simply put</h3>
                     <p class="ptag">
                        BigPic helps you discover and do what you love.<br />
                        It’s customized to you.<br />
                        We need to know what you like to make everything on BigPic relevant to you.
                     </p>
                  </p>
                  
                  <h2>2. Using BigPic</h2>
                  <h3>a. Who can use BigPic</h3>
                  <p>
                     You may use BigPic only if you can legally form a binding contract with BigPic, and only in compliance with these Terms and all applicable laws.<br />
                     When you create your BigPic account, you must provide us with accurate and complete information.<br />
                     Any use or access by anyone under the age of 13 is not allowed.<br />
                     If you’re based in the EEA, you may only use BigPic if you are over the age at which you can provide consent to data processing under the laws of your country or if verifiable parental consent for your use of BigPic has been provided to us.<br />
                     Using BigPic may include downloading software to your computer, phone, tablet, or other device.<br />
                     You agree that we may automatically update that software, and these Terms will apply to any updates.
                  </p>
                  
               </div>
               
               
               <div class="icon">
                  <span>
                     
                  </span>
                  <span>Use keyboard</span>
               </div>
            </label>
            
            <!-- 개인정보 -->
            <label class="Slide" for="Slide2" id="Slide2">
               <div class="content">
               
                  <h1>Privacy policy(개인정보 보호정책)</h1>
                  <h3>Thank you for using BigPic!</h3>
                  <p>
                     Our mission is to help you discover and do what you love.<br />
                     To do that, we show you personalized content and ads we think you’ll be interested in based on information we collect from you and third parties.<br />
                     We only use that information where we have a proper legal basis for doing so.<br />
                     We wrote this policy to help you understand what information we collect, how we use it and what choices you have about it.<br />
                     Because we’re an internet company, some of the concepts below are a little technical, but we’ve tried our best to explain things in a simple and clear way.<br />
                     We welcome your questions and comments on this policy.
                  </p>
                  
                  <h2>We collect information in a few different ways.</h2>
                  <h3>1. When you give it to us or give us permission to obtain it</h3>
                  <p>
                     When you sign up for or use BigPic, you give us certain information voluntarily.<br />
                     This includes your name, email address, phone number, profile photo, Pins, comments, and any other information you give us.<br />
                     You can also choose to share with us location data or photos.<br />
                     If you buy something on BigPic, we collect payment information, contact information (address and phone number) and details of what you bought.<br />
                     If you buy something for someone else on BigPic, we collect their delivery details and contact information.<br />
                     If you link your Facebook or Google account or accounts from other third party services to BigPic, we also get information from those accounts (such as your friends or contacts).<br />
                     The information we get from those services depends on your settings and their privacy policies, so please check what those are.
                  </p>
                  
                  <h3>2. We also get technical information when you use BigPic</h3>
                  <p>
                     Whenever you use any website, mobile application or other internet service, certain information gets created and logged automatically.<br />
                     The same is true when you use BigPic.<br />
                     Here are some of the types of information we collect.
                  </p>
                  
                  <h3>3. Our partners and advertisers share information with us</h3>
                  <p>                     
                     We also get information about you and your activity outside BigPic from our affiliates, advertisers, partners and other third parties we work with, or other publicly available sources.<br />
                     For example.
                  </p>
                  
                  <h3>3. What we do with the info we collect</h3>
                  <p>                     
                     We use the information we collect to provide the Service to you.<br />
                     We commit to showing you content that’s relevant, interesting and personal to you. In order to do that, it’s necessary for us to use your information to
                  </p>
                  
               </div>
            </label>
            
            <!-- 커뮤니티 -->
            <label class="Slide" for="Slide3" id="Slide3">
               <div class="content">
                  <h1>Customer center(고객 센터)</h1>
                  <h3>Our mission</h3>
                  <p>
                     At BigPic, our mission is to help you discover and do what you love.<br />
                     That means showing you ideas that are relevant, interesting and personal to you, and making sure you don’t see anything that’s inappropriate or spammy.<br />
                     These guidelines are our acceptable use policy and clarify what we do and don’t allow on BigPic.<br />
                     If you come across a Pin, comment or message that seems to break these rules, you can report it to us.<br />
                     Where available, we look to external research and guidance from subject matter experts as we work to keep BigPic safe.
                  </p>
                  <h3>1. Safety</h3>
                  <p>
                     Our team works hard to keep divisive, disturbing or unsafe content off BigPic.<br />
                     Some types of content we delete, other stuff we just hide from public areas.
                  </p>
                  
                  <h3>2. Intellectual property and other rights</h3>
                  <p>
                     To respect the rights of people on and off BigPic, please.
                  </p>
                  
                  <h3>3. Site security and access</h3>
                  <p>                     
                     To keep BigPic secure, we ask that you please.
                  </p>
                  
                  <h3>4. Spam and quality</h3>
                  <p>                     
                     We want BigPic to be high-quality and useful, so we prioritize things that are actionable and provide consistent, enriching experiences.<br />
                     This includes.
                  </p>
                  
                  <h3>4. Contests and paid content</h3>
                  <p>                     
                     Ideas on BigPic are collected by real people who are genuinely excited to try them.<br />
                     To prevent inauthentic content and behavior.
                  </p>
                  
               </div>
            </label>
            
            <!-- 구매 가능한 핀 -->
            <label class="Slide" for="Slide4" id="Slide4">
               <div class="content">
                  <h1>출간 제안</h1>
                  <h3>Our mission</h3>
                  <p>
                     At BigPic, our mission is to help people discover and do what they love.<br />
                     As a merchant, you can play an important role in making that happen.
                  </p>
                  <h3>1. The basics</h3>
                  <p>
                     To make sure merchants offer the kind of high quality goods and exemplary customer service our Pinners are looking for, we hold merchants to the same standards as our advertisers.<br />
                     Your Buyable Pins should follow the below requirements and our.<br />
                     a. Advertising guidelines<br />
                     b. Community guidelines<br />
                     c. Terms of service<br />
                      You're responsible for making sure your use of our services follows all relevant laws, regulations and industry codes.<br />
                     If we contact you to remove Pins that go against our policies, you must respond to us and delete the Pins from your merchant feed within 24 hours.<br />
                     We'll revoke Buyable Pins access from any merchant who gets lots of negative feedback from people on BigPic.<br />
                     We may remove anything for any reason—including Pins, boards, your access to the commerce platform or your BigPic account.
                  </p>
                  
                  <h3>2. Prohibited products</h3>
                  <p>
                     At this time, we don’t allow the following in Buyable Pins.<br />
                     a. Customizable products<br />
                     b. Non-physical goods, like digital downloads<br />
                     c. Live animals
                  </p>
                  
                  <h3>3. Customer service</h3>
                  <p>                     
                     We want to make sure merchants provide the best customer service possible.<br />
                     This means you should communicate clearly and regularly with people on BigPic who buy something from you.
                  </p>
                  
                  <h3>4. During checkout</h3>
                  <p>                     
                     You must make the following info clear and easy to spot.<br />
                     a. Price and product availability<br />
                     b. Taxes and fees<br />
                     c. Estimated shipping cost and delivery date<br />
                     d. Return and refund policy
                  </p>
               </div>
            </label>
            
            <!-- 광고 -->
            <label class="Slide" for="Slide5" id="Slide5">
               <div class="content">
                  <h1>Advertising guidelines(광고 가이드라인)</h1>
                  <h3>Our mission</h3>
                  <p>
                     Our mission at BigPic is to help people discover and do what they love.<br />
                     We believe promoted content can play a big role in helping people design their lives, which is why we want ads to be some of the best stuff you see on BigPic.<br />
                     If you follow these guidelines, you’ll be all set for promoting great content on BigPic.
                  </p>
                  
                  <h3>1. Be authentic with our users</h3>
                  <p>
                     Authenticity means being truthful and honest about the product or service you're promoting.<br />
                     It also means being transparent with people about what they should expect when they interact with your products or services.
                  </p>
                  
                  <h3>2. Be thoughtful with your editorial</h3>
                  <p>
                     To keep ads inspiring and actionable, we set high standards for the editorial quality of promoted content.<br />
                      For tips, check out our creative best practices and boards from The Studio.
                  </p>
                  
                  <h3>3. Be respectful with your targeting</h3>
                  <p>
                     Make sure your targeting is relevant.<br />
                     It's never okay to target people in a way that implies you're aware of sensitive info about them.
                  </p>
                  
                  <h3>4. Be careful with any data usage</h3>
                  <p>                     
                     When using data to advertise on BigPic, make sure to be transparent with users and respect their privacy.
                  </p>
                  
                  <h3>5. Be clear about the destination</h3>
                  <p>                     
                     We care about the ad experience from start to finish—including the URL your ad links to.<br />
                     We want to make sure users find what they're looking for when they click through. 
                  </p>
                  
                  <h3>6. Be responsible with your content</h3>
                  <p>                     
                     We don’t allow certain categories of ads because they can be disruptive or problematic, regardless of context.<br />
                     As always, you're responsible for the content you promote on BigPic, as well as the safety and trustworthiness of the products and services you offer.
                  </p>
                  <p>
                     <b>We never allow ads with.</b>
                  </p>
               </div>
            </label>
            
            <!-- 저작권 -->
            <label class="Slide" for="Slide6" id="Slide6">
               <div class="content">
                  <h1>Copyright(저작권)</h1>
                  <h3>Copyright on BigPic</h3>
                  <p>
                     BigPic respects the intellectual property rights of others and we expect people on BigPic to do the same.<br />
                     It’s our policy—in appropriate circumstances and at our discretion—to disable or terminate the accounts of people who repeatedly infringe or are repeatedly charged with infringing copyrights or other intellectual property rights.<br />
                     In keeping with the Digital Millennium Copyright Act, which you can read at the US Copyright Office website, we’ll respond quickly to claims of copyright infringement on BigPic that are reported to our designated copyright agent, identified below.<br /> 
                     If you’re a copyright owner or authorized to act on behalf of one, you can report alleged copyright infringements on BigPic by completing the DMCA Notice of Alleged Infringement and sending it to our designated copyright agent.<br />
                     When we get your DMCA notice, we’ll take whatever action we think is appropriate, which may include removing the reported content from BigPic.<br />
                     If we remove content in response to a DMCA notice, we may notify the person who saved it on BigPic so they have the opportunity to send a counter-notice. We may also send a complete copy of the notice to others, as appropriate.
                  </p>
                  <h3>1. What if I get a copyright complaint (DMCA) notification?</h3>
                  <p>
                     If you’ve gotten a notification that one of your Pins has been removed for a copyright complaint, it means the content owner asked us to remove it. If you want us to forward the information from the copyright complaint notification, just email us at copyright@BigPic.com to let us know (we may remove some personal contact information).<br />
                     If your account gets too many copyright complaints, you could lose the ability to save Pins on BigPic, or we may disable your account altogether.<br />
                     If you think we made a mistake removing your Pin, you can file a counter-notice. When we get a valid counter-notice, we’ll remove the complaint from your account's record.<br /> 
                     <b>Note</b> : There are legal and financial consequences for fraudulent or bad faith counter-notices. Before submitting a counter-notice, make sure you have a good faith belief that we removed the content in error, and that you understand the repercussions of submitting a false claim.
                  </p>
                  <h3>2. How to file a counter-notice</h3>
                  <p>
                     Email your counter-notice to copyright@BigPic.com and include all of the following.<br />
                     Your name, address and phone number.<br />
                     The DMCA ID found at the bottom of the notification email.<br />
                     The web address of the content we removed (copy and paste the link from the notification email).<br /> 
                     A statement under penalty of perjury that you have a good faith belief that the content was removed in error.<br /> 
                     A statement that you consent to the jurisdiction of Federal District Court for the judicial district in which your address is located, or if your address is outside of the United States, for any judicial district in which BigPic may be found, and that you’ll accept service of process from the person who provided the original complaint.<br /> 
                     A physical or electronic signature (for example, by typing your full name).
                  </p>
                  
                  <h3>3. Submit a copyright complaint</h3>
                  <p>
                     To submit a DMCA notice, just fill out our copyright complaint form.
                  </p>
               </div>
            </label>
            
            <!-- 상표 -->
            <label class="Slide" for="Slide7" id="Slide7">
               <div class="content">
                  <h1>Trademark(상표)</h1>
                  <h3>Trademark on BigPic</h3>
                  <p>
                     BigPic respects the trademark rights of others.<br />
                     Accounts with usernames, board names, or any other content that misleads others or violates another's trademark may be updated, transferred or permanently suspended.
                     If you're concerned that someone may be using your trademark in an infringing way on our site, let us know by completing our trademark complaint form. We'll review your submission and take whatever action we deem appropriate, including temporary or permanent removal of the trademark from BigPic.<br />
                     While the trademark complaint form is the best way to reach us with your concerns, you can also email us at trademark@BigPic.com.
                     If you got a trademark complaint notification from us, you can contest it by emailing trademark@BigPic.com and letting us know why you think the complaint is invalid.<br />
                     Please include the trademark complaint reference number from the notification.<br />
                     If you want us to forward the info from the trademark complaint notification, let us know by emailing trademark@BigPic.com with the trademark complaint reference number.<br />
                     We'll be happy to send it along (though we may remove personal contact information).
               </div>
            </label>
            
         </div>
      </form>
   </div>

</body>
</html>