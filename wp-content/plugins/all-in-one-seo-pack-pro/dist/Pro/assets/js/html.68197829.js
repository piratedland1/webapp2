import{d as a}from"./helpers.871dba46.js";const c=(e,t="div")=>{const n=document.createElement(t);return n.innerHTML=e.trim(),n},u=e=>(typeof e=="string"&&(e=c(e.replace(/[\t|\n]/gm,""))),e.textContent||e.innerText||""),s=e=>(typeof e=="string"&&(e=c(e)),e.querySelectorAll("img")),l=(e,t=200)=>e&&(t<e.length&&(e=e.substring(0,t).trim()+a("&hellip;")),e),p=()=>{var e;return{description:((e=document.head.querySelector('meta[name="description"]'))==null?void 0:e.content)||"",domain:window.location.origin,title:document.title||""}},d=()=>{var t,n,o,r;const e={description:((t=document.head.querySelector('meta[property="og:description"]'))==null?void 0:t.content)||"",image:((n=document.head.querySelector('meta[property="og:image"]'))==null?void 0:n.content)||"",title:((o=document.head.querySelector('meta[property="og:title"]'))==null?void 0:o.content)||"",type:((r=document.head.querySelector('meta[property="og:type"]'))==null?void 0:r.content)||""};return e.title||(e.title=document.title||"",e.title||(e.title=window.aioseo.urls.domain)),e},m=()=>{var e,t,n,o;return{card:((e=document.head.querySelector('meta[name="twitter:card"]'))==null?void 0:e.content)||"",description:((t=document.head.querySelector('meta[name="twitter:description"]'))==null?void 0:t.content)||"",image:((n=document.head.querySelector('meta[name="twitter:image"]'))==null?void 0:n.content)||"",title:((o=document.head.querySelector('meta[name="twitter:title"]'))==null?void 0:o.content)||""}};export{p as a,m as b,u as c,s as d,d as g,l as t};
