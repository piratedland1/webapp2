import{g as o,b as s}from"./_getTag.fe118f3c.js";import{x as e,g as i,h as a,j as c,n as p,a as f}from"./isArrayLikeObject.8c985d83.js";var u="[object Map]",y="[object Set]",g=Object.prototype,l=g.hasOwnProperty;function A(r){if(r==null)return!0;if(e(r)&&(i(r)||typeof r=="string"||typeof r.splice=="function"||a(r)||c(r)||p(r)))return!r.length;var t=o(r);if(t==u||t==y)return!r.size;if(f(r))return!s(r).length;for(var n in r)if(l.call(r,n))return!1;return!0}export{A as i};
