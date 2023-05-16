import{m as A,b as O,a as H}from"./vuex.esm-bundler.ccdd8fb3.js";import{C as N}from"./Blur.ef3abea2.js";import{C as B}from"./SettingsRow.45faf80a.js";import{S as x}from"./External.1616b132.js";import{B as R}from"./RadioToggle.2efe96f8.js";import{_ as f,r as o,o as p,h as m,w as i,f as a,e as r,t as n,d as s,c as L,a as u}from"./_plugin-vue_export-helper.49ea0e68.js";import{C as V}from"./index.d59f905b.js";import{C as P}from"./Card.a7500a15.js";import{C as w}from"./Index.a6f4141a.js";import{R as E}from"./RequiredPlans.6baa6da5.js";import{C as U}from"./ProBadge.b673849c.js";import{A as F}from"./WpTable.5b32ebd5.js";import"./default-i18n.3a91e0e5.js";import"./constants.355a3bff.js";import"./index.3cfc26e3.js";import{J as W}from"./JsonValues.870a4901.js";import"./SaveChanges.04870e44.js";import{C as Y}from"./CommonSitemap.bfe9fab6.js";import{B as q}from"./Checkbox.de9093b7.js";import{C as z}from"./ExcludePosts.eced13eb.js";import{C as K}from"./PostTypeOptions.ae57ac8f.js";import"./Row.87dd14fc.js";import"./Caret.09e548f3.js";import"./Tooltip.754dc940.js";import"./Slide.dcb3da9d.js";import"./helpers.871dba46.js";import"./RequiresUpdate.fe231e49.js";import"./postContent.53eb7ed3.js";import"./cleanForSlug.13f04843.js";import"./isArrayLikeObject.8c985d83.js";import"./html.68197829.js";import"./Index.20fccad8.js";import"./Checkmark.05a656b1.js";import"./AddPlus.b5adbf8b.js";import"./HighlightToggle.05571e64.js";import"./Radio.52ad45a2.js";const T={data(){return{strings:{customFieldSupport:this.$t.__("Custom Field Support",this.$td),exclude:this.$t.__("Exclude Pages/Posts",this.$td),video:this.$t.__("Video Sitemap",this.$td),description:this.$t.__("The Video Sitemap works in much the same way as the XML Sitemap module, it generates an XML Sitemap specifically for video content on your site. Search engines use this information to display rich snippet information in search results.",this.$td),enableSitemap:this.$t.__("Enable Sitemap",this.$td),openSitemap:this.$t.__("Open Video Sitemap",this.$td),noIndexDisplayed:this.$t.__("Noindexed content will not be displayed in your sitemap.",this.$td),doYou404:this.$t.__("Do you get a blank sitemap or 404 error?",this.$td),ctaButtonText:this.$t.__("Upgrade to Pro and Unlock Video Sitemaps",this.$td),ctaHeader:this.$t.sprintf(this.$t.__("Video Sitemaps are only available for licensed %1$s %2$s users.",this.$td),"AIOSEO","Pro"),linksPerSitemap:this.$t.__("Links Per Sitemap",this.$td),maxLinks:this.$t.__("Allows you to specify the maximum number of posts in a sitemap (up to 50,000).",this.$td),enableSitemapIndexes:this.$t.__("Enable Sitemap Indexes",this.$td)}}}},j={components:{CoreBlur:N,CoreSettingsRow:B,SvgExternal:x,BaseRadioToggle:R},mixins:[T]},J={class:"aioseo-settings-row aioseo-section-description"},X=["innerHTML"],Q={class:"aioseo-sitemap-preview"},Z={class:"aioseo-description"},ee=a("br",null,null,-1),te=["innerHTML"],se={class:"aioseo-description"},ie=["innerHTML"],oe={class:"aioseo-description"},ne=["innerHTML"];function ae(e,d,$,S,t,v){const _=o("base-toggle"),l=o("core-settings-row"),h=o("svg-external"),g=o("base-button"),y=o("base-radio-toggle"),b=o("base-input"),k=o("core-blur");return p(),m(k,null,{default:i(()=>[a("div",J,[r(n(e.strings.description)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"videoSitemaps",!0)},null,8,X)]),s(l,{name:e.strings.enableSitemap},{content:i(()=>[s(_,{modelValue:!0})]),_:1},8,["name"]),s(l,{name:e.$constants.GLOBAL_STRINGS.preview},{content:i(()=>[a("div",Q,[s(g,{size:"medium",type:"blue"},{default:i(()=>[s(h),r(" "+n(e.strings.openSitemap),1)]),_:1})]),a("div",Z,[r(n(e.strings.noIndexDisplayed)+" ",1),ee,r(" "+n(e.strings.doYou404)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"blankSitemap",!0)},null,8,te)])]),_:1},8,["name"]),s(l,{name:e.strings.enableSitemapIndexes},{content:i(()=>[s(y,{name:"sitemapIndexes",options:[{label:e.$constants.GLOBAL_STRINGS.disabled,value:!1,activeClass:"dark"},{label:e.$constants.GLOBAL_STRINGS.enabled,value:!0}]},null,8,["options"]),a("div",se,[r(n(e.strings.sitemapIndexes)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"sitemapIndexes",!0)},null,8,ie)])]),_:1},8,["name"]),s(l,{name:e.strings.linksPerSitemap},{content:i(()=>[s(b,{class:"aioseo-links-per-site",type:"number",size:"medium",min:1,max:5e4}),a("div",oe,[r(n(e.strings.maxLinks)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"maxLinks",!0)},null,8,ne)])]),_:1},8,["name"])]),_:1})}const I=f(j,[["render",ae]]),re={components:{Blur:I,CoreAlert:V,CoreCard:P,Cta:w},mixins:[T],data(){return{failed:!1,activationLoading:!1,strings:{videoSitemapHeader:this.$t.__("Enable Video Sitemap on your Site",this.$tdPro),ctaButtonTextActivate:this.$t.__("Activate Video Sitemap",this.$tdPro),learnMoreText:this.$t.__("Learn more about Video Sitemaps",this.$tdPro),activateError:this.$t.__("An error occurred while activating the addon. Please upload it manually or contact support for more information.",this.$td),permissionWarning:this.$t.__("You currently don't have permission to activate this addon. Please ask a site administrator to activate first.",this.$td)}}},methods:{...A(["installPlugins"]),...O(["updateAddon"]),activateAddon(){this.failed=!1,this.activationLoading=!0;const e=this.$addons.getAddon("aioseo-video-sitemap");this.installPlugins([{plugin:e.basename}]).then(d=>{if(this.activationLoading=!1,d.body.failed.length){this.failed=!0;return}e.hasMinimumVersion=!0,e.isActive=!0,this.updateAddon(e)}).catch(()=>{this.activationLoading=!1})}}};function de(e,d,$,S,t,v){const _=o("blur"),l=o("core-alert"),h=o("cta"),g=o("core-card");return p(),L("div",null,[s(g,{slug:"videoSitemap","header-text":t.strings.video},{default:i(()=>[s(_),s(h,{"cta-button-visible":e.$addons.userCanInstallOrActivate("aioseo-video-sitemap"),"cta-button-visible-warning":t.strings.permissionWarning,"cta-link":e.$aioseo.urls.aio.featureManager+"&aioseo-activate=aioseo-video-sitemap","same-tab":"","cta-button-action":"","cta-button-loading":t.activationLoading,onCtaButtonClick:v.activateAddon,"button-text":t.strings.ctaButtonTextActivate,"learn-more-link":e.$links.getDocUrl("videoSitemaps"),"feature-list":[t.strings.customFieldSupport,t.strings.exclude]},{"header-text":i(()=>[r(n(t.strings.videoSitemapHeader),1)]),description:i(()=>[t.failed?(p(),m(l,{key:0,type:"red"},{default:i(()=>[r(n(t.strings.activateError),1)]),_:1})):u("",!0),r(" "+n(t.strings.description),1)]),"learn-more-text":i(()=>[r(n(t.strings.learnMoreText),1)]),_:1},8,["cta-button-visible","cta-button-visible-warning","cta-link","cta-button-loading","onCtaButtonClick","button-text","learn-more-link","feature-list"])]),_:1},8,["header-text"])])}const le=f(re,[["render",de]]);const pe={components:{Blur:I,RequiredPlans:E,CoreCard:P,CoreProBadge:U,Cta:w},mixins:[T]},me={class:"aioseo-video-sitemap-lite"};function ce(e,d,$,S,t,v){const _=o("core-pro-badge"),l=o("blur"),h=o("required-plans"),g=o("cta"),y=o("core-card");return p(),L("div",me,[s(y,{slug:"videoSitemap",noSlide:!0},{header:i(()=>[a("span",null,n(e.strings.video),1),s(_)]),default:i(()=>[s(l),s(g,{"feature-list":[e.strings.customFieldSupport,e.strings.exclude],"cta-link":e.$links.getPricingUrl("video-sitemap","video-sitemap-upsell"),"button-text":e.strings.ctaButtonText,"learn-more-link":e.$links.getUpsellUrl("video-sitemap",null,"home")},{"header-text":i(()=>[r(n(e.strings.ctaHeader),1)]),description:i(()=>[s(h,{addon:"aioseo-video-sitemap"}),r(" "+n(e.strings.description),1)]),_:1},8,["feature-list","cta-link","button-text","learn-more-link"])]),_:1})])}const ue=f(pe,[["render",ce]]);const _e={components:{BaseCheckbox:q,BaseRadioToggle:R,CoreAlert:V,CoreCard:P,CoreExcludePosts:z,CorePostTypeOptions:K,CoreSettingsRow:B,SvgExternal:x},mixins:[W,Y,T],data(){return{pagePostOptions:[],strings:{additionalPages:this.$t.__("Additional Pages",this.$td),additionalPagesTooltip:this.$t.__("You can use this section to add any URLs to your sitemap which aren’t a part of your WordPress installation. For example, if you have a contact form that you would like to be included on your sitemap you can enter the information manually.",this.$td),sitemapSettings:this.$t.__("Video Sitemap Settings",this.$tdPro),enableSitemapIndexes:this.$t.__("Enable Sitemap Indexes",this.$td),sitemapIndexes:this.$t.__("Organize sitemap entries into distinct files in your sitemap. We recommend you enable this setting if your sitemap contains more than 1,000 URLs.",this.$td),linksPerSitemap:this.$t.__("Links Per Sitemap",this.$td),maxLinks:this.$t.__("Allows you to specify the maximum number of posts in a sitemap (up to 50,000).",this.$td),postTypes:this.$t.__("Post Types",this.$td),taxonomies:this.$t.__("Taxonomies",this.$td),includeAllPostTypes:this.$t.__("Include All Post Types",this.$td),selectPostTypes:this.$t.__("Select which Post Types appear in your sitemap.",this.$td),includeAllTaxonomies:this.$t.__("Include All Taxonomies",this.$td),selectTaxonomies:this.$t.__("Select which Taxonomies appear in your sitemap. Categories and Tags are excluded by default since these do not support video embedding.",this.$td),includeCustomFields:this.$t.__("Include Custom Fields",this.$tdPro),includeCustomFieldsDescription:this.$t.__("Enable this option to look for videos in custom fields as well.",this.$tdPro),advancedSettings:this.$t.__("Advanced Settings",this.$td),excludePostsPages:this.$t.__("Exclude Posts / Pages",this.$td),excludeTerms:this.$t.__("Exclude Terms",this.$td),excludeTermsDescription:this.$t.__("Any posts that are assigned to these terms will also be excluded from your sitemap.",this.$td),priorityScore:this.$t.__("Priority Score",this.$td),dynamicallyGenerate:this.$t.__("Dynamically Generate",this.$td),dynamicallyGenerateDescription:this.$t.__("Dynamically creates the Video Sitemap instead of using a static file.",this.$tdPro),videoEmbedSettings:this.$t.__("Video Embed Settings",this.$tdPro),embedSettingsTooltip:this.$t.__("This section allows you to manage your video embeds, such as features for Facebook or making them responsive to automatically fit your content width.",this.$tdPro),embed:this.$t.__("Embed",this.$tdPro),playDirectly:this.$t.__("Allow videos to be played directly on other websites, such as Facebook or Twitter.",this.$tdPro),responsive:this.$t.sprintf(this.$t.__("Try to make videos responsive using %1$s?",this.$tdPro),'<a href="http://fitvidsjs.com/" target="_blank">FitVids.js</a>'),contentWidth:this.$t.__("Content Width",this.$tdPro),contentWidthDescription:this.$t.__("This defaults to your theme's content width, but if it's empty, setting a value here will make sure videos are embedded with the right width.",this.$tdPro),wistiaDomain:this.$t.__("Wistia Domain",this.$tdPro),wistiaDomainDescription:this.$t.__("If you use Wistia in combination with a custom domain, set this to the domain name you use for your Wistia videos. Don't include https: or slashes as they are not needed.",this.$tdPro),embedlyApiKey:this.$t.__("Embedly API Key",this.$tdPro),embedlyApiKeyDescription:this.$t.sprintf(this.$t.__("By default, we try to provide enriched information about your videos. A lot of video services are supported by default. For those services which aren't supported, we can try to retrieve enriched video information using %1$s. If you want to use this option, you'll need to sign up for a (free) %2$s account and provide the API key you receive.",this.$tdPro),'<a href="https://embed.ly/" target="_blank">embed.ly</a>','<a href="https://embed.ly/" target="_blank">embed.ly</a>'),warningLinksPerSitemap:this.$t.__("We recommend setting the amount of URLs per sitemap index to 1,000 or less. The more links, the longer it will take for the sitemap to load.",this.$td),warningStaticRegeneration:this.$t.__("Your static sitemap is currently being regenerated. This may take some time based on the size of your site. This may also cause the sitemap content to look outdated.",this.$td)}}},computed:{...H(["options","internalOptions"]),getFrequencyOptions(){return[{label:this.$t.__("default",this.$tdPro),value:"default"}].concat(this.$constants.FREQUENCY_OPTIONS)},getPriorityOptions(){return[{label:this.$t.__("default",this.$tdPro),value:"default"}].concat(this.$constants.PRIORITY_OPTIONS)},getExcludedTaxonomies(){return["category","post_tag"]},noOptions(){return this.type==="posts"?this.strings.noOptionsPosts:this.strings.noOptionsTerms}},methods:{...A(["getObjects"]),processGetPagesPosts(e){return this.getObjects(e).then(d=>{this.pagePostOptions=d.body.posts})}}},he={class:"aioseo-video-sitemap"},ge={class:"aioseo-settings-row aioseo-section-description"},ve=["innerHTML"],$e={class:"aioseo-sitemap-preview"},ye={class:"aioseo-description"},fe=["innerHTML"],Se={class:"aioseo-description"},be=["innerHTML"],ke={class:"aioseo-description"},Le=["innerHTML"],Te={class:"aioseo-description"},Pe=["innerHTML"],Ae={class:"aioseo-description"},Ve=["innerHTML"],we={class:"aioseo-description"},Ie={class:"aioseo-description"},Ge=["innerHTML"],Ce={class:"aioseo-description"},Me=["innerHTML"];function Oe(e,d,$,S,t,v){const _=o("base-toggle"),l=o("core-settings-row"),h=o("svg-external"),g=o("base-button"),y=o("core-alert"),b=o("core-card"),k=o("base-radio-toggle"),D=o("base-input"),G=o("base-checkbox"),C=o("core-post-type-options"),M=o("core-exclude-posts");return p(),L("div",he,[s(b,{slug:"videoSitemap","header-text":t.strings.video},{default:i(()=>[a("div",ge,[r(n(t.strings.description)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"videoSitemaps",!0)},null,8,ve)]),s(l,{name:t.strings.enableSitemap},{content:i(()=>[s(_,{modelValue:e.options.sitemap.video.enable,"onUpdate:modelValue":d[0]||(d[0]=c=>e.options.sitemap.video.enable=c)},null,8,["modelValue"])]),_:1},8,["name"]),e.options.sitemap.video.enable?(p(),m(l,{key:0,name:e.$constants.GLOBAL_STRINGS.preview},{content:i(()=>[a("div",$e,[s(g,{size:"medium",type:"blue",tag:"a",href:e.$aioseo.urls.videoSitemapUrl,target:"_blank"},{default:i(()=>[s(h),r(" "+n(t.strings.openSitemap),1)]),_:1},8,["href"])]),a("div",ye,[r(n(t.strings.noIndexDisplayed)+" "+n(t.strings.doYou404)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"blankSitemap",!0)},null,8,fe)]),!e.options.deprecated.sitemap.video.advancedSettings.dynamic&&e.$aioseo.scheduledActions.sitemap&&e.$aioseo.scheduledActions.sitemap.includes("staticSitemapRegeneration")?(p(),m(y,{key:0,class:"static-regeneration-notice",type:"blue"},{default:i(()=>[r(n(t.strings.warningStaticRegeneration),1)]),_:1})):u("",!0)]),_:1},8,["name"])):u("",!0)]),_:1},8,["header-text"]),e.options.sitemap.video.enable?(p(),m(b,{key:0,slug:"videoSitemapSettings","header-text":t.strings.sitemapSettings},{default:i(()=>[s(l,{name:t.strings.enableSitemapIndexes},{content:i(()=>[s(k,{modelValue:e.options.sitemap.video.indexes,"onUpdate:modelValue":d[1]||(d[1]=c=>e.options.sitemap.video.indexes=c),name:"sitemapIndexes",options:[{label:e.$constants.GLOBAL_STRINGS.disabled,value:!1,activeClass:"dark"},{label:e.$constants.GLOBAL_STRINGS.enabled,value:!0}]},null,8,["modelValue","options"]),a("div",Se,[r(n(t.strings.sitemapIndexes)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"sitemapIndexes",!0)},null,8,be)])]),_:1},8,["name"]),e.options.sitemap.video.indexes?(p(),m(l,{key:0,name:t.strings.linksPerSitemap},{content:i(()=>[s(D,{modelValue:e.options.sitemap.video.linksPerIndex,"onUpdate:modelValue":d[2]||(d[2]=c=>e.options.sitemap.video.linksPerIndex=c),class:"aioseo-links-per-site",type:"number",size:"medium",min:1,max:5e4,onKeyup:e.validateLinksPerIndex},null,8,["modelValue","onKeyup"]),a("div",ke,[r(n(t.strings.maxLinks)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"maxLinks",!0)},null,8,Le)]),e.options.sitemap.video.indexes&&1e3<e.options.sitemap.video.linksPerIndex?(p(),m(y,{key:0,class:"index-notice",type:"yellow"},{default:i(()=>[r(n(t.strings.warningLinksPerSitemap),1)]),_:1})):u("",!0)]),_:1},8,["name"])):u("",!0),s(l,{name:t.strings.postTypes},{content:i(()=>[s(G,{size:"medium",modelValue:e.options.sitemap.video.postTypes.all,"onUpdate:modelValue":d[3]||(d[3]=c=>e.options.sitemap.video.postTypes.all=c)},{default:i(()=>[r(n(t.strings.includeAllPostTypes),1)]),_:1},8,["modelValue"]),e.options.sitemap.video.postTypes.all?u("",!0):(p(),m(C,{key:0,options:e.options.sitemap.video,type:"postTypes"},null,8,["options"])),a("div",Te,[r(n(t.strings.selectPostTypes)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"selectPostTypesVideo",!0)},null,8,Pe)])]),_:1},8,["name"]),s(l,{name:t.strings.taxonomies},{content:i(()=>[s(G,{size:"medium",modelValue:e.options.sitemap.video.taxonomies.all,"onUpdate:modelValue":d[4]||(d[4]=c=>e.options.sitemap.video.taxonomies.all=c)},{default:i(()=>[r(n(t.strings.includeAllTaxonomies),1)]),_:1},8,["modelValue"]),e.options.sitemap.video.taxonomies.all?u("",!0):(p(),m(C,{key:0,options:e.options.sitemap.video,type:"taxonomies",excluded:v.getExcludedTaxonomies},null,8,["options","excluded"])),a("div",Ae,[r(n(t.strings.selectTaxonomies)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"selectTaxonomiesVideo",!0)},null,8,Ve)])]),_:1},8,["name"])]),_:1},8,["header-text"])):u("",!0),e.options.sitemap.video.enable?(p(),m(b,{key:1,slug:"videoAdvancedSettings",toggles:e.options.sitemap.video.advancedSettings.enable},{header:i(()=>[s(_,{modelValue:e.options.sitemap.video.advancedSettings.enable,"onUpdate:modelValue":d[5]||(d[5]=c=>e.options.sitemap.video.advancedSettings.enable=c)},null,8,["modelValue"]),a("span",null,n(t.strings.advancedSettings),1)]),default:i(()=>[s(l,{name:t.strings.excludePostsPages,class:"aioseo-exclude-pages-posts",align:""},{content:i(()=>[s(M,{options:e.options.sitemap.video.advancedSettings,type:"posts"},null,8,["options"])]),_:1},8,["name"]),s(l,{name:t.strings.excludeTerms,class:"aioseo-exclude-terms",align:""},{content:i(()=>[s(M,{options:e.options.sitemap.video.advancedSettings,type:"terms"},null,8,["options"]),a("div",we,n(t.strings.excludeTermsDescription),1)]),_:1},8,["name"]),e.internalOptions.internal.deprecatedOptions.includes("staticVideoSitemap")?(p(),m(l,{key:0,name:t.strings.dynamicallyGenerate},{content:i(()=>[s(k,{modelValue:e.options.deprecated.sitemap.video.advancedSettings.dynamic,"onUpdate:modelValue":d[6]||(d[6]=c=>e.options.deprecated.sitemap.video.advancedSettings.dynamic=c),name:"dynamic",options:[{label:e.$constants.GLOBAL_STRINGS.no,value:!1,activeClass:"dark"},{label:e.$constants.GLOBAL_STRINGS.yes,value:!0}]},null,8,["modelValue","options"]),a("div",Ie,[r(n(t.strings.dynamicallyGenerateDescription)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"dynamicallyGenerateVideo",!0)},null,8,Ge)])]),_:1},8,["name"])):u("",!0),s(l,{name:t.strings.includeCustomFields,align:""},{content:i(()=>[s(k,{modelValue:e.options.sitemap.video.advancedSettings.customFields,"onUpdate:modelValue":d[7]||(d[7]=c=>e.options.sitemap.video.advancedSettings.customFields=c),name:"includeCustomFields",options:[{label:e.$constants.GLOBAL_STRINGS.no,value:!1,activeClass:"dark"},{label:e.$constants.GLOBAL_STRINGS.yes,value:!0}]},null,8,["modelValue","options"]),a("div",Ce,[r(n(t.strings.includeCustomFieldsDescription)+" ",1),a("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"includeCustomFields",!0)},null,8,Me)])]),_:1},8,["name"])]),_:1},8,["toggles"])):u("",!0)])}const Be=f(_e,[["render",Oe]]),xe={components:{Blur:I,CoreAlert:V,CoreCard:P,Cta:w},mixins:[T],data(){return{failed:!1,activationLoading:!1,strings:{videoSitemapHeader:this.$t.__("Enable Video Sitemap on your Site",this.$tdPro),ctaButtonTextActivate:this.$t.__("Update Video Sitemap",this.$tdPro),learnMoreText:this.$t.__("Learn more about Video Sitemaps",this.$tdPro),activateError:this.$t.__("An error occurred while activating the addon. Please upload it manually or contact support for more information.",this.$td),permissionWarning:this.$t.__("You currently don't have permission to update this addon. Please ask a site administrator to update.",this.$td),updateRequired:this.$t.sprintf(this.$t.__("This addon requires an update. %1$s %2$s requires a minimum version of %3$s for the %4$s addon. You currently have %5$s installed.",this.$td),"AIOSEO","Pro",this.$addons.getAddon("aioseo-video-sitemap").minimumVersion,"Video Sitemap",this.$addons.getAddon("aioseo-video-sitemap").installedVersion)}}},methods:{...A(["upgradePlugins"]),...O(["updateAddon"]),upgradeAddon(){this.failed=!1,this.activationLoading=!0;const e=this.$addons.getAddon("aioseo-video-sitemap");this.upgradePlugins([{plugin:e.sku}]).then(d=>{if(d.body.failed.length){this.activationLoading=!1,this.failed=!0;return}const $=d.body.completed[e.sku];this.activationLoading=!1,e.hasMinimumVersion=!0,e.isActive=!0,e.installedVersion=$.installedVersion,this.updateAddon(e)}).catch(()=>{this.activationLoading=!1})}}};function Re(e,d,$,S,t,v){const _=o("blur"),l=o("core-alert"),h=o("cta"),g=o("core-card");return p(),L("div",null,[s(g,{slug:"videoSitemap","header-text":t.strings.video},{default:i(()=>[s(_),s(h,{"cta-button-visible":e.$addons.userCanUpdate("aioseo-video-sitemap"),"cta-button-visible-warning":t.strings.permissionWarning,"cta-link":e.$aioseo.urls.aio.featureManager+"&aioseo-activate=aioseo-video-sitemap","same-tab":"","cta-button-action":"","cta-button-loading":t.activationLoading,onCtaButtonClick:v.upgradeAddon,"button-text":t.strings.ctaButtonTextActivate,"learn-more-link":e.$links.getDocUrl("videoSitemaps"),"feature-list":[t.strings.customFieldSupport,t.strings.exclude]},{"header-text":i(()=>[r(n(t.strings.videoSitemapHeader),1)]),description:i(()=>[s(l,{type:"yellow"},{default:i(()=>[r(n(t.strings.updateRequired),1)]),_:1}),t.failed?(p(),m(l,{key:0,type:"red"},{default:i(()=>[r(n(t.strings.activateError),1)]),_:1})):u("",!0),r(" "+n(t.strings.description),1)]),"learn-more-text":i(()=>[r(n(t.strings.learnMoreText),1)]),_:1},8,["cta-button-visible","cta-button-visible-warning","cta-link","cta-button-loading","onCtaButtonClick","button-text","learn-more-link","feature-list"])]),_:1},8,["header-text"])])}const De=f(xe,[["render",Re]]);const He={mixins:[F],components:{Activate:le,Lite:ue,VideoSitemap:Be,Update:De},data(){return{addonSlug:"aioseo-video-sitemap"}}},Ne={class:"aioseo-video-sitemap"};function Ee(e,d,$,S,t,v){const _=o("video-sitemap",!0),l=o("activate"),h=o("update"),g=o("lite");return p(),L("div",Ne,[e.shouldShowMain?(p(),m(_,{key:0})):u("",!0),e.shouldShowActivate?(p(),m(l,{key:1})):u("",!0),e.shouldShowUpdate?(p(),m(h,{key:2})):u("",!0),e.shouldShowLite?(p(),m(g,{key:3})):u("",!0)])}const Lt=f(He,[["render",Ee]]);export{Lt as default};
