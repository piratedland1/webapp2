import{u as F,j as e,T as t,a1 as j,c as R,U as _,W as q,aA as U,Y as B,bm as P,x as A,F as L,i as c,ac as f,aJ as v,B as o,b2 as N,aN as x,V as h,m as g,b3 as k,aI as E,aP as T,r as M,I as z,M as D,bQ as O,bR as Q,bS as G,am as V,au as $,aq as J,y as K,a6 as W,p as u,az as Y,ap as H,a2 as X,b8 as Z,b9 as m}from"./main-f7176f7b.js";import{O as l,h as ee,r as y,F as se,q as ae,N as te,y as ie,U as re,z as ne,E as ce,H as le,J as me,K as oe,M as ue}from"./backstage-track-insights-67dd7022.js";import{L as w,i as de}from"./play-arrow-filled-e3bd272a.js";import"./Edit-7ef11f54.js";const xe=""+new URL("claim-label-9a476d72.jpg",import.meta.url).href,je=""+new URL("claim-artist-c781927a.jpg",import.meta.url).href;function he(){const{branding:s}=F(),a=w()!=null;return e.jsx(l,{children:e.jsxs("div",{className:"max-w-780 my:20 md:my-40 mx-auto",children:[e.jsx("h1",{className:"text-3xl md:text-5xl text-center font-medium mb-10",children:e.jsx(t,{message:"Get access to :siteName for artists",values:{siteName:s.site_name}})}),e.jsx("h2",{className:"text-lg font-medium mb-54 text-center",children:e.jsx(t,{message:"First, select the type of your request"})}),e.jsxs("div",{className:"md:flex items-center gap-54",children:[e.jsx(p,{className:"mb-14 md:mb-0",title:a?e.jsx(t,{message:"Get verified"}):e.jsx(t,{message:"Become an artist"}),link:a?"verify-artist":"become-artist",image:je}),e.jsx(p,{title:e.jsx(t,{message:"Claim existing artist"}),link:"claim-artist",image:xe})]})]})})}function p({title:s,image:a,link:i,className:r}){return e.jsxs(j,{to:i,className:R("block flex-auto flex flex-col items-center justify-center p-34 border border-2 rounded-md bg-paper transition-shadow hover:shadow-xl hover:bg-primary/4 cursor-pointer",r),children:[e.jsx("h3",{className:"text-lg mb-10 font-medium",children:s}),e.jsx("img",{className:"w-132 h-132 object-cover rounded-full",src:a,alt:""})]})}const S="backstage-request";function ge(s){return _(a=>pe(a),{onSuccess:()=>{q.invalidateQueries(ee(S))},onError:a=>U(a,s)})}function pe(s){var a;return B.post(S,{artist_name:s.artist_name,artist_id:s.artist_id,type:s.type,data:{first_name:s.first_name,last_name:s.last_name,image:s.image,role:s.role,company:s.company,passport_scan_id:(a=s.passportScan)==null?void 0:a.id}}).then(i=>i.data)}function be(s){const{user:a}=P(),i=w();let r;return s==="verify-artist"?r=i==null?void 0:i.id:s==="become-artist"&&(r="CURRENT_USER"),A({defaultValues:{artist_id:r,artist_name:a==null?void 0:a.display_name,first_name:a==null?void 0:a.first_name,last_name:a==null?void 0:a.last_name,image:(i==null?void 0:i.image)||(a==null?void 0:a.avatar),type:s,role:s==="claim-artist"?"artist":void 0}})}function fe(){return e.jsxs(L,{name:"role",label:e.jsx(t,{message:"Role"}),selectionMode:"single",className:"mb-24",children:[e.jsx(c,{value:"artist",children:e.jsx(t,{message:"Artist"})}),e.jsx(c,{value:"agent",children:e.jsx(t,{message:"Agent"})}),e.jsx(c,{value:"composer",children:e.jsx(t,{message:"Composer"})}),e.jsx(c,{value:"label",children:e.jsx(t,{message:"Label"})}),e.jsx(c,{value:"manager",children:e.jsx(t,{message:"Manager"})}),e.jsx(c,{value:"musician",children:e.jsx(t,{message:"Musician"})}),e.jsx(c,{value:"producer",children:e.jsx(t,{message:"Producer"})}),e.jsx(c,{value:"publisher",children:e.jsx(t,{message:"Publisher"})}),e.jsx(c,{value:"songwriter",children:e.jsx(t,{message:"Songwriter"})})]})}function ve(){const{watch:s,setValue:a}=f(),{connectSocial:i}=v(),r=s("passportScan");return e.jsxs("div",{className:"py-20",children:[e.jsx("div",{className:"mb-14 text-sm",children:e.jsx(t,{message:"Speed up the process by connecting artist social media accounts or uploading your passport scan."})}),e.jsx(o,{variant:"outline",startIcon:e.jsx(N,{className:"text-twitter"}),className:"mr-10 mb-10 md:mb-0",onClick:async()=>{const n=await i("twitter");(n==null?void 0:n.status)==="SUCCESS"&&(x("me"),h(g("Connected twitter account")))},children:e.jsx(t,{message:"Connect to twitter"})}),e.jsx(o,{variant:"outline",startIcon:e.jsx(k,{className:"text-facebook"}),className:"mr-10 mb-10 md:mb-0",onClick:async()=>{const n=await i("facebook");(n==null?void 0:n.status)==="SUCCESS"&&(x("me"),h(g("Connected facebook account")))},children:e.jsx(t,{message:"Connect to facebook"})}),e.jsx(ke,{}),e.jsxs("div",{className:"mt-20",children:[r&&e.jsx(I,{icon:e.jsx(y,{}),title:e.jsx(t,{message:"Passport scan"}),description:`${r.name} (${E(r.file_size)})`,onRemove:()=>{a("passportScan",void 0)}}),e.jsx(b,{service:"twitter"}),e.jsx(b,{service:"facebook"})]})]})}function b({service:s}){const{disconnectSocial:a}=v(),{data:i}=T("me",{with:["social_profiles"]}),r=i==null?void 0:i.user.social_profiles.find(n=>n.service_name===s);return r?e.jsx(I,{icon:s==="twitter"?e.jsx(N,{className:"text-twitter"}):e.jsx(k,{className:"text-facebook"}),title:e.jsx("span",{className:"capitalize",children:e.jsx(t,{message:":service account",values:{service:s}})}),description:r.username,isDisabled:a.isLoading,onRemove:()=>{a.mutate({service:"twitter"},{onSuccess:()=>{x("me")}})}}):null}function I({icon:s,title:a,description:i,onRemove:r,isDisabled:n}){return e.jsxs("div",{className:"flex items-center gap-8 border rounded px-14 py-8 mb-8",children:[e.jsx("div",{className:"flex-shrink-0 text-muted",children:M.cloneElement(s,{size:"lg"})}),e.jsxs("div",{children:[e.jsx("div",{className:"text-xs text-muted",children:a}),e.jsx("div",{className:"text-sm",children:i})]}),e.jsx(z,{className:"flex-shrink-0 ml-auto",onClick:()=>r(),disabled:n,children:e.jsx(D,{})})]})}const Ne=5*1024*1024;function ke(){const{setValue:s}=f(),{selectAndUploadFile:a}=O(),i=()=>{a({showToastOnRestrictionFail:!0,restrictions:{allowedFileTypes:[Q.image],maxFileSize:Ne},metadata:{disk:G.uploads},onSuccess:r=>{s("passportScan",r)}})};return e.jsx(o,{variant:"outline",startIcon:e.jsx(y,{className:"text-primary"}),onClick:()=>i(),children:e.jsx(t,{message:"Upload passport scan"})})}function d(){const{pathname:s}=V(),a=s.split("/").pop();return e.jsx(l,{children:e.jsxs("div",{className:"max-w-780 my-40 mx-auto",children:[e.jsx("h1",{className:"text-3xl md:text-5xl text-center font-medium",children:e.jsx(t,{message:"Tell us about yourself"})}),e.jsx(ye,{requestType:a})]})})}function ye({requestType:s}){const a=$(),i=be(s),r=ge(i);return e.jsx(J,{children:e.jsxs(K,{form:i,onSubmit:n=>{r.mutate(n,{onSuccess:C=>{a(`/backstage/requests/${C.request.id}/request-submitted`,{replace:!0})}})},children:[e.jsx(W,{name:"image",diskPrefix:"artist_media",variant:"avatar",previewSize:"w-160 h-160",className:"my-30 max-w-max mx-auto",disabled:s==="become-artist"}),s!=="become-artist"&&e.jsx(se,{className:"mb-24",label:e.jsx(t,{message:"Select artist"}),name:"artist_id",modelType:de,openMenuOnFocus:!0,customEndpoint:"search/suggestions",queryParams:{listAll:"true",excludeSelf:"true"},disabled:s==="verify-artist"}),s==="become-artist"&&e.jsx(u,{required:!0,name:"artist_name",label:e.jsx(t,{message:"Your artist name"}),className:"mb-24"}),e.jsxs("div",{className:"md:flex items-center gap-24 mb-24",children:[e.jsx(u,{required:!0,name:"first_name",label:e.jsx(t,{message:"First name"}),className:"flex-auto mb-24 md:mb-0"}),e.jsx(u,{required:!0,name:"last_name",label:e.jsx(t,{message:"Last name"}),className:"flex-auto"})]}),s==="claim-artist"&&e.jsx(fe,{}),e.jsx(u,{name:"company",label:e.jsx(t,{message:"Company (optional)"}),className:"mb-24"}),e.jsx(ve,{}),e.jsxs("div",{className:"flex gap-24 justify-between border-t pt-34",children:[e.jsx(o,{variant:"raised",color:"white",elementType:j,to:"..",relative:"path",className:"min-w-140",radius:"rounded-full",children:e.jsx(t,{message:"Go back"})}),e.jsx(o,{variant:"raised",color:"primary",type:"submit",className:"min-w-140",radius:"rounded-full",disabled:r.isLoading,children:e.jsx(t,{message:"Submit request"})})]})]})})}function we(){const{data:s,isLoading:a}=ae();return a?e.jsx(Y,{className:"my-40"}):s!=null&&s.request?e.jsx(l,{children:e.jsx("div",{className:"max-w-[590px] my-40 mx-auto",children:e.jsxs("div",{children:[e.jsx("div",{className:"text-center",children:e.jsx(X,{size:"text-6xl"})}),e.jsx("h1",{className:"text-5xl font-medium mt-24 mb-48 text-center",children:e.jsx(t,{message:"We've got your request"})}),e.jsxs("ul",{className:"mb-60 list-disc list-inside px-20",children:[e.jsx("li",{className:"pb-10",children:e.jsx(t,{message:"Our support team will review it and send you an email within 3 days!"})}),e.jsx("li",{className:"pb-10",children:e.jsx(t,{message:"Don't submit another request until you hear from us."})}),e.jsx("li",{children:e.jsx(t,{message:` If this artist profile is already claimed, ask an admin on your team
            to invite you.`})})]}),e.jsx("div",{className:"text-center",children:e.jsx(o,{variant:"raised",color:"primary",elementType:j,to:"/",className:"min-w-140",radius:"rounded-full",children:e.jsx(t,{message:"Got It"})})})]})})}):e.jsx(H,{to:"/"})}const Se=[{path:"upload",element:e.jsx(m,{permission:"music.create",children:e.jsx(te,{})})},{path:"requests",element:e.jsx(m,{permission:"backstageRequests.create",children:e.jsx(he,{})})},{path:"requests/verify-artist",element:e.jsx(m,{permission:"backstageRequests.create",children:e.jsx(d,{})})},{path:"requests/become-artist",element:e.jsx(m,{permission:"backstageRequests.create",children:e.jsx(d,{})})},{path:"requests/claim-artist",element:e.jsx(m,{permission:"backstageRequests.create",children:e.jsx(d,{})})},{path:"requests/:requestId/request-submitted",element:e.jsx(m,{permission:"backstageRequests.create",children:e.jsx(we,{})})},{path:"tracks/new",element:e.jsx(l,{children:e.jsx(ie,{})})},{path:"tracks/:trackId/edit",element:e.jsx(l,{children:e.jsx(re,{})})},{path:"tracks/:trackId/insights",element:e.jsx(ne,{})},{path:"albums/new",element:e.jsx(l,{children:e.jsx(ce,{wrapInContainer:!1})})},{path:"albums/:albumId/edit",element:e.jsx(l,{children:e.jsx(le,{wrapInContainer:!1})})},{path:"albums/:albumId/insights",element:e.jsx(me,{})},{path:"artists/:artistId/edit",element:e.jsx(l,{children:e.jsx(oe,{wrapInContainer:!1,showExternalFields:!1})})},{path:"artists/:artistId/insights",element:e.jsx(ue,{})}];function _e(){return Z(Se)}export{_e as default};
//# sourceMappingURL=backstage-routes-8e0241d8.js.map
