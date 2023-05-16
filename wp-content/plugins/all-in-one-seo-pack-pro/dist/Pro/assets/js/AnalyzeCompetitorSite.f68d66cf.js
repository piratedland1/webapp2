import{a as k,d as $,m as z,b as I}from"./vuex.esm-bundler.ccdd8fb3.js";import"./WpTable.5b32ebd5.js";import"./default-i18n.3a91e0e5.js";import"./constants.355a3bff.js";import{_ as S,r as a,o as c,c as p,d as l,w as m,h as R,x as v,k as L,f as o,t as n,e as y,a as g,F as O,i as N}from"./_plugin-vue_export-helper.49ea0e68.js";import"./index.3cfc26e3.js";import{i as B}from"./helpers.871dba46.js";import"./SaveChanges.04870e44.js";import{S as A}from"./SeoSiteScore.29a89953.js";import{C as D,a as M}from"./Score.3bd033b6.js";import{p as V}from"./popup.b60b699f.js";import{C as x}from"./Blur.ef3abea2.js";import{C as b}from"./Card.a7500a15.js";import{C as F}from"./SeoSiteAnalysisResults.49faf930.js";import{C as K}from"./Index.ff401bc9.js";import{S as P}from"./Refresh.9a7e7fe2.js";import{c as j}from"./index.d59f905b.js";import"./RequiresUpdate.fe231e49.js";import"./postContent.53eb7ed3.js";import"./Caret.09e548f3.js";import"./cleanForSlug.13f04843.js";import"./isArrayLikeObject.8c985d83.js";import"./html.68197829.js";import"./Index.20fccad8.js";import"./params.597cd0f5.js";import"./Tooltip.754dc940.js";import"./Slide.dcb3da9d.js";import"./GoogleSearchPreview.e0f6eb8d.js";import"./index.9ef60339.js";import"./client.7afeb6b0.js";import"./_commonjsHelpers.f84db168.js";import"./Information.4a1e5f23.js";import"./Gear.a414ea99.js";import"./Index.d94d35bb.js";const G={components:{CoreBlur:x,CoreCard:b},mixins:[A],data(){return{score:0}},computed:{...k(["options","networkOptions"]),...$(["licenseKey"])},methods:{...z(["saveConnectToken"]),openPopup(e){V(e,this.connectWithAioseo,600,630,!0,["token"],this.completedCallback,()=>{})},completedCallback(e){return this.saveConnectToken(e.token)}}},H={key:0,class:"aioseo-seo-site-score-cta"},W=["href"];function q(e,r,s,u,t,i){const d=a("core-card");return c(),p("div",null,[l(d,{slug:"analyzeNewCompetitor","hide-header":"","no-slide":"",toggles:!1},{default:m(()=>[(c(),R(L(e.licenseKey?"div":"core-blur"),null,{default:m(()=>[v(e.$slots,"default")]),_:3})),e.licenseKey?g("",!0):(c(),p("div",H,[o("a",{href:e.$aioseo.urls.aio.settings},n(e.strings.enterLicenseKey),9,W),y(" "+n(e.strings.toAnalyzeCompetitorSite),1)]))]),_:3}),e.licenseKey?v(e.$slots,"competitor-results",{key:0}):g("",!0)])}const J=S(G,[["render",q]]);const Y={components:{CoreSiteScore:K,SvgRefresh:P},mixins:[A],props:{score:Number,loading:Boolean,site:{type:String,required:!0},summary:{type:Object,default(){return{}}},mobileSnapshot:String},data(){return{isAnalyzing:!1,strings:{criticalIssues:this.$t.__("Important Issues",this.$td),warnings:this.$t.__("Warnings",this.$td),recommendedImprovements:this.$t.__("Recommended Improvements",this.$td),goodResults:this.$t.__("Good Results",this.$td),completeSiteAuditChecklist:this.$t.__("Complete Site Audit Checklist",this.$td),refreshResults:this.$t.__("Refresh Results",this.$td),mobileSnapshot:this.$t.__("Mobile Snapshot",this.$td)}}},methods:{...z(["runSiteAnalyzer","deleteCompetitorSite"]),refresh(){this.isAnalyzing=!0,this.runSiteAnalyzer({url:this.site,refresh:!0}).then(()=>this.isAnalyzing=!1)}}},Q={class:"aioseo-site-score-competitor"},X={class:"aioseo-seo-site-score-score"},Z={class:"aioseo-seo-site-score-recommendations"},ee={class:"critical"},te={class:"round red"},se={class:"recommended"},oe={class:"round blue"},re={class:"good"},ie={class:"round green"},ne={key:0,class:"mobile-snapshot"},ae=["src"];function le(e,r,s,u,t,i){const d=a("core-site-score"),f=a("svg-refresh"),C=a("base-button");return c(),p("div",Q,[o("div",X,[l(d,{loading:t.isAnalyzing||s.loading,score:s.score,description:e.description},null,8,["loading","score","description"])]),o("div",Z,[o("div",ee,[o("span",te,n(s.summary.critical||0),1),y(" "+n(t.strings.criticalIssues),1)]),o("div",se,[o("span",oe,n(s.summary.recommended||0),1),y(" "+n(t.strings.recommendedImprovements),1)]),o("div",re,[o("span",ie,n(s.summary.good||0),1),y(" "+n(t.strings.goodResults),1)])]),l(C,{class:"refresh-results",type:"gray",size:"small",onClick:i.refresh,loading:t.isAnalyzing},{default:m(()=>[l(f),y(" "+n(t.strings.refreshResults),1)]),_:1},8,["onClick","loading"]),s.mobileSnapshot?(c(),p("div",ne,[o("div",null,n(t.strings.mobileSnapshot),1),o("img",{alt:"Mobile Snapshot",src:s.mobileSnapshot},null,8,ae)])):g("",!0)])}const ce=S(Y,[["render",le]]);const me={components:{CoreAnalyze:D,CoreAnalyzeScore:M,CoreAnalyzeCompetitorSiteHeader:J,CoreCard:b,CoreSeoSiteAnalysisResults:F,CoreSiteScoreCompetitor:ce,SvgTrash:j},mixins:[A],data(){return{score:0,competitorUrl:null,isAnalyzing:!1,inputError:!1,competitorResults:{},analyzeTime:8,strings:{enterCompetitorUrl:this.$t.__("Enter Competitor URL",this.$td),performInDepthAnalysis:this.$t.__("Perform in-depth SEO Analysis of your competitor's website.",this.$td),analyze:this.$t.__("Analyze",this.$td),pleaseEnterValidUrl:this.$t.__("Please enter a valid URL.",this.$td)}}},watch:{analyzeError(e){e&&(this.isAnalyzing=!1)}},computed:{...k(["options","analyzer","analyzing","analyzeError"]),...$(["getCompetitorSiteAnalysisResults","goodCount","recommendedCount","criticalCount"]),getError(){switch(this.analyzeError){case"invalid-url":return this.$t.__("The URL provided is invalid.",this.$td);case"missing-content":return this.$t.sprintf("%1$s %2$s",this.$t.__("We were unable to parse the content for this site.",this.$td),this.$links.getDocLink(this.$constants.GLOBAL_STRINGS.learnMore,"seoAnalyzerIssues",!0));case"invalid-token":return this.$t.sprintf(this.$t.__("Your site is not connected. Please connect to %1$s, then try again.",this.$td),"AIOSEO")}return this.analyzeError}},methods:{...z(["runSiteAnalyzer","deleteCompetitorSite","saveConnectToken"]),...I(["toggleCard","closeCard"]),parseResults(e){return JSON.parse(e)},getSummary(e){return{recommended:this.recommendedCount(e),critical:this.criticalCount(e),good:this.goodCount(e)}},startAnalyzing(e){if(this.inputError=!1,this.competitorUrl=e.replace("http://","https://"),this.competitorUrl.startsWith("https://")||(this.competitorUrl="https://"+this.competitorUrl),!B(this.competitorUrl)){this.inputError=!0;return}this.$store.commit("analyzing",!0),this.$store.commit("analyzeError",!1),this.runSiteAnalyzer({url:this.competitorUrl}),this.isAnalyzing=!0,setTimeout(this.checkStatus,this.analyzeTime*1e3),this.closeAllCards()},checkStatus(){if(this.isAnalyzing=!1,this.analyzing){this.$nextTick(()=>{this.isAnalyzing=!0,2>this.analyzeTime&&(this.analyzeTime=8),this.analyzeTime=this.analyzeTime/2,setTimeout(this.checkStatus,this.analyzeTime*1e3)});return}this.competitorUrl=null,this.competitorResults=this.getCompetitorSiteAnalysisResults,this.toggleFirstCard(),this.$nextTick(()=>{const e=Object.keys(this.competitorResults),r=document.querySelector(".aioseo-header"),s=r.offsetHeight+r.offsetTop+30;this.$scrollTo("#aioseo-competitor-results"+this.hashCode(e[0]),{offset:-s})})},startDeleteSite(e){this.closeAllCards(),delete this.competitorResults[e],this.deleteCompetitorSite(e).then(()=>{this.competitorResults=this.getCompetitorSiteAnalysisResults})},closeAllCards(){Object.keys(this.competitorResults).forEach(r=>{this.closeCard("analyzeCompetitorSite"+r)})},toggleFirstCard(){const e=Object.keys(this.competitorResults);this.toggleCard("analyzeCompetitorSite"+e[0])},hashCode(e){if(!e)return;let r=0,s,u;for(s=0;s<e.length;s++)u=e.charCodeAt(s),r=(r<<5)-r+u,r|=0;return r}},mounted(){this.$store.commit("analyzeError",!1),this.competitorResults=this.getCompetitorSiteAnalysisResults,this.toggleFirstCard()}},pe={class:"aioseo-analyze-competitor-site"},he={key:0,class:"aioseo-description aioseo-error"},ue=["innerHTML"],de={class:"competitor-results-main"},_e={class:"competitor-results-body"};function ye(e,r,s,u,t,i){const d=a("core-analyze"),f=a("core-analyze-score"),C=a("svg-trash"),T=a("core-site-score-competitor"),E=a("core-seo-site-analysis-results"),U=a("core-card"),w=a("core-analyze-competitor-site-header");return c(),p("div",pe,[l(w,null,{"competitor-results":m(()=>[(c(!0),p(O,null,N(t.competitorResults,(_,h)=>(c(),R(U,{key:h,id:"aioseo-competitor-results"+i.hashCode(h),slug:"analyzeCompetitorSite"+h,"save-toggle-status":!1},{header:m(()=>[l(f,{score:i.parseResults(_).score},null,8,["score"]),o("span",null,n(h),1),l(C,{onClick:ge=>i.startDeleteSite(h)},null,8,["onClick"])]),default:m(()=>[o("div",de,[l(T,{site:h,score:i.parseResults(_).score,loading:e.analyzing,summary:i.getSummary(i.parseResults(_).results),"mobile-snapshot":i.parseResults(_).results.advanced.mobileSnapshot},null,8,["site","score","loading","summary","mobile-snapshot"]),o("div",_e,[l(E,{section:"all-items","all-results":i.parseResults(_).results,"show-google-preview":""},null,8,["all-results"])])])]),_:2},1032,["id","slug"]))),128))]),default:m(()=>[l(d,{header:t.strings.enterCompetitorUrl,description:t.strings.performInDepthAnalysis,inputError:t.inputError,isAnalyzing:t.isAnalyzing,analyzeTime:t.analyzeTime,placeholder:"https://competitorwebsite.com",onStartAnalyzing:i.startAnalyzing},{errors:m(()=>[t.inputError?(c(),p("div",he,n(t.strings.pleaseEnterValidUrl),1)):g("",!0),e.analyzer==="competitor-site"&&e.analyzeError?(c(),p("div",{key:1,class:"analyze-errors aioseo-description aioseo-error",innerHTML:e.analyzeError},null,8,ue)):g("",!0)]),_:1},8,["header","description","inputError","isAnalyzing","analyzeTime","onStartAnalyzing"])]),_:1})])}const Xe=S(me,[["render",ye]]);export{Xe as default};
