import{B as w}from"./Textarea.d0159334.js";import{C as v}from"./SettingsRow.45faf80a.js";import{_ as m,r as a,o as u,c as g,d as o,w as l,f as P,e as b,t as y,h as p,a as d}from"./_plugin-vue_export-helper.49ea0e68.js";import{d as S}from"./vuex.esm-bundler.ccdd8fb3.js";import{B as f}from"./RadioToggle.2efe96f8.js";import{C as A}from"./Blur.ef3abea2.js";import{C as k}from"./Index.a6f4141a.js";const j={components:{BaseTextarea:w,CoreSettingsRow:v},props:{type:{type:String,required:!0},object:{type:Object,required:!0},options:{type:Object,required:!0}},data(){return{strings:{customFields:this.$t.__("Custom Fields",this.$tdPro),customFieldsDescription:this.$t.__("List of custom field names to include as post content for tags and the SEO Page Analysis. Add one per line.",this.$tdPro)}}},methods:{getSchemaTypeOption(t){return this.schemaTypes.find(i=>i.value===t)}}},C={class:"aioseo-sa-ct-custom-fields"},B={class:"aioseo-description"},O=["innerHTML"];function V(t,i,e,$,s,r){const c=a("base-textarea"),n=a("core-settings-row");return u(),g("div",C,[o(n,{name:s.strings.customFields,align:""},{content:l(()=>[o(c,{modelValue:e.options.customFields,"onUpdate:modelValue":i[0]||(i[0]=h=>e.options.customFields=h),"min-height":200},null,8,["modelValue"]),P("div",B,[b(y(s.strings.customFieldsDescription)+" ",1),P("span",{innerHTML:t.$links.getDocLink(t.$constants.GLOBAL_STRINGS.learnMore,"customFields",!0)},null,8,O)])]),_:1},8,["name"])])}const X=m(j,[["render",V]]);const x={components:{BaseRadioToggle:f,CoreSettingsRow:v},props:{type:{type:String,required:!0},object:{type:Object,required:!0},options:{type:Object,required:!0}},data(){return{schemaTypes:{post:[{value:"none",label:this.$t.__("None",this.$td)},{value:"Article",label:this.$t.__("Article",this.$td)},{value:"Course",label:this.$t.__("Course",this.$td)},{value:"Dataset",label:this.$t.__("Dataset",this.$td)},{value:"Movie",label:this.$t.__("Movie",this.$td)},{value:"Person",label:this.$t.__("Person",this.$td)},{value:"Product",label:this.$t.__("Product",this.$td)},{value:"Recipe",label:this.$t.__("Recipe",this.$td)},{value:"Service",label:this.$t.__("Service",this.$td)},{value:"SoftwareApplication",label:this.$t.__("Software Application",this.$td)},{value:"WebPage",label:this.$t.__("Web Page",this.$tdPro)}],page:[{value:"none",label:this.$t.__("None",this.$td)},{value:"Course",label:this.$t.__("Course",this.$td)},{value:"Dataset",label:this.$t.__("Dataset",this.$td)},{value:"Movie",label:this.$t.__("Movie",this.$td)},{value:"Person",label:this.$t.__("Person",this.$td)},{value:"Product",label:this.$t.__("Product",this.$td)},{value:"Recipe",label:this.$t.__("Recipe",this.$td)},{value:"Service",label:this.$t.__("Service",this.$td)},{value:"SoftwareApplication",label:this.$t.__("Software Application",this.$td)},{value:"WebPage",label:this.$t.__("Web Page",this.$tdPro)}],attachment:[{value:"none",label:this.$t.__("None",this.$td)},{value:"ItemPage",label:this.$t.__("Item Page",this.$tdPro)}],cpt:[{value:"none",label:this.$t.__("None",this.$td)},{value:"Article",label:this.$t.__("Article",this.$td)},{value:"Course",label:this.$t.__("Course",this.$td)},{value:"Dataset",label:this.$t.__("Dataset",this.$td)},{value:"Movie",label:this.$t.__("Movie",this.$td)},{value:"Person",label:this.$t.__("Person",this.$td)},{value:"Product",label:this.$t.__("Product",this.$td)},{value:"Recipe",label:this.$t.__("Recipe",this.$td)},{value:"Service",label:this.$t.__("Service",this.$td)},{value:"SoftwareApplication",label:this.$t.__("Software Application",this.$td)},{value:"WebPage",label:this.$t.__("Web Page",this.$tdPro)}]},webPageTypes:{cpt:[{value:"WebPage",label:this.$t.__("Web Page",this.$tdPro)},{value:"CollectionPage",label:this.$t.__("Collection Page",this.$tdPro)},{value:"ProfilePage",label:this.$t.__("Profile Page",this.$tdPro)},{value:"ItemPage",label:this.$t.__("Item Page",this.$tdPro)},{value:"FAQPage",label:this.$t.__("FAQ Page",this.$td)},{value:"RealEstateListing",label:this.$t.__("Real Estate Listing",this.$tdPro)}]},strings:{schemaType:this.$t.__("Schema Type",this.$td),webPageType:this.$t.__("Web Page Type",this.$td),articleType:this.$t.__("Article Type",this.$td),article:this.$t.__("Article",this.$td),blogPost:this.$t.__("Blog Post",this.$tdPro),newsArticle:this.$t.__("News Article",this.$tdPro)}}},methods:{getSelectOptions(t){return typeof this[t][this.object.name]<"u"?this[t][this.object.name]:this[t].cpt},getCurrentOption(t,i){return typeof this[t][this.object.name]<"u"?this[t][this.object.name].find(e=>e.value===i):this[t].cpt.find(e=>e.value===i)}}},N={class:"aioseo-sa-ct-schema"};function U(t,i,e,$,s,r){const c=a("base-select"),n=a("core-settings-row"),h=a("base-radio-toggle");return u(),g("div",N,[o(n,{name:s.strings.schemaType,align:""},{content:l(()=>[o(c,{size:"medium",class:"schema-type",options:r.getSelectOptions("schemaTypes"),modelValue:r.getCurrentOption("schemaTypes",e.options.schemaType),"onUpdate:modelValue":i[0]||(i[0]=_=>e.options.schemaType=_.value)},null,8,["options","modelValue"])]),_:1},8,["name"]),e.options.schemaType==="WebPage"?(u(),p(n,{key:0,name:s.strings.webPageType,align:""},{content:l(()=>[o(c,{size:"medium",class:"webpage-type",options:r.getSelectOptions("webPageTypes"),modelValue:r.getCurrentOption("webPageTypes",e.options.webPageType),"onUpdate:modelValue":i[1]||(i[1]=_=>e.options.webPageType=_.value)},null,8,["options","modelValue"])]),_:1},8,["name"])):d("",!0),e.options.schemaType==="Article"?(u(),p(n,{key:1,name:s.strings.articleType,align:""},{content:l(()=>[o(h,{modelValue:e.options.articleType,"onUpdate:modelValue":i[2]||(i[2]=_=>e.options.articleType=_),name:`${e.object.name}articleType`,options:[{label:s.strings.article,value:"Article"},{label:s.strings.blogPost,value:"BlogPosting"},{label:s.strings.newsArticle,value:"NewsArticle"}]},null,8,["modelValue","name","options"])]),_:1},8,["name"])):d("",!0)])}const R=m(x,[["render",U]]);const D={components:{BaseRadioToggle:f,CoreBlur:A,CoreSettingsRow:v,Cta:k},props:{type:{type:String,required:!0},object:{type:Object,required:!0}},data(){return{schemaTypes:[{value:"none",label:this.$t.__("None",this.$td)},{value:"Article",label:this.$t.__("Article",this.$td)}],strings:{schemaType:this.$t.__("Schema Type",this.$td),articleType:this.$t.__("Article Type",this.$td),article:this.$t.__("Article",this.$td),blogPost:this.$t.__("Blog Post",this.$td),newsArticle:this.$t.__("News Article",this.$td),ctaDescription:this.$t.__("Easily generate unlimited schema markup for your content to help you rank higher in search results. Our schema validator ensures your schema works out of the box.",this.$tdPro),ctaButtonText:this.$t.__("Upgrade to Pro and Unlock Schema Generator",this.$td),ctaHeader:this.$t.sprintf(this.$t.__("Schema Generator is only available for licensed %1$s %2$s users.",this.$td),"AIOSEO","Pro")},features:[this.$t.__("Unlimited Schema",this.$td),this.$t.__("Validate with Google",this.$td),this.$t.__("Increase Rankings",this.$td),this.$t.__("Additional Schema Types",this.$td)]}},methods:{getSchemaTypeOption(t){return this.schemaTypes.find(i=>i.value===t)}}},q={class:"aioseo-sa-ct-schema-lite"};function F(t,i,e,$,s,r){const c=a("base-select"),n=a("core-settings-row"),h=a("base-radio-toggle"),_=a("core-blur"),T=a("cta");return u(),g("div",q,[o(_,null,{default:l(()=>[o(n,{name:s.strings.schemaType,align:""},{content:l(()=>[o(c,{size:"medium",class:"schema-type",options:s.schemaTypes,modelValue:r.getSchemaTypeOption("Article")},null,8,["options","modelValue"])]),_:1},8,["name"]),o(n,{name:s.strings.articleType,align:""},{content:l(()=>[o(h,{name:`${e.object.name}articleType`,modelValue:"BlogPosting",options:[{label:s.strings.article,value:"Article"},{label:s.strings.blogPost,value:"BlogPosting"},{label:s.strings.newsArticle,value:"NewsArticle"}]},null,8,["name","options"])]),_:1},8,["name"])]),_:1}),o(T,{"cta-link":t.$links.getPricingUrl("schema-markup","schema-markup-upsell"),"button-text":s.strings.ctaButtonText,"learn-more-link":t.$links.getUpsellUrl("schema-markup",null,"home"),"feature-list":s.features},{"header-text":l(()=>[b(y(s.strings.ctaHeader),1)]),description:l(()=>[b(y(s.strings.ctaDescription),1)]),_:1},8,["cta-link","button-text","learn-more-link","feature-list"])])}const L=m(D,[["render",F]]),W={components:{Schema:R,SchemaLite:L},props:{type:{type:String,required:!0},object:{type:Object,required:!0},options:{type:Object,required:!0},showBulk:Boolean},computed:{...S(["isUnlicensed"])}},M={class:"aioseo-sa-ct-schema-view"};function I(t,i,e,$,s,r){const c=a("schema",!0),n=a("schema-lite");return u(),g("div",M,[t.isUnlicensed?d("",!0):(u(),p(c,{key:0,type:e.type,object:e.object,options:e.options,"show-bulk":e.showBulk},null,8,["type","object","options","show-bulk"])),t.isUnlicensed?(u(),p(n,{key:1,type:e.type,object:e.object,options:e.options,"show-bulk":e.showBulk},null,8,["type","object","options","show-bulk"])):d("",!0)])}const Y=m(W,[["render",I]]);export{X as C,Y as S};
