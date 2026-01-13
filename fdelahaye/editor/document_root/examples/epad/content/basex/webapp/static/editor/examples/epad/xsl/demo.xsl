<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml"
                encoding="UTF-8"
                indent="no"
    />
    <xsl:param name="xopus">false</xsl:param>
    <xsl:template match="/">
        <html prefix="og: http://ogp.me/ns#" class="no-js" lang="en-gb">
            <head>
                <meta charset="utf-8"/>

                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
                <script type="text/javascript" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//bb669fbd8a.es"></script>
                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//nr-spa-1216.min.js"></script>
                <script type="text/javascript" async=""
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//ec.js"></script>
                <script type="text/javascript" id="www-widgetapi-script"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//www-widgetapi.js" async=""></script>
                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//2100981640152117.js" async=""></script>
                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//537532369685964.js" async=""></script>
                <script async="" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//fbevents.js"></script>
                <script async="" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//analytics.js"></script>
                <script type="text/javascript">
                    <![CDATA[(window.NREUM||(NREUM={})).init={privacy:{cookies_enabled:true},ajax:{deny_list:["bam.nr-data.net"]},distributed_tracing:{enabled:true}};(window.NREUM||(NREUM={})).loader_config={agentID:"1588630449",accountID:"780631",trustKey:"780631",xpid:"Uw4HV1VSGwIEUlRaBQgFU1c=",licenseKey:"bb669fbd8a",applicationID:"1465829253"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(t){try{s.console&&console.log(t)}catch(e){}}var o,i=t("ee"),a=t(31),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,e,n){r(n.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,s){try{l?l-=1:o(s||new UncaughtException(t,e,n),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function o(t,e){var n=e?null:c.now();i("err",[t,n])}var i=t("handle"),a=t(32),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,p="nr@seenError";if(!c.disabled){var l=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(14),t(13),"addEventListener"in window&&t(7),c.xhrWrappable&&t(15),d=!0)}s.on("fn-start",function(t,e,n){d&&(l+=1)}),s.on("fn-err",function(t,e,n){d&&!n[p]&&(f(n,p,function(){return!0}),this.thrown=!0,o(n))}),s.on("fn-end",function(){d&&!this.thrown&&l>0&&(l-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})}},{}],3:[function(t,e,n){var r=t("loader");r.disabled||(r.features.ins=!0)},{}],4:[function(t,e,n){function r(){U++,L=g.hash,this[u]=y.now()}function o(){U--,g.hash!==L&&i(0,!0);var t=y.now();this[h]=~~this[h]+t-this[u],this[d]=t}function i(t,e){E.emit("newURL",[""+g,e])}function a(t,e){t.on(e,function(){this[e]=y.now()})}var s="-start",c="-end",f="-body",u="fn"+s,d="fn"+c,p="cb"+s,l="cb"+c,h="jsTime",m="fetch",v="addEventListener",w=window,g=w.location,y=t("loader");if(w[v]&&y.xhrWrappable&&!y.disabled){var x=t(11),b=t(12),E=t(9),R=t(7),O=t(14),T=t(8),S=t(15),P=t(10),M=t("ee"),C=M.get("tracer"),N=t(23);t(17),y.features.spa=!0;var L,U=0;M.on(u,r),b.on(p,r),P.on(p,r),M.on(d,o),b.on(l,o),P.on(l,o),M.buffer([u,d,"xhr-resolved"]),R.buffer([u]),O.buffer(["setTimeout"+c,"clearTimeout"+s,u]),S.buffer([u,"new-xhr","send-xhr"+s]),T.buffer([m+s,m+"-done",m+f+s,m+f+c]),E.buffer(["newURL"]),x.buffer([u]),b.buffer(["propagate",p,l,"executor-err","resolve"+s]),C.buffer([u,"no-"+u]),P.buffer(["new-jsonp","cb-start","jsonp-error","jsonp-end"]),a(T,m+s),a(T,m+"-done"),a(P,"new-jsonp"),a(P,"jsonp-end"),a(P,"cb-start"),E.on("pushState-end",i),E.on("replaceState-end",i),w[v]("hashchange",i,N(!0)),w[v]("load",i,N(!0)),w[v]("popstate",function(){i(0,U>1)},N(!0))}},{}],5:[function(t,e,n){function r(){var t=new PerformanceObserver(function(t,e){var n=t.getEntries();s(v,[n])});try{t.observe({entryTypes:["resource"]})}catch(e){}}function o(t){if(s(v,[window.performance.getEntriesByType(w)]),window.performance["c"+p])try{window.performance[h](m,o,!1)}catch(t){}else try{window.performance[h]("webkit"+m,o,!1)}catch(t){}}function i(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var a=t("ee"),s=t("handle"),c=t(14),f=t(13),u=t(6),d=t(23),p="learResourceTimings",l="addEventListener",h="removeEventListener",m="resourcetimingbufferfull",v="bstResource",w="resource",g="-start",y="-end",x="fn"+g,b="fn"+y,E="bstTimer",R="pushState",O=t("loader");if(!O.disabled){O.features.stn=!0,t(9),"addEventListener"in window&&t(7);var T=NREUM.o.EV;a.on(x,function(t,e){var n=t[0];n instanceof T&&(this.bstStart=O.now())}),a.on(b,function(t,e){var n=t[0];n instanceof T&&s("bst",[n,e,this.bstStart,O.now()])}),c.on(x,function(t,e,n){this.bstStart=O.now(),this.bstType=n}),c.on(b,function(t,e){s(E,[e,this.bstStart,O.now(),this.bstType])}),f.on(x,function(){this.bstStart=O.now()}),f.on(b,function(t,e){s(E,[e,this.bstStart,O.now(),"requestAnimationFrame"])}),a.on(R+g,function(t){this.time=O.now(),this.startPath=location.pathname+location.hash}),a.on(R+y,function(t){s("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),u()?(s(v,[window.performance.getEntriesByType("resource")]),r()):l in window.performance&&(window.performance["c"+p]?window.performance[l](m,o,d(!1)):window.performance[l]("webkit"+m,o,d(!1))),document[l]("scroll",i,d(!1)),document[l]("keypress",i,d(!1)),document[l]("click",i,d(!1))}}},{}],6:[function(t,e,n){e.exports=function(){return"PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver}},{}],7:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&o(e)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,e){return t[1]}var a=t("ee").get("events"),s=t("wrap-function")(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1];if(null!==n&&("function"==typeof n||"object"==typeof n)){var r=c(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?s(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],8:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=i(arguments),e={};o.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var s=r.apply(this,t);return o.emit(n+"start",[t,a],s),s.then(function(t){return o.emit(n+"end",[null,t],s),t},function(t){throw o.emit(n+"end",[t],s),t})})}var o=t("ee").get("fetch"),i=t(32),a=t(31);e.exports=o;var s=window,c="fetch-",f=c+"body-",u=["arrayBuffer","blob","json","text","formData"],d=s.Request,p=s.Response,l=s.fetch,h="prototype",m="nr@context";d&&p&&l&&(a(u,function(t,e){r(d[h],e,f),r(p[h],e,f)}),r(s,"fetch",c),o.on(c+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),o.emit(c+"done",[null,e],n)}else o.emit(c+"done",[t],n)}))},{}],9:[function(t,e,n){var r=t("ee").get("history"),o=t("wrap-function")(r);e.exports=r;var i=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;i&&i.pushState&&i.replaceState&&(a=i),o.inPlace(a,["pushState","replaceState"],"-")},{}],10:[function(t,e,n){function r(t){function e(){f.emit("jsonp-end",[],l),t.removeEventListener("load",e,c(!1)),t.removeEventListener("error",n,c(!1))}function n(){f.emit("jsonp-error",[],l),f.emit("jsonp-end",[],l),t.removeEventListener("load",e,c(!1)),t.removeEventListener("error",n,c(!1))}var r=t&&"string"==typeof t.nodeName&&"script"===t.nodeName.toLowerCase();if(r){var o="function"==typeof t.addEventListener;if(o){var a=i(t.src);if(a){var d=s(a),p="function"==typeof d.parent[d.key];if(p){var l={};u.inPlace(d.parent,[d.key],"cb-",l),t.addEventListener("load",e,c(!1)),t.addEventListener("error",n,c(!1)),f.emit("new-jsonp",[t.src],l)}}}}}function o(){return"addEventListener"in window}function i(t){var e=t.match(d);return e?e[1]:null}function a(t,e){var n=t.match(l),r=n[1],o=n[3];return o?a(o,e[r]):e[r]}function s(t){var e=t.match(p);return e&&e.length>=3?{key:e[2],parent:a(e[1],window)}:{key:t,parent:window}}var c=t(23),f=t("ee").get("jsonp"),u=t("wrap-function")(f);if(e.exports=f,o()){var d=/[?&](?:callback|cb)=([^&#]+)/,p=/(.*)\.([^.]+)/,l=/^(\w+)(\.|$)(.*)$/,h=["appendChild","insertBefore","replaceChild"];Node&&Node.prototype&&Node.prototype.appendChild?u.inPlace(Node.prototype,h,"dom-"):(u.inPlace(HTMLElement.prototype,h,"dom-"),u.inPlace(HTMLHeadElement.prototype,h,"dom-"),u.inPlace(HTMLBodyElement.prototype,h,"dom-")),f.on("dom-start",function(t){r(t[0])})}},{}],11:[function(t,e,n){var r=t("ee").get("mutation"),o=t("wrap-function")(r),i=NREUM.o.MO;e.exports=r,i&&(window.MutationObserver=function(t){return this instanceof i?new i(o(t,"fn-")):i.apply(this,arguments)},MutationObserver.prototype=i.prototype)},{}],12:[function(t,e,n){function r(t){var e=i.context(),n=s(t,"executor-",e,null,!1),r=new f(n);return i.context(r).getCtx=function(){return e},r}var o=t("wrap-function"),i=t("ee").get("promise"),a=t("ee").getOrSetContext,s=o(i),c=t(31),f=NREUM.o.PR;e.exports=i,f&&(window.Promise=r,["all","race"].forEach(function(t){var e=f[t];f[t]=function(n){function r(t){return function(){i.emit("propagate",[null,!o],a,!1,!1),o=o||!t}}var o=!1;c(n,function(e,n){Promise.resolve(n).then(r("all"===t),r(!1))});var a=e.apply(f,arguments),s=f.resolve(a);return s}}),["resolve","reject"].forEach(function(t){var e=f[t];f[t]=function(t){var n=e.apply(f,arguments);return t!==n&&i.emit("propagate",[t,!0],n,!1,!1),n}}),f.prototype["catch"]=function(t){return this.then(null,t)},f.prototype=Object.create(f.prototype,{constructor:{value:r}}),c(Object.getOwnPropertyNames(f),function(t,e){try{r[e]=f[e]}catch(n){}}),o.wrapInPlace(f.prototype,"then",function(t){return function(){var e=this,n=o.argsToArray.apply(this,arguments),r=a(e);r.promise=e,n[0]=s(n[0],"cb-",r,null,!1),n[1]=s(n[1],"cb-",r,null,!1);var c=t.apply(this,n);return r.nextPromise=c,i.emit("propagate",[e,!0],c,!1,!1),c}}),i.on("executor-start",function(t){t[0]=s(t[0],"resolve-",this,null,!1),t[1]=s(t[1],"resolve-",this,null,!1)}),i.on("executor-err",function(t,e,n){t[1](n)}),i.on("cb-end",function(t,e,n){i.emit("propagate",[n,!0],this.nextPromise,!1,!1)}),i.on("propagate",function(t,e,n){this.getCtx&&!e||(this.getCtx=function(){if(t instanceof Promise)var e=i.context(t);return e&&e.getCtx?e.getCtx():this})}),r.toString=function(){return""+f})},{}],13:[function(t,e,n){var r=t("ee").get("raf"),o=t("wrap-function")(r),i="equestAnimationFrame";e.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],14:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function o(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var i=t("ee").get("timer"),a=t("wrap-function")(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";e.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],15:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",s)}function o(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,y,"fn-",s)}function i(t){x.push(t),m&&(E?E.then(a):w?w(a):(R=-R,O.data=R))}function a(){for(var t=0;t<x.length;t++)r([],x[t]);x.length&&(x=[])}function s(t,e){return e}function c(t,e){for(var n in t)e[n]=t[n];return e}t(7);var f=t("ee"),u=f.get("xhr"),d=t("wrap-function")(u),p=t(23),l=NREUM.o,h=l.XHR,m=l.MO,v=l.PR,w=l.SI,g="readystatechange",y=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],x=[];e.exports=u;var b=window.XMLHttpRequest=function(t){var e=new h(t);try{u.emit("new-xhr",[e],e),e.addEventListener(g,o,p(!1))}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(c(h,b),b.prototype=h.prototype,d.inPlace(b.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,e){r(t,e),i(e)}),u.on("open-xhr-start",r),m){var E=v&&v.resolve();if(!w&&!v){var R=1,O=document.createTextNode(R);new m(a).observe(O,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===g||a()})},{}],16:[function(t,e,n){function r(t){if(!s(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,f=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=l.generateSpanId(),m=l.generateTraceId(),v=Date.now(),w={spanId:h,traceId:m,timestamp:v};return(t.sameOrigin||c(t)&&p())&&(w.traceContextParentHeader=o(h,m),w.traceContextStateHeader=i(h,v,n,r,f)),(t.sameOrigin&&!u()||!t.sameOrigin&&c(t)&&d())&&(w.newrelicHeader=a(h,m,v,n,r,f)),w}function o(t,e){return"00-"+e+"-"+t+"-01"}function i(t,e,n,r,o){var i=0,a="",s=1,c="",f="";return o+"@nr="+i+"-"+s+"-"+n+"-"+r+"-"+t+"-"+a+"-"+c+"-"+f+"-"+e}function a(t,e,n,r,o,i){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var s={v:[0,1],d:{ty:"Browser",ac:r,ap:o,id:t,tr:e,ti:n}};return i&&r!==i&&(s.d.tk=i),btoa(JSON.stringify(s))}function s(t){return f()&&c(t)}function c(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var o=h(n.allowed_origins[r]);if(t.hostname===o.hostname&&t.protocol===o.protocol&&t.port===o.port){e=!0;break}}return e}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function p(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var l=t(28),h=t(18);e.exports={generateTracePayload:r,shouldGenerateTrace:s}},{}],17:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<p;r++)t.removeEventListener(d[r],this.listener,!1);return e.protocol&&"data"===e.protocol?void g("Ajax/DataUrl/Excluded"):void(e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):i(this,t),n.cbTime=this.cbTime,s("xhr",[e,n,this.startTime,this.endTime,"xhr"],this)))}}function o(t,e){var n=c(e),r=t.params;r.hostname=n.hostname,r.port=n.port,r.protocol=n.protocol,r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=n,t.sameOrigin=n.sameOrigin}function i(t,e){t.params.status=e.status;var n=v(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable&&!a.disabled){var s=t("handle"),c=t(18),f=t(16).generateTracePayload,u=t("ee"),d=["load","error","abort","timeout"],p=d.length,l=t("id"),h=t(24),m=t(22),v=t(19),w=t(23),g=t(25).recordSupportability,y=NREUM.o.REQ,x=window.XMLHttpRequest;a.features.xhr=!0,t(15),t(8),u.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,e.params=this.params||{},e.metrics=this.metrics||{},t.addEventListener("load",function(n){i(e,t)},w(!1)),h&&(h>34||h<10)||t.addEventListener("progress",function(t){e.lastSize=t.loaded},w(!1))}),u.on("open-xhr-start",function(t){this.params={method:t[0]},o(this,t[1]),this.metrics={}}),u.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=f(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),u.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],o=this;if(n&&r){var i=m(r);i&&(n.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof e.onload))&&o.end(e)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}};for(var s=0;s<p;s++)e.addEventListener(d[s],this.listener,w(!1))}),u.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),u.on("xhr-load-added",function(t,e){var n=""+l(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),u.on("xhr-load-removed",function(t,e){var n=""+l(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),u.on("xhr-resolved",function(){this.endTime=a.now()}),u.on("addEventListener-end",function(t,e){e instanceof x&&"load"===t[0]&&u.emit("xhr-load-added",[t[1],t[2]],e)}),u.on("removeEventListener-end",function(t,e){e instanceof x&&"load"===t[0]&&u.emit("xhr-load-removed",[t[1],t[2]],e)}),u.on("fn-start",function(t,e,n){e instanceof x&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),u.on("fn-end",function(t,e){this.xhrCbStart&&u.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),u.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url?n=t[0].url:window.URL&&t[0]&&t[0]instanceof URL&&(n=t[0].href),n&&(this.parsedOrigin=c(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var o=f(this.parsedOrigin);if(o&&(o.newrelicHeader||o.traceContextParentHeader))if("string"==typeof t[0]||window.URL&&t[0]&&t[0]instanceof URL){var i={};for(var a in r)i[a]=r[a];i.headers=new Headers(r.headers||{}),e(i.headers,o)&&(this.dt=o),t.length>1?t[1]=i:t.push(i)}else t[0]&&t[0].headers&&e(t[0].headers,o)&&(this.dt=o)}),u.on("fetch-start",function(t,e){this.params={},this.metrics={},this.startTime=a.now(),this.dt=e,t.length>=1&&(this.target=t[0]),t.length>=2&&(this.opts=t[1]);var n,r=this.opts||{},i=this.target;if("string"==typeof i?n=i:"object"==typeof i&&i instanceof y?n=i.url:window.URL&&"object"==typeof i&&i instanceof URL&&(n=i.href),o(this,n),"data"!==this.params.protocol){var s=(""+(i&&i instanceof y&&i.method||r.method||"GET")).toUpperCase();this.params.method=s,this.txSize=m(r.body)||0}}),u.on("fetch-done",function(t,e){if(this.endTime=a.now(),this.params||(this.params={}),"data"===this.params.protocol)return void g("Ajax/DataUrl/Excluded");this.params.status=e?e.status:0;var n;"string"==typeof this.rxSize&&this.rxSize.length>0&&(n=+this.rxSize);var r={txSize:this.txSize,rxSize:n,duration:a.now()-this.startTime};s("xhr",[this.params,r,this.startTime,this.endTime,"fetch"],this)})}},{}],18:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];if(0===(t||"").indexOf("data:"))return{protocol:"data"};var e=document.createElement("a"),n=window.location,o={};e.href=t,o.port=e.port;var i=e.href.split("://");!o.port&&i[1]&&(o.port=i[1].split("/")[0].split("@").pop().split(":")[1]),o.port&&"0"!==o.port||(o.port="https"===i[0]?"443":"80"),o.hostname=e.hostname||n.hostname,o.pathname=e.pathname,o.protocol=i[0],"/"!==o.pathname.charAt(0)&&(o.pathname="/"+o.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,s=e.hostname===document.domain&&e.port===n.port;return o.sameOrigin=a&&(!e.hostname||s),"/"===o.pathname&&(r[t]=o),o}},{}],19:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?o(t.response):"text"===n||""===n||void 0===n?o(t.responseText):void 0}var o=t(22);e.exports=r},{}],20:[function(t,e,n){function r(){}function o(t,e,n,r){return function(){return u.recordSupportability("API/"+e+"/called"),i(t+e,[f.now()].concat(s(arguments)),n?null:this,r),n?void 0:this}}var i=t("handle"),a=t(31),s=t(32),c=t("ee").get("tracer"),f=t("loader"),u=t(25),d=NREUM;"undefined"==typeof window.newrelic&&(newrelic=d);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",h=l+"ixn-";a(p,function(t,e){d[e]=o(l,e,!0,"api")}),d.addPageAction=o(l,"addPageAction",!0),d.setCurrentRouteName=o(l,"routeName",!0),e.exports=newrelic,d.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(h+"tracer",[f.now(),t,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return e.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],n),t}finally{c.emit("fn-end",[f.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){m[e]=o(h,e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),u.recordSupportability("API/noticeError/called"),i("err",[t,f.now(),!1,e])}},{}],21:[function(t,e,n){function r(t){if(NREUM.init){for(var e=NREUM.init,n=t.split("."),r=0;r<n.length-1;r++)if(e=e[n[r]],"object"!=typeof e)return;return e=e[n[n.length-1]]}}e.exports={getConfiguration:r}},{}],22:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],23:[function(t,e,n){var r=!1;try{var o=Object.defineProperty({},"passive",{get:function(){r=!0}});window.addEventListener("testPassive",null,o),window.removeEventListener("testPassive",null,o)}catch(i){}e.exports=function(t){return r?{passive:!0,capture:!!t}:!!t}},{}],24:[function(t,e,n){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),e.exports=r},{}],25:[function(t,e,n){function r(t,e){var n=[a,t,{name:t},e];return i("storeMetric",n,null,"api"),n}function o(t,e){var n=[s,t,{name:t},e];return i("storeEventMetrics",n,null,"api"),n}var i=t("handle"),a="sm",s="cm";e.exports={constants:{SUPPORTABILITY_METRIC:a,CUSTOM_METRIC:s},recordSupportability:r,recordCustom:o}},{}],26:[function(t,e,n){function r(){return s.exists&&performance.now?Math.round(performance.now()):(i=Math.max((new Date).getTime(),i))-a}function o(){return i}var i=(new Date).getTime(),a=i,s=t(33);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=o},{}],27:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?l("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&l("timing",["fcp",Math.floor(t.startTime)])})}function o(t,e){var n=t.getEntries();if(n.length>0){var r=n[n.length-1];if(f&&f<r.startTime)return;var o=[r],i=a({});i&&o.push(i),l("lcp",o)}}function i(t){t.getEntries().forEach(function(t){t.hadRecentInput||l("cls",[t])})}function a(t){var e=navigator.connection||navigator.mozConnection||navigator.webkitConnection;if(e)return e.type&&(t["net-type"]=e.type),e.effectiveType&&(t["net-etype"]=e.effectiveType),e.rtt&&(t["net-rtt"]=e.rtt),e.downlink&&(t["net-dlink"]=e.downlink),t}function s(t){if(t instanceof w&&!y){var e=Math.round(t.timeStamp),n={type:t.type};a(n),e<=h.now()?n.fid=h.now()-e:e>h.offset&&e<=Date.now()?(e-=h.offset,n.fid=h.now()-e):e=h.now(),y=!0,l("timing",["fi",e,n])}}function c(t){"hidden"===t&&(f=h.now(),l("pageHide",[f]))}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,d,p,l=t("handle"),h=t("loader"),m=t(30),v=t(23),w=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){u=new PerformanceObserver(r);try{u.observe({entryTypes:["paint"]})}catch(g){}d=new PerformanceObserver(o);try{d.observe({entryTypes:["largest-contentful-paint"]})}catch(g){}p=new PerformanceObserver(i);try{p.observe({type:"layout-shift",buffered:!0})}catch(g){}}if("addEventListener"in document){var y=!1,x=["click","keydown","mousedown","pointerdown","touchstart"];x.forEach(function(t){document.addEventListener(t,s,v(!1))})}m(c)}},{}],28:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<i.length;s++)o=i[s],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){return a(16)}function i(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,o=window.crypto||window.msCrypto;o&&o.getRandomValues&&Uint8Array&&(n=o.getRandomValues(new Uint8Array(t)));for(var i=[],a=0;a<t;a++)i.push(e().toString(16));return i.join("")}e.exports={generateUuid:r,generateSpanId:o,generateTraceId:i}},{}],29:[function(t,e,n){function r(t,e){if(!o)return!1;if(t!==o)return!1;if(!e)return!0;if(!i)return!1;for(var n=i.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(o="Safari",i=c[1])}e.exports={agent:o,version:i,match:r}},{}],30:[function(t,e,n){function r(t){function e(){t(s&&document[s]?document[s]:document[i]?"hidden":"visible")}"addEventListener"in document&&a&&document.addEventListener(a,e,o(!1))}var o=t(23);e.exports=r;var i,a,s;"undefined"!=typeof document.hidden?(i="hidden",a="visibilitychange",s="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",a="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",a="webkitvisibilitychange",s="webkitVisibilityState")},{}],31:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],32:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],33:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?f(t,c,a):a()}function n(n,r,o,i,a){if(a!==!1&&(a=!0),!l.aborted||i){t&&a&&t(n,r,o);for(var s=e(o),c=m(n),f=c.length,u=0;u<f;u++)c[u].apply(s,r);var p=d[y[n]];return p&&p.push([x,n,r,s]),s}}function i(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function v(t){return p[t]=p[t]||o(n)}function w(t,e){l.aborted||u(t,function(t,n){e=e||"feature",y[n]=e,e in d||(d[e]=[])})}var g={},y={},x={on:i,addEventListener:i,removeEventListener:h,emit:n,get:v,listeners:m,context:e,buffer:w,abort:s,aborted:!1};return x}function i(t){return f(t,c,a)}function a(){return new r}function s(){(d.api||d.feature)&&(l.aborted=!0,d=l.backlog={})}var c="nr@context",f=t("gos"),u=t(31),d={},p={},l=e.exports=o();e.exports.getOrSetContext=i,l.backlog=d},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!T++){var t=O.info=NREUM.info,e=m.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();c(E,function(e,n){t[e]||(t[e]=n)});var n=a();s("mark",["onload",n+O.offset],null,"api"),s("timing",["load",n]);var r=m.createElement("script");0===t.agent.indexOf("http://")||0===t.agent.indexOf("https://")?r.src=t.agent:r.src=l+"://"+t.agent,e.parentNode.insertBefore(r,e)}}function o(){"complete"===m.readyState&&i()}function i(){s("mark",["domContent",a()+O.offset],null,"api")}var a=t(26),s=t("handle"),c=t(31),f=t("ee"),u=t(29),d=t(21),p=t(23),l=d.getConfiguration("ssl")===!1?"http":"https",h=window,m=h.document,v="addEventListener",w="attachEvent",g=h.XMLHttpRequest,y=g&&g.prototype,x=!1;NREUM.o={ST:setTimeout,SI:h.setImmediate,CT:clearTimeout,XHR:g,REQ:h.Request,EV:h.Event,PR:h.Promise,MO:h.MutationObserver};var b=""+location,E={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-spa-1216.min.js"},R=g&&y&&y[v]&&!/CriOS/.test(navigator.userAgent),O=e.exports={offset:a.getLastTimestamp(),now:a,origin:b,features:{},xhrWrappable:R,userAgent:u,disabled:x};if(!x){t(20),t(27),m[v]?(m[v]("DOMContentLoaded",i,p(!1)),h[v]("load",r,p(!1))):(m[w]("onreadystatechange",o),h[w]("onload",r)),s("mark",["firstbyte",a.getLastTimestamp()],null,"api");var T=0}},{}],"wrap-function":[function(t,e,n){function r(t,e){function n(e,n,r,c,f){function nrWrapper(){var i,a,u,p;try{a=this,i=d(arguments),u="function"==typeof r?r(i,a):r||{}}catch(l){o([l,"",[i,a,c],u],t)}s(n+"start",[i,a,c],u,f);try{return p=e.apply(a,i)}catch(h){throw s(n+"err",[i,a,h],u,f),h}finally{s(n+"end",[i,a,p],u,f)}}return a(e)?e:(n||(n=""),nrWrapper[p]=e,i(e,nrWrapper,t),nrWrapper)}function r(t,e,r,o,i){r||(r="");var s,c,f,u="-"===r.charAt(0);for(f=0;f<e.length;f++)c=e[f],s=t[c],a(s)||(t[c]=n(s,u?c+r:r,o,c,i))}function s(n,r,i,a){if(!h||e){var s=h;h=!0;try{t.emit(n,r,i,e,a)}catch(c){o([c,n,r,i],t)}h=s}}return t||(t=u),n.inPlace=r,n.flag=p,n}function o(t,e){e||(e=u);try{e.emit("internal-error",t)}catch(n){}}function i(t,e,n){if(Object.defineProperty&&Object.keys)try{var r=Object.keys(t);return r.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(i){o([i],n)}for(var a in t)l.call(t,a)&&(e[a]=t[a]);return e}function a(t){return!(t&&t instanceof Function&&t.apply&&!t[p])}function s(t,e){var n=e(t);return n[p]=t,i(t,n,u),n}function c(t,e,n){var r=t[e];t[e]=s(r,n)}function f(){for(var t=arguments.length,e=new Array(t),n=0;n<t;++n)e[n]=arguments[n];return e}var u=t("ee"),d=t(32),p="nr@original",l=Object.prototype.hasOwnProperty,h=!1;e.exports=r,e.exports.wrapFunction=s,e.exports.wrapInPlace=c,e.exports.argsToArray=f},{}]},{},["loader",2,17,5,3,4]);]]></script>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

                <link rel="apple-touch-icon" sizes="57x57"
                      href="https://medias.arturia.net/images/apple-icon-57x57.png"/>
                <link rel="apple-touch-icon" sizes="60x60"
                      href="https://medias.arturia.net/images/apple-icon-60x60.png"/>
                <link rel="apple-touch-icon" sizes="72x72"
                      href="https://medias.arturia.net/images/apple-icon-72x72.png"/>
                <link rel="apple-touch-icon" sizes="76x76"
                      href="https://medias.arturia.net/images/apple-icon-76x76.png"/>
                <link rel="apple-touch-icon" sizes="114x114"
                      href="https://medias.arturia.net/images/apple-icon-114x114.png"/>
                <link rel="apple-touch-icon" sizes="120x120"
                      href="https://medias.arturia.net/images/apple-icon-120x120.png"/>
                <link rel="apple-touch-icon" sizes="144x144"
                      href="https://medias.arturia.net/images/apple-icon-144x144.png"/>
                <link rel="apple-touch-icon" sizes="152x152"
                      href="https://medias.arturia.net/images/apple-icon-152x152.png"/>
                <link rel="apple-touch-icon" sizes="180x180"
                      href="https://medias.arturia.net/images/apple-icon-180x180.png"/>
                <link rel="icon" type="image/png" sizes="192x192"
                      href="https://medias.arturia.net/images/android-icon-192x192.png"/>
                <link rel="icon" type="image/png" sizes="32x32"
                      href="https://medias.arturia.net/images/favicon-32x32.png"/>
                <link rel="icon" type="image/png" sizes="96x96"
                      href="https://medias.arturia.net/images/favicon-96x96.png"/>
                <link rel="icon" type="image/png" sizes="196x196"
                      href="https://medias.arturia.net/images/favicon-196x196.png"/>
                <link rel="icon" type="image/png" sizes="16x16"
                      href="https://medias.arturia.net/images/favicon-16x16.png"/>
                <link rel="icon" type="image/png" sizes="128x128"
                      href="https://medias.arturia.net/images/favicon-128.png"/>
                <link rel="manifest" href="https://medias.arturia.net/images/manifest.json"/>
                <!-- Windows Tiles and such -->
                <meta name="msapplication-config" content="https://medias.arturia.net/images/browserconfig.xml"/>
                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//lodash.min.js"></script>
                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//jquery-3.5.1.min.js"></script>


                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//vue.min.js"></script>


                <!-- TODO: do we still need this? -->
                <!-- base href="https://www.arturia.com/products/software-instruments/v-collection/overview" -->
                <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
                <meta name="keywords"
                      content="wavetable, vst, virtual, tone, tae, synthesizer, synth, studio, storm, stereo, sound, sonic, software, softsynth, soft, sequencer, sequence, sample, reverb, prophet, preset, plug-in, pitch, phaser, param eq, pad, oscillator, origin, namm, musician, music, modular, miniv, lfo, lead, jupiter-8, instrument, hardware, filter, enveloppe, emulation, drum, distortion, delay, cs-80, connection, computer, compressor, chorus, brass, bitcrusher, bass, audio, arturia, arp2600, analog factory, analog, adsr"/>
                <meta name="rights" content="All rights reserved 2022 Arturia"/>
                <meta name="title" content="V-Collection - V Collection 9"/>
                <meta name="author" content="test3"/>
                <meta property="og:url"
                      content="https://www.arturia.com/products/software-instruments/v-collection/overview"/>
                <meta property="og:title" content="Arturia - V-Collection - V Collection 9"/>
                <meta property="og:type" content="article"/>
                <meta property="og:description"
                      content="An anthology of software instruments gathering the most evocative synthesizers and keyboards ever made. Meticulously modeled, lovingly recreated and e..."/>
                <meta name="description"
                      content="An anthology of software instruments gathering the most evocative synthesizers and keyboards ever made. Meticulously modeled, lovingly recreated and e..."/>
                <title>
                    <xsl:value-of select="/document/h[position()=1]"/>
                </title>
                <link href="https://www.arturia.com/templates/arturia-bootstrap/favicon.ico" rel="shortcut icon"
                      type="image/vnd.microsoft.icon"/>
                <style type="text/css">

                    /* K2 - Magnific Popup Overrides */
                    .mfp-iframe-holder {padding:10px;}
                    .mfp-iframe-holder .mfp-content {max-width:100%;width:100%;height:100%;}
                    .mfp-iframe-scaler iframe {background:#fff;padding:10px;box-sizing:border-box;box-shadow:none;}

                </style>
                <script type="application/json" class="joomla-script-options new">
                    {"csrf.token":"fc98cec4627dbe2faa3f21eb8876a502","system.paths":{"root":"","base":""}}
                </script>


                <!-- TODO: should this be in webpack? -->
                <script type="application/javascript" data-type="application/javascript" data-name="googleAnalytics">
                    window.ga_debug = {trace: true};
                    (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', '__gaTracker');

                    __gaTracker('create', 'UA-39460920-1', 'auto');
                    __gaTracker('require', 'displayfeatures');
                    __gaTracker('require', 'ec'); // Enhanced Ecommerce

                    AnalyticsEvents_ecommerce();

                </script>
                <!-- Facebook Pixel Code -->
                <script type="application/javascript" data-type="application/javascript" data-name="facebook">
                    !function(f,b,e,v,n,t,s)
                    {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                    n.callMethod.apply(n,arguments):n.queue.push(arguments)};
                    if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
                    n.queue=[];t=b.createElement(e);t.async=!0;
                    t.src=v;s=b.getElementsByTagName(e)[0];
                    s.parentNode.insertBefore(t,s)}(window,document,'script','https://connect.facebook.net/en_US/fbevents.js');
                    fbq('init', '537532369685964');
                    fbq('init', '2100981640152117');
                </script>

                <!-- Criteo -->
                <script type="" data-name="criteo" data-src="//static.criteo.net/js/ld/ld.js" async="true"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//ld.js"></script>

                <!-- Hotjar  -->
                <script type="application/javascript" data-type="application/javascript" data-name="hotjar">
                    (function(h,o,t,j,a,r){
                    h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
                    h._hjSettings={hjid:1434725,hjsv:6};
                    a=o.getElementsByTagName('head')[0];
                    r=o.createElement('script');r.async=1;
                    r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
                    a.appendChild(r);
                    })(window,document,'https://static.hotjar.com/c/hotjar-','.js?sv=');
                </script>

                <script><![CDATA[]
        // [TODO][AT] this needs to go away
        function AnalyticsEvents_registerEvent (category, action, label, value) {
            if (window.__gaTracker) {
                if (category && action) {
                    window.__gaTracker('send', 'event', category, action, label, value)
                }
            }
        }

        function AnalyticsEvents_ecommerce () {
            if (window.__gaTracker) {
                window.__gaTracker('send', 'pageview')
                // send an event when use stayed at least 30s on the page
                window.setTimeout(function () {
                    AnalyticsEvents_registerEvent('Interaction', 'stayThirtySeconds', window.location.pathname)
                }, 30000)
            }
        }
        ]]>
                </script>
                <link href="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//79-95870c.css" rel="stylesheet"/>
                <link href="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//app-5acbdb.css" rel="stylesheet"/>
                <link href="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//app_style-b961da.css" rel="stylesheet"/>

                <!-- Google sitelinks search markup-->
                <script type="application/ld+json">
                    {
                    "@context": "http://schema.org",
                    "@type": "WebSite",
                    "url": "https://www.arturia.com/",
                    "potentialAction": {
                    "@type": "SearchAction",
                    "target": "https://www.arturia.com/index.php?option=com_search&amp;searchword={search_term_string}",
                    "query-input": "required name=search_term_string"
                    }
                    }
                </script>
                <!-- End of Google sitelinks search markup-->


                <!-- Google breadcrumb markup-->
                <script type="application/ld+json">
                    {
                    "@context" : "http://schema.org",
                    "@type" : "BreadcrumbList",
                    "itemListElement":
                    [
                    {
                    "@type": "ListItem",
                    "position": 1,
                    "item":
                    {
                    "@id": "https://www.arturia.com/",
                    "name": "Home"
                    }
                    }
                    ,
                    {
                    "@type": "ListItem",
                    "position": 2,
                    "item":
                    {
                    "@id": "https://www.arturia.com/products",
                    "name": "Products"
                    }
                    }
                    ,
                    {
                    "@type": "ListItem",
                    "position": 3,
                    "item":
                    {
                    "@id": "https://www.arturia.com/products/analog-classics",
                    "name": "Software Instruments"
                    }
                    }
                    ,
                    {
                    "@type": "ListItem",
                    "position": 4,
                    "item":
                    {
                    "@id": "https://www.arturia.com/products/software-instruments/v-collection/overview",
                    "name": "V Collection"
                    }
                    }
                    ]
                    }
                </script>
                <!-- End of Google breadcrumb markup-->
                <script async="" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//hotjar-1434725.js"></script>
                <script src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//iframe_api.es" async=""></script>
                <script async="" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//modules.5d050be37fa3fcc28f90.js"
                        charset="utf-8"></script>

                <style>@keyframes plyr-progress{to{background-position:25px
                    0;background-position:var(--plyr-progress-loading-size,25px) 0}}@keyframes
                    plyr-popup{0%{opacity:.5;transform:translateY(10px)}to{opacity:1;transform:translateY(0)}}@keyframes
                    plyr-fade-in{from{opacity:0}to{opacity:1}}.plyr{-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;align-items:center;direction:ltr;display:flex;flex-direction:column;font-family:inherit;font-family:var(--plyr-font-family,inherit);font-variant-numeric:tabular-nums;font-weight:400;font-weight:var(--plyr-font-weight-regular,400);height:100%;line-height:1.7;line-height:var(--plyr-line-height,1.7);max-width:100%;min-width:200px;position:relative;text-shadow:none;transition:box-shadow
                    .3s ease;z-index:0}.plyr audio,.plyr iframe,.plyr video{display:block;height:100%;width:100%}.plyr
                    button{font:inherit;line-height:inherit;width:auto}.plyr:focus{outline:0}.plyr--full-ui{box-sizing:border-box}.plyr--full-ui
                    *,.plyr--full-ui ::after,.plyr--full-ui ::before{box-sizing:inherit}.plyr--full-ui a,.plyr--full-ui
                    button,.plyr--full-ui input,.plyr--full-ui
                    label{touch-action:manipulation}.plyr__badge{background:#4a5464;background:var(--plyr-badge-background,#4a5464);border-radius:2px;border-radius:var(--plyr-badge-border-radius,2px);color:#fff;color:var(--plyr-badge-text-color,#fff);font-size:9px;font-size:var(--plyr-font-size-badge,9px);line-height:1;padding:3px
                    4px}.plyr--full-ui
                    ::-webkit-media-text-track-container{display:none}.plyr__captions{animation:plyr-fade-in .3s
                    ease;bottom:0;display:none;font-size:13px;font-size:var(--plyr-font-size-small,13px);left:0;padding:10px;padding:var(--plyr-control-spacing,10px);position:absolute;text-align:center;transition:transform
                    .4s ease-in-out;width:100%}.plyr__captions span:empty{display:none}@media
                    (min-width:480px){.plyr__captions{font-size:15px;font-size:var(--plyr-font-size-base,15px);padding:calc(10px
                    * 2);padding:calc(var(--plyr-control-spacing,10px) * 2)}}@media
                    (min-width:768px){.plyr__captions{font-size:18px;font-size:var(--plyr-font-size-large,18px)}}.plyr--captions-active
                    .plyr__captions{display:block}.plyr:not(.plyr--hide-controls)
                    .plyr__controls:not(:empty)~.plyr__captions{transform:translateY(calc(10px *
                    -4));transform:translateY(calc(var(--plyr-control-spacing,10px) *
                    -4))}.plyr__caption{background:rgba(0,0,0,.8);background:var(--plyr-captions-background,rgba(0,0,0,.8));border-radius:2px;-webkit-box-decoration-break:clone;box-decoration-break:clone;color:#fff;color:var(--plyr-captions-text-color,#fff);line-height:185%;padding:.2em
                    .5em;white-space:pre-wrap}.plyr__caption div{display:inline}.plyr__control{background:0
                    0;border:0;border-radius:3px;border-radius:var(--plyr-control-radius,3px);color:inherit;cursor:pointer;flex-shrink:0;overflow:visible;padding:calc(10px
                    * .7);padding:calc(var(--plyr-control-spacing,10px) * .7);position:relative;transition:all .3s
                    ease}.plyr__control
                    svg{display:block;fill:currentColor;height:18px;height:var(--plyr-control-icon-size,18px);pointer-events:none;width:18px;width:var(--plyr-control-icon-size,18px)}.plyr__control:focus{outline:0}.plyr__control.plyr__tab-focus{outline-color:#00b3ff;outline-color:var(--plyr-tab-focus-color,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));outline-offset:2px;outline-style:dotted;outline-width:3px}a.plyr__control{text-decoration:none}a.plyr__control::after,a.plyr__control::before{display:none}.plyr__control.plyr__control--pressed
                    .icon--not-pressed,.plyr__control.plyr__control--pressed
                    .label--not-pressed,.plyr__control:not(.plyr__control--pressed)
                    .icon--pressed,.plyr__control:not(.plyr__control--pressed)
                    .label--pressed{display:none}.plyr--full-ui
                    ::-webkit-media-controls{display:none}.plyr__controls{align-items:center;display:flex;justify-content:flex-end;text-align:center}.plyr__controls
                    .plyr__progress__container{flex:1;min-width:0}.plyr__controls
                    .plyr__controls__item{margin-left:calc(10px / 4);margin-left:calc(var(--plyr-control-spacing,10px)/
                    4)}.plyr__controls .plyr__controls__item:first-child{margin-left:0;margin-right:auto}.plyr__controls
                    .plyr__controls__item.plyr__progress__container{padding-left:calc(10px /
                    4);padding-left:calc(var(--plyr-control-spacing,10px)/ 4)}.plyr__controls
                    .plyr__controls__item.plyr__time{padding:0 calc(10px / 2);padding:0
                    calc(var(--plyr-control-spacing,10px)/ 2)}.plyr__controls
                    .plyr__controls__item.plyr__progress__container:first-child,.plyr__controls
                    .plyr__controls__item.plyr__time+.plyr__time,.plyr__controls
                    .plyr__controls__item.plyr__time:first-child{padding-left:0}.plyr__controls:empty{display:none}.plyr
                    [data-plyr=airplay],.plyr [data-plyr=captions],.plyr [data-plyr=fullscreen],.plyr
                    [data-plyr=pip]{display:none}.plyr--airplay-supported [data-plyr=airplay],.plyr--captions-enabled
                    [data-plyr=captions],.plyr--fullscreen-enabled [data-plyr=fullscreen],.plyr--pip-supported
                    [data-plyr=pip]{display:inline-block}.plyr__menu{display:flex;position:relative}.plyr__menu
                    .plyr__control svg{transition:transform .3s ease}.plyr__menu .plyr__control[aria-expanded=true]
                    svg{transform:rotate(90deg)}.plyr__menu .plyr__control[aria-expanded=true]
                    .plyr__tooltip{display:none}.plyr__menu__container{animation:plyr-popup .2s
                    ease;background:rgba(255,255,255,.9);background:var(--plyr-menu-background,rgba(255,255,255,.9));border-radius:4px;bottom:100%;box-shadow:0
                    1px 2px rgba(0,0,0,.15);box-shadow:var(--plyr-menu-shadow,0 1px 2px
                    rgba(0,0,0,.15));color:#4a5464;color:var(--plyr-menu-color,#4a5464);font-size:15px;font-size:var(--plyr-font-size-base,15px);margin-bottom:10px;position:absolute;right:-3px;text-align:left;white-space:nowrap;z-index:3}.plyr__menu__container>div{overflow:hidden;transition:height
                    .35s cubic-bezier(.4,0,.2,1),width .35s
                    cubic-bezier(.4,0,.2,1)}.plyr__menu__container::after{border:4px solid
                    transparent;border:var(--plyr-menu-arrow-size,4px) solid
                    transparent;border-top-color:rgba(255,255,255,.9);border-top-color:var(--plyr-menu-background,rgba(255,255,255,.9));content:'';height:0;position:absolute;right:calc(((18px
                    / 2) + calc(10px * .7)) - (4px / 2));right:calc(((var(--plyr-control-icon-size,18px)/ 2) +
                    calc(var(--plyr-control-spacing,10px) * .7)) - (var(--plyr-menu-arrow-size,4px)/
                    2));top:100%;width:0}.plyr__menu__container [role=menu]{padding:calc(10px *
                    .7);padding:calc(var(--plyr-control-spacing,10px) * .7)}.plyr__menu__container
                    [role=menuitem],.plyr__menu__container [role=menuitemradio]{margin-top:2px}.plyr__menu__container
                    [role=menuitem]:first-child,.plyr__menu__container
                    [role=menuitemradio]:first-child{margin-top:0}.plyr__menu__container
                    .plyr__control{align-items:center;color:#4a5464;color:var(--plyr-menu-color,#4a5464);display:flex;font-size:13px;font-size:var(--plyr-font-size-menu,var(--plyr-font-size-small,13px));padding-bottom:calc(calc(10px
                    * .7)/ 1.5);padding-bottom:calc(calc(var(--plyr-control-spacing,10px) * .7)/
                    1.5);padding-left:calc(calc(10px * .7) *
                    1.5);padding-left:calc(calc(var(--plyr-control-spacing,10px) * .7) *
                    1.5);padding-right:calc(calc(10px * .7) *
                    1.5);padding-right:calc(calc(var(--plyr-control-spacing,10px) * .7) *
                    1.5);padding-top:calc(calc(10px * .7)/ 1.5);padding-top:calc(calc(var(--plyr-control-spacing,10px) *
                    .7)/
                    1.5);-webkit-user-select:none;-ms-user-select:none;user-select:none;width:100%}.plyr__menu__container
                    .plyr__control>span{align-items:inherit;display:flex;width:100%}.plyr__menu__container
                    .plyr__control::after{border:4px solid transparent;border:var(--plyr-menu-item-arrow-size,4px) solid
                    transparent;content:'';position:absolute;top:50%;transform:translateY(-50%)}.plyr__menu__container
                    .plyr__control--forward{padding-right:calc(calc(10px * .7) *
                    4);padding-right:calc(calc(var(--plyr-control-spacing,10px) * .7) * 4)}.plyr__menu__container
                    .plyr__control--forward::after{border-left-color:#728197;border-left-color:var(--plyr-menu-arrow-color,#728197);right:calc((calc(10px
                    * .7) * 1.5) - 4px);right:calc((calc(var(--plyr-control-spacing,10px) * .7) * 1.5) -
                    var(--plyr-menu-item-arrow-size,4px))}.plyr__menu__container
                    .plyr__control--forward.plyr__tab-focus::after,.plyr__menu__container
                    .plyr__control--forward:hover::after{border-left-color:currentColor}.plyr__menu__container
                    .plyr__control--back{font-weight:400;font-weight:var(--plyr-font-weight-regular,400);margin:calc(10px
                    * .7);margin:calc(var(--plyr-control-spacing,10px) * .7);margin-bottom:calc(calc(10px * .7)/
                    2);margin-bottom:calc(calc(var(--plyr-control-spacing,10px) * .7)/ 2);padding-left:calc(calc(10px *
                    .7) * 4);padding-left:calc(calc(var(--plyr-control-spacing,10px) * .7) *
                    4);position:relative;width:calc(100% - (calc(10px * .7) * 2));width:calc(100% -
                    (calc(var(--plyr-control-spacing,10px) * .7) * 2))}.plyr__menu__container
                    .plyr__control--back::after{border-right-color:#728197;border-right-color:var(--plyr-menu-arrow-color,#728197);left:calc((calc(10px
                    * .7) * 1.5) - 4px);left:calc((calc(var(--plyr-control-spacing,10px) * .7) * 1.5) -
                    var(--plyr-menu-item-arrow-size,4px))}.plyr__menu__container
                    .plyr__control--back::before{background:#dcdfe5;background:var(--plyr-menu-back-border-color,#dcdfe5);box-shadow:0
                    1px 0 #fff;box-shadow:0 1px 0
                    var(--plyr-menu-back-border-shadow-color,#fff);content:'';height:1px;left:0;margin-top:calc(calc(10px
                    * .7)/ 2);margin-top:calc(calc(var(--plyr-control-spacing,10px) * .7)/
                    2);overflow:hidden;position:absolute;right:0;top:100%}.plyr__menu__container
                    .plyr__control--back.plyr__tab-focus::after,.plyr__menu__container
                    .plyr__control--back:hover::after{border-right-color:currentColor}.plyr__menu__container
                    .plyr__control[role=menuitemradio]{padding-left:calc(10px *
                    .7);padding-left:calc(var(--plyr-control-spacing,10px) * .7)}.plyr__menu__container
                    .plyr__control[role=menuitemradio]::after,.plyr__menu__container
                    .plyr__control[role=menuitemradio]::before{border-radius:100%}.plyr__menu__container
                    .plyr__control[role=menuitemradio]::before{background:rgba(0,0,0,.1);content:'';display:block;flex-shrink:0;height:16px;margin-right:10px;margin-right:var(--plyr-control-spacing,10px);transition:all
                    .3s ease;width:16px}.plyr__menu__container
                    .plyr__control[role=menuitemradio]::after{background:#fff;border:0;height:6px;left:12px;opacity:0;top:50%;transform:translateY(-50%)
                    scale(0);transition:transform .3s ease,opacity .3s ease;width:6px}.plyr__menu__container
                    .plyr__control[role=menuitemradio][aria-checked=true]::before{background:#00b3ff;background:var(--plyr-control-toggle-checked-background,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)))}.plyr__menu__container
                    .plyr__control[role=menuitemradio][aria-checked=true]::after{opacity:1;transform:translateY(-50%)
                    scale(1)}.plyr__menu__container
                    .plyr__control[role=menuitemradio].plyr__tab-focus::before,.plyr__menu__container
                    .plyr__control[role=menuitemradio]:hover::before{background:rgba(35,40,47,.1)}.plyr__menu__container
                    .plyr__menu__value{align-items:center;display:flex;margin-left:auto;margin-right:calc((calc(10px *
                    .7) - 2) * -1);margin-right:calc((calc(var(--plyr-control-spacing,10px) * .7) - 2) *
                    -1);overflow:hidden;padding-left:calc(calc(10px * .7) *
                    3.5);padding-left:calc(calc(var(--plyr-control-spacing,10px) * .7) *
                    3.5);pointer-events:none}.plyr--full-ui input[type=range]{-webkit-appearance:none;background:0
                    0;border:0;border-radius:calc(13px * 2);border-radius:calc(var(--plyr-range-thumb-height,13px) *
                    2);color:#00b3ff;color:var(--plyr-range-fill-background,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));display:block;height:calc((3px
                    * 2) + 13px);height:calc((var(--plyr-range-thumb-active-shadow-width,3px) * 2) +
                    var(--plyr-range-thumb-height,13px));margin:0;padding:0;transition:box-shadow .3s
                    ease;width:100%}.plyr--full-ui input[type=range]::-webkit-slider-runnable-track{background:0
                    0;border:0;border-radius:calc(5px / 2);border-radius:calc(var(--plyr-range-track-height,5px)/
                    2);height:5px;height:var(--plyr-range-track-height,5px);-webkit-transition:box-shadow .3s
                    ease;transition:box-shadow .3s
                    ease;-webkit-user-select:none;user-select:none;background-image:linear-gradient(to
                    right,currentColor 0,transparent 0);background-image:linear-gradient(to right,currentColor
                    var(--value,0),transparent var(--value,0))}.plyr--full-ui
                    input[type=range]::-webkit-slider-thumb{background:#fff;background:var(--plyr-range-thumb-background,#fff);border:0;border-radius:100%;box-shadow:0
                    1px 1px rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2);box-shadow:var(--plyr-range-thumb-shadow,0
                    1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2));height:13px;height:var(--plyr-range-thumb-height,13px);position:relative;-webkit-transition:all
                    .2s ease;transition:all .2s
                    ease;width:13px;width:var(--plyr-range-thumb-height,13px);-webkit-appearance:none;margin-top:calc(((13px
                    - 5px)/ 2) * -1);margin-top:calc(((var(--plyr-range-thumb-height,13px) -
                    var(--plyr-range-track-height,5px))/ 2) * -1)}.plyr--full-ui
                    input[type=range]::-moz-range-track{background:0 0;border:0;border-radius:calc(5px /
                    2);border-radius:calc(var(--plyr-range-track-height,5px)/
                    2);height:5px;height:var(--plyr-range-track-height,5px);-moz-transition:box-shadow .3s
                    ease;transition:box-shadow .3s ease;user-select:none}.plyr--full-ui
                    input[type=range]::-moz-range-thumb{background:#fff;background:var(--plyr-range-thumb-background,#fff);border:0;border-radius:100%;box-shadow:0
                    1px 1px rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2);box-shadow:var(--plyr-range-thumb-shadow,0
                    1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2));height:13px;height:var(--plyr-range-thumb-height,13px);position:relative;-moz-transition:all
                    .2s ease;transition:all .2s ease;width:13px;width:var(--plyr-range-thumb-height,13px)}.plyr--full-ui
                    input[type=range]::-moz-range-progress{background:currentColor;border-radius:calc(5px /
                    2);border-radius:calc(var(--plyr-range-track-height,5px)/
                    2);height:5px;height:var(--plyr-range-track-height,5px)}.plyr--full-ui
                    input[type=range]::-ms-track{background:0 0;border:0;border-radius:calc(5px /
                    2);border-radius:calc(var(--plyr-range-track-height,5px)/
                    2);height:5px;height:var(--plyr-range-track-height,5px);-ms-transition:box-shadow .3s
                    ease;transition:box-shadow .3s
                    ease;-ms-user-select:none;user-select:none;color:transparent}.plyr--full-ui
                    input[type=range]::-ms-fill-upper{background:0 0;border:0;border-radius:calc(5px /
                    2);border-radius:calc(var(--plyr-range-track-height,5px)/
                    2);height:5px;height:var(--plyr-range-track-height,5px);-ms-transition:box-shadow .3s
                    ease;transition:box-shadow .3s ease;-ms-user-select:none;user-select:none}.plyr--full-ui
                    input[type=range]::-ms-fill-lower{background:0 0;border:0;border-radius:calc(5px /
                    2);border-radius:calc(var(--plyr-range-track-height,5px)/
                    2);height:5px;height:var(--plyr-range-track-height,5px);-ms-transition:box-shadow .3s
                    ease;transition:box-shadow .3s
                    ease;-ms-user-select:none;user-select:none;background:currentColor}.plyr--full-ui
                    input[type=range]::-ms-thumb{background:#fff;background:var(--plyr-range-thumb-background,#fff);border:0;border-radius:100%;box-shadow:0
                    1px 1px rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2);box-shadow:var(--plyr-range-thumb-shadow,0
                    1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2));height:13px;height:var(--plyr-range-thumb-height,13px);position:relative;-ms-transition:all
                    .2s ease;transition:all .2s
                    ease;width:13px;width:var(--plyr-range-thumb-height,13px);margin-top:0}.plyr--full-ui
                    input[type=range]::-ms-tooltip{display:none}.plyr--full-ui
                    input[type=range]:focus{outline:0}.plyr--full-ui
                    input[type=range]::-moz-focus-outer{border:0}.plyr--full-ui
                    input[type=range].plyr__tab-focus::-webkit-slider-runnable-track{outline-color:#00b3ff;outline-color:var(--plyr-tab-focus-color,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));outline-offset:2px;outline-style:dotted;outline-width:3px}.plyr--full-ui
                    input[type=range].plyr__tab-focus::-moz-range-track{outline-color:#00b3ff;outline-color:var(--plyr-tab-focus-color,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));outline-offset:2px;outline-style:dotted;outline-width:3px}.plyr--full-ui
                    input[type=range].plyr__tab-focus::-ms-track{outline-color:#00b3ff;outline-color:var(--plyr-tab-focus-color,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));outline-offset:2px;outline-style:dotted;outline-width:3px}.plyr__poster{background-color:#000;background-position:50%
                    50%;background-repeat:no-repeat;background-size:contain;height:100%;left:0;opacity:0;position:absolute;top:0;transition:opacity
                    .2s ease;width:100%;z-index:1}.plyr--stopped.plyr__poster-enabled
                    .plyr__poster{opacity:1}.plyr__time{font-size:13px;font-size:var(--plyr-font-size-time,var(--plyr-font-size-small,13px))}.plyr__time+.plyr__time::before{content:'\2044';margin-right:10px;margin-right:var(--plyr-control-spacing,10px)}@media
                    (max-width:calc(768px -
                    1)){.plyr__time+.plyr__time{display:none}}.plyr__tooltip{background:rgba(255,255,255,.9);background:var(--plyr-tooltip-background,rgba(255,255,255,.9));border-radius:3px;border-radius:var(--plyr-tooltip-radius,3px);bottom:100%;box-shadow:0
                    1px 2px rgba(0,0,0,.15);box-shadow:var(--plyr-tooltip-shadow,0 1px 2px
                    rgba(0,0,0,.15));color:#4a5464;color:var(--plyr-tooltip-color,#4a5464);font-size:13px;font-size:var(--plyr-font-size-small,13px);font-weight:400;font-weight:var(--plyr-font-weight-regular,400);left:50%;line-height:1.3;margin-bottom:calc(calc(10px
                    / 2) * 2);margin-bottom:calc(calc(var(--plyr-control-spacing,10px)/ 2) *
                    2);opacity:0;padding:calc(10px / 2) calc(calc(10px / 2) *
                    1.5);padding:calc(var(--plyr-control-spacing,10px)/ 2) calc(calc(var(--plyr-control-spacing,10px)/
                    2) * 1.5);pointer-events:none;position:absolute;transform:translate(-50%,10px)
                    scale(.8);transform-origin:50% 100%;transition:transform .2s .1s ease,opacity .2s .1s
                    ease;white-space:nowrap;z-index:2}.plyr__tooltip::before{border-left:4px solid
                    transparent;border-left:var(--plyr-tooltip-arrow-size,4px) solid transparent;border-right:4px solid
                    transparent;border-right:var(--plyr-tooltip-arrow-size,4px) solid transparent;border-top:4px solid
                    rgba(255,255,255,.9);border-top:var(--plyr-tooltip-arrow-size,4px) solid
                    var(--plyr-tooltip-background,rgba(255,255,255,.9));bottom:calc(4px *
                    -1);bottom:calc(var(--plyr-tooltip-arrow-size,4px) *
                    -1);content:'';height:0;left:50%;position:absolute;transform:translateX(-50%);width:0;z-index:2}.plyr
                    .plyr__control.plyr__tab-focus .plyr__tooltip,.plyr .plyr__control:hover
                    .plyr__tooltip,.plyr__tooltip--visible{opacity:1;transform:translate(-50%,0) scale(1)}.plyr
                    .plyr__control:hover .plyr__tooltip{z-index:3}.plyr__controls>.plyr__control:first-child
                    .plyr__tooltip,.plyr__controls>.plyr__control:first-child+.plyr__control
                    .plyr__tooltip{left:0;transform:translate(0,10px) scale(.8);transform-origin:0
                    100%}.plyr__controls>.plyr__control:first-child
                    .plyr__tooltip::before,.plyr__controls>.plyr__control:first-child+.plyr__control
                    .plyr__tooltip::before{left:calc((18px / 2) + calc(10px *
                    .7));left:calc((var(--plyr-control-icon-size,18px)/ 2) + calc(var(--plyr-control-spacing,10px) *
                    .7))}.plyr__controls>.plyr__control:last-child
                    .plyr__tooltip{left:auto;right:0;transform:translate(0,10px) scale(.8);transform-origin:100%
                    100%}.plyr__controls>.plyr__control:last-child .plyr__tooltip::before{left:auto;right:calc((18px /
                    2) + calc(10px * .7));right:calc((var(--plyr-control-icon-size,18px)/ 2) +
                    calc(var(--plyr-control-spacing,10px) *
                    .7));transform:translateX(50%)}.plyr__controls>.plyr__control:first-child
                    .plyr__tooltip--visible,.plyr__controls>.plyr__control:first-child+.plyr__control
                    .plyr__tooltip--visible,.plyr__controls>.plyr__control:first-child+.plyr__control.plyr__tab-focus
                    .plyr__tooltip,.plyr__controls>.plyr__control:first-child+.plyr__control:hover
                    .plyr__tooltip,.plyr__controls>.plyr__control:first-child.plyr__tab-focus
                    .plyr__tooltip,.plyr__controls>.plyr__control:first-child:hover
                    .plyr__tooltip,.plyr__controls>.plyr__control:last-child
                    .plyr__tooltip--visible,.plyr__controls>.plyr__control:last-child.plyr__tab-focus
                    .plyr__tooltip,.plyr__controls>.plyr__control:last-child:hover
                    .plyr__tooltip{transform:translate(0,0) scale(1)}.plyr__progress{left:calc(13px *
                    .5);left:calc(var(--plyr-range-thumb-height,13px) *
                    .5);margin-right:13px;margin-right:var(--plyr-range-thumb-height,13px);position:relative}.plyr__progress
                    input[type=range],.plyr__progress__buffer{margin-left:calc(13px *
                    -.5);margin-left:calc(var(--plyr-range-thumb-height,13px) * -.5);margin-right:calc(13px *
                    -.5);margin-right:calc(var(--plyr-range-thumb-height,13px) * -.5);width:calc(100% +
                    13px);width:calc(100% + var(--plyr-range-thumb-height,13px))}.plyr__progress
                    input[type=range]{position:relative;z-index:2}.plyr__progress
                    .plyr__tooltip{font-size:13px;font-size:var(--plyr-font-size-time,var(--plyr-font-size-small,13px));left:0}.plyr__progress__buffer{-webkit-appearance:none;background:0
                    0;border:0;border-radius:100px;height:5px;height:var(--plyr-range-track-height,5px);left:0;margin-top:calc((5px
                    / 2) * -1);margin-top:calc((var(--plyr-range-track-height,5px)/ 2) *
                    -1);padding:0;position:absolute;top:50%}.plyr__progress__buffer::-webkit-progress-bar{background:0
                    0}.plyr__progress__buffer::-webkit-progress-value{background:currentColor;border-radius:100px;min-width:5px;min-width:var(--plyr-range-track-height,5px);-webkit-transition:width
                    .2s ease;transition:width .2s
                    ease}.plyr__progress__buffer::-moz-progress-bar{background:currentColor;border-radius:100px;min-width:5px;min-width:var(--plyr-range-track-height,5px);-moz-transition:width
                    .2s ease;transition:width .2s
                    ease}.plyr__progress__buffer::-ms-fill{border-radius:100px;-ms-transition:width .2s
                    ease;transition:width .2s ease}.plyr--loading .plyr__progress__buffer{animation:plyr-progress 1s
                    linear infinite;background-image:linear-gradient(-45deg,rgba(35,40,47,.6) 25%,transparent
                    25%,transparent 50%,rgba(35,40,47,.6) 50%,rgba(35,40,47,.6) 75%,transparent
                    75%,transparent);background-image:linear-gradient(-45deg,var(--plyr-progress-loading-background,rgba(35,40,47,.6))
                    25%,transparent 25%,transparent 50%,var(--plyr-progress-loading-background,rgba(35,40,47,.6))
                    50%,var(--plyr-progress-loading-background,rgba(35,40,47,.6)) 75%,transparent
                    75%,transparent);background-repeat:repeat-x;background-size:25px
                    25px;background-size:var(--plyr-progress-loading-size,25px)
                    var(--plyr-progress-loading-size,25px);color:transparent}.plyr--video.plyr--loading
                    .plyr__progress__buffer{background-color:rgba(255,255,255,.25);background-color:var(--plyr-video-progress-buffered-background,rgba(255,255,255,.25))}.plyr--audio.plyr--loading
                    .plyr__progress__buffer{background-color:rgba(193,200,209,.6);background-color:var(--plyr-audio-progress-buffered-background,rgba(193,200,209,.6))}.plyr__volume{align-items:center;display:flex;max-width:110px;min-width:80px;position:relative;width:20%}.plyr__volume
                    input[type=range]{margin-left:calc(10px / 2);margin-left:calc(var(--plyr-control-spacing,10px)/
                    2);margin-right:calc(10px / 2);margin-right:calc(var(--plyr-control-spacing,10px)/
                    2);position:relative;z-index:2}.plyr--is-ios
                    .plyr__volume{min-width:0;width:auto}.plyr--audio{display:block}.plyr--audio
                    .plyr__controls{background:#fff;background:var(--plyr-audio-controls-background,#fff);border-radius:inherit;color:#4a5464;color:var(--plyr-audio-control-color,#4a5464);padding:10px;padding:var(--plyr-control-spacing,10px)}.plyr--audio
                    .plyr__control.plyr__tab-focus,.plyr--audio .plyr__control:hover,.plyr--audio
                    .plyr__control[aria-expanded=true]{background:#00b3ff;background:var(--plyr-audio-control-background-hover,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));color:#fff;color:var(--plyr-audio-control-color-hover,#fff)}.plyr--full-ui.plyr--audio
                    input[type=range]::-webkit-slider-runnable-track{background-color:rgba(193,200,209,.6);background-color:var(--plyr-audio-range-track-background,var(--plyr-audio-progress-buffered-background,rgba(193,200,209,.6)))}.plyr--full-ui.plyr--audio
                    input[type=range]::-moz-range-track{background-color:rgba(193,200,209,.6);background-color:var(--plyr-audio-range-track-background,var(--plyr-audio-progress-buffered-background,rgba(193,200,209,.6)))}.plyr--full-ui.plyr--audio
                    input[type=range]::-ms-track{background-color:rgba(193,200,209,.6);background-color:var(--plyr-audio-range-track-background,var(--plyr-audio-progress-buffered-background,rgba(193,200,209,.6)))}.plyr--full-ui.plyr--audio
                    input[type=range]:active::-webkit-slider-thumb{box-shadow:0 1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2),0 0 0 3px rgba(35,40,47,.1);box-shadow:var(--plyr-range-thumb-shadow,0 1px 1px
                    rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2)),0 0 0
                    var(--plyr-range-thumb-active-shadow-width,3px)
                    var(--plyr-audio-range-thumb-active-shadow-color,rgba(35,40,47,.1))}.plyr--full-ui.plyr--audio
                    input[type=range]:active::-moz-range-thumb{box-shadow:0 1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2),0 0 0 3px rgba(35,40,47,.1);box-shadow:var(--plyr-range-thumb-shadow,0 1px 1px
                    rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2)),0 0 0
                    var(--plyr-range-thumb-active-shadow-width,3px)
                    var(--plyr-audio-range-thumb-active-shadow-color,rgba(35,40,47,.1))}.plyr--full-ui.plyr--audio
                    input[type=range]:active::-ms-thumb{box-shadow:0 1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2),0 0 0 3px rgba(35,40,47,.1);box-shadow:var(--plyr-range-thumb-shadow,0 1px 1px
                    rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2)),0 0 0
                    var(--plyr-range-thumb-active-shadow-width,3px)
                    var(--plyr-audio-range-thumb-active-shadow-color,rgba(35,40,47,.1))}.plyr--audio
                    .plyr__progress__buffer{color:rgba(193,200,209,.6);color:var(--plyr-audio-progress-buffered-background,rgba(193,200,209,.6))}.plyr--video{background:#000;overflow:hidden}.plyr--video.plyr--menu-open{overflow:visible}.plyr__video-wrapper{background:#000;height:100%;margin:auto;overflow:hidden;position:relative;width:100%}.plyr__video-embed,.plyr__video-wrapper--fixed-ratio{height:0;padding-bottom:56.25%}.plyr__video-embed
                    iframe,.plyr__video-wrapper--fixed-ratio
                    video{border:0;left:0;position:absolute;top:0}.plyr--full-ui
                    .plyr__video-embed>.plyr__video-embed__container{padding-bottom:240%;position:relative;transform:translateY(-38.28125%)}.plyr--video
                    .plyr__controls{background:linear-gradient(rgba(0,0,0,0),rgba(0,0,0,.75));background:var(--plyr-video-controls-background,linear-gradient(rgba(0,0,0,0),rgba(0,0,0,.75)));border-bottom-left-radius:inherit;border-bottom-right-radius:inherit;bottom:0;color:#fff;color:var(--plyr-video-control-color,#fff);left:0;padding:calc(10px
                    / 2);padding:calc(var(--plyr-control-spacing,10px)/ 2);padding-top:calc(10px *
                    2);padding-top:calc(var(--plyr-control-spacing,10px) *
                    2);position:absolute;right:0;transition:opacity .4s ease-in-out,transform .4s
                    ease-in-out;z-index:3}@media (min-width:480px){.plyr--video
                    .plyr__controls{padding:10px;padding:var(--plyr-control-spacing,10px);padding-top:calc(10px *
                    3.5);padding-top:calc(var(--plyr-control-spacing,10px) * 3.5)}}.plyr--video.plyr--hide-controls
                    .plyr__controls{opacity:0;pointer-events:none;transform:translateY(100%)}.plyr--video
                    .plyr__control.plyr__tab-focus,.plyr--video .plyr__control:hover,.plyr--video
                    .plyr__control[aria-expanded=true]{background:#00b3ff;background:var(--plyr-video-control-background-hover,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));color:#fff;color:var(--plyr-video-control-color-hover,#fff)}.plyr__control--overlaid{background:#00b3ff;background:var(--plyr-video-control-background-hover,var(--plyr-color-main,var(--plyr-color-main,#00b3ff)));border:0;border-radius:100%;color:#fff;color:var(--plyr-video-control-color,#fff);display:none;left:50%;opacity:.9;padding:calc(10px
                    * 1.5);padding:calc(var(--plyr-control-spacing,10px) *
                    1.5);position:absolute;top:50%;transform:translate(-50%,-50%);transition:.3s;z-index:2}.plyr__control--overlaid
                    svg{left:2px;position:relative}.plyr__control--overlaid:focus,.plyr__control--overlaid:hover{opacity:1}.plyr--playing
                    .plyr__control--overlaid{opacity:0;visibility:hidden}.plyr--full-ui.plyr--video
                    .plyr__control--overlaid{display:block}.plyr--full-ui.plyr--video
                    input[type=range]::-webkit-slider-runnable-track{background-color:rgba(255,255,255,.25);background-color:var(--plyr-video-range-track-background,var(--plyr-video-progress-buffered-background,rgba(255,255,255,.25)))}.plyr--full-ui.plyr--video
                    input[type=range]::-moz-range-track{background-color:rgba(255,255,255,.25);background-color:var(--plyr-video-range-track-background,var(--plyr-video-progress-buffered-background,rgba(255,255,255,.25)))}.plyr--full-ui.plyr--video
                    input[type=range]::-ms-track{background-color:rgba(255,255,255,.25);background-color:var(--plyr-video-range-track-background,var(--plyr-video-progress-buffered-background,rgba(255,255,255,.25)))}.plyr--full-ui.plyr--video
                    input[type=range]:active::-webkit-slider-thumb{box-shadow:0 1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2),0 0 0 3px rgba(255,255,255,.5);box-shadow:var(--plyr-range-thumb-shadow,0 1px 1px
                    rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2)),0 0 0
                    var(--plyr-range-thumb-active-shadow-width,3px)
                    var(--plyr-audio-range-thumb-active-shadow-color,rgba(255,255,255,.5))}.plyr--full-ui.plyr--video
                    input[type=range]:active::-moz-range-thumb{box-shadow:0 1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2),0 0 0 3px rgba(255,255,255,.5);box-shadow:var(--plyr-range-thumb-shadow,0 1px 1px
                    rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2)),0 0 0
                    var(--plyr-range-thumb-active-shadow-width,3px)
                    var(--plyr-audio-range-thumb-active-shadow-color,rgba(255,255,255,.5))}.plyr--full-ui.plyr--video
                    input[type=range]:active::-ms-thumb{box-shadow:0 1px 1px rgba(35,40,47,.15),0 0 0 1px
                    rgba(35,40,47,.2),0 0 0 3px rgba(255,255,255,.5);box-shadow:var(--plyr-range-thumb-shadow,0 1px 1px
                    rgba(35,40,47,.15),0 0 0 1px rgba(35,40,47,.2)),0 0 0
                    var(--plyr-range-thumb-active-shadow-width,3px)
                    var(--plyr-audio-range-thumb-active-shadow-color,rgba(255,255,255,.5))}.plyr--video
                    .plyr__progress__buffer{color:rgba(255,255,255,.25);color:var(--plyr-video-progress-buffered-background,rgba(255,255,255,.25))}.plyr:-webkit-full-screen{background:#000;border-radius:0!important;height:100%;margin:0;width:100%}.plyr:-ms-fullscreen{background:#000;border-radius:0!important;height:100%;margin:0;width:100%}.plyr:fullscreen{background:#000;border-radius:0!important;height:100%;margin:0;width:100%}.plyr:-webkit-full-screen
                    video{height:100%}.plyr:-ms-fullscreen video{height:100%}.plyr:fullscreen
                    video{height:100%}.plyr:-webkit-full-screen
                    .plyr__video-wrapper{height:100%;position:static}.plyr:-ms-fullscreen
                    .plyr__video-wrapper{height:100%;position:static}.plyr:fullscreen
                    .plyr__video-wrapper{height:100%;position:static}.plyr:-webkit-full-screen.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr:-ms-fullscreen.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr:fullscreen.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr:-webkit-full-screen .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr:-ms-fullscreen .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr:fullscreen .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr:-webkit-full-screen .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr:-ms-fullscreen .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr:fullscreen .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr:-webkit-full-screen.plyr--hide-controls{cursor:none}.plyr:-ms-fullscreen.plyr--hide-controls{cursor:none}.plyr:fullscreen.plyr--hide-controls{cursor:none}@media
                    (min-width:1024px){.plyr:-webkit-full-screen
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}.plyr:-ms-fullscreen
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}.plyr:fullscreen
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}}.plyr:-webkit-full-screen{background:#000;border-radius:0!important;height:100%;margin:0;width:100%}.plyr:-webkit-full-screen
                    video{height:100%}.plyr:-webkit-full-screen
                    .plyr__video-wrapper{height:100%;position:static}.plyr:-webkit-full-screen.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr:-webkit-full-screen .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr:-webkit-full-screen .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr:-webkit-full-screen.plyr--hide-controls{cursor:none}@media
                    (min-width:1024px){.plyr:-webkit-full-screen
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}}.plyr:-moz-full-screen{background:#000;border-radius:0!important;height:100%;margin:0;width:100%}.plyr:-moz-full-screen
                    video{height:100%}.plyr:-moz-full-screen
                    .plyr__video-wrapper{height:100%;position:static}.plyr:-moz-full-screen.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr:-moz-full-screen .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr:-moz-full-screen .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr:-moz-full-screen.plyr--hide-controls{cursor:none}@media
                    (min-width:1024px){.plyr:-moz-full-screen
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}}.plyr:-ms-fullscreen{background:#000;border-radius:0!important;height:100%;margin:0;width:100%}.plyr:-ms-fullscreen
                    video{height:100%}.plyr:-ms-fullscreen
                    .plyr__video-wrapper{height:100%;position:static}.plyr:-ms-fullscreen.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr:-ms-fullscreen .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr:-ms-fullscreen .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr:-ms-fullscreen.plyr--hide-controls{cursor:none}@media
                    (min-width:1024px){.plyr:-ms-fullscreen
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}}.plyr--fullscreen-fallback{background:#000;border-radius:0!important;height:100%;margin:0;width:100%;bottom:0;display:block;left:0;position:fixed;right:0;top:0;z-index:10000000}.plyr--fullscreen-fallback
                    video{height:100%}.plyr--fullscreen-fallback
                    .plyr__video-wrapper{height:100%;position:static}.plyr--fullscreen-fallback.plyr--vimeo
                    .plyr__video-wrapper{height:0;position:relative}.plyr--fullscreen-fallback .plyr__control
                    .icon--exit-fullscreen{display:block}.plyr--fullscreen-fallback .plyr__control
                    .icon--exit-fullscreen+svg{display:none}.plyr--fullscreen-fallback.plyr--hide-controls{cursor:none}@media
                    (min-width:1024px){.plyr--fullscreen-fallback
                    .plyr__captions{font-size:21px;font-size:var(--plyr-font-size-xlarge,21px)}}.plyr__ads{border-radius:inherit;bottom:0;cursor:pointer;left:0;overflow:hidden;position:absolute;right:0;top:0;z-index:-1}.plyr__ads>div,.plyr__ads>div
                    iframe{height:100%;position:absolute;width:100%}.plyr__ads::after{background:#23282f;border-radius:2px;bottom:10px;bottom:var(--plyr-control-spacing,10px);color:#fff;content:attr(data-badge-text);font-size:11px;padding:2px
                    6px;pointer-events:none;position:absolute;right:10px;right:var(--plyr-control-spacing,10px);z-index:3}.plyr__ads::after:empty{display:none}.plyr__cues{background:currentColor;display:block;height:5px;height:var(--plyr-range-track-height,5px);left:0;margin:-var(--plyr-range-track-height,5px)/2
                    0
                    0;opacity:.8;position:absolute;top:50%;width:3px;z-index:3}.plyr__preview-thumb{background-color:rgba(255,255,255,.9);background-color:var(--plyr-tooltip-background,rgba(255,255,255,.9));border-radius:3px;bottom:100%;box-shadow:0
                    1px 2px rgba(0,0,0,.15);box-shadow:var(--plyr-tooltip-shadow,0 1px 2px
                    rgba(0,0,0,.15));margin-bottom:calc(calc(10px / 2) *
                    2);margin-bottom:calc(calc(var(--plyr-control-spacing,10px)/ 2) *
                    2);opacity:0;padding:3px;padding:var(--plyr-tooltip-radius,3px);pointer-events:none;position:absolute;transform:translate(0,10px)
                    scale(.8);transform-origin:50% 100%;transition:transform .2s .1s ease,opacity .2s .1s
                    ease;z-index:2}.plyr__preview-thumb--is-shown{opacity:1;transform:translate(0,0)
                    scale(1)}.plyr__preview-thumb::before{border-left:4px solid
                    transparent;border-left:var(--plyr-tooltip-arrow-size,4px) solid transparent;border-right:4px solid
                    transparent;border-right:var(--plyr-tooltip-arrow-size,4px) solid transparent;border-top:4px solid
                    rgba(255,255,255,.9);border-top:var(--plyr-tooltip-arrow-size,4px) solid
                    var(--plyr-tooltip-background,rgba(255,255,255,.9));bottom:calc(4px *
                    -1);bottom:calc(var(--plyr-tooltip-arrow-size,4px) *
                    -1);content:'';height:0;left:50%;position:absolute;transform:translateX(-50%);width:0;z-index:2}.plyr__preview-thumb__image-container{background:#c1c8d1;border-radius:calc(3px
                    - 1px);border-radius:calc(var(--plyr-tooltip-radius,3px) -
                    1px);overflow:hidden;position:relative;z-index:0}.plyr__preview-thumb__image-container
                    img{height:100%;left:0;max-height:none;max-width:none;position:absolute;top:0;width:100%}.plyr__preview-thumb__time-container{bottom:6px;left:0;position:absolute;right:0;white-space:nowrap;z-index:3}.plyr__preview-thumb__time-container
                    span{background-color:rgba(0,0,0,.55);border-radius:calc(3px -
                    1px);border-radius:calc(var(--plyr-tooltip-radius,3px) -
                    1px);color:#fff;font-size:13px;font-size:var(--plyr-font-size-time,var(--plyr-font-size-small,13px));padding:3px
                    6px}.plyr__preview-scrubbing{bottom:0;filter:blur(1px);height:100%;left:0;margin:auto;opacity:0;overflow:hidden;pointer-events:none;position:absolute;right:0;top:0;transition:opacity
                    .3s ease;width:100%;z-index:1}.plyr__preview-scrubbing--is-shown{opacity:1}.plyr__preview-scrubbing
                    img{height:100%;left:0;max-height:none;max-width:none;object-fit:contain;position:absolute;top:0;width:100%}.plyr--no-transition{transition:none!important}.plyr__sr-only{clip:rect(1px,1px,1px,1px);overflow:hidden;border:0!important;height:1px!important;padding:0!important;position:absolute!important;width:1px!important}.plyr
                    [hidden]{display:none!important}
                </style>
                <style>
                    a[data-v-b9160276] {
                    display: block;
                    width: 15px;
                    height: 15px;
                    border-radius: 15px;
                    }
                </style>
                <style>
                    .flagIcon[data-v-e2641e9a] {
                    width: 3em;
                    height: 2em;
                    }
                </style>
                <style><xsl:value-of select="unparsed-entity-uri('../css/demo.css')"/></style>
                <style type="text/css">iframe#_hjRemoteVarsFrame {display: none !important; width: 1px !important;
                    height: 1px !important; opacity: 0 !important; pointer-events: none !important;}
                </style>
            </head>
            <body class=" ">
                <div id="sprite-plyr" hidden=""><!--?xml version="1.0" encoding="UTF-8"?-->
                    <svg xmlns="http://www.w3.org/2000/svg" xlink="http://www.w3.org/1999/xlink">
                        <symbol id="plyr-airplay" viewBox="0 0 18 18">
                            <path d="M16 1H2a1 1 0 00-1 1v10a1 1 0 001 1h3v-2H3V3h12v8h-2v2h3a1 1 0 001-1V2a1 1 0 00-1-1z"></path>
                            <path d="M4 17h10l-5-6z"></path>
                        </symbol>
                        <symbol id="plyr-captions-off" viewBox="0 0 18 18">
                            <path d="M1 1c-.6 0-1 .4-1 1v11c0 .6.4 1 1 1h4.6l2.7 2.7c.2.2.4.3.7.3.3 0 .5-.1.7-.3l2.7-2.7H17c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1H1zm4.52 10.15c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41C8.47 4.96 7.46 3.76 5.5 3.76c-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69zm7.57 0c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41c-.28-1.15-1.29-2.35-3.25-2.35-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69z"
                                  fill-rule="evenodd" fill-opacity=".5"></path>
                        </symbol>
                        <symbol id="plyr-captions-on" viewBox="0 0 18 18">
                            <path d="M1 1c-.6 0-1 .4-1 1v11c0 .6.4 1 1 1h4.6l2.7 2.7c.2.2.4.3.7.3.3 0 .5-.1.7-.3l2.7-2.7H17c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1H1zm4.52 10.15c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41C8.47 4.96 7.46 3.76 5.5 3.76c-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69zm7.57 0c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41c-.28-1.15-1.29-2.35-3.25-2.35-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69z"
                                  fill-rule="evenodd"></path>
                        </symbol>
                        <symbol id="plyr-download" viewBox="0 0 18 18">
                            <path d="M9 13c.3 0 .5-.1.7-.3L15.4 7 14 5.6l-4 4V1H8v8.6l-4-4L2.6 7l5.7 5.7c.2.2.4.3.7.3zm-7 2h14v2H2z"></path>
                        </symbol>
                        <symbol id="plyr-enter-fullscreen" viewBox="0 0 18 18">
                            <path d="M10 3h3.6l-4 4L11 8.4l4-4V8h2V1h-7zM7 9.6l-4 4V10H1v7h7v-2H4.4l4-4z"></path>
                        </symbol>
                        <symbol id="plyr-exit-fullscreen" viewBox="0 0 18 18">
                            <path d="M1 12h3.6l-4 4L2 17.4l4-4V17h2v-7H1zM16 .6l-4 4V1h-2v7h7V6h-3.6l4-4z"></path>
                        </symbol>
                        <symbol id="plyr-fast-forward" viewBox="0 0 18 18">
                            <path d="M7.875 7.171L0 1v16l7.875-6.171V17L18 9 7.875 1z"></path>
                        </symbol>
                        <symbol id="plyr-logo-vimeo" viewBox="0 0 18 18">
                            <path d="M17 5.3c-.1 1.6-1.2 3.7-3.3 6.4-2.2 2.8-4 4.2-5.5 4.2-.9 0-1.7-.9-2.4-2.6C5 10.9 4.4 6 3 6c-.1 0-.5.3-1.2.8l-.8-1c.8-.7 3.5-3.4 4.7-3.5 1.2-.1 2 .7 2.3 2.5.3 2 .8 6.1 1.8 6.1.9 0 2.5-3.4 2.6-4 .1-.9-.3-1.9-2.3-1.1.8-2.6 2.3-3.8 4.5-3.8 1.7.1 2.5 1.2 2.4 3.3z"></path>
                        </symbol>
                        <symbol id="plyr-logo-youtube" viewBox="0 0 18 18">
                            <path d="M16.8 5.8c-.2-1.3-.8-2.2-2.2-2.4C12.4 3 9 3 9 3s-3.4 0-5.6.4C2 3.6 1.3 4.5 1.2 5.8 1 7.1 1 9 1 9s0 1.9.2 3.2c.2 1.3.8 2.2 2.2 2.4C5.6 15 9 15 9 15s3.4 0 5.6-.4c1.4-.3 2-1.1 2.2-2.4.2-1.3.2-3.2.2-3.2s0-1.9-.2-3.2zM7 12V6l5 3-5 3z"></path>
                        </symbol>
                        <symbol id="plyr-muted" viewBox="0 0 18 18">
                            <path d="M12.4 12.5l2.1-2.1 2.1 2.1 1.4-1.4L15.9 9 18 6.9l-1.4-1.4-2.1 2.1-2.1-2.1L11 6.9 13.1 9 11 11.1zM3.786 6.008H.714C.286 6.008 0 6.31 0 6.76v4.512c0 .452.286.752.714.752h3.072l4.071 3.858c.5.3 1.143 0 1.143-.602V2.752c0-.601-.643-.977-1.143-.601L3.786 6.008z"></path>
                        </symbol>
                        <symbol id="plyr-pause" viewBox="0 0 18 18">
                            <path d="M6 1H3c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h3c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1zm6 0c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h3c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1h-3z"></path>
                        </symbol>
                        <symbol id="plyr-pip" viewBox="0 0 18 18">
                            <path d="M13.293 3.293L7.022 9.564l1.414 1.414 6.271-6.271L17 7V1h-6z"></path>
                            <path d="M13 15H3V5h5V3H2a1 1 0 00-1 1v12a1 1 0 001 1h12a1 1 0 001-1v-6h-2v5z"></path>
                        </symbol>
                        <symbol id="plyr-play" viewBox="0 0 18 18">
                            <path d="M15.562 8.1L3.87.225c-.818-.562-1.87 0-1.87.9v15.75c0 .9 1.052 1.462 1.87.9L15.563 9.9c.584-.45.584-1.35 0-1.8z"></path>
                        </symbol>
                        <symbol id="plyr-restart" viewBox="0 0 18 18">
                            <path d="M9.7 1.2l.7 6.4 2.1-2.1c1.9 1.9 1.9 5.1 0 7-.9 1-2.2 1.5-3.5 1.5-1.3 0-2.6-.5-3.5-1.5-1.9-1.9-1.9-5.1 0-7 .6-.6 1.4-1.1 2.3-1.3l-.6-1.9C6 2.6 4.9 3.2 4 4.1 1.3 6.8 1.3 11.2 4 14c1.3 1.3 3.1 2 4.9 2 1.9 0 3.6-.7 4.9-2 2.7-2.7 2.7-7.1 0-9.9L16 1.9l-6.3-.7z"></path>
                        </symbol>
                        <symbol id="plyr-rewind" viewBox="0 0 18 18">
                            <path d="M10.125 1L0 9l10.125 8v-6.171L18 17V1l-7.875 6.171z"></path>
                        </symbol>
                        <symbol id="plyr-settings" viewBox="0 0 18 18">
                            <path d="M16.135 7.784a2 2 0 01-1.23-2.969c.322-.536.225-.998-.094-1.316l-.31-.31c-.318-.318-.78-.415-1.316-.094a2 2 0 01-2.969-1.23C10.065 1.258 9.669 1 9.219 1h-.438c-.45 0-.845.258-.997.865a2 2 0 01-2.969 1.23c-.536-.322-.999-.225-1.317.093l-.31.31c-.318.318-.415.781-.093 1.317a2 2 0 01-1.23 2.969C1.26 7.935 1 8.33 1 8.781v.438c0 .45.258.845.865.997a2 2 0 011.23 2.969c-.322.536-.225.998.094 1.316l.31.31c.319.319.782.415 1.316.094a2 2 0 012.969 1.23c.151.607.547.865.997.865h.438c.45 0 .845-.258.997-.865a2 2 0 012.969-1.23c.535.321.997.225 1.316-.094l.31-.31c.318-.318.415-.781.094-1.316a2 2 0 011.23-2.969c.607-.151.865-.547.865-.997v-.438c0-.451-.26-.846-.865-.997zM9 12a3 3 0 110-6 3 3 0 010 6z"></path>
                        </symbol>
                        <symbol id="plyr-volume" viewBox="0 0 18 18">
                            <path d="M15.6 3.3c-.4-.4-1-.4-1.4 0-.4.4-.4 1 0 1.4C15.4 5.9 16 7.4 16 9c0 1.6-.6 3.1-1.8 4.3-.4.4-.4 1 0 1.4.2.2.5.3.7.3.3 0 .5-.1.7-.3C17.1 13.2 18 11.2 18 9s-.9-4.2-2.4-5.7z"></path>
                            <path d="M11.282 5.282a.909.909 0 000 1.316c.735.735.995 1.458.995 2.402 0 .936-.425 1.917-.995 2.487a.909.909 0 000 1.316c.145.145.636.262 1.018.156a.725.725 0 00.298-.156C13.773 11.733 14.13 10.16 14.13 9c0-.17-.002-.34-.011-.51-.053-.992-.319-2.005-1.522-3.208a.909.909 0 00-1.316 0zm-7.496.726H.714C.286 6.008 0 6.31 0 6.76v4.512c0 .452.286.752.714.752h3.072l4.071 3.858c.5.3 1.143 0 1.143-.602V2.752c0-.601-.643-.977-1.143-.601L3.786 6.008z"></path>
                        </symbol>
                    </svg>
                </div>

                <div id="arturia-app" class="theme-lab">
                    <div class="main-menu">
                        <div class="slide-down-event"></div>
                        <nav class="navbar p-md-0 fixed-top navbar-expand-sm">
                            <button type="button" aria-label="Toggle navigation" class="navbar-toggler collapsed"
                                    aria-expanded="false" aria-controls="nav-collapse" style="overflow-anchor: none;">
                                <span></span>
                                <span></span>
                            </button>
                            <a href="https://www.arturia.com/" target="_self" class="navbar-brand positon-md-absolute">
                                <div class="the-logo ml-sm-2 ml-md-0">
                                    <div class="d-inline d-md-none">
                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//logo-black.svg"
                                             alt="ARTURIA"
                                             class="mobile-logo"/>
                                    </div>
                                    <div class="btn btn-primary d-none d-md-block">
                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//logo-full.svg"
                                             alt="ARTURIA"/>
                                    </div>
                                </div>
                            </a>
                            <li aria-placeholder="Profile" right=""
                                class="nav-item d-block d-sm-none mobile-right-icones profile nav-icon">
                                <a href="#" target="_self" class="nav-link">
                                    <i class="icon icon-user"></i>
                                </a>
                            </li>
                            <li right="" class="nav-item d-block d-sm-none mobile-right-icones cart nav-icon">
                                <a href="https://www.arturia.com/buy/cart" target="_self" class="nav-link"><!---->
                                    <i class="icon icon-cart"></i>
                                </a>
                            </li>
                            <div id="nav-collapse" class="mw-100 navbar-collapse collapse" style="display: none;">
                                <ul class="navbar-nav main-items flex-row mw-100 ml-auto mr-auto">
                                    <li class="nav-item main-item active">
                                        <a href="#" target="_self" class="nav-link">
                                            _Products
                                        </a>
                                    </li>
                                    <li class="nav-item main-item">
                                        <a href="https://www.arturia.com/sounds" target="_self" class="nav-link">
                                            _Sounds
                                        </a>
                                    </li>
                                    <li class="nav-item main-item">
                                        <a href="https://www.arturia.com/community" target="_self" class="nav-link">
                                            _Community
                                        </a>
                                    </li>
                                    <li class="nav-item main-item">
                                        <a href="https://www.arturia.com/support" target="_self" class="nav-link">
                                            _Support
                                        </a>
                                    </li>
                                </ul>
                                <ul class="navbar-nav d-none d-sm-flex icones-right">
                                    <button aria-placeholder="Profile" right="" class="profile nav-icon"><!---->
                                        <i class="icon icon-user"></i>
                                    </button> <!---->
                                    <li right="" aria-placeholder="Cart" class="nav-item cart nav-icon">
                                        <a href="https://www.arturia.com/buy/cart" target="_self"
                                           class="nav-link"><!---->
                                            <i class="icon icon-cart"></i>
                                        </a>
                                    </li>
                                    <div class="navbar__search">
                                        <button right="" aria-placeholder="Search"
                                                class="navbar__search-btn search nav-icon">
                                            <i class="icon icon-search"></i>
                                        </button>
                                        <input type="text" placeholder="Search..." class="navbar__search-input"/>
                                    </div>
                                </ul>
                                <div class="navbar-mobile__tabs">
                                    <input id="tab-1" type="radio" name="tab" checked="checked"/>
                                    <span>Categories</span>
                                    <input id="tab-2" type="radio" name="tab"/>
                                    <span>Collections</span>
                                    <div class="line"></div>
                                    <div class="line-gray"></div>
                                    <div class="navbar-mobile__tabs-content">
                                        <section id="tab-item-1" class="navbar-mobile__tabs-section">
                                            <a href="https://www.arturia.com/products#hardware-synths" class="sub-link">
                                                Hardware Synthesizers
                                            </a>
                                            <a href="https://www.arturia.com/products#hybrid-synths" class="sub-link">
                                                Controllers
                                            </a>
                                            <a href="https://www.arturia.com/products#audio" class="sub-link">Audio</a>
                                            <a href="https://www.arturia.com/products#software-instruments,software-instruments-effects"
                                               class="sub-link">Software Instruments
                                            </a>
                                            <a href="https://www.arturia.com/products#software-effects,software-instruments-effects"
                                               class="sub-link">Software Effects
                                            </a>
                                            <a href="https://www.arturia.com/products#ipad-synths,drums"
                                               class="sub-link">
                                                Other
                                            </a>
                                            <a href="https://www.arturia.com/products#" class="sub-link special-link">
                                                All
                                                Products
                                            </a>
                                        </section>
                                        <section id="tab-item-2" class="navbar-mobile__tabs-section">
                                            <div class="secondary-menu-items">
                                                <a href="https://www.arturia.com/ranges/lab"
                                                   class="secondary-menu-item">
                                                    <div class="secondary-menu-item__image-wrapper">
                                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//menu5.png"
                                                             alt="lab" class="secondary-menu-item__image"/>
                                                        <div class="secondary-menu-item__color bg-lab"></div>
                                                    </div>
                                                    <div class="secondary-menu-item__title">Lab</div>
                                                    <div class="secondary-menu-item__description">Integrated Software
                                                        and
                                                        MIDI Controllers
                                                    </div>
                                                </a>
                                                <a href="https://www.arturia.com/ranges/brute"
                                                   class="secondary-menu-item">
                                                    <div class="secondary-menu-item__image-wrapper">
                                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//menu1.png"
                                                             alt="brute" class="secondary-menu-item__image"/>
                                                        <div class="secondary-menu-item__color bg-brute"></div>
                                                    </div>
                                                    <div class="secondary-menu-item__title">Brute</div>
                                                    <div class="secondary-menu-item__description">Raw Analog
                                                        Synthesizers
                                                    </div>
                                                </a>
                                                <a href="https://www.arturia.com/ranges/freak"
                                                   class="secondary-menu-item">
                                                    <div class="secondary-menu-item__image-wrapper">
                                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//menu2.png"
                                                             alt="freak" class="secondary-menu-item__image"/>
                                                        <div class="secondary-menu-item__color bg-freak"></div>
                                                    </div>
                                                    <div class="secondary-menu-item__title">Freak</div>
                                                    <div class="secondary-menu-item__description">Edgy Digital
                                                        Synthesizers
                                                    </div>
                                                </a>
                                                <a href="https://www.arturia.com/ranges/step"
                                                   class="secondary-menu-item">
                                                    <div class="secondary-menu-item__image-wrapper">
                                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//menu3.png"
                                                             alt="step" class="secondary-menu-item__image"/>
                                                        <div class="secondary-menu-item__color bg-step"></div>
                                                    </div>
                                                    <div class="secondary-menu-item__title">Step</div>
                                                    <div class="secondary-menu-item__description">Universal Sequencing
                                                        Controllers
                                                    </div>
                                                </a>
                                                <a href="https://www.arturia.com/ranges/fuse"
                                                   class="secondary-menu-item">
                                                    <div class="secondary-menu-item__image-wrapper">
                                                        <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//menu4.png"
                                                             alt="fuse" class="secondary-menu-item__image"/>
                                                        <div class="secondary-menu-item__color bg-fuse"></div>
                                                    </div>
                                                    <div class="secondary-menu-item__title">Fuse</div>
                                                    <div class="secondary-menu-item__description">Audio Interfaces and
                                                        Effects
                                                    </div>
                                                </a>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                                <div class="navbar-mobile__footer">
                                    <div class="navbar-mobile__footer-search">
                                        <input type="text" placeholder="Search arturia.com"
                                               class="navbar-mobile__footer-search-input"/>
                                        <button class="navbar-mobile__footer-search-btn"></button>
                                    </div>
                                    <button class="navbar-mobile__footer-link">
                                        Login or sign-up
                                    </button>
                                </div>
                            </div>
                        </nav> <!----> <!---->
                    </div>
                    <div role="side-left" class="side-left"></div>
                    <div id="main-content" role="main-content" class="main-content">
                        <div id="ASL" style="display: none;">
                            <script type="application/javascript">
                                window.ASL =
                                {"page":{"isProductPage":true,"isProductList":false,"isFamilyPage":false,"isRangePage":false,"families":null,"k2martItem":false,"isBuyable":true,"demo_url_link":"","offer_available":false,"check_your_offer_text":"","products":[],"item_category":"V-Collection","item_alias":"v-collection","item_title":"V-Collection
                                - V Collection
                                9","category_alias":"software-instruments","multiterms_available":true},"product_list":[{"product_id":"550","product_sku":"v-collection","product_slug":"v-collection","product_generation":"9","product_name":"V
                                Collection 9","display_name":"V Collection
                                9","product_type":"SoftwareBundle","product_sub_type":null,"product_category":"","product_family":"v-collection","product_range":"Lab","product_price":"","product_gamme":"","store_link":"store\/software-instruments\/v-collection","iTunesProduct":false,"product_options":{"licensable":"1","downloadable":"1","demoable":"0","registrable":"1","rentable":"1","multiterms_elligible":"1","reactivable":"1","endorsable":"1","buyable":"1","is_pack":"0","bundle":"1","collection":"1","supported":"1","onstore":"1","protection":"ASC","discontinued":"0","product_generation":"9","hardware":"0"},"product_classification":"CO","category_alias":"software-instruments","offer_available":false}],"prices":{"550":{"us":{"default":"599","override":null,"use_override":"0"},"eu":{"default":"599","override":null,"use_override":"0"}}},"offers":[]};
                                window.ASL.user = {
                                name: "",
                                email: "",
                                currency: "eu",
                                country_iso2: "FR"
                                }
                                window.ASL.options = { /* feed: "me" */ };
                                window.ASL.data =
                                {"notices":[],"properties":{"holder":42},"artists62eb6d4e7a3cc":[{"name":"DJ
                                Sasha","band":"DJ \/ Producer","band_link":"","bio":"Sasha (born Alexander Paul Coe on 4
                                September 1969 in Bangor, Gwynedd, Wales) is a Welsh DJ and record producer. Sasha began
                                his
                                career playing acid house dance music in the late 1980s. He partnered with fellow DJ
                                John
                                Digweed in 1993, touring internationally and producing a series of mixes (compilations
                                of
                                other artists work played in a continuous fashion).","quote":"The V Collection is a big
                                part
                                of my on the road set up. Just the vast amount or brilliantly modeled synths at my
                                disposal
                                is amazing and played a big part in the recording of Scene Delete.","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/DJ_Sasha_2.jpg","photo_width":500,"photo_height":300,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/DJ_Sasha-thumb.jpg"},{"name":"Jean-Michel
                                Jarre","band":"Producer -
                                Composer","band_link":"www.jeanmicheljarre.com","bio":"Jean-Michel
                                Andr\u00e9 Jarre (born 24 August 1948) is a French composer, performer and music
                                producer.
                                He is highly regarded as one of the pioneers in the electronic, synthpop and New Age
                                genres,
                                as well as the organiser of record-breaking outdoor spectacles of his music, which
                                feature
                                laser displays and fireworks, linking music with the surrounding environment and
                                architecture.","quote":"All the synths made by Arturia have their own color and feel,
                                and
                                that's why they are so interesting. I've been using them all regularly for 10 years in
                                all
                                my works. They are now part of my sound palette.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Jean-Michel_Jarre.jpg","photo_width":"397","photo_height":"319","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Jean-Michel_Jarre-thumb.jpg"},{"name":"Disclosure","band":"","band_link":"","bio":"Disclosure
                                is an English electronic music duo consisting of brothers Howard and Guy Lawrence, who
                                create high energy dance anthems.","quote":"The V Collection is the best emulation of
                                the
                                real gear I have found. Every knob &amp; button is just where you would expect it to be.
                                It\u2019s a proper workhorse in my current template for synth bass &amp;
                                pads.","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Disclosure.jpg","photo_width":500,"photo_height":333,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Disclosure-thumb.jpg"},{"name":"Babyface","band":"Grammy
                                Awarded Producer","band_link":"","bio":"A record producer, songwriter, and singer who
                                has
                                won numerous Grammy Awards, Babyface has worked with Madonna, Chaka Khan, Lil Wayne,
                                P!nk,
                                any many more to reach chart success.","quote":"It's like taking a walk down memory
                                lane.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Babyface_2.jpg","photo_width":500,"photo_height":500,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Babyface-thumb.jpg"},{"name":"Philip
                                Morris Glass","band":"","band_link":"http:\/\/www.philipglass.com\/","bio":"Philip
                                Morris
                                Glass is an American composer. He is considered one of the most influential music makers
                                of
                                the late 20th century. His music is also often controversially described as minimal
                                music,
                                along with the work of the other \"major minimalists\" La\u00a0Monte Young, Terry Riley
                                and
                                Steve Reich.","quote":"V-Collection 5 has been an invaluable resource in recreating the
                                sounds we used in the original Philip Glass Ensemble pieces during the 70s and 80s. The
                                interface is easy to use and sounds just like the original units","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Philip_Glass.jpg","photo_width":500,"photo_height":403,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Philip_Glass-thumb.jpg"},{"name":"Marius
                                de Vries","band":"Composer (La La Land, Moulin Rouge)","band_link":"","bio":"Grammy
                                Award
                                film composer Marius de Vries has been behind some of the most culture-defining
                                recordings
                                and soundtracks of the past three decades, and has won two BAFTAs and an Ivor Novello
                                award
                                for his film composition work, as well a Grammy and five Grammy nominations for
                                soundtrack
                                and record production. He worked on films such as Moulin Rouge, Romeo + Juliet, La La
                                Land
                                and King Kong, as well as artists such as Annie Lennox, Massive Attack, and Madonna.
                                ","quote":"It's great to have this almost fully comprehensive collection of vintage
                                synths
                                available. For me, it's just tremendously exciting to have all of that stuff at your
                                fingertips, just to remind you of where it all came from.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Marius_de_Vries_2.jpg","photo_width":500,"photo_height":282,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Marius_de_Vries-thumb.jpg"},{"name":"Miss
                                Kittin","band":"DJ \/
                                Producer","band_link":"http:\/\/www.misskittin.com\/","bio":"Caroline
                                Herv\u00e9 (born 1973), better known by her stage name Miss Kittin, is a French
                                electronic
                                music DJ, singer, and songwriter. Since rising to prominence in 1998 for her singles
                                \"1982\" and \"Frank Sinatra\" with The Hacker, she has worked with other
                                music","quote":"This is a revolution because we can now create from anywhere with a
                                record
                                close to mythic instruments. And I am particularly proud that the company is from my
                                hometown.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Miss_Kittin.jpg","photo_width":"350","photo_height":"233","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Miss_Kittin-thumb.jpg"},{"name":"Jordan
                                Rudess","band":"Dream Theater","band_link":"http:\/\/jordanrudess.com\/","bio":"Jordan
                                Rudess (born November 4, 1956) is a progressive rock keyboardist best known as a member
                                of
                                the progressive metal band Dream Theater and the progressive rock supergroup Liquid
                                Tension
                                Experiment.","quote":"I gravitate toward the Arturia plugins because they really give me
                                the
                                feeling that I'm indeed playing with the instruments I grew up with.","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Jordan-Rudess.jpg","photo_width":"480","photo_height":"600","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Jordan-Rudess-thumb.jpg"},{"name":"Q-Tip","band":"Producer
                                - Composer","band_link":"http:\/\/www.myspace.com\/qtip","bio":"Legendary hip-hop
                                innovator
                                and Grammy award winner. Author of several solo albums, revered by peers in and outside
                                of
                                hip hop\u2019s tremendous orbit, Q-Tip\u2019s long list of collaborators includes
                                R.E.M.,
                                Nas, Will.I.Am., Mariah Carey, Busta hymes, Korn and Janet Jackson. Q-Tip won his first
                                Grammy in 2006 for Best Dance Recording for his featured appearance on the Chemical
                                Brothers\u2019 \u201cGalvanized.\u201d ","quote":"I am a stickler for the old synths so
                                much
                                that I have just about every keyboard of importance. Now with the V Collection, these
                                damn
                                keyboards are collecting dust!","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Q-Tip_2.jpg","photo_width":500,"photo_height":365,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Q-Tip-thumb.jpg"},{"name":"Steve
                                Porcaro","band":"Toto","band_link":"http:\/\/www.toto99.com\/","bio":"Steven Maxwell
                                \"Steve\" Porcaro (born 2 September 1957) is a keyboardist and composer who was an
                                original
                                member of the rock\/pop band, Toto.","quote":"Arturia instruments have been changing the
                                way
                                I work and changed my music. I'm a big fan of old synthesizers and Arturia Products are
                                really making my work flow. And the sounds that I have in my head, I'm now able to get
                                them
                                to live.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Steve_Porcaro.jpg","photo_width":"793","photo_height":"600","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Steve_Porcaro-thumb.jpg"}],"kakemonos":["\/images\/demo\/masonry-tall1.jpeg","\/images\/demo\/masonry-tall2.jpeg","\/images\/demo\/masonry-tall3.jpeg","\/images\/demo\/masonry-tall4.jpeg","\/images\/demo\/masonry-tall5.jpeg","\/images\/demo\/masonry-tall6.jpeg","\/images\/demo\/masonry-tall7.jpeg","\/images\/demo\/masonry-tall8.jpeg","\/images\/demo\/masonry-tall9.jpeg","\/images\/demo\/masonry-tall10.jpeg","\/images\/demo\/masonry-tall11.jpeg"],"press62eb6d4e7b888":[{"name":"Sound
                                On Sound","text":"The SEM V will be an excellent complement to other synths and soft
                                synths
                                - beautifully simple to use in the first instance, while offering greater depth when
                                you're
                                ready to take advantage of it. Oh yes, and then there's that sound !","product":"V
                                Collection 9"},{"name":"Sound On Sound","text":"An amazing range of instruments, you
                                won't
                                run out of things to do with them.\r\nThe new soft synths sound great and are far more
                                flexible than the original instruments.","product":"V Collection 9"},{"name":"Audio
                                MIDI","text":"Arturia has done it right. They've teamed up with Bob Moog, researched how
                                to
                                best emulate the sometimes quirky nature of analogue circuits via TAE, and had talented
                                artists and sound designers create some great patches.","product":"V Collection
                                9"},{"name":"Future Music","text":"All in all great sounding, versatile and- best of all
                                -
                                an absolute bargain.","product":"V Collection 9"},{"name":"Future Music","text":"V
                                Collection remains an impressive and good value package of classic
                                emulations.","product":"V
                                Collection 9"},{"name":"Future Music","text":"Arturia V Collection returns to the scene
                                again and puts an even higher quality bar that seems impossible to improve in each
                                incarnation. Here you will find retro passion, attention to detail, a respect for
                                history,
                                and features of sound visionaries...","product":"V Collection 9"},{"name":"Electronic
                                Musician","text":"V Collection 5 with updated browser and interface, plus five new and
                                highly desirable instruments. What\u2019s not to like?","product":"V Collection
                                9"},{"name":"The Techno File","text":"Arturia V Collection 7 is an absolute must-have.
                                It
                                puts realistic recreations of some of the world's must lusted after synths, samplers,
                                and
                                keyboard instruments at your fingertips, for a bargain price. With these latest
                                additions
                                and updates, the best just got even better.","product":"V Collection
                                9"},{"name":"Keyboard
                                Magazine","text":"Arturia\u2019s aim is true... to create the tools that lend a helping
                                hand
                                to today\u2019s musicians, taking inspiration from the past to (re)invent the music of
                                tomorrow.","product":"V Collection 9"},{"name":"Music Mart Magazine","text":"Prophet V
                                is a
                                worthy addition to the roster of Arturia soft synths. It authentically imitates the
                                originals while going beyond their limitations with up to 32 voice polyphony, decent
                                chorus\/delay effects and the endless potential of hybridising Prophet 5 and Prophet VS
                                sounds.","product":"V Collection 9"}],"artists62eb6d4e80752":[{"name":"DJ
                                Sasha","band":"DJ
                                \/ Producer","band_link":"","bio":"Sasha (born Alexander Paul Coe on 4 September 1969 in
                                Bangor, Gwynedd, Wales) is a Welsh DJ and record producer. Sasha began his career
                                playing
                                acid house dance music in the late 1980s. He partnered with fellow DJ John Digweed in
                                1993,
                                touring internationally and producing a series of mixes (compilations of other artists
                                work
                                played in a continuous fashion).","quote":"The V Collection is a big part of my on the
                                road
                                set up. Just the vast amount or brilliantly modeled synths at my disposal is amazing and
                                played a big part in the recording of Scene Delete.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/DJ_Sasha_2.jpg","photo_width":500,"photo_height":300,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/DJ_Sasha-thumb.jpg"},{"name":"Jean-Michel
                                Jarre","band":"Producer -
                                Composer","band_link":"www.jeanmicheljarre.com","bio":"Jean-Michel
                                Andr\u00e9 Jarre (born 24 August 1948) is a French composer, performer and music
                                producer.
                                He is highly regarded as one of the pioneers in the electronic, synthpop and New Age
                                genres,
                                as well as the organiser of record-breaking outdoor spectacles of his music, which
                                feature
                                laser displays and fireworks, linking music with the surrounding environment and
                                architecture.","quote":"All the synths made by Arturia have their own color and feel,
                                and
                                that's why they are so interesting. I've been using them all regularly for 10 years in
                                all
                                my works. They are now part of my sound palette.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Jean-Michel_Jarre.jpg","photo_width":"397","photo_height":"319","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Jean-Michel_Jarre-thumb.jpg"},{"name":"Disclosure","band":"","band_link":"","bio":"Disclosure
                                is an English electronic music duo consisting of brothers Howard and Guy Lawrence, who
                                create high energy dance anthems.","quote":"The V Collection is the best emulation of
                                the
                                real gear I have found. Every knob &amp; button is just where you would expect it to be.
                                It\u2019s a proper workhorse in my current template for synth bass &amp;
                                pads.","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Disclosure.jpg","photo_width":500,"photo_height":333,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Disclosure-thumb.jpg"},{"name":"Babyface","band":"Grammy
                                Awarded Producer","band_link":"","bio":"A record producer, songwriter, and singer who
                                has
                                won numerous Grammy Awards, Babyface has worked with Madonna, Chaka Khan, Lil Wayne,
                                P!nk,
                                any many more to reach chart success.","quote":"It's like taking a walk down memory
                                lane.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Babyface_2.jpg","photo_width":500,"photo_height":500,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Babyface-thumb.jpg"},{"name":"Philip
                                Morris Glass","band":"","band_link":"http:\/\/www.philipglass.com\/","bio":"Philip
                                Morris
                                Glass is an American composer. He is considered one of the most influential music makers
                                of
                                the late 20th century. His music is also often controversially described as minimal
                                music,
                                along with the work of the other \"major minimalists\" La\u00a0Monte Young, Terry Riley
                                and
                                Steve Reich.","quote":"V-Collection 5 has been an invaluable resource in recreating the
                                sounds we used in the original Philip Glass Ensemble pieces during the 70s and 80s. The
                                interface is easy to use and sounds just like the original units","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Philip_Glass.jpg","photo_width":500,"photo_height":403,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Philip_Glass-thumb.jpg"},{"name":"Marius
                                de Vries","band":"Composer (La La Land, Moulin Rouge)","band_link":"","bio":"Grammy
                                Award
                                film composer Marius de Vries has been behind some of the most culture-defining
                                recordings
                                and soundtracks of the past three decades, and has won two BAFTAs and an Ivor Novello
                                award
                                for his film composition work, as well a Grammy and five Grammy nominations for
                                soundtrack
                                and record production. He worked on films such as Moulin Rouge, Romeo + Juliet, La La
                                Land
                                and King Kong, as well as artists such as Annie Lennox, Massive Attack, and Madonna.
                                ","quote":"It's great to have this almost fully comprehensive collection of vintage
                                synths
                                available. For me, it's just tremendously exciting to have all of that stuff at your
                                fingertips, just to remind you of where it all came from.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Marius_de_Vries_2.jpg","photo_width":500,"photo_height":282,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Marius_de_Vries-thumb.jpg"},{"name":"Miss
                                Kittin","band":"DJ \/
                                Producer","band_link":"http:\/\/www.misskittin.com\/","bio":"Caroline
                                Herv\u00e9 (born 1973), better known by her stage name Miss Kittin, is a French
                                electronic
                                music DJ, singer, and songwriter. Since rising to prominence in 1998 for her singles
                                \"1982\" and \"Frank Sinatra\" with The Hacker, she has worked with other
                                music","quote":"This is a revolution because we can now create from anywhere with a
                                record
                                close to mythic instruments. And I am particularly proud that the company is from my
                                hometown.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Miss_Kittin.jpg","photo_width":"350","photo_height":"233","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Miss_Kittin-thumb.jpg"},{"name":"Jordan
                                Rudess","band":"Dream Theater","band_link":"http:\/\/jordanrudess.com\/","bio":"Jordan
                                Rudess (born November 4, 1956) is a progressive rock keyboardist best known as a member
                                of
                                the progressive metal band Dream Theater and the progressive rock supergroup Liquid
                                Tension
                                Experiment.","quote":"I gravitate toward the Arturia plugins because they really give me
                                the
                                feeling that I'm indeed playing with the instruments I grew up with.","product":"V
                                Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Jordan-Rudess.jpg","photo_width":"480","photo_height":"600","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Jordan-Rudess-thumb.jpg"},{"name":"Q-Tip","band":"Producer
                                - Composer","band_link":"http:\/\/www.myspace.com\/qtip","bio":"Legendary hip-hop
                                innovator
                                and Grammy award winner. Author of several solo albums, revered by peers in and outside
                                of
                                hip hop\u2019s tremendous orbit, Q-Tip\u2019s long list of collaborators includes
                                R.E.M.,
                                Nas, Will.I.Am., Mariah Carey, Busta hymes, Korn and Janet Jackson. Q-Tip won his first
                                Grammy in 2006 for Best Dance Recording for his featured appearance on the Chemical
                                Brothers\u2019 \u201cGalvanized.\u201d ","quote":"I am a stickler for the old synths so
                                much
                                that I have just about every keyboard of importance. Now with the V Collection, these
                                damn
                                keyboards are collecting dust!","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Q-Tip_2.jpg","photo_width":500,"photo_height":365,"photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Q-Tip-thumb.jpg"},{"name":"Steve
                                Porcaro","band":"Toto","band_link":"http:\/\/www.toto99.com\/","bio":"Steven Maxwell
                                \"Steve\" Porcaro (born 2 September 1957) is a keyboardist and composer who was an
                                original
                                member of the rock\/pop band, Toto.","quote":"Arturia instruments have been changing the
                                way
                                I work and changed my music. I'm a big fan of old synthesizers and Arturia Products are
                                really making my work flow. And the sounds that I have in my head, I'm now able to get
                                them
                                to live.","product":"V Collection
                                9","product_sku":"v-collection","image":"https:\/\/medias.arturia.net\/images\/artists\/Steve_Porcaro.jpg","photo_width":"793","photo_height":"600","photo_thumb":"https:\/\/medias.arturia.net\/images\/artists\/module\/Steve_Porcaro-thumb.jpg"}],"press62eb6d4e82ab0":[{"name":"Sound
                                On Sound","text":"The SEM V will be an excellent complement to other synths and soft
                                synths
                                - beautifully simple to use in the first instance, while offering greater depth when
                                you're
                                ready to take advantage of it. Oh yes, and then there's that sound !","product":"V
                                Collection 9"},{"name":"Sound On Sound","text":"An amazing range of instruments, you
                                won't
                                run out of things to do with them.\r\nThe new soft synths sound great and are far more
                                flexible than the original instruments.","product":"V Collection 9"},{"name":"Audio
                                MIDI","text":"Arturia has done it right. They've teamed up with Bob Moog, researched how
                                to
                                best emulate the sometimes quirky nature of analogue circuits via TAE, and had talented
                                artists and sound designers create some great patches.","product":"V Collection
                                9"},{"name":"Future Music","text":"All in all great sounding, versatile and- best of all
                                -
                                an absolute bargain.","product":"V Collection 9"},{"name":"Future Music","text":"V
                                Collection remains an impressive and good value package of classic
                                emulations.","product":"V
                                Collection 9"},{"name":"Future Music","text":"Arturia V Collection returns to the scene
                                again and puts an even higher quality bar that seems impossible to improve in each
                                incarnation. Here you will find retro passion, attention to detail, a respect for
                                history,
                                and features of sound visionaries...","product":"V Collection 9"},{"name":"Electronic
                                Musician","text":"V Collection 5 with updated browser and interface, plus five new and
                                highly desirable instruments. What\u2019s not to like?","product":"V Collection
                                9"},{"name":"The Techno File","text":"Arturia V Collection 7 is an absolute must-have.
                                It
                                puts realistic recreations of some of the world's must lusted after synths, samplers,
                                and
                                keyboard instruments at your fingertips, for a bargain price. With these latest
                                additions
                                and updates, the best just got even better.","product":"V Collection
                                9"},{"name":"Keyboard
                                Magazine","text":"Arturia\u2019s aim is true... to create the tools that lend a helping
                                hand
                                to today\u2019s musicians, taking inspiration from the past to (re)invent the music of
                                tomorrow.","product":"V Collection 9"},{"name":"Music Mart Magazine","text":"Prophet V
                                is a
                                worthy addition to the roster of Arturia soft synths. It authentically imitates the
                                originals while going beyond their limitations with up to 32 voice polyphony, decent
                                chorus\/delay effects and the endless potential of hybridising Prophet 5 and Prophet VS
                                sounds.","product":"V Collection
                                9"}],"product":{"sku":"v-collection","iTunesProduct":false,"itunesUrl":""},"cart":{"productsInCart":0},"loginFormContent":{"action":"\/products\/software-instruments\/v-collection\/overview","title":"SIGN
                                IN","mailLabel":"Email","mailPlaceholder":"Email","mailValidationError":"This Email
                                format
                                isn't
                                valid","passwordLabel":"Password","passwordPlaceholder":"Password","passwordValidationError":"Your
                                password is required","passwordFieldName":"password","forgotPasswordLabel":"Forgot your
                                password?","checkboxLabel":"Remember me","submitLabel":"SIGN IN","noAccountLabel":"No
                                account?","noAccountLinkText":"Create
                                Account","noAccountLinkLink":"\/createanaccount\/","formToken":"fc98cec4627dbe2faa3f21eb8876a502","redirectUrl":"aW5kZXgucGhwP0l0ZW1pZD0xMjc="},"signupFormContent":{"action":"\/index.php?option=com_users&amp;Itemid=101&amp;lang=en&amp;task=registration.register","formToken":"fc98cec4627dbe2faa3f21eb8876a502","captchaKey":"6Lf6afsSAAAAAMRQaBeh-jEZKl3FKwSvISALfexo","countries":[{"text":"Afghanistan","value":"AF"},{"text":"Albania","value":"AL"},{"text":"Algeria","value":"DZ"},{"text":"American
                                Samoa","value":"AS"},{"text":"Andorra","value":"AD"},{"text":"Angola","value":"AO"},{"text":"Anguilla","value":"AI"},{"text":"Antarctica","value":"AQ"},{"text":"Antigua
                                and
                                Barbuda","value":"AG"},{"text":"Argentina","value":"AR"},{"text":"Armenia","value":"AM"},{"text":"Aruba","value":"AW"},{"text":"Australia","value":"AU"},{"text":"Austria","value":"AT"},{"text":"Azerbaijan","value":"AZ"},{"text":"Bahamas","value":"BS"},{"text":"Bahrain","value":"BH"},{"text":"Bangladesh","value":"BD"},{"text":"Barbados","value":"BB"},{"text":"Belarus","value":"BY"},{"text":"Belgium","value":"BE"},{"text":"Belize","value":"BZ"},{"text":"Benin","value":"BJ"},{"text":"Bermuda","value":"BM"},{"text":"Bhutan","value":"BT"},{"text":"Bolivia","value":"BO"},{"text":"Bosnia
                                and Herzegowina","value":"BA"},{"text":"Botswana","value":"BW"},{"text":"Bouvet
                                Island","value":"BV"},{"text":"Brazil","value":"BR"},{"text":"British Indian Ocean
                                Territory","value":"IO"},{"text":"Brunei
                                Darussalam","value":"BN"},{"text":"Bulgaria","value":"BG"},{"text":"Burkina
                                Faso","value":"BF"},{"text":"Burundi","value":"BI"},{"text":"Cambodia","value":"KH"},{"text":"Cameroon","value":"CM"},{"text":"Canada","value":"CA"},{"text":"Cape
                                Verde","value":"CV"},{"text":"Cayman Islands","value":"KY"},{"text":"Central African
                                Republic","value":"CF"},{"text":"Chad","value":"TD"},{"text":"Chile","value":"CL"},{"text":"China","value":"CN"},{"text":"Christmas
                                Island","value":"CX"},{"text":"Cocos (Keeling)
                                Islands","value":"CC"},{"text":"Colombia","value":"CO"},{"text":"Comoros","value":"KM"},{"text":"Congo","value":"CG"},{"text":"Cook
                                Islands","value":"CK"},{"text":"Costa Rica","value":"CR"},{"text":"Cote
                                D'Ivoire","value":"CI"},{"text":"Croatia","value":"HR"},{"text":"Cuba","value":"CU"},{"text":"Cyprus","value":"CY"},{"text":"Czech
                                Republic","value":"CZ"},{"text":"Denmark","value":"DK"},{"text":"Djibouti","value":"DJ"},{"text":"Dominica","value":"DM"},{"text":"Dominican
                                Republic","value":"DO"},{"text":"East
                                Timor","value":"TP"},{"text":"Ecuador","value":"EC"},{"text":"Egypt","value":"EG"},{"text":"El
                                Salvador","value":"SV"},{"text":"Equatorial
                                Guinea","value":"GQ"},{"text":"Eritrea","value":"ER"},{"text":"Estonia","value":"EE"},{"text":"Ethiopia","value":"ET"},{"text":"Falkland
                                Islands (Malvinas)","value":"FK"},{"text":"Faroe
                                Islands","value":"FO"},{"text":"Fiji","value":"FJ"},{"text":"Finland","value":"FI"},{"text":"France","value":"FR"},{"text":"French
                                Guiana","value":"GF"},{"text":"French Polynesia","value":"PF"},{"text":"French Southern
                                Territories","value":"TF"},{"text":"Gabon","value":"GA"},{"text":"Gambia","value":"GM"},{"text":"Georgia","value":"GE"},{"text":"Germany","value":"DE"},{"text":"Ghana","value":"GH"},{"text":"Gibraltar","value":"GI"},{"text":"Greece","value":"GR"},{"text":"Greenland","value":"GL"},{"text":"Grenada","value":"GD"},{"text":"Guadeloupe","value":"GP"},{"text":"Guam","value":"GU"},{"text":"Guatemala","value":"GT"},{"text":"Guinea","value":"GN"},{"text":"Guinea-bissau","value":"GW"},{"text":"Guyana","value":"GY"},{"text":"Haiti","value":"HT"},{"text":"Heard
                                and Mc Donald Islands","value":"HM"},{"text":"Honduras","value":"HN"},{"text":"Hong
                                Kong","value":"HK"},{"text":"Hungary","value":"HU"},{"text":"Iceland","value":"IS"},{"text":"India","value":"IN"},{"text":"Indonesia","value":"ID"},{"text":"Iran
                                (Islamic Republic
                                of)","value":"IR"},{"text":"Iraq","value":"IQ"},{"text":"Ireland","value":"IE"},{"text":"Israel","value":"IL"},{"text":"Italy","value":"IT"},{"text":"Jamaica","value":"JM"},{"text":"Japan","value":"JP"},{"text":"Jordan","value":"JO"},{"text":"Kazakhstan","value":"KZ"},{"text":"Kenya","value":"KE"},{"text":"Kiribati","value":"KI"},{"text":"Korea,
                                Democratic People's Republic of","value":"KP"},{"text":"Korea, Republic
                                of","value":"KR"},{"text":"Kuwait","value":"KW"},{"text":"Kyrgyzstan","value":"KG"},{"text":"Lao
                                People's Democratic
                                Republic","value":"LA"},{"text":"Latvia","value":"LV"},{"text":"Lebanon","value":"LB"},{"text":"Lesotho","value":"LS"},{"text":"Liberia","value":"LR"},{"text":"Libyan
                                Arab
                                Jamahiriya","value":"LY"},{"text":"Liechtenstein","value":"LI"},{"text":"Lithuania","value":"LT"},{"text":"Luxembourg","value":"LU"},{"text":"Macau","value":"MO"},{"text":"Macedonia,
                                The Former Yugoslav Republic
                                of","value":"MK"},{"text":"Madagascar","value":"MG"},{"text":"Malawi","value":"MW"},{"text":"Malaysia","value":"MY"},{"text":"Maldives","value":"MV"},{"text":"Mali","value":"ML"},{"text":"Malta","value":"MT"},{"text":"Marshall
                                Islands","value":"MH"},{"text":"Martinique","value":"MQ"},{"text":"Mauritania","value":"MR"},{"text":"Mauritius","value":"MU"},{"text":"Mayotte","value":"YT"},{"text":"Mexico","value":"MX"},{"text":"Micronesia,
                                Federated States of","value":"FM"},{"text":"Moldova, Republic
                                of","value":"MD"},{"text":"Monaco","value":"MC"},{"text":"Mongolia","value":"MN"},{"text":"Montserrat","value":"MS"},{"text":"Morocco","value":"MA"},{"text":"Mozambique","value":"MZ"},{"text":"Myanmar","value":"MM"},{"text":"Namibia","value":"NA"},{"text":"Nauru","value":"NR"},{"text":"Nepal","value":"NP"},{"text":"Netherlands","value":"NL"},{"text":"Netherlands
                                Antilles","value":"AN"},{"text":"New Caledonia","value":"NC"},{"text":"New
                                Zealand","value":"NZ"},{"text":"Nicaragua","value":"NI"},{"text":"Niger","value":"NE"},{"text":"Nigeria","value":"NG"},{"text":"Niue","value":"NU"},{"text":"Norfolk
                                Island","value":"NF"},{"text":"Northern Mariana
                                Islands","value":"MP"},{"text":"Norway","value":"NO"},{"text":"Oman","value":"OM"},{"text":"Pakistan","value":"PK"},{"text":"Palau","value":"PW"},{"text":"Panama","value":"PA"},{"text":"Papua
                                New
                                Guinea","value":"PG"},{"text":"Paraguay","value":"PY"},{"text":"Peru","value":"PE"},{"text":"Philippines","value":"PH"},{"text":"Pitcairn","value":"PN"},{"text":"Poland","value":"PL"},{"text":"Portugal","value":"PT"},{"text":"Puerto
                                Rico","value":"PR"},{"text":"Qatar","value":"QA"},{"text":"Reunion","value":"RE"},{"text":"Romania","value":"RO"},{"text":"Russian
                                Federation","value":"RU"},{"text":"Rwanda","value":"RW"},{"text":"Saint Kitts and
                                Nevis","value":"KN"},{"text":"Saint Lucia","value":"LC"},{"text":"Saint Vincent and the
                                Grenadines","value":"VC"},{"text":"Samoa","value":"WS"},{"text":"San
                                Marino","value":"SM"},{"text":"Sao Tome and Principe","value":"ST"},{"text":"Saudi
                                Arabia","value":"SA"},{"text":"Senegal","value":"SN"},{"text":"Seychelles","value":"SC"},{"text":"Sierra
                                Leone","value":"SL"},{"text":"Singapore","value":"SG"},{"text":"Slovakia","value":"SK"},{"text":"Slovenia","value":"SI"},{"text":"Solomon
                                Islands","value":"SB"},{"text":"Somalia","value":"SO"},{"text":"South
                                Africa","value":"ZA"},{"text":"South Georgia and the South Sandwich
                                Islands","value":"GS"},{"text":"Spain","value":"ES"},{"text":"Sri
                                Lanka","value":"LK"},{"text":"St. Helena","value":"SH"},{"text":"St. Pierre and
                                Miquelon","value":"PM"},{"text":"Sudan","value":"SD"},{"text":"Suriname","value":"SR"},{"text":"Svalbard
                                and Jan Mayen
                                Islands","value":"SJ"},{"text":"Swaziland","value":"SZ"},{"text":"Sweden","value":"SE"},{"text":"Switzerland","value":"CH"},{"text":"Syrian
                                Arab
                                Republic","value":"SY"},{"text":"Taiwan","value":"TW"},{"text":"Tajikistan","value":"TJ"},{"text":"Tanzania,
                                United Republic
                                of","value":"TZ"},{"text":"Thailand","value":"TH"},{"text":"Togo","value":"TG"},{"text":"Tokelau","value":"TK"},{"text":"Tonga","value":"TO"},{"text":"Trinidad
                                and
                                Tobago","value":"TT"},{"text":"Tunisia","value":"TN"},{"text":"Turkey","value":"TR"},{"text":"Turkmenistan","value":"TM"},{"text":"Turks
                                and Caicos
                                Islands","value":"TC"},{"text":"Tuvalu","value":"TV"},{"text":"Uganda","value":"UG"},{"text":"Ukraine","value":"UA"},{"text":"United
                                Arab Emirates","value":"AE"},{"text":"United Kingdom","value":"GB"},{"text":"United
                                States","value":"US"},{"text":"United States Minor Outlying
                                Islands","value":"UM"},{"text":"Uruguay","value":"UY"},{"text":"Uzbekistan","value":"UZ"},{"text":"Vanuatu","value":"VU"},{"text":"Vatican
                                City State (Holy See)","value":"VA"},{"text":"Venezuela","value":"VE"},{"text":"Viet
                                Nam","value":"VN"},{"text":"Virgin Islands (British)","value":"VG"},{"text":"Virgin
                                Islands
                                (U.S.)","value":"VI"},{"text":"Wallis and Futuna Islands","value":"WF"},{"text":"Western
                                Sahara","value":"EH"},{"text":"Yemen","value":"YE"},{"text":"The Democratic Republic of
                                Congo","value":"DC"},{"text":"Zambia","value":"ZM"},{"text":"Zimbabwe","value":"ZW"},{"text":"East
                                Timor","value":"XE"},{"text":"Jersey","value":"XJ"},{"text":"St.
                                Barthelemy","value":"XB"},{"text":"St. Eustatius","value":"XU"},{"text":"Canary
                                Islands","value":"XC"},{"text":"Serbia","value":"RS"},{"text":"Sint Maarten (French
                                Antilles)","value":"MF"},{"text":"Sint Maarten (Netherlands
                                Antilles)","value":"SX"},{"text":"Palestinian Territory,
                                occupied","value":"PS"}]},"resetpasswordFormContent":{"action":{"request":"\/index.php?option=com_users&amp;Itemid=101&amp;lang=en&amp;task=reset.request","confirm":"\/index.php?option=com_users&amp;Itemid=101&amp;lang=en&amp;task=reset.confirm","complete":"\/index.php?option=com_users&amp;Itemid=101&amp;lang=en&amp;task=reset.complete"},"formToken":"fc98cec4627dbe2faa3f21eb8876a502","captchaKey":"6Lf6afsSAAAAAMRQaBeh-jEZKl3FKwSvISALfexo"}};
                            </script>
                        </div>
                        <span id="page#15"></span>
                        <script type="application/javascript">
                            window.criteo_q = window.criteo_q || [];
                            window.criteo_q.push(
                            { event: "setAccount", account: 59837 },
                            { event: "setEmail", email: "" },
                            { event: "viewItem", item: "550" }
                            );
                        </script>
                        <script type="text/plain" data-type="application/javascript" data-name="facebook">
                            fbq('track', 'ViewContent', {
                            'content_ids': '550',
                            'content_type': 'product',
                            'value': '599',
                            'currency': 'eu'
                            });
                        </script>
                        <div class="layout-container itemView  range-lab product" id="k2Container">
                            <div class="layout-container__inner"
                                 style="background-position: center center; background-size: 100%; background-repeat: no-repeat;">
                                <script type="application/javascript">
                                    document.getElementById("arturia-app").classList.add("theme-lab");
                                </script>
                                <div data-v-033f0be0=""
                                     class="layout-half-fluid product-banner layout-half-fluid--right layout-half-fluid--small layout-half-fluid--xxl layout-half-fluid--xl layout-half-fluid--lg layout-half-fluid--reverse"
                                     style="--layout-column: 5;" text_white="" variant="lab" itunesurl="">
                                    <div class="layout-half-fluid__left layout-half-fluid__fluid">
                                        <div data-v-033f0be0=""
                                             class="product-banner__right product-banner__right--right">
                                            <img data-v-033f0be0=""
                                                 src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//banner-image.png"
                                                 class="d-none"/>
                                            <div data-v-033f0be0=""
                                                 class="image-ratio__container product-banner__image">
                                                <xsl:variable name="img_url" select="concat('background-image: url','(','&quot;https://medias.arturia.net/images/products/v-collection-pro/banner-image.png&quot;','); padding-bottom: 65%;')"/>
                                                <div class="image-ratio image-ratio--contain"
                                                     style="{$img_url}"></div>
                                            </div> <!----> <!----> <!---->
                                        </div>
                                    </div>
                                    <div class="layout-half-fluid__right layout-half-fluid__contain">
                                        <div data-v-033f0be0="" class="product-banner__content">
                                            <h1 data-v-033f0be0="" class="mb-0">
                                                <xsl:value-of select="/document/h[position()=1]"/>
                                            </h1>
                                            <p data-v-033f0be0="" class="h1 small mb-3">
                                                <xsl:value-of select="/document/p[position()=1]"/>
                                            </p>
                                            <span data-v-033f0be0="">
                                                <p data-v-033f0be0="" class="mb-3">
                                                    <xsl:value-of select="/document/p[position()=2]"/>
                                                </p>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="clr"></div>
                                <div class="clr"></div>
                            </div>
                        </div>
                        <script id="system-message-template" type="text/x-handlebars-template">
                            <!-- <div id="system-message-container">
                            </div> -->

                        </script>
                        <div class="row" style="display: none;">
                            <div class="col-md-12">
                                <div id="system-message-here"></div>
                            </div>
                        </div>
                    </div>
                    <div id="side-right" role="side-right" class="container"></div>
                    <footer class="bg-black text-white py-5">
                        <div class="container">
                            <div class="row">
                                <div class="col col-12 col-sm-6 col-lg-3 mb-4">
                                    <img src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//logo-full.svg" alt="ARTURIA"
                                         class="img-responsive" style="filter: invert(1);"/>
                                    <div>
                                        <form name="newsletter-form" id="newsletter-form" class="">
                                            <fieldset class="form-group" id="__BVID__134"><!---->
                                                <div>
                                                    <div role="group" class="input-group mt-3"><!---->
                                                        <input id="user_email_formSubscribe" type="email"
                                                               placeholder="Email address" class="form-control"/>
                                                        <div class="input-group-append">
                                                            <button type="submit"
                                                                    class="input-group-icon icon icon-arrow-right text-white"></button>
                                                        </div><!---->
                                                    </div><!----><!----><!---->
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <p>Get expert sound tips, exclusive offers, and endless inspiration straight to your
                                        inbox.
                                    </p>
                                    <small class="text-muted">Your
                                        email will only be used to send you Arturia’s newsletter. You can
                                        unsubscribe anytime, for more information see our Privacy Policy.
                                    </small>
                                </div>
                                <div class="col col-12 col-sm-6 col-lg-3 mb-4">
                                    <h5 class="prep text-uppercase">Products</h5>
                                    <ul class="list-unstyled">
                                        <li>
                                            <a href="https://www.arturia.com/products#hardware-synths">Hardware
                                                Synthesizers
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/products#hybrid-synths">Controllers</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/products#audio">Audio</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/products#analog-classics,software-instruments">
                                                Software Instruments
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/products#software-effects">Software
                                                Effects
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/products##ipad-synths,drums">Other</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col col-12 col-sm-6 col-lg-3 mb-4">
                                    <h5 class="prep text-uppercase">Store and Services</h5>
                                    <ul class="list-unstyled">
                                        <li>
                                            <a href="https://www.arturia.com/store">Store</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/support/downloads&amp;manuals">Download
                                                &amp; manuals
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/support">Support</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/support/faq">Faq</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/community/distributors">Distributors</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/support/return-and-refund">Return and
                                                Refund policy
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col col-12 col-sm-6 col-lg-3 mb-4">
                                    <h5 class="prep text-uppercase">About Us</h5>
                                    <ul class="list-unstyled">
                                        <li>
                                            <a href="https://www.arturia.com/company">Discover Arturia</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/company/environmental-policy">Environmental
                                                policy
                                            </a>
                                        </li>
                                        <li>
                                            <a target="_blank" href="https://jobs.arturia.com/">Jobs</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/community/education">Education</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/company/press">Press &amp; Media</a>
                                        </li>
                                        <li>
                                            <a href="https://www.arturia.com/contact">Contact</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col col-3 d-none d-lg-block"></div>
                                <div class="col col-9">
                                    <ul class="list-inline mb-0">
                                        <li class="list-inline-item">
                                            <h5 class="prep text-uppercase">Social Networks</h5>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="https://www.facebook.com/arturia.instruments">
                                                <img alt="facebook"
                                                     src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//facebook.png"
                                                     height="40px"/>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="https://www.youtube.com/user/Arturiaweb">
                                                <img alt="facebook"
                                                     src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//youtube.png"
                                                     height="40px"/>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="https://twitter.com/ArturiaOfficial">
                                                <img alt="facebook"
                                                     src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//twitter.png"
                                                     height="40px"/>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="https://www.instagram.com/arturia_official">
                                                <img alt="facebook"
                                                     src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//instagram.png"
                                                     height="40px"/>
                                            </a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="https://www.tiktok.com/@arturia_official">
                                                <img alt="facebook"
                                                     src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//tiktok.png"
                                                     height="40px"/>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <hr class="border-dark"/>
                            <div class="row pt-3">
                                <div class="col col-12 text-center">
                                    <small class="text-muted copyright">
                                        Copyright © 2022 Arturia Tous droits réservés / <a
                                            href="https://www.arturia.com/support/terms">Legal notices
                                    </a> /
                                        <a href="https://www.arturia.com/support/privacypolicy">Data privacy policy</a>
                                    </small>
                                </div>
                            </div>
                        </div>
                    </footer>
                    <div class="cookie-banner"></div> <!----> <!---->
                </div>


                <!-- code bellow everything -->


                <noscript>
                    <img height='1' width='1'
                         src='https://www.facebook.com/tr?id=537532369685964&amp;ev=PageView&amp;noscript=1'/>
                    <img height='1' width='1'
                         src='https://www.facebook.com/tr?id=2100981640152117&amp;ev=PageView&amp;noscript=1'/>
                </noscript>


                <script type="application/javascript">

                    // if we need to prune some logic from pure data still needed
                    // to be passed to 'application.js' script
                    // _.merge(window.ASL.data, {});

                </script>

                <script type="application/javascript" data-type="application/javascript" data-name="facebook">
                    fbq('track', 'PageView');
                </script>
                <!-- End Facebook Pixel Code -->


                <script defer="defer" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//runtime-eed183.min.js"></script>
                <script defer="defer" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//npm-0f395e.min.js"></script>
                <script defer="defer" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//sentry-5624b2.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-UI-942e64.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-cards-d8c09d.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-layouts-2b1fc4.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-carousels-dae908.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-forms-938912.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-modals-bfea88.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-media-10811d.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-lists-012bde.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-collections-b71e2a.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-menus-0161d2.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-banners-a5cd90.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-utilities-a4555f.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-buttons-9677cc.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-example-62452c.min.js"></script>
                <script defer="defer" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//79-8c9e22.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//components-inline-svg-006202.min.js"></script>
                <script defer="defer" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//app-060908.min.js"></script>
                <script defer="defer" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//legacy-61deec.min.js"></script>
                <script defer="defer"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//app_style-3234a8.min.js"></script>
                <script type="text/javascript">
                    window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"bb669fbd8a","applicationID":"1465829253","transactionName":"NFVSN0VWVxEDVBAIDQ0fZRFeGFAMBlIcTxILQA==","queueTime":0,"applicationTime":730,"atts":"GBJRQQ1MRB8=","errorBeacon":"bam.nr-data.net","agent":""}
                </script>


                <div id="klaro">
                    <div class="klaro" lang="en">
                        <div></div>
                    </div>
                </div>
                <div id="criteo-tags-div" style="display: none;"></div>
                <iframe style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"
                        name="_hjRemoteVarsFrame" title="_hjRemoteVarsFrame" id="_hjRemoteVarsFrame"
                        src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//box-54d18b2ccd1c7fa42c71f18525ba4ad0.html"></iframe>
                <iframe id="_hjSafeContext_10697197" src="/static/editor/examples/epad/xsl/Arturia-V-Collection-V-Collection_9_files//a.html"
                        style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe>
                <iframe style="display: none;" title="Criteo DIS iframe" width="0" height="0"></iframe>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>