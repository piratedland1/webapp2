import{a as b}from"./vuex.esm-bundler.ccdd8fb3.js";import{C as k}from"./CommonSitemap.bfe9fab6.js";import{B as L}from"./Checkbox.de9093b7.js";import{C as A}from"./Card.a7500a15.js";import{C as x}from"./PostTypeOptions.ae57ac8f.js";import{C as v}from"./SettingsRow.45faf80a.js";import{S as P}from"./External.1616b132.js";import{_ as I,c as R,d as s,w as n,h as u,a as d,r as i,o as c,f as o,e as p,t as a}from"./_plugin-vue_export-helper.49ea0e68.js";import"./default-i18n.3a91e0e5.js";import"./Checkmark.05a656b1.js";import"./Tooltip.754dc940.js";import"./Caret.09e548f3.js";import"./index.d59f905b.js";import"./Slide.dcb3da9d.js";import"./HighlightToggle.05571e64.js";import"./Radio.52ad45a2.js";import"./Row.87dd14fc.js";const w={components:{BaseCheckbox:L,CoreCard:A,CorePostTypeOptions:x,CoreSettingsRow:v,SvgExternal:P},mixins:[k],data(){return{pagePostOptions:[],strings:{rss:this.$t.__("RSS Sitemap",this.$td),description:this.$t.__("This option will generate a separate RSS Sitemap which can be submitted to Google, Bing and any other search engines that support this type of sitemap. The RSS Sitemap contains an RSS feed of the latest updates to your site content. It is not a full sitemap of all your content.",this.$td),enableSitemap:this.$t.__("Enable Sitemap",this.$td),sitemapSettings:this.$t.__("Sitemap Settings",this.$td),enableSitemapIndexes:this.$t.__("Enable Sitemap Indexes",this.$td),sitemapIndexes:this.$t.__("Organize sitemap entries into distinct files in your sitemap. We recommend you enable this setting if your sitemap contains more than 1,000 URLs.",this.$td),linksPerSitemap:this.$t.__("Number of Posts",this.$td),noIndexDisplayed:this.$t.__("Noindexed content will not be displayed in your sitemap.",this.$td),doYou404:this.$t.__("Do you get a blank sitemap or 404 error?",this.$td),openSitemap:this.$t.__("Open RSS Sitemap",this.$td),maxLinks:this.$t.__("Allows you to specify the maximum number of posts for the RSS Sitemap. We recommend an amount of 50 posts.",this.$td),automaticallyPingSearchEngines:this.$t.__("Automatically Ping Search Engines",this.$td),postTypes:this.$t.__("Post Types",this.$td),taxonomies:this.$t.__("Taxonomies",this.$td),dateArchiveSitemap:this.$t.__("Date Archive Sitemap",this.$td),includeDateArchives:this.$t.__("Include Date Archives in your sitemap.",this.$td),authorSitemap:this.$t.__("Author Sitemap",this.$td),includeAuthorArchives:this.$t.__("Include Author Archives in your sitemap.",this.$td),includeAllPostTypes:this.$t.__("Include All Post Types",this.$td),selectPostTypes:this.$t.__("Select which Post Types appear in your sitemap.",this.$td),includeAllTaxonomies:this.$t.__("Include All Taxonomies",this.$td),selectTaxonomies:this.$t.__("Select which Taxonomies appear in your sitemap.",this.$td)}}},computed:{...b(["options"]),getExcludedPostTypes(){return["attachment"]}}},C={class:"aioseo-rss-sitemap"},V={class:"aioseo-settings-row aioseo-section-description"},B=["innerHTML"],M={class:"aioseo-sitemap-preview"},D={class:"aioseo-description"},G=["innerHTML"],N={class:"aioseo-description"},O=["innerHTML"],E={class:"aioseo-description"},H=["innerHTML"];function U(e,r,z,K,t,h){const S=i("base-toggle"),m=i("core-settings-row"),y=i("svg-external"),g=i("base-button"),_=i("core-card"),$=i("base-input"),f=i("base-checkbox"),T=i("core-post-type-options");return c(),R("div",C,[s(_,{slug:"rssSitemap","header-text":t.strings.rss},{default:n(()=>[o("div",V,[p(a(t.strings.description)+" ",1),o("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"rssSitemaps",!0)},null,8,B)]),s(m,{name:t.strings.enableSitemap},{content:n(()=>[s(S,{modelValue:e.options.sitemap.rss.enable,"onUpdate:modelValue":r[0]||(r[0]=l=>e.options.sitemap.rss.enable=l)},null,8,["modelValue"])]),_:1},8,["name"]),e.options.sitemap.rss.enable?(c(),u(m,{key:0,name:e.$constants.GLOBAL_STRINGS.preview},{content:n(()=>[o("div",M,[s(g,{size:"medium",type:"blue",tag:"a",href:e.$aioseo.urls.rssSitemapUrl,target:"_blank"},{default:n(()=>[s(y),p(" "+a(t.strings.openSitemap),1)]),_:1},8,["href"])]),o("div",D,[p(a(t.strings.noIndexDisplayed)+" "+a(t.strings.doYou404)+" ",1),o("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"blankSitemap",!0)},null,8,G)])]),_:1},8,["name"])):d("",!0)]),_:1},8,["header-text"]),e.options.sitemap.rss.enable?(c(),u(_,{key:0,slug:"rssSitemapSettings","header-text":t.strings.sitemapSettings},{default:n(()=>[s(m,{name:t.strings.linksPerSitemap},{content:n(()=>[s($,{modelValue:e.options.sitemap.rss.linksPerIndex,"onUpdate:modelValue":r[1]||(r[1]=l=>e.options.sitemap.rss.linksPerIndex=l),class:"aioseo-links-per-site",type:"number",size:"medium",min:1,max:5e4,onKeyup:e.validateLinksPerIndex},null,8,["modelValue","onKeyup"]),o("div",N,[p(a(t.strings.maxLinks)+" ",1),o("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"maxLinksRss",!0)},null,8,O)])]),_:1},8,["name"]),s(m,{name:t.strings.postTypes},{content:n(()=>[s(f,{size:"medium",modelValue:e.options.sitemap.rss.postTypes.all,"onUpdate:modelValue":r[2]||(r[2]=l=>e.options.sitemap.rss.postTypes.all=l)},{default:n(()=>[p(a(t.strings.includeAllPostTypes),1)]),_:1},8,["modelValue"]),e.options.sitemap.rss.postTypes.all?d("",!0):(c(),u(T,{key:0,options:e.options.sitemap.rss,type:"postTypes",excluded:h.getExcludedPostTypes},null,8,["options","excluded"])),o("div",E,[p(a(t.strings.selectPostTypes)+" ",1),o("span",{innerHTML:e.$links.getDocLink(e.$constants.GLOBAL_STRINGS.learnMore,"selectPostTypesRss",!0)},null,8,H)])]),_:1},8,["name"])]),_:1},8,["header-text"])):d("",!0)])}const pe=I(w,[["render",U]]);export{pe as default};
