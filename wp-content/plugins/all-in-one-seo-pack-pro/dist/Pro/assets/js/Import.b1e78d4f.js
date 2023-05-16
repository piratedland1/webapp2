import{a as V}from"./WpTable.5b32ebd5.js";import"./default-i18n.3a91e0e5.js";import"./constants.355a3bff.js";import{_ as W,c as u,d as t,w as o,r as n,o as m,f as p,e as l,t as c,F as P,i as S,h as B,n as U,a as f}from"./_plugin-vue_export-helper.49ea0e68.js";import"./index.3cfc26e3.js";import"./SaveChanges.04870e44.js";import{b as L,m as N}from"./vuex.esm-bundler.ccdd8fb3.js";import{B as $}from"./HighlightToggle.05571e64.js";import{G as E,a as H}from"./Row.87dd14fc.js";import{W as G,a as O,b as T}from"./Header.65603791.js";import{W as F,a as M}from"./Steps.ae9599d3.js";import"./helpers.871dba46.js";import"./RequiresUpdate.fe231e49.js";import"./postContent.53eb7ed3.js";import"./Caret.09e548f3.js";import"./cleanForSlug.13f04843.js";import"./isArrayLikeObject.8c985d83.js";import"./html.68197829.js";import"./Index.20fccad8.js";import"./Checkbox.de9093b7.js";import"./Checkmark.05a656b1.js";import"./Radio.52ad45a2.js";import"./Logo.834a7c5e.js";const w=""+window.__aioseoDynamicImportPreload__("images/yoast-logo-small.d61ba0ec.png"),R=""+window.__aioseoDynamicImportPreload__("images/rank-math-seo-logo-small.ca2c09ed.png"),j=""+window.__aioseoDynamicImportPreload__("svg/seopress-free-logo-small.ac91e892.svg"),q=""+window.__aioseoDynamicImportPreload__("svg/seopress-pro-logo-small.6e7e5cab.svg");const J={components:{BaseHighlightToggle:$,GridColumn:E,GridRow:H,WizardBody:G,WizardCloseAndExit:F,WizardContainer:O,WizardHeader:T,WizardSteps:M},mixins:[V],data(){return{loading:!1,stage:"import",strings:{importData:this.$t.__("Import data from your current plugins",this.$td),weHaveDetected:this.$t.sprintf(this.$t.__("We have detected other SEO plugins installed on your website. Select which plugins you would like to import data to %1$s.",this.$td),"AIOSEO"),importDataAndContinue:this.$t.__("Import Data and Continue",this.$td)},pluginImages:{"yoast-seo":this.$getAssetUrl(w),"yoast-seo-premium":this.$getAssetUrl(w),"rank-math-seo":this.$getAssetUrl(R),seopress:this.$getAssetUrl(j),"seopress-pro":this.$getAssetUrl(q)},selected:[]}},watch:{selected(e){this.updateImporters(e.map(a=>a.slug))}},computed:{getPlugins(){return this.$aioseo.importers.filter(e=>e.canImport)}},methods:{...L("wizard",["updateImporters"]),...N("wizard",["saveWizard"]),updateValue(e,a){if(e){this.selected.push(a);return}const d=this.selected.findIndex(_=>_.value===a.value);d!==-1&&this.selected.splice(d,1)},getValue(e){return this.selected.includes(e)},isActive(e){return this.selected.findIndex(d=>d.slug===e.slug)!==-1},saveAndContinue(){this.loading=!0,this.saveWizard("importers").then(()=>{this.$router.push(this.getNextLink)})},skipStep(){this.saveWizard(),this.$router.push(this.getNextLink)}}},K={class:"aioseo-wizard-import"},Q={class:"header"},X={class:"description"},Y={class:"plugins"},Z=["alt","src"],ee={key:1,class:"icon dashicons dashicons-admin-plugins"},te={class:"go-back"},se=p("div",{class:"spacer"},null,-1);function oe(e,a,d,_,i,r){const y=n("wizard-header"),v=n("wizard-steps"),k=n("base-highlight-toggle"),z=n("grid-column"),I=n("grid-row"),g=n("router-link"),h=n("base-button"),x=n("wizard-body"),A=n("wizard-close-and-exit"),b=n("wizard-container");return m(),u("div",K,[t(y),t(b,null,{default:o(()=>[t(x,null,{footer:o(()=>[p("div",te,[t(g,{to:e.getPrevLink,class:"no-underline"},{default:o(()=>[l("←")]),_:1},8,["to"]),l("   "),t(g,{to:e.getPrevLink},{default:o(()=>[l(c(i.strings.goBack),1)]),_:1},8,["to"])]),se,t(h,{type:"gray",onClick:r.skipStep},{default:o(()=>[l(c(i.strings.skipThisStep),1)]),_:1},8,["onClick"]),t(h,{type:"blue",loading:i.loading,onClick:r.saveAndContinue},{default:o(()=>[l(c(i.strings.importDataAndContinue)+" →",1)]),_:1},8,["loading","onClick"])]),default:o(()=>[t(v),p("div",Q,c(i.strings.importData),1),p("div",X,c(i.strings.weHaveDetected),1),p("div",Y,[t(I,null,{default:o(()=>[(m(!0),u(P,null,S(r.getPlugins,(s,C)=>(m(),B(z,{key:C,md:"6"},{default:o(()=>[t(k,{type:"checkbox",size:"medium",round:"",active:r.isActive(s),name:s.name,modelValue:r.getValue(s),"onUpdate:modelValue":D=>r.updateValue(D,s)},{default:o(()=>[i.pluginImages[s.slug]?(m(),u("img",{key:0,alt:s.name+" Plugin Icon",src:i.pluginImages[s.slug],class:U(["icon",s.slug])},null,10,Z)):f("",!0),i.pluginImages[s.slug]?f("",!0):(m(),u("span",ee)),l(" "+c(s.name),1)]),_:2},1032,["active","name","modelValue","onUpdate:modelValue"])]),_:2},1024))),128))]),_:1})])]),_:1}),t(A)]),_:1})])}const Ce=W(J,[["render",oe]]);export{Ce as default};
