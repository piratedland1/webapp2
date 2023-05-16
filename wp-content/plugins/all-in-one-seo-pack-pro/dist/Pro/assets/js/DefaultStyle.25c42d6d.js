import{a as d,m as k}from"./vuex.esm-bundler.ccdd8fb3.js";import"./WpTable.5b32ebd5.js";import"./default-i18n.3a91e0e5.js";import"./constants.355a3bff.js";import{_ as g,r as o,o as f,h,w as r,f as u,d as a,e as c,t as _}from"./_plugin-vue_export-helper.49ea0e68.js";import{U as I}from"./Image.71e04b39.js";import"./SaveChanges.04870e44.js";import{D as y}from"./Map.66424928.js";import{B as O}from"./Img.8ff054fa.js";import{C as $}from"./SettingsRow.45faf80a.js";import{S as D}from"./Plus.77736cd8.js";const x={components:{BaseImg:O,CoreSettingsRow:$,SvgCirclePlus:D},mixins:[I,y],data(){return{strings:{customMarker:this.$t.__("Custom Marker",this.$td),uploadOrSelectImage:this.$t.__("Upload or Select Image",this.$td),pasteYourImageUrl:this.$t.__("Paste your image URL or select a new image",this.$td),minimumSize:this.$t.sprintf(this.$t.__("%1$sThe custom marker should be: 100x100 px.%2$s If the image exceeds those dimensions it could (partially) cover the info popup.",this.$td),"<strong>","</strong>"),remove:this.$t.__("Remove",this.$td)}}},computed:{...d(["currentPost","options"])},methods:{...k(["savePostState"]),setImageUrl(t){if(this.$root._data.screenContext!=="metabox"){this.options.localBusiness.maps.customMarker=t;return}this.currentPost.local_seo.maps.customMarker=t,this.savePostState()}}},C={class:"image-upload"},U=["innerHTML"];function V(t,e,b,v,s,i){const l=o("base-input"),m=o("svg-circle-plus"),n=o("base-button"),M=o("base-img"),S=o("core-settings-row");return f(),h(S,{name:s.strings.customMarker,align:""},{content:r(()=>[u("div",C,[a(l,{size:"medium",modelValue:t.getDataObject.customMarker,"onUpdate:modelValue":e[0]||(e[0]=p=>t.getDataObject.customMarker=p),placeholder:s.strings.pasteYourImageUrl},null,8,["modelValue","placeholder"]),a(n,{class:"insert-image",onClick:e[1]||(e[1]=p=>t.openUploadModal("customMarkerImage",i.setImageUrl)),size:"medium",type:"black"},{default:r(()=>[a(m),c(" "+_(s.strings.uploadOrSelectImage),1)]),_:1}),a(n,{class:"remove-image",onClick:e[2]||(e[2]=p=>t.getDataObject.customMarker=null),size:"medium",type:"gray"},{default:r(()=>[c(_(s.strings.remove),1)]),_:1})]),u("div",{class:"aioseo-description",innerHTML:s.strings.minimumSize},null,8,U),a(M,{src:t.getDataObject.customMarker},null,8,["src"])]),_:1},8,["name"])}const E=g(x,[["render",V],["__scopeId","data-v-5109467a"]]),B={components:{CoreSettingsRow:$},mixins:[y],data(){return{strings:{defaultMapStyle:this.$t.__("Default Map Style",this.$td)},defaultMapStyles:[{label:this.$t.__("Roadmap",this.$td),value:"roadmap"},{label:this.$t.__("Hybrid",this.$td),value:"hybrid"},{label:this.$t.__("Satellite",this.$td),value:"satellite"},{label:this.$t.__("Terrain",this.$td),value:"terrain"}]}},computed:{...d(["options"])},methods:{getValue(){return this.getDataObject.mapOptions.mapTypeId?this.defaultMapStyles.find(t=>t.value===this.getDataObject.mapOptions.mapTypeId):this.defaultMapStyles.find(t=>t.value===this.options.localBusiness.maps.mapOptions.mapTypeId)}}};function T(t,e,b,v,s,i){const l=o("base-select"),m=o("core-settings-row");return f(),h(m,{name:s.strings.defaultMapStyle,align:""},{content:r(()=>[a(l,{modelValue:i.getValue(),"onUpdate:modelValue":e[0]||(e[0]=n=>t.getDataObject.mapOptions.mapTypeId=n.value),options:s.defaultMapStyles},null,8,["modelValue","options"])]),_:1},8,["name"])}const F=g(B,[["render",T]]);export{E as L,F as a};
