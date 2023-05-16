import{c as D,b as M}from"./vue-router.df8ceec4.js";import{g as H,m as a}from"./index.3cfc26e3.js";import{_ as U}from"./default-i18n.3a91e0e5.js";/*!
 /**
  * vuex-router-sync v6.0.0-rc.1
  * (c) 2021 Evan You
  * @license MIT
  */function q(e,s,t){const i=(t||{}).moduleName||"route";e.registerModule(i,{namespaced:!0,state:f(s.currentRoute.value),mutations:{ROUTE_CHANGED(r,o){e.state[i]=f(o.to,o.from)}}});let n=!1,c;const l=e.watch(r=>r[i],r=>{const{fullPath:o}=r;o!==c&&(c!=null&&(n=!0,s.push(r)),c=o)},{flush:"sync"}),m=s.afterEach((r,o)=>{if(n){n=!1;return}c=r.fullPath,e.commit(i+"/ROUTE_CHANGED",{to:r,from:o})});return function(){m(),l(),e.unregisterModule(i)}}function f(e,s){const t={name:e.name,path:e.path,hash:e.hash,query:e.query,params:e.params,fullPath:e.fullPath,meta:e.meta};return s&&(t.from=f(s)),Object.freeze(t)}const T="all-in-one-seo-pack",O=(e,s,t)=>{const i=s[t];return i?()=>{const n=O(e,s,t+1);i({...e,next:n})}:e.next},G=(e,s,t)=>{const i=D({history:M(`wp-admin/admin.php?page=aioseo-${window.aioseo.page}`),routes:e,scrollBehavior(n,c,l){return l||(n.hash?{selector:n.hash}:{left:0,top:0})}});return i.beforeEach(async(n,c,l)=>{var r,o,w;if(!t.state.loaded){const{internalOptions:u,options:p,dynamicOptions:d,internalNetworkOptions:h,networkOptions:y,settings:k,notifications:_,helpPanel:N,addons:b,tags:x,license:v,backups:S,redirects:A,linkAssistant:P,indexNow:J,searchStatistics:E}=await H(s);t.state.redirects=a({...t.state.redirects},{...A}),t.state.linkAssistant=a({...t.state.linkAssistant},{...P}),t.state["index-now"]=a({...t.state["index-now"]},{...J}),t.state["search-statistics"]=a({...t.state["search-statistics"]},{...E}),t.state.internalOptions=a({...t.state.internalOptions},{...u}),t.state.options=a({...t.state.options},{...p}),t.state.dynamicOptions=a({...t.state.dynamicOptions},{...d}),t.state.settings=a({...t.state.settings},{...k}),t.state.notifications=a({...t.state.notifications},{..._}),t.state.helpPanel=a({...t.state.helpPanel},{...N}),t.state.addons=a([...t.state.addons],[...b]),t.state.backups=a([...t.state.backups],[...S]),t.state.tags=a({...t.state.tags},{...x}),t.state.license=a({...t.state.license},{...v}),t.state.loaded=!0,t.state.internalNetworkOptions=a({...t.state.internalNetworkOptions},{...h}),t.state.networkOptions=a({...t.state.networkOptions},{...y}),t.state.networkBackups=a({...t.state.networkBackups},{...(r=window.aioseo.data.network)==null?void 0:r.backups}),t.state.networkData=a({...t.state.networkData},{sites:(o=window.aioseo.data.network)==null?void 0:o.sites,activeSites:(w=window.aioseo.data.network)==null?void 0:w.activeSites}),t.commit("original/setOriginalOptions",JSON.parse(JSON.stringify(t.state.options))),t.commit("original/setOriginalDynamicOptions",JSON.parse(JSON.stringify(t.state.dynamicOptions))),t.commit("original/setOriginalNetworkOptions",JSON.parse(JSON.stringify(t.state.networkOptions))),t.state.redirects&&t.state.redirects.options&&t.commit("original/setOriginalRedirectOptions",JSON.parse(JSON.stringify(t.state.redirects.options))),t.state["index-now"]&&t.state["index-now"].options&&t.commit("original/setOriginalIndexNowOptions",JSON.parse(JSON.stringify(t.state["index-now"].options))),window.addEventListener("beforeunload",R=>{if(!t.getters["original/isDirty"])return;const g=U("Are you sure you want to leave? you have unsaved changes!",T);return(R||window.event).returnValue=g,g}),t.dispatch("ping")}const m=n.meta.access;if(!i.app.$allowed(m))return n.meta.home!==c.name?i.replace({name:n.meta.home}):null;if(n.meta.middleware){const u=Array.isArray(n.meta.middleware)?n.meta.middleware:[n.meta.middleware],p={app:s,from:c,next:l,router:i,to:n},d=O(p,u,1);return u[0]({...p,next:d})}return t.commit("redirects/resetPageNumbers"),l()}),q(t,i),i},I=(e,s)=>{const t=e[s];return t?typeof t=="function"?t():Promise.resolve(t):new Promise((i,n)=>{(typeof queueMicrotask=="function"?queueMicrotask:setTimeout)(n.bind(null,new Error("Unknown variable dynamic import: "+s)))})};export{I as _,G as s};
