/* empty css             */import{g as Y,r as K}from"./params.597cd0f5.js";import{N as W}from"./WpTable.5b32ebd5.js";import"./default-i18n.3a91e0e5.js";import"./constants.355a3bff.js";import{_ as b,r as d,o as n,c,f as s,d as l,h as p,a as _,g as $,F as w,i as S,t as r,n as P,w as f,e as y,k as V,x as H,T as O}from"./_plugin-vue_export-helper.49ea0e68.js";import"./index.3cfc26e3.js";import{S as x}from"./SaveChanges.04870e44.js";import{m as L,d as E,a as D,b as R}from"./vuex.esm-bundler.ccdd8fb3.js";import{C as X,G as J}from"./Header.99921ac6.js";import{S as z,d as Q,B as Z,a as q,b as G}from"./Caret.09e548f3.js";import{C as tt,a as et}from"./LicenseKeyBar.7a027564.js";import{S as st}from"./LogoGear.e7d3761e.js";import{S as it}from"./Logo.834a7c5e.js";import{S as ot}from"./Support.c4a8d09f.js";import{C as nt}from"./Tabs.2341d6cd.js";import{D as at}from"./Date.07cad420.js";import{S as rt}from"./Exclamation.9bda8f1b.js";import{U as ct}from"./Url.c71d5763.js";import{S as lt}from"./Gear.a414ea99.js";import{T as M}from"./Slide.dcb3da9d.js";const dt={components:{SvgAioseoLogoGear:st,SvgClose:z},data(){return{strings:{boldText:this.$t.sprintf("<strong>%1$s %2$s</strong>","All in One SEO",this.$t.__("Free",this.$td)),url:this.$links.utmUrl("lite-upgrade-bar"),linkText:this.$t.sprintf(this.$t.__("upgrading to %1$s",this.$td),"Pro")}}},computed:{link(){return this.$t.sprintf('<strong><a href="%1$s" target="_blank" class="text-white">%2$s</a> <a href="%1$s" target="_blank" class="text-white upgrade-arrow">&rarr;</a></strong>',this.strings.url,this.strings.linkText)},upgradeText(){return this.$t.sprintf(this.$t.__("You're using %1$s. To unlock more features, consider %2$s",this.$td),this.strings.boldText,this.link)}},methods:{...L(["hideUpgradeBar"]),processHideUpgradeBar(){document.body.classList.remove("aioseo-has-bar"),this.hideUpgradeBar()}},mounted(){document.body.classList.add("aioseo-has-bar")}},ut={class:"aioseo-upgrade-bar"},_t={class:"upgrade-text"},ht=["innerHTML"];function ft(t,e,a,g,i,o){const u=d("svg-aioseo-logo-gear"),m=d("svg-close");return n(),c("div",ut,[s("div",_t,[l(u),s("div",{innerHTML:o.upgradeText},null,8,ht)]),l(m,{onClick:o.processHideUpgradeBar},null,8,["onClick"])])}const mt=b(dt,[["render",ft]]),pt={},gt={viewBox:"0 0 24 24",fill:"none",xmlns:"http://www.w3.org/2000/svg",class:"aioseo-description"},vt=s("path",{d:"M0 0h24v24H0V0z",fill:"none"},null,-1),yt=s("path",{"fill-rule":"evenodd","clip-rule":"evenodd",d:"M8 16h8v2H8zm0-4h8v2H8zm6-10H6c-1.1 0-2 .9-2 2v16c0 1.1.89 2 1.99 2H18c1.1 0 2-.9 2-2V8l-6-6zm4 18H6V4h7v5h5v11z",fill:"currentColor"},null,-1),$t=[vt,yt];function bt(t,e){return n(),c("svg",gt,$t)}const kt=b(pt,[["render",bt]]),Nt={},wt={viewBox:"0 0 24 24",fill:"none",xmlns:"http://www.w3.org/2000/svg",class:"aioseo-folder-open"},Ct=s("path",{d:"M0 0h24v24H0V0z",fill:"none"},null,-1),St=s("path",{"fill-rule":"evenodd","clip-rule":"evenodd",d:"M20 6h-8l-2-2H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm0 12H4V8h16v10z",fill:"currentColor"},null,-1),Dt=[Ct,St];function Lt(t,e){return n(),c("svg",wt,Dt)}const Tt=b(Nt,[["render",Lt]]);const At={components:{CoreApiBar:tt,CoreLicenseKeyBar:et,CoreUpgradeBar:mt,SvgAioseoLogo:it,SvgClose:z,SvgDescription:kt,SvgFolderOpen:Tt,SvgSupport:ot},data(){return{searchItem:null,strings:{close:this.$t.__("Close",this.$td),search:this.$t.__("Search",this.$td),viewAll:this.$t.__("View All",this.$td),docs:this.$t.__("Docs",this.$td),viewDocumentation:this.$t.__("View Documentation",this.$td),browseDocumentation:this.$t.sprintf(this.$t.__("Browse documentation, reference material, and tutorials for %1$s.",this.$td),"AIOSEO"),viewAllDocumentation:this.$t.__("View All Documentation",this.$td),getSupport:this.$t.__("Get Support",this.$td),submitTicket:this.$t.__("Submit a ticket and our world class support team will be in touch soon.",this.$td),submitSupportTicket:this.$t.__("Submit a Support Ticket",this.$td),upgradeToPro:this.$t.__("Upgrade to Pro",this.$td)}}},computed:{...E(["settings","isUnlicensed"]),...D(["showHelpModal","helpPanel","pong"]),filteredDocs(){return this.searchItem!==""?Object.values(this.helpPanel.docs).filter(t=>this.searchItem!==null?t.title.toLowerCase().includes(this.searchItem.toLowerCase()):null):null}},methods:{inputSearch:function(t){Q(()=>{this.searchItem=t},1e3)},toggleSection:function(t){t.target.parentNode.parentNode.classList.toggle("opened")},toggleDocs:function(t){t.target.previousSibling.classList.toggle("opened"),t.target.style.display="none"},toggleModal(){document.getElementById("aioseo-help-modal").classList.toggle("visible"),document.body.classList.toggle("modal-open")},getCategoryDocs(t){return Object.values(this.helpPanel.docs).filter(e=>e.categories.flat().includes(t)?e:null)}}},Bt={id:"aioseo-help-modal",class:"aioseo-help"},Pt={class:"aioseo-help-header"},Mt={class:"logo"},It=["href"],Ut=["title"],Ht={class:"help-content"},Ot={id:"aioseo-help-search"},Et={id:"aioseo-help-result"},zt={class:"aioseo-help-docs"},qt={class:"icon"},Vt=["href"],Rt={id:"aioseo-help-categories"},Gt={class:"aioseo-help-categories-toggle"},Ft={class:"folder-open"},jt={class:"title"},Yt=s("span",{class:"dashicons dashicons-arrow-right-alt2"},null,-1),Kt={class:"aioseo-help-docs"},Wt={class:"icon"},xt=["href"],Xt={class:"aioseo-help-additional-docs"},Jt={class:"icon"},Qt=["href"],Zt={id:"aioseo-help-footer"},te={class:"aioseo-help-footer-block"},ee=["href"],se={class:"aioseo-help-footer-block"},ie=["href"];function oe(t,e,a,g,i,o){const u=d("core-upgrade-bar"),m=d("core-license-key-bar"),h=d("core-api-bar"),v=d("svg-aioseo-logo"),T=d("svg-close"),I=d("base-input"),A=d("svg-description"),F=d("svg-folder-open"),B=d("base-button"),j=d("svg-support");return n(),c("div",Bt,[!t.$isPro&&t.settings.showUpgradeBar&&t.pong?(n(),p(u,{key:0})):_("",!0),t.$isPro&&t.isUnlicensed&&t.pong?(n(),p(m,{key:1})):_("",!0),t.pong?_("",!0):(n(),p(h,{key:2})),s("div",Pt,[s("div",Mt,[t.isUnlicensed?(n(),c("a",{key:0,href:t.$links.utmUrl("header-logo"),target:"_blank"},[l(v,{id:"aioseo-help-logo"})],8,It)):_("",!0),t.isUnlicensed?_("",!0):(n(),p(v,{key:1,id:"aioseo-help-logo"}))]),s("div",{id:"aioseo-help-close",title:i.strings.close,onClick:e[0]||(e[0]=$((...k)=>o.toggleModal&&o.toggleModal(...k),["stop"]))},[l(T)],8,Ut)]),s("div",Ht,[s("div",Ot,[l(I,{type:"text",size:"medium",placeholder:i.strings.search,"onUpdate:modelValue":e[1]||(e[1]=k=>o.inputSearch(k))},null,8,["placeholder"])]),s("div",Et,[s("ul",zt,[(n(!0),c(w,null,S(o.filteredDocs,(k,C)=>(n(),c("li",{key:C},[s("span",qt,[l(A)]),s("a",{href:t.$links.utmUrl("help-panel-doc","",k.url),rel:"noopener noreferrer",target:"_blank"},r(k.title),9,Vt)]))),128))])]),s("div",Rt,[s("ul",Gt,[(n(!0),c(w,null,S(t.helpPanel.categories,(k,C)=>(n(),c("li",{key:C,class:P(["aioseo-help-category",{opened:C==="getting-started"}])},[s("header",{onClick:e[2]||(e[2]=$(N=>o.toggleSection(N),["stop"]))},[s("span",Ft,[l(F)]),s("span",jt,r(k),1),Yt]),s("ul",Kt,[(n(!0),c(w,null,S(o.getCategoryDocs(C).slice(0,5),(N,U)=>(n(),c("li",{key:U},[s("span",Wt,[l(A)]),s("a",{href:t.$links.utmUrl("help-panel-doc","",N.url),rel:"noopener noreferrer",target:"_blank"},r(N.title),9,xt)]))),128)),s("div",Xt,[(n(!0),c(w,null,S(o.getCategoryDocs(C).slice(5,o.getCategoryDocs(C).length),(N,U)=>(n(),c("li",{key:U},[s("span",Jt,[l(A)]),s("a",{href:t.$links.utmUrl("help-panel-doc","",N.url),rel:"noopener noreferrer",target:"_blank"},r(N.title),9,Qt)]))),128))]),o.getCategoryDocs(C).length>=5?(n(),p(B,{key:0,class:"aioseo-help-docs-viewall gray medium",onClick:e[3]||(e[3]=$(N=>o.toggleDocs(N),["stop"]))},{default:f(()=>[y(r(i.strings.viewAll)+" "+r(k)+" "+r(i.strings.docs),1)]),_:2},1024)):_("",!0)])],2))),128))])]),s("div",Zt,[s("div",te,[s("a",{href:t.$links.utmUrl("help-panel-all-docs","","https://aioseo.com/docs/"),rel:"noopener noreferrer",target:"_blank"},[l(A),s("h3",null,r(i.strings.viewDocumentation),1),s("p",null,r(i.strings.browseDocumentation),1),l(B,{class:"aioseo-help-docs-viewall gray small"},{default:f(()=>[y(r(i.strings.viewAllDocumentation),1)]),_:1})],8,ee)]),s("div",se,[s("a",{href:!t.$isPro||!t.$aioseo.license.isActive?t.$links.getUpsellUrl("help-panel","get-support","liteUpgrade"):"https://aioseo.com/account/support/",rel:"noopener noreferrer",target:"_blank"},[l(j),s("h3",null,r(i.strings.getSupport),1),s("p",null,r(i.strings.submitTicket),1),t.$isPro&&t.$aioseo.license.isActive?(n(),p(B,{key:0,class:"aioseo-help-docs-support blue small"},{default:f(()=>[y(r(i.strings.submitSupportTicket),1)]),_:1})):_("",!0),!t.$isPro||!t.$aioseo.license.isActive?(n(),p(B,{key:1,class:"aioseo-help-docs-support green small"},{default:f(()=>[y(r(i.strings.upgradeToPro),1)]),_:1})):_("",!0)],8,ie)])])])])}const ne=b(At,[["render",oe]]),ae=""+window.__aioseoDynamicImportPreload__("images/dannie-detective.f19b97eb.png");const re={emits:["dismiss-notification"],components:{BaseButton:Z,SvgCircleCheck:q,SvgCircleClose:G,SvgCircleExclamation:rt,SvgGear:lt,TransitionSlide:M},mixins:[ct,at],props:{notification:{type:Object,required:!0}},data(){return{active:!0,strings:{dismiss:this.$t.__("Dismiss",this.$td)}}},computed:{getIcon(){switch(this.notification.type){case"warning":return"svg-circle-exclamation";case"error":return"svg-circle-close";case"info":return"svg-gear";case"success":default:return"svg-circle-check"}},getDate(){return this.dateSqlToLocalRelative(this.notification.start)}},methods:{...L(["dismissNotifications","processButtonAction"]),processDismissNotification(){this.active=!1,this.dismissNotifications([this.notification.slug]),this.$emit("dismissed-notification")}}},ce={class:"icon"},le={class:"body"},de={class:"title"},ue={class:"date"},_e=["innerHTML"],he={class:"actions"};function fe(t,e,a,g,i,o){const u=d("base-button"),m=d("transition-slide");return n(),p(m,{class:"aioseo-notification",active:i.active},{default:f(()=>[s("div",null,[s("div",ce,[(n(),p(V(o.getIcon),{class:P(a.notification.type)},null,8,["class"]))]),s("div",le,[s("div",de,[s("div",null,r(a.notification.title),1),s("div",ue,r(o.getDate),1)]),s("div",{class:"notification-content",innerHTML:a.notification.content},null,8,_e),s("div",he,[a.notification.button1_label&&a.notification.button1_action?(n(),p(u,{key:0,size:"small",type:"gray",tag:t.getTagType(a.notification.button1_action),href:t.getHref(a.notification.button1_action),target:t.getTarget(a.notification.button1_action),onClick:e[0]||(e[0]=h=>t.processButtonClick(a.notification.button1_action,1)),loading:t.button1Loading},{default:f(()=>[y(r(a.notification.button1_label),1)]),_:1},8,["tag","href","target","loading"])):_("",!0),a.notification.button2_label&&a.notification.button2_action?(n(),p(u,{key:1,size:"small",type:"gray",tag:t.getTagType(a.notification.button2_action),href:t.getHref(a.notification.button2_action),target:t.getTarget(a.notification.button2_action),onClick:e[1]||(e[1]=h=>t.processButtonClick(a.notification.button2_action,2)),loading:t.button2Loading},{default:f(()=>[y(r(a.notification.button2_label),1)]),_:1},8,["tag","href","target","loading"])):_("",!0),a.notification.dismissed?_("",!0):(n(),c("a",{key:2,href:"#",class:"dismiss",onClick:e[2]||(e[2]=$((...h)=>o.processDismissNotification&&o.processDismissNotification(...h),["stop","prevent"]))},r(i.strings.dismiss),1))])])])]),_:1},8,["active"])}const me=b(re,[["render",fe]]);const pe={emits:["dismissed-notification"],components:{SvgCircleCheck:q,TransitionSlide:M},props:{notification:{type:Object,required:!0}},data(){return{step:1,active:!0,strings:{dismiss:this.$t.__("Dismiss",this.$td),yesILoveIt:this.$t.__("Yes, I love it!",this.$td),notReally:this.$t.__("Not Really...",this.$td),okYouDeserveIt:this.$t.__("Ok, you deserve it",this.$td),nopeMaybeLater:this.$t.__("Nope, maybe later",this.$td),giveFeedback:this.$t.__("Give feedback",this.$td),noThanks:this.$t.__("No thanks",this.$td)}}},computed:{...D(["options"]),...E(["licenseKey"]),title(){switch(this.step){case 2:return this.$t.__("That's Awesome!",this.$td);case 3:return this.$t.__("Help us improve",this.$td);default:return this.$t.sprintf(this.$t.__("Are you enjoying %1$s?",this.$td),"AIOSEO")}},content(){switch(this.step){case 2:return this.$t.__("Could you please do me a BIG favor and give it a 5-star rating on WordPress to help us spread the word and boost our motivation?",this.$td)+"<br><br><strong>~ Syed Balkhi<br>"+this.$t.sprintf(this.$t.__("CEO of %1$s",this.$td),"All in One SEO")+"</strong>";case 3:return this.$t.sprintf(this.$t.__("We're sorry to hear you aren't enjoying %1$s. We would love a chance to improve. Could you take a minute and let us know what we can do better?",this.$td),"All in One SEO");default:return""}},feedbackUrl(){const t=this.options.general&&this.licenseKey?this.licenseKey:"",e=this.$isPro?"pro":"lite";return this.$links.utmUrl("notification-review-notice",this.$aioseo.version,"https://aioseo.com/plugin-feedback/?wpf7528_24="+encodeURIComponent(this.$aioseo.urls.home)+"&wpf7528_26="+t+"&wpf7528_27="+e+"&wpf7528_28="+this.$aioseo.version)}},methods:{...L(["dismissNotifications","processButtonAction"]),processDismissNotification(t=!1){this.active=!1,this.dismissNotifications([this.notification.slug+(t?"-delay":"")]),this.$emit("dismissed-notification")}}},ge={class:"icon"},ve={class:"body"},ye={class:"title"},$e=["innerHTML"],be={class:"actions"};function ke(t,e,a,g,i,o){const u=d("svg-circle-check"),m=d("base-button"),h=d("transition-slide");return n(),p(h,{class:"aioseo-notification",active:i.active},{default:f(()=>[s("div",null,[s("div",ge,[l(u,{class:"success"})]),s("div",ve,[s("div",ye,[s("div",null,r(o.title),1)]),s("div",{class:"notification-content",innerHTML:o.content},null,8,$e),s("div",be,[i.step===1?(n(),c(w,{key:0},[l(m,{size:"small",type:"blue",onClick:e[0]||(e[0]=$(v=>i.step=2,["stop"]))},{default:f(()=>[y(r(i.strings.yesILoveIt),1)]),_:1}),l(m,{size:"small",type:"gray",onClick:e[1]||(e[1]=$(v=>i.step=3,["stop"]))},{default:f(()=>[y(r(i.strings.notReally),1)]),_:1})],64)):_("",!0),i.step===2?(n(),c(w,{key:1},[l(m,{tag:"a",href:"https://wordpress.org/support/plugin/all-in-one-seo-pack/reviews/?filter=5#new-post",size:"small",type:"blue",target:"_blank",rel:"noopener noreferrer",onClick:e[2]||(e[2]=v=>o.processDismissNotification(!1))},{default:f(()=>[y(r(i.strings.okYouDeserveIt),1)]),_:1}),l(m,{size:"small",type:"gray",onClick:e[3]||(e[3]=$(v=>o.processDismissNotification(!0),["stop","prevent"]))},{default:f(()=>[y(r(i.strings.nopeMaybeLater),1)]),_:1})],64)):_("",!0),i.step===3?(n(),c(w,{key:2},[l(m,{tag:"a",href:o.feedbackUrl,size:"small",type:"blue",target:"_blank",rel:"noopener noreferrer",onClick:e[4]||(e[4]=v=>o.processDismissNotification(!1))},{default:f(()=>[y(r(i.strings.giveFeedback),1)]),_:1},8,["href"]),l(m,{size:"small",type:"gray",onClick:e[5]||(e[5]=$(v=>o.processDismissNotification(!1),["stop","prevent"]))},{default:f(()=>[y(r(i.strings.noThanks),1)]),_:1})],64)):_("",!0),a.notification.dismissed?_("",!0):(n(),c("a",{key:3,class:"dismiss",href:"#",onClick:e[6]||(e[6]=$(v=>o.processDismissNotification(!1),["stop","prevent"]))},r(i.strings.dismiss),1))])])])]),_:1},8,["active"])}const Ne=b(pe,[["render",ke]]);const we={emits:["dismissed-notification"],components:{SvgCircleCheck:q,TransitionSlide:M},props:{notification:{type:Object,required:!0}},data(){return{active:!0,strings:{dismiss:this.$t.__("Dismiss",this.$td),yesILoveIt:this.$t.__("Yes, I love it!",this.$td),notReally:this.$t.__("Not Really...",this.$td),okYouDeserveIt:this.$t.__("Ok, you deserve it",this.$td),nopeMaybeLater:this.$t.__("Nope, maybe later",this.$td),giveFeedback:this.$t.__("Give feedback",this.$td),noThanks:this.$t.__("No thanks",this.$td)}}},computed:{...D(["options"]),title(){return this.$t.sprintf(this.$t.__("Are you enjoying %1$s?",this.$td),"AIOSEO")},content(){return this.$t.sprintf(this.$t.__("Hey, I noticed you have been using %1$s for some time - that’s awesome! Could you please do me a BIG favor and give it a 5-star rating on WordPress to help us spread the word and boost our motivation?",this.$td),"<strong>All in One SEO</strong>")+"<br><br><strong>~ Syed Balkhi<br>"+this.$t.sprintf(this.$t.__("CEO of %1$s",this.$td),"All in One SEO")+"</strong>"}},methods:{...L(["dismissNotifications","processButtonAction"]),processDismissNotification(t=!1){this.active=!1,this.dismissNotifications([this.notification.slug+(t?"-delay":"")]),this.$emit("dismissed-notification")}}},Ce={class:"icon"},Se={class:"body"},De={class:"title"},Le=["innerHTML"],Te={class:"actions"};function Ae(t,e,a,g,i,o){const u=d("svg-circle-check"),m=d("base-button"),h=d("transition-slide");return n(),p(h,{class:"aioseo-notification",active:i.active},{default:f(()=>[s("div",null,[s("div",Ce,[l(u,{class:"success"})]),s("div",Se,[s("div",De,[s("div",null,r(o.title),1)]),s("div",{class:"notification-content",innerHTML:o.content},null,8,Le),s("div",Te,[l(m,{tag:"a",href:"https://wordpress.org/support/plugin/all-in-one-seo-pack/reviews/?filter=5#new-post",size:"small",type:"blue",target:"_blank",rel:"noopener noreferrer",onClick:e[0]||(e[0]=v=>o.processDismissNotification(!1))},{default:f(()=>[y(r(i.strings.okYouDeserveIt),1)]),_:1}),l(m,{size:"small",type:"gray",onClick:e[1]||(e[1]=$(v=>o.processDismissNotification(!0),["stop","prevent"]))},{default:f(()=>[y(r(i.strings.nopeMaybeLater),1)]),_:1}),a.notification.dismissed?_("",!0):(n(),c("a",{key:0,class:"dismiss",href:"#",onClick:e[2]||(e[2]=$(v=>o.processDismissNotification(!1),["stop","prevent"]))},r(i.strings.dismiss),1))])])])]),_:1},8,["active"])}const Be=b(we,[["render",Ae]]);const Pe={components:{SvgCircleClose:G,TransitionSlide:M},props:{notification:{type:Object,required:!0}},data(){return{active:!0,strings:{title:this.$t.sprintf(this.$t.__("%1$s %2$s Not Configured Properly",this.$td),"AIOSEO","Addons"),learnMore:this.$t.__("Learn More",this.$td),upgrade:this.$t.__("Upgrade",this.$td)}}},computed:{...D(["options"]),content(){let t="<ul>";return this.notification.addons.forEach(e=>{t+="<li><strong>AIOSEO - "+e.name+"</strong></li>"}),t+="</ul>",this.notification.message+t}}},Me={class:"icon"},Ie={class:"body"},Ue={class:"title"},He=["innerHTML"],Oe={class:"actions"};function Ee(t,e,a,g,i,o){const u=d("svg-circle-close"),m=d("base-button"),h=d("transition-slide");return n(),p(h,{class:"aioseo-notification",active:i.active},{default:f(()=>[s("div",null,[s("div",Me,[l(u,{class:"error"})]),s("div",Ie,[s("div",Ue,[s("div",null,r(i.strings.title),1)]),s("div",{class:"notification-content",innerHTML:o.content},null,8,He),s("div",Oe,[l(m,{size:"small",type:"green",tag:"a",href:t.$links.utmUrl("notification-unlicensed-addons"),target:"_blank"},{default:f(()=>[y(r(i.strings.upgrade),1)]),_:1},8,["href"])])])])]),_:1},8,["active"])}const ze=b(Pe,[["render",Ee]]);const qe={emits:["toggle-dismissed","dismissed-notification"],components:{CoreNotification:me,NotificationsReview:Ne,NotificationsReview2:Be,NotificationsUnlicensedAddons:ze},props:{dismissedCount:{type:Number,required:!0},notifications:{type:Array,required:!0}},data(){return{dannieDetectiveImg:ae,strings:{greatScott:this.$t.__("Great Scott! Where'd they all go?",this.$td),noNewNotifications:this.$t.__("You have no new notifications.",this.$td),seeDismissed:this.$t.__("See Dismissed Notifications",this.$td)}}}},Ve={class:"aioseo-notification-cards"},Re={key:"no-notifications"},Ge={class:"no-notifications"},Fe=["src"],je={class:"great-scott"},Ye={class:"no-new-notifications"};function Ke(t,e,a,g,i,o){return n(),c("div",Ve,[a.notifications.length?(n(!0),c(w,{key:0},S(a.notifications,u=>(n(),p(V(u.component?u.component:"core-notification"),{key:u.slug,notification:u,ref_for:!0,ref:"notification",onDismissedNotification:e[0]||(e[0]=m=>t.$emit("dismissed-notification"))},null,40,["notification"]))),128)):_("",!0),a.notifications.length?_("",!0):(n(),c("div",Re,[H(t.$slots,"no-notifications",{},()=>[s("div",Ge,[s("img",{alt:"Dannie the Detective",src:t.$getAssetUrl(i.dannieDetectiveImg)},null,8,Fe),s("div",je,r(i.strings.greatScott),1),s("div",Ye,r(i.strings.noNewNotifications),1),a.dismissedCount?(n(),c("a",{key:0,href:"#",class:"dismiss",onClick:e[1]||(e[1]=$(u=>t.$emit("toggle-dismissed"),["stop","prevent"]))},r(i.strings.seeDismissed),1)):_("",!0)])])]))])}const We=b(qe,[["render",Ke]]);const xe={components:{CoreNotificationCards:We,SvgClose:z},mixins:[W],data(){return{dismissed:!1,maxNotifications:Number.MAX_SAFE_INTEGER,currentPage:0,totalPages:1,strings:{dismissedNotifications:this.$t.__("Dismissed Notifications",this.$td),dismissAll:this.$t.__("Dismiss All",this.$td)}}},watch:{showNotifications(t){t?(this.currentPage=0,this.setMaxNotifications(),this.addBodyClass()):this.removeBodyClass()},dismissed(){this.setMaxNotifications()},notifications(){this.setMaxNotifications()}},computed:{...D(["showNotifications"]),filteredNotifications(){return[...this.notifications].splice(this.currentPage===0?0:this.currentPage*this.maxNotifications,this.maxNotifications)},pages(){const t=[];for(let e=0;e<this.totalPages;e++)t.push({number:e+1});return t}},methods:{...L(["dismissNotifications"]),...R(["toggleNotifications"]),escapeListener(t){t.key==="Escape"&&this.showNotifications&&this.toggleNotifications()},addBodyClass(){document.body.classList.add("aioseo-show-notifications")},removeBodyClass(){document.body.classList.remove("aioseo-show-notifications")},documentClick(t){if(!this.showNotifications)return;const e=t&&t.target?t.target:null,a=document.querySelector("#wp-admin-bar-aioseo-notifications");if(a&&(a===e||a.contains(e)))return;const g=document.querySelector("#toplevel_page_aioseo .wp-first-item"),i=document.querySelector("#toplevel_page_aioseo .wp-first-item .aioseo-menu-notification-indicator");if(g&&g.contains(i)&&(g===e||g.contains(e)))return;const o=this.$refs["aioseo-notifications"];o&&(o===e||o.contains(e))||this.toggleNotifications()},notificationsLinkClick(t){t.preventDefault(),this.toggleNotifications()},processDismissAllNotifications(){const t=[];this.notifications.forEach(e=>{t.push(e.slug)}),this.dismissNotifications(t).then(()=>{this.setMaxNotifications()})},setMaxNotifications(){const t=this.currentPage;this.currentPage=0,this.totalPages=1,this.maxNotifications=Number.MAX_SAFE_INTEGER,this.$nextTick(async()=>{const e=[],a=document.querySelectorAll(".notification-menu .aioseo-notification");a&&a.forEach(i=>{let o=i.offsetHeight;const u=window.getComputedStyle?getComputedStyle(i,null):i.currentStyle,m=parseInt(u.marginTop)||0,h=parseInt(u.marginBottom)||0;o+=m+h,e.push(o)});const g=document.querySelector(".notification-menu .aioseo-notification-cards");if(g){let i=0,o=0;for(let u=0;u<e.length&&(o+=e[u],!(o>g.offsetHeight));u++)i++;this.maxNotifications=i||1,this.totalPages=Math.ceil(e.length/i)}this.currentPage=t>this.totalPages-1?this.totalPages-1:t})}},mounted(){document.addEventListener("keydown",this.escapeListener),document.addEventListener("click",this.documentClick);const t=document.querySelector("#wp-admin-bar-aioseo-notifications .ab-item");t&&t.addEventListener("click",this.notificationsLinkClick);const e=document.querySelector("#toplevel_page_aioseo .wp-first-item"),a=document.querySelector("#toplevel_page_aioseo .wp-first-item .aioseo-menu-notification-indicator");e&&a&&e.addEventListener("click",this.notificationsLinkClick)}},Xe={class:"aioseo-notifications",ref:"aioseo-notifications"},Je={key:0,class:"notification-menu"},Qe={class:"notification-header"},Ze={class:"new-notifications"},ts={class:"dismissed-notifications"},es={class:"notification-footer"},ss={class:"pagination"},is=["onClick"],os={key:0,class:"dismiss-all"};function ns(t,e,a,g,i,o){const u=d("svg-close"),m=d("core-notification-cards");return n(),c("div",Xe,[l(O,{name:"notifications-slide"},{default:f(()=>[t.showNotifications?(n(),c("div",Je,[s("div",Qe,[s("span",Ze,"("+r(t.notificationsCount)+") "+r(t.notificationTitle),1),s("div",ts,[!i.dismissed&&t.dismissedNotificationsCount?(n(),c("a",{key:0,href:"#",onClick:e[0]||(e[0]=$(h=>i.dismissed=!0,["stop","prevent"]))},r(i.strings.dismissedNotifications),1)):_("",!0),i.dismissed&&t.dismissedNotificationsCount?(n(),c("a",{key:1,href:"#",onClick:e[1]||(e[1]=$(h=>i.dismissed=!1,["stop","prevent"]))},r(i.strings.activeNotifications),1)):_("",!0)]),s("div",{onClick:e[2]||(e[2]=$((...h)=>t.toggleNotifications&&t.toggleNotifications(...h),["stop"]))},[l(u)])]),l(m,{class:"notification-cards",notifications:o.filteredNotifications,dismissedCount:t.dismissedNotificationsCount,onToggleDismissed:e[3]||(e[3]=h=>i.dismissed=!i.dismissed)},null,8,["notifications","dismissedCount"]),s("div",es,[s("div",ss,[i.totalPages>1?(n(!0),c(w,{key:0},S(o.pages,(h,v)=>(n(),c("div",{class:P(["page-number",{active:h.number===1+i.currentPage}]),key:v,onClick:T=>i.currentPage=h.number-1},r(h.number),11,is))),128)):_("",!0)]),i.dismissed?_("",!0):(n(),c("div",os,[t.notifications.length?(n(),c("a",{key:0,href:"#",class:"dismiss",onClick:e[4]||(e[4]=$((...h)=>o.processDismissAllNotifications&&o.processDismissAllNotifications(...h),["stop","prevent"]))},r(i.strings.dismissAll),1)):_("",!0)]))])])):_("",!0)]),_:1}),l(O,{name:"notifications-fade"},{default:f(()=>[t.showNotifications?(n(),c("div",{key:0,onClick:e[5]||(e[5]=(...h)=>t.toggleNotifications&&t.toggleNotifications(...h)),class:"overlay"})):_("",!0)]),_:1})],512)}const as=b(xe,[["render",ns]]),rs={components:{CoreHeader:X,CoreHelp:ne,CoreMainTabs:nt,CoreNotifications:as,GridContainer:J},mixins:[x],props:{pageName:{type:String,required:!0},showTabs:{type:Boolean,default(){return!0}},showSaveButton:{type:Boolean,default(){return!0}},excludeTabs:{type:Array,default(){return[]}},containerClasses:{type:Array,default(){return[]}}},data(){return{tabsKey:0,strings:{saveChanges:this.$t.__("Save Changes",this.$td)}}},watch:{excludeTabs(){this.tabsKey+=1}},computed:{...E(["settings"]),...D(["loading","options","showNotifications","helpPanel","notifications"]),tabs(){return this.$router.options.routes.filter(t=>t.name&&t.meta&&t.meta.name).filter(t=>this.$allowed(t.meta.access)).filter(t=>!t.meta.license||this.$license.hasMinimumLevel(this.$aioseo,t.meta.license)).filter(t=>!(t.meta.display==="lite"&&this.$isPro||t.meta.display==="pro"&&!this.$isPro)).filter(t=>!this.excludeTabs.includes(t.name)).map(t=>({slug:t.name,name:t.meta.name,url:{name:t.name},access:t.meta.access,pro:!!t.meta.pro}))},shouldShowSaveButton(){if(this.$route&&this.$route.name){const t=this.$router.options.routes.find(e=>e.name===this.$route.name);if(t&&t.meta&&t.meta.hideSaveButton)return!1}return this.showSaveButton}},methods:{...R(["toggleNotifications","disableForceShowNotifications"])},mounted(){Y().notifications&&(this.showNotifications||this.toggleNotifications(),setTimeout(()=>{K("notifications")},500)),this.notifications.force&&this.notifications.active.length&&(this.disableForceShowNotifications(),this.toggleNotifications())}},cs={class:"aioseo-main"},ls={key:1,class:"save-changes"};function ds(t,e,a,g,i,o){const u=d("core-notifications"),m=d("core-header"),h=d("core-main-tabs"),v=d("base-button"),T=d("grid-container"),I=d("core-help");return n(),c("div",null,[l(u),s("div",cs,[l(m,{"page-name":a.pageName},null,8,["page-name"]),l(T,{class:P(a.containerClasses)},{default:f(()=>[a.showTabs?(n(),p(h,{key:i.tabsKey,tabs:o.tabs,showSaveButton:o.shouldShowSaveButton},{extra:f(()=>[H(t.$slots,"extra")]),_:3},8,["tabs","showSaveButton"])):_("",!0),l(O,{name:"route-fade",mode:"out-in"},{default:f(()=>[H(t.$slots,"default")]),_:3}),o.shouldShowSaveButton?(n(),c("div",ls,[l(v,{type:"blue",size:"medium",loading:t.loading,onClick:t.processSaveChanges},{default:f(()=>[y(r(i.strings.saveChanges),1)]),_:1},8,["loading","onClick"])])):_("",!0)]),_:3},8,["class"])]),t.helpPanel.docs&&Object.keys(t.helpPanel.docs).length?(n(),p(I,{key:0})):_("",!0)])}const Ps=b(rs,[["render",ds]]);export{Ps as C,We as a};
