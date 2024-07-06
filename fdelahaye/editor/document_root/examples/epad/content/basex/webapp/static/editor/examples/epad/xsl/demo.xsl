<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xhtml" indent="no"/>
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
                <style>/*!
                    * Font Awesome Free 5.15.4 by @fontawesome - https://fontawesome.com
                    * License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT
                    License)
                    */
                    .fa,
                    .fas,
                    .far,
                    .fal,
                    .fad,
                    .fab {
                    -moz-osx-font-smoothing: grayscale;
                    -webkit-font-smoothing: antialiased;
                    display: inline-block;
                    font-style: normal;
                    font-variant: normal;
                    text-rendering: auto;
                    line-height: 1; }

                    .fa-lg {
                    font-size: 1.33333em;
                    line-height: 0.75em;
                    vertical-align: -.0667em; }

                    .fa-xs {
                    font-size: .75em; }

                    .fa-sm {
                    font-size: .875em; }

                    .fa-1x {
                    font-size: 1em; }

                    .fa-2x {
                    font-size: 2em; }

                    .fa-3x {
                    font-size: 3em; }

                    .fa-4x {
                    font-size: 4em; }

                    .fa-5x {
                    font-size: 5em; }

                    .fa-6x {
                    font-size: 6em; }

                    .fa-7x {
                    font-size: 7em; }

                    .fa-8x {
                    font-size: 8em; }

                    .fa-9x {
                    font-size: 9em; }

                    .fa-10x {
                    font-size: 10em; }

                    .fa-fw {
                    text-align: center;
                    width: 1.25em; }

                    .fa-ul {
                    list-style-type: none;
                    margin-left: 2.5em;
                    padding-left: 0; }
                    .fa-ul > li {
                    position: relative; }

                    .fa-li {
                    left: -2em;
                    position: absolute;
                    text-align: center;
                    width: 2em;
                    line-height: inherit; }

                    .fa-border {
                    border: solid 0.08em #eee;
                    border-radius: .1em;
                    padding: .2em .25em .15em; }

                    .fa-pull-left {
                    float: left; }

                    .fa-pull-right {
                    float: right; }

                    .fa.fa-pull-left,
                    .fas.fa-pull-left,
                    .far.fa-pull-left,
                    .fal.fa-pull-left,
                    .fab.fa-pull-left {
                    margin-right: .3em; }

                    .fa.fa-pull-right,
                    .fas.fa-pull-right,
                    .far.fa-pull-right,
                    .fal.fa-pull-right,
                    .fab.fa-pull-right {
                    margin-left: .3em; }

                    .fa-spin {
                    -webkit-animation: fa-spin 2s infinite linear;
                    animation: fa-spin 2s infinite linear; }

                    .fa-pulse {
                    -webkit-animation: fa-spin 1s infinite steps(8);
                    animation: fa-spin 1s infinite steps(8); }

                    @-webkit-keyframes fa-spin {
                    0% {
                    -webkit-transform: rotate(0deg);
                    transform: rotate(0deg); }
                    100% {
                    -webkit-transform: rotate(360deg);
                    transform: rotate(360deg); } }

                    @keyframes fa-spin {
                    0% {
                    -webkit-transform: rotate(0deg);
                    transform: rotate(0deg); }
                    100% {
                    -webkit-transform: rotate(360deg);
                    transform: rotate(360deg); } }

                    .fa-rotate-90 {
                    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
                    -webkit-transform: rotate(90deg);
                    transform: rotate(90deg); }

                    .fa-rotate-180 {
                    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
                    -webkit-transform: rotate(180deg);
                    transform: rotate(180deg); }

                    .fa-rotate-270 {
                    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
                    -webkit-transform: rotate(270deg);
                    transform: rotate(270deg); }

                    .fa-flip-horizontal {
                    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
                    -webkit-transform: scale(-1, 1);
                    transform: scale(-1, 1); }

                    .fa-flip-vertical {
                    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
                    -webkit-transform: scale(1, -1);
                    transform: scale(1, -1); }

                    .fa-flip-both, .fa-flip-horizontal.fa-flip-vertical {
                    -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
                    -webkit-transform: scale(-1, -1);
                    transform: scale(-1, -1); }

                    :root .fa-rotate-90,
                    :root .fa-rotate-180,
                    :root .fa-rotate-270,
                    :root .fa-flip-horizontal,
                    :root .fa-flip-vertical,
                    :root .fa-flip-both {
                    -webkit-filter: none;
                    filter: none; }

                    .fa-stack {
                    display: inline-block;
                    height: 2em;
                    line-height: 2em;
                    position: relative;
                    vertical-align: middle;
                    width: 2.5em; }

                    .fa-stack-1x,
                    .fa-stack-2x {
                    left: 0;
                    position: absolute;
                    text-align: center;
                    width: 100%; }

                    .fa-stack-1x {
                    line-height: inherit; }

                    .fa-stack-2x {
                    font-size: 2em; }

                    .fa-inverse {
                    color: #fff; }

                    /* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
                    readers do not read off random characters that represent icons */
                    .fa-500px:before {
                    content: "\f26e"; }

                    .fa-accessible-icon:before {
                    content: "\f368"; }

                    .fa-accusoft:before {
                    content: "\f369"; }

                    .fa-acquisitions-incorporated:before {
                    content: "\f6af"; }

                    .fa-ad:before {
                    content: "\f641"; }

                    .fa-address-book:before {
                    content: "\f2b9"; }

                    .fa-address-card:before {
                    content: "\f2bb"; }

                    .fa-adjust:before {
                    content: "\f042"; }

                    .fa-adn:before {
                    content: "\f170"; }

                    .fa-adversal:before {
                    content: "\f36a"; }

                    .fa-affiliatetheme:before {
                    content: "\f36b"; }

                    .fa-air-freshener:before {
                    content: "\f5d0"; }

                    .fa-airbnb:before {
                    content: "\f834"; }

                    .fa-algolia:before {
                    content: "\f36c"; }

                    .fa-align-center:before {
                    content: "\f037"; }

                    .fa-align-justify:before {
                    content: "\f039"; }

                    .fa-align-left:before {
                    content: "\f036"; }

                    .fa-align-right:before {
                    content: "\f038"; }

                    .fa-alipay:before {
                    content: "\f642"; }

                    .fa-allergies:before {
                    content: "\f461"; }

                    .fa-amazon:before {
                    content: "\f270"; }

                    .fa-amazon-pay:before {
                    content: "\f42c"; }

                    .fa-ambulance:before {
                    content: "\f0f9"; }

                    .fa-american-sign-language-interpreting:before {
                    content: "\f2a3"; }

                    .fa-amilia:before {
                    content: "\f36d"; }

                    .fa-anchor:before {
                    content: "\f13d"; }

                    .fa-android:before {
                    content: "\f17b"; }

                    .fa-angellist:before {
                    content: "\f209"; }

                    .fa-angle-double-down:before {
                    content: "\f103"; }

                    .fa-angle-double-left:before {
                    content: "\f100"; }

                    .fa-angle-double-right:before {
                    content: "\f101"; }

                    .fa-angle-double-up:before {
                    content: "\f102"; }

                    .fa-angle-down:before {
                    content: "\f107"; }

                    .fa-angle-left:before {
                    content: "\f104"; }

                    .fa-angle-right:before {
                    content: "\f105"; }

                    .fa-angle-up:before {
                    content: "\f106"; }

                    .fa-angry:before {
                    content: "\f556"; }

                    .fa-angrycreative:before {
                    content: "\f36e"; }

                    .fa-angular:before {
                    content: "\f420"; }

                    .fa-ankh:before {
                    content: "\f644"; }

                    .fa-app-store:before {
                    content: "\f36f"; }

                    .fa-app-store-ios:before {
                    content: "\f370"; }

                    .fa-apper:before {
                    content: "\f371"; }

                    .fa-apple:before {
                    content: "\f179"; }

                    .fa-apple-alt:before {
                    content: "\f5d1"; }

                    .fa-apple-pay:before {
                    content: "\f415"; }

                    .fa-archive:before {
                    content: "\f187"; }

                    .fa-archway:before {
                    content: "\f557"; }

                    .fa-arrow-alt-circle-down:before {
                    content: "\f358"; }

                    .fa-arrow-alt-circle-left:before {
                    content: "\f359"; }

                    .fa-arrow-alt-circle-right:before {
                    content: "\f35a"; }

                    .fa-arrow-alt-circle-up:before {
                    content: "\f35b"; }

                    .fa-arrow-circle-down:before {
                    content: "\f0ab"; }

                    .fa-arrow-circle-left:before {
                    content: "\f0a8"; }

                    .fa-arrow-circle-right:before {
                    content: "\f0a9"; }

                    .fa-arrow-circle-up:before {
                    content: "\f0aa"; }

                    .fa-arrow-down:before {
                    content: "\f063"; }

                    .fa-arrow-left:before {
                    content: "\f060"; }

                    .fa-arrow-right:before {
                    content: "\f061"; }

                    .fa-arrow-up:before {
                    content: "\f062"; }

                    .fa-arrows-alt:before {
                    content: "\f0b2"; }

                    .fa-arrows-alt-h:before {
                    content: "\f337"; }

                    .fa-arrows-alt-v:before {
                    content: "\f338"; }

                    .fa-artstation:before {
                    content: "\f77a"; }

                    .fa-assistive-listening-systems:before {
                    content: "\f2a2"; }

                    .fa-asterisk:before {
                    content: "\f069"; }

                    .fa-asymmetrik:before {
                    content: "\f372"; }

                    .fa-at:before {
                    content: "\f1fa"; }

                    .fa-atlas:before {
                    content: "\f558"; }

                    .fa-atlassian:before {
                    content: "\f77b"; }

                    .fa-atom:before {
                    content: "\f5d2"; }

                    .fa-audible:before {
                    content: "\f373"; }

                    .fa-audio-description:before {
                    content: "\f29e"; }

                    .fa-autoprefixer:before {
                    content: "\f41c"; }

                    .fa-avianex:before {
                    content: "\f374"; }

                    .fa-aviato:before {
                    content: "\f421"; }

                    .fa-award:before {
                    content: "\f559"; }

                    .fa-aws:before {
                    content: "\f375"; }

                    .fa-baby:before {
                    content: "\f77c"; }

                    .fa-baby-carriage:before {
                    content: "\f77d"; }

                    .fa-backspace:before {
                    content: "\f55a"; }

                    .fa-backward:before {
                    content: "\f04a"; }

                    .fa-bacon:before {
                    content: "\f7e5"; }

                    .fa-bacteria:before {
                    content: "\e059"; }

                    .fa-bacterium:before {
                    content: "\e05a"; }

                    .fa-bahai:before {
                    content: "\f666"; }

                    .fa-balance-scale:before {
                    content: "\f24e"; }

                    .fa-balance-scale-left:before {
                    content: "\f515"; }

                    .fa-balance-scale-right:before {
                    content: "\f516"; }

                    .fa-ban:before {
                    content: "\f05e"; }

                    .fa-band-aid:before {
                    content: "\f462"; }

                    .fa-bandcamp:before {
                    content: "\f2d5"; }

                    .fa-barcode:before {
                    content: "\f02a"; }

                    .fa-bars:before {
                    content: "\f0c9"; }

                    .fa-baseball-ball:before {
                    content: "\f433"; }

                    .fa-basketball-ball:before {
                    content: "\f434"; }

                    .fa-bath:before {
                    content: "\f2cd"; }

                    .fa-battery-empty:before {
                    content: "\f244"; }

                    .fa-battery-full:before {
                    content: "\f240"; }

                    .fa-battery-half:before {
                    content: "\f242"; }

                    .fa-battery-quarter:before {
                    content: "\f243"; }

                    .fa-battery-three-quarters:before {
                    content: "\f241"; }

                    .fa-battle-net:before {
                    content: "\f835"; }

                    .fa-bed:before {
                    content: "\f236"; }

                    .fa-beer:before {
                    content: "\f0fc"; }

                    .fa-behance:before {
                    content: "\f1b4"; }

                    .fa-behance-square:before {
                    content: "\f1b5"; }

                    .fa-bell:before {
                    content: "\f0f3"; }

                    .fa-bell-slash:before {
                    content: "\f1f6"; }

                    .fa-bezier-curve:before {
                    content: "\f55b"; }

                    .fa-bible:before {
                    content: "\f647"; }

                    .fa-bicycle:before {
                    content: "\f206"; }

                    .fa-biking:before {
                    content: "\f84a"; }

                    .fa-bimobject:before {
                    content: "\f378"; }

                    .fa-binoculars:before {
                    content: "\f1e5"; }

                    .fa-biohazard:before {
                    content: "\f780"; }

                    .fa-birthday-cake:before {
                    content: "\f1fd"; }

                    .fa-bitbucket:before {
                    content: "\f171"; }

                    .fa-bitcoin:before {
                    content: "\f379"; }

                    .fa-bity:before {
                    content: "\f37a"; }

                    .fa-black-tie:before {
                    content: "\f27e"; }

                    .fa-blackberry:before {
                    content: "\f37b"; }

                    .fa-blender:before {
                    content: "\f517"; }

                    .fa-blender-phone:before {
                    content: "\f6b6"; }

                    .fa-blind:before {
                    content: "\f29d"; }

                    .fa-blog:before {
                    content: "\f781"; }

                    .fa-blogger:before {
                    content: "\f37c"; }

                    .fa-blogger-b:before {
                    content: "\f37d"; }

                    .fa-bluetooth:before {
                    content: "\f293"; }

                    .fa-bluetooth-b:before {
                    content: "\f294"; }

                    .fa-bold:before {
                    content: "\f032"; }

                    .fa-bolt:before {
                    content: "\f0e7"; }

                    .fa-bomb:before {
                    content: "\f1e2"; }

                    .fa-bone:before {
                    content: "\f5d7"; }

                    .fa-bong:before {
                    content: "\f55c"; }

                    .fa-book:before {
                    content: "\f02d"; }

                    .fa-book-dead:before {
                    content: "\f6b7"; }

                    .fa-book-medical:before {
                    content: "\f7e6"; }

                    .fa-book-open:before {
                    content: "\f518"; }

                    .fa-book-reader:before {
                    content: "\f5da"; }

                    .fa-bookmark:before {
                    content: "\f02e"; }

                    .fa-bootstrap:before {
                    content: "\f836"; }

                    .fa-border-all:before {
                    content: "\f84c"; }

                    .fa-border-none:before {
                    content: "\f850"; }

                    .fa-border-style:before {
                    content: "\f853"; }

                    .fa-bowling-ball:before {
                    content: "\f436"; }

                    .fa-box:before {
                    content: "\f466"; }

                    .fa-box-open:before {
                    content: "\f49e"; }

                    .fa-box-tissue:before {
                    content: "\e05b"; }

                    .fa-boxes:before {
                    content: "\f468"; }

                    .fa-braille:before {
                    content: "\f2a1"; }

                    .fa-brain:before {
                    content: "\f5dc"; }

                    .fa-bread-slice:before {
                    content: "\f7ec"; }

                    .fa-briefcase:before {
                    content: "\f0b1"; }

                    .fa-briefcase-medical:before {
                    content: "\f469"; }

                    .fa-broadcast-tower:before {
                    content: "\f519"; }

                    .fa-broom:before {
                    content: "\f51a"; }

                    .fa-brush:before {
                    content: "\f55d"; }

                    .fa-btc:before {
                    content: "\f15a"; }

                    .fa-buffer:before {
                    content: "\f837"; }

                    .fa-bug:before {
                    content: "\f188"; }

                    .fa-building:before {
                    content: "\f1ad"; }

                    .fa-bullhorn:before {
                    content: "\f0a1"; }

                    .fa-bullseye:before {
                    content: "\f140"; }

                    .fa-burn:before {
                    content: "\f46a"; }

                    .fa-buromobelexperte:before {
                    content: "\f37f"; }

                    .fa-bus:before {
                    content: "\f207"; }

                    .fa-bus-alt:before {
                    content: "\f55e"; }

                    .fa-business-time:before {
                    content: "\f64a"; }

                    .fa-buy-n-large:before {
                    content: "\f8a6"; }

                    .fa-buysellads:before {
                    content: "\f20d"; }

                    .fa-calculator:before {
                    content: "\f1ec"; }

                    .fa-calendar:before {
                    content: "\f133"; }

                    .fa-calendar-alt:before {
                    content: "\f073"; }

                    .fa-calendar-check:before {
                    content: "\f274"; }

                    .fa-calendar-day:before {
                    content: "\f783"; }

                    .fa-calendar-minus:before {
                    content: "\f272"; }

                    .fa-calendar-plus:before {
                    content: "\f271"; }

                    .fa-calendar-times:before {
                    content: "\f273"; }

                    .fa-calendar-week:before {
                    content: "\f784"; }

                    .fa-camera:before {
                    content: "\f030"; }

                    .fa-camera-retro:before {
                    content: "\f083"; }

                    .fa-campground:before {
                    content: "\f6bb"; }

                    .fa-canadian-maple-leaf:before {
                    content: "\f785"; }

                    .fa-candy-cane:before {
                    content: "\f786"; }

                    .fa-cannabis:before {
                    content: "\f55f"; }

                    .fa-capsules:before {
                    content: "\f46b"; }

                    .fa-car:before {
                    content: "\f1b9"; }

                    .fa-car-alt:before {
                    content: "\f5de"; }

                    .fa-car-battery:before {
                    content: "\f5df"; }

                    .fa-car-crash:before {
                    content: "\f5e1"; }

                    .fa-car-side:before {
                    content: "\f5e4"; }

                    .fa-caravan:before {
                    content: "\f8ff"; }

                    .fa-caret-down:before {
                    content: "\f0d7"; }

                    .fa-caret-left:before {
                    content: "\f0d9"; }

                    .fa-caret-right:before {
                    content: "\f0da"; }

                    .fa-caret-square-down:before {
                    content: "\f150"; }

                    .fa-caret-square-left:before {
                    content: "\f191"; }

                    .fa-caret-square-right:before {
                    content: "\f152"; }

                    .fa-caret-square-up:before {
                    content: "\f151"; }

                    .fa-caret-up:before {
                    content: "\f0d8"; }

                    .fa-carrot:before {
                    content: "\f787"; }

                    .fa-cart-arrow-down:before {
                    content: "\f218"; }

                    .fa-cart-plus:before {
                    content: "\f217"; }

                    .fa-cash-register:before {
                    content: "\f788"; }

                    .fa-cat:before {
                    content: "\f6be"; }

                    .fa-cc-amazon-pay:before {
                    content: "\f42d"; }

                    .fa-cc-amex:before {
                    content: "\f1f3"; }

                    .fa-cc-apple-pay:before {
                    content: "\f416"; }

                    .fa-cc-diners-club:before {
                    content: "\f24c"; }

                    .fa-cc-discover:before {
                    content: "\f1f2"; }

                    .fa-cc-jcb:before {
                    content: "\f24b"; }

                    .fa-cc-mastercard:before {
                    content: "\f1f1"; }

                    .fa-cc-paypal:before {
                    content: "\f1f4"; }

                    .fa-cc-stripe:before {
                    content: "\f1f5"; }

                    .fa-cc-visa:before {
                    content: "\f1f0"; }

                    .fa-centercode:before {
                    content: "\f380"; }

                    .fa-centos:before {
                    content: "\f789"; }

                    .fa-certificate:before {
                    content: "\f0a3"; }

                    .fa-chair:before {
                    content: "\f6c0"; }

                    .fa-chalkboard:before {
                    content: "\f51b"; }

                    .fa-chalkboard-teacher:before {
                    content: "\f51c"; }

                    .fa-charging-station:before {
                    content: "\f5e7"; }

                    .fa-chart-area:before {
                    content: "\f1fe"; }

                    .fa-chart-bar:before {
                    content: "\f080"; }

                    .fa-chart-line:before {
                    content: "\f201"; }

                    .fa-chart-pie:before {
                    content: "\f200"; }

                    .fa-check:before {
                    content: "\f00c"; }

                    .fa-check-circle:before {
                    content: "\f058"; }

                    .fa-check-double:before {
                    content: "\f560"; }

                    .fa-check-square:before {
                    content: "\f14a"; }

                    .fa-cheese:before {
                    content: "\f7ef"; }

                    .fa-chess:before {
                    content: "\f439"; }

                    .fa-chess-bishop:before {
                    content: "\f43a"; }

                    .fa-chess-board:before {
                    content: "\f43c"; }

                    .fa-chess-king:before {
                    content: "\f43f"; }

                    .fa-chess-knight:before {
                    content: "\f441"; }

                    .fa-chess-pawn:before {
                    content: "\f443"; }

                    .fa-chess-queen:before {
                    content: "\f445"; }

                    .fa-chess-rook:before {
                    content: "\f447"; }

                    .fa-chevron-circle-down:before {
                    content: "\f13a"; }

                    .fa-chevron-circle-left:before {
                    content: "\f137"; }

                    .fa-chevron-circle-right:before {
                    content: "\f138"; }

                    .fa-chevron-circle-up:before {
                    content: "\f139"; }

                    .fa-chevron-down:before {
                    content: "\f078"; }

                    .fa-chevron-left:before {
                    content: "\f053"; }

                    .fa-chevron-right:before {
                    content: "\f054"; }

                    .fa-chevron-up:before {
                    content: "\f077"; }

                    .fa-child:before {
                    content: "\f1ae"; }

                    .fa-chrome:before {
                    content: "\f268"; }

                    .fa-chromecast:before {
                    content: "\f838"; }

                    .fa-church:before {
                    content: "\f51d"; }

                    .fa-circle:before {
                    content: "\f111"; }

                    .fa-circle-notch:before {
                    content: "\f1ce"; }

                    .fa-city:before {
                    content: "\f64f"; }

                    .fa-clinic-medical:before {
                    content: "\f7f2"; }

                    .fa-clipboard:before {
                    content: "\f328"; }

                    .fa-clipboard-check:before {
                    content: "\f46c"; }

                    .fa-clipboard-list:before {
                    content: "\f46d"; }

                    .fa-clock:before {
                    content: "\f017"; }

                    .fa-clone:before {
                    content: "\f24d"; }

                    .fa-closed-captioning:before {
                    content: "\f20a"; }

                    .fa-cloud:before {
                    content: "\f0c2"; }

                    .fa-cloud-download-alt:before {
                    content: "\f381"; }

                    .fa-cloud-meatball:before {
                    content: "\f73b"; }

                    .fa-cloud-moon:before {
                    content: "\f6c3"; }

                    .fa-cloud-moon-rain:before {
                    content: "\f73c"; }

                    .fa-cloud-rain:before {
                    content: "\f73d"; }

                    .fa-cloud-showers-heavy:before {
                    content: "\f740"; }

                    .fa-cloud-sun:before {
                    content: "\f6c4"; }

                    .fa-cloud-sun-rain:before {
                    content: "\f743"; }

                    .fa-cloud-upload-alt:before {
                    content: "\f382"; }

                    .fa-cloudflare:before {
                    content: "\e07d"; }

                    .fa-cloudscale:before {
                    content: "\f383"; }

                    .fa-cloudsmith:before {
                    content: "\f384"; }

                    .fa-cloudversify:before {
                    content: "\f385"; }

                    .fa-cocktail:before {
                    content: "\f561"; }

                    .fa-code:before {
                    content: "\f121"; }

                    .fa-code-branch:before {
                    content: "\f126"; }

                    .fa-codepen:before {
                    content: "\f1cb"; }

                    .fa-codiepie:before {
                    content: "\f284"; }

                    .fa-coffee:before {
                    content: "\f0f4"; }

                    .fa-cog:before {
                    content: "\f013"; }

                    .fa-cogs:before {
                    content: "\f085"; }

                    .fa-coins:before {
                    content: "\f51e"; }

                    .fa-columns:before {
                    content: "\f0db"; }

                    .fa-comment:before {
                    content: "\f075"; }

                    .fa-comment-alt:before {
                    content: "\f27a"; }

                    .fa-comment-dollar:before {
                    content: "\f651"; }

                    .fa-comment-dots:before {
                    content: "\f4ad"; }

                    .fa-comment-medical:before {
                    content: "\f7f5"; }

                    .fa-comment-slash:before {
                    content: "\f4b3"; }

                    .fa-comments:before {
                    content: "\f086"; }

                    .fa-comments-dollar:before {
                    content: "\f653"; }

                    .fa-compact-disc:before {
                    content: "\f51f"; }

                    .fa-compass:before {
                    content: "\f14e"; }

                    .fa-compress:before {
                    content: "\f066"; }

                    .fa-compress-alt:before {
                    content: "\f422"; }

                    .fa-compress-arrows-alt:before {
                    content: "\f78c"; }

                    .fa-concierge-bell:before {
                    content: "\f562"; }

                    .fa-confluence:before {
                    content: "\f78d"; }

                    .fa-connectdevelop:before {
                    content: "\f20e"; }

                    .fa-contao:before {
                    content: "\f26d"; }

                    .fa-cookie:before {
                    content: "\f563"; }

                    .fa-cookie-bite:before {
                    content: "\f564"; }

                    .fa-copy:before {
                    content: "\f0c5"; }

                    .fa-copyright:before {
                    content: "\f1f9"; }

                    .fa-cotton-bureau:before {
                    content: "\f89e"; }

                    .fa-couch:before {
                    content: "\f4b8"; }

                    .fa-cpanel:before {
                    content: "\f388"; }

                    .fa-creative-commons:before {
                    content: "\f25e"; }

                    .fa-creative-commons-by:before {
                    content: "\f4e7"; }

                    .fa-creative-commons-nc:before {
                    content: "\f4e8"; }

                    .fa-creative-commons-nc-eu:before {
                    content: "\f4e9"; }

                    .fa-creative-commons-nc-jp:before {
                    content: "\f4ea"; }

                    .fa-creative-commons-nd:before {
                    content: "\f4eb"; }

                    .fa-creative-commons-pd:before {
                    content: "\f4ec"; }

                    .fa-creative-commons-pd-alt:before {
                    content: "\f4ed"; }

                    .fa-creative-commons-remix:before {
                    content: "\f4ee"; }

                    .fa-creative-commons-sa:before {
                    content: "\f4ef"; }

                    .fa-creative-commons-sampling:before {
                    content: "\f4f0"; }

                    .fa-creative-commons-sampling-plus:before {
                    content: "\f4f1"; }

                    .fa-creative-commons-share:before {
                    content: "\f4f2"; }

                    .fa-creative-commons-zero:before {
                    content: "\f4f3"; }

                    .fa-credit-card:before {
                    content: "\f09d"; }

                    .fa-critical-role:before {
                    content: "\f6c9"; }

                    .fa-crop:before {
                    content: "\f125"; }

                    .fa-crop-alt:before {
                    content: "\f565"; }

                    .fa-cross:before {
                    content: "\f654"; }

                    .fa-crosshairs:before {
                    content: "\f05b"; }

                    .fa-crow:before {
                    content: "\f520"; }

                    .fa-crown:before {
                    content: "\f521"; }

                    .fa-crutch:before {
                    content: "\f7f7"; }

                    .fa-css3:before {
                    content: "\f13c"; }

                    .fa-css3-alt:before {
                    content: "\f38b"; }

                    .fa-cube:before {
                    content: "\f1b2"; }

                    .fa-cubes:before {
                    content: "\f1b3"; }

                    .fa-cut:before {
                    content: "\f0c4"; }

                    .fa-cuttlefish:before {
                    content: "\f38c"; }

                    .fa-d-and-d:before {
                    content: "\f38d"; }

                    .fa-d-and-d-beyond:before {
                    content: "\f6ca"; }

                    .fa-dailymotion:before {
                    content: "\e052"; }

                    .fa-dashcube:before {
                    content: "\f210"; }

                    .fa-database:before {
                    content: "\f1c0"; }

                    .fa-deaf:before {
                    content: "\f2a4"; }

                    .fa-deezer:before {
                    content: "\e077"; }

                    .fa-delicious:before {
                    content: "\f1a5"; }

                    .fa-democrat:before {
                    content: "\f747"; }

                    .fa-deploydog:before {
                    content: "\f38e"; }

                    .fa-deskpro:before {
                    content: "\f38f"; }

                    .fa-desktop:before {
                    content: "\f108"; }

                    .fa-dev:before {
                    content: "\f6cc"; }

                    .fa-deviantart:before {
                    content: "\f1bd"; }

                    .fa-dharmachakra:before {
                    content: "\f655"; }

                    .fa-dhl:before {
                    content: "\f790"; }

                    .fa-diagnoses:before {
                    content: "\f470"; }

                    .fa-diaspora:before {
                    content: "\f791"; }

                    .fa-dice:before {
                    content: "\f522"; }

                    .fa-dice-d20:before {
                    content: "\f6cf"; }

                    .fa-dice-d6:before {
                    content: "\f6d1"; }

                    .fa-dice-five:before {
                    content: "\f523"; }

                    .fa-dice-four:before {
                    content: "\f524"; }

                    .fa-dice-one:before {
                    content: "\f525"; }

                    .fa-dice-six:before {
                    content: "\f526"; }

                    .fa-dice-three:before {
                    content: "\f527"; }

                    .fa-dice-two:before {
                    content: "\f528"; }

                    .fa-digg:before {
                    content: "\f1a6"; }

                    .fa-digital-ocean:before {
                    content: "\f391"; }

                    .fa-digital-tachograph:before {
                    content: "\f566"; }

                    .fa-directions:before {
                    content: "\f5eb"; }

                    .fa-discord:before {
                    content: "\f392"; }

                    .fa-discourse:before {
                    content: "\f393"; }

                    .fa-disease:before {
                    content: "\f7fa"; }

                    .fa-divide:before {
                    content: "\f529"; }

                    .fa-dizzy:before {
                    content: "\f567"; }

                    .fa-dna:before {
                    content: "\f471"; }

                    .fa-dochub:before {
                    content: "\f394"; }

                    .fa-docker:before {
                    content: "\f395"; }

                    .fa-dog:before {
                    content: "\f6d3"; }

                    .fa-dollar-sign:before {
                    content: "\f155"; }

                    .fa-dolly:before {
                    content: "\f472"; }

                    .fa-dolly-flatbed:before {
                    content: "\f474"; }

                    .fa-donate:before {
                    content: "\f4b9"; }

                    .fa-door-closed:before {
                    content: "\f52a"; }

                    .fa-door-open:before {
                    content: "\f52b"; }

                    .fa-dot-circle:before {
                    content: "\f192"; }

                    .fa-dove:before {
                    content: "\f4ba"; }

                    .fa-download:before {
                    content: "\f019"; }

                    .fa-draft2digital:before {
                    content: "\f396"; }

                    .fa-drafting-compass:before {
                    content: "\f568"; }

                    .fa-dragon:before {
                    content: "\f6d5"; }

                    .fa-draw-polygon:before {
                    content: "\f5ee"; }

                    .fa-dribbble:before {
                    content: "\f17d"; }

                    .fa-dribbble-square:before {
                    content: "\f397"; }

                    .fa-dropbox:before {
                    content: "\f16b"; }

                    .fa-drum:before {
                    content: "\f569"; }

                    .fa-drum-steelpan:before {
                    content: "\f56a"; }

                    .fa-drumstick-bite:before {
                    content: "\f6d7"; }

                    .fa-drupal:before {
                    content: "\f1a9"; }

                    .fa-dumbbell:before {
                    content: "\f44b"; }

                    .fa-dumpster:before {
                    content: "\f793"; }

                    .fa-dumpster-fire:before {
                    content: "\f794"; }

                    .fa-dungeon:before {
                    content: "\f6d9"; }

                    .fa-dyalog:before {
                    content: "\f399"; }

                    .fa-earlybirds:before {
                    content: "\f39a"; }

                    .fa-ebay:before {
                    content: "\f4f4"; }

                    .fa-edge:before {
                    content: "\f282"; }

                    .fa-edge-legacy:before {
                    content: "\e078"; }

                    .fa-edit:before {
                    content: "\f044"; }

                    .fa-egg:before {
                    content: "\f7fb"; }

                    .fa-eject:before {
                    content: "\f052"; }

                    .fa-elementor:before {
                    content: "\f430"; }

                    .fa-ellipsis-h:before {
                    content: "\f141"; }

                    .fa-ellipsis-v:before {
                    content: "\f142"; }

                    .fa-ello:before {
                    content: "\f5f1"; }

                    .fa-ember:before {
                    content: "\f423"; }

                    .fa-empire:before {
                    content: "\f1d1"; }

                    .fa-envelope:before {
                    content: "\f0e0"; }

                    .fa-envelope-open:before {
                    content: "\f2b6"; }

                    .fa-envelope-open-text:before {
                    content: "\f658"; }

                    .fa-envelope-square:before {
                    content: "\f199"; }

                    .fa-envira:before {
                    content: "\f299"; }

                    .fa-equals:before {
                    content: "\f52c"; }

                    .fa-eraser:before {
                    content: "\f12d"; }

                    .fa-erlang:before {
                    content: "\f39d"; }

                    .fa-ethereum:before {
                    content: "\f42e"; }

                    .fa-ethernet:before {
                    content: "\f796"; }

                    .fa-etsy:before {
                    content: "\f2d7"; }

                    .fa-euro-sign:before {
                    content: "\f153"; }

                    .fa-evernote:before {
                    content: "\f839"; }

                    .fa-exchange-alt:before {
                    content: "\f362"; }

                    .fa-exclamation:before {
                    content: "\f12a"; }

                    .fa-exclamation-circle:before {
                    content: "\f06a"; }

                    .fa-exclamation-triangle:before {
                    content: "\f071"; }

                    .fa-expand:before {
                    content: "\f065"; }

                    .fa-expand-alt:before {
                    content: "\f424"; }

                    .fa-expand-arrows-alt:before {
                    content: "\f31e"; }

                    .fa-expeditedssl:before {
                    content: "\f23e"; }

                    .fa-external-link-alt:before {
                    content: "\f35d"; }

                    .fa-external-link-square-alt:before {
                    content: "\f360"; }

                    .fa-eye:before {
                    content: "\f06e"; }

                    .fa-eye-dropper:before {
                    content: "\f1fb"; }

                    .fa-eye-slash:before {
                    content: "\f070"; }

                    .fa-facebook:before {
                    content: "\f09a"; }

                    .fa-facebook-f:before {
                    content: "\f39e"; }

                    .fa-facebook-messenger:before {
                    content: "\f39f"; }

                    .fa-facebook-square:before {
                    content: "\f082"; }

                    .fa-fan:before {
                    content: "\f863"; }

                    .fa-fantasy-flight-games:before {
                    content: "\f6dc"; }

                    .fa-fast-backward:before {
                    content: "\f049"; }

                    .fa-fast-forward:before {
                    content: "\f050"; }

                    .fa-faucet:before {
                    content: "\e005"; }

                    .fa-fax:before {
                    content: "\f1ac"; }

                    .fa-feather:before {
                    content: "\f52d"; }

                    .fa-feather-alt:before {
                    content: "\f56b"; }

                    .fa-fedex:before {
                    content: "\f797"; }

                    .fa-fedora:before {
                    content: "\f798"; }

                    .fa-female:before {
                    content: "\f182"; }

                    .fa-fighter-jet:before {
                    content: "\f0fb"; }

                    .fa-figma:before {
                    content: "\f799"; }

                    .fa-file:before {
                    content: "\f15b"; }

                    .fa-file-alt:before {
                    content: "\f15c"; }

                    .fa-file-archive:before {
                    content: "\f1c6"; }

                    .fa-file-audio:before {
                    content: "\f1c7"; }

                    .fa-file-code:before {
                    content: "\f1c9"; }

                    .fa-file-contract:before {
                    content: "\f56c"; }

                    .fa-file-csv:before {
                    content: "\f6dd"; }

                    .fa-file-download:before {
                    content: "\f56d"; }

                    .fa-file-excel:before {
                    content: "\f1c3"; }

                    .fa-file-export:before {
                    content: "\f56e"; }

                    .fa-file-image:before {
                    content: "\f1c5"; }

                    .fa-file-import:before {
                    content: "\f56f"; }

                    .fa-file-invoice:before {
                    content: "\f570"; }

                    .fa-file-invoice-dollar:before {
                    content: "\f571"; }

                    .fa-file-medical:before {
                    content: "\f477"; }

                    .fa-file-medical-alt:before {
                    content: "\f478"; }

                    .fa-file-pdf:before {
                    content: "\f1c1"; }

                    .fa-file-powerpoint:before {
                    content: "\f1c4"; }

                    .fa-file-prescription:before {
                    content: "\f572"; }

                    .fa-file-signature:before {
                    content: "\f573"; }

                    .fa-file-upload:before {
                    content: "\f574"; }

                    .fa-file-video:before {
                    content: "\f1c8"; }

                    .fa-file-word:before {
                    content: "\f1c2"; }

                    .fa-fill:before {
                    content: "\f575"; }

                    .fa-fill-drip:before {
                    content: "\f576"; }

                    .fa-film:before {
                    content: "\f008"; }

                    .fa-filter:before {
                    content: "\f0b0"; }

                    .fa-fingerprint:before {
                    content: "\f577"; }

                    .fa-fire:before {
                    content: "\f06d"; }

                    .fa-fire-alt:before {
                    content: "\f7e4"; }

                    .fa-fire-extinguisher:before {
                    content: "\f134"; }

                    .fa-firefox:before {
                    content: "\f269"; }

                    .fa-firefox-browser:before {
                    content: "\e007"; }

                    .fa-first-aid:before {
                    content: "\f479"; }

                    .fa-first-order:before {
                    content: "\f2b0"; }

                    .fa-first-order-alt:before {
                    content: "\f50a"; }

                    .fa-firstdraft:before {
                    content: "\f3a1"; }

                    .fa-fish:before {
                    content: "\f578"; }

                    .fa-fist-raised:before {
                    content: "\f6de"; }

                    .fa-flag:before {
                    content: "\f024"; }

                    .fa-flag-checkered:before {
                    content: "\f11e"; }

                    .fa-flag-usa:before {
                    content: "\f74d"; }

                    .fa-flask:before {
                    content: "\f0c3"; }

                    .fa-flickr:before {
                    content: "\f16e"; }

                    .fa-flipboard:before {
                    content: "\f44d"; }

                    .fa-flushed:before {
                    content: "\f579"; }

                    .fa-fly:before {
                    content: "\f417"; }

                    .fa-folder:before {
                    content: "\f07b"; }

                    .fa-folder-minus:before {
                    content: "\f65d"; }

                    .fa-folder-open:before {
                    content: "\f07c"; }

                    .fa-folder-plus:before {
                    content: "\f65e"; }

                    .fa-font:before {
                    content: "\f031"; }

                    .fa-font-awesome:before {
                    content: "\f2b4"; }

                    .fa-font-awesome-alt:before {
                    content: "\f35c"; }

                    .fa-font-awesome-flag:before {
                    content: "\f425"; }

                    .fa-font-awesome-logo-full:before {
                    content: "\f4e6"; }

                    .fa-fonticons:before {
                    content: "\f280"; }

                    .fa-fonticons-fi:before {
                    content: "\f3a2"; }

                    .fa-football-ball:before {
                    content: "\f44e"; }

                    .fa-fort-awesome:before {
                    content: "\f286"; }

                    .fa-fort-awesome-alt:before {
                    content: "\f3a3"; }

                    .fa-forumbee:before {
                    content: "\f211"; }

                    .fa-forward:before {
                    content: "\f04e"; }

                    .fa-foursquare:before {
                    content: "\f180"; }

                    .fa-free-code-camp:before {
                    content: "\f2c5"; }

                    .fa-freebsd:before {
                    content: "\f3a4"; }

                    .fa-frog:before {
                    content: "\f52e"; }

                    .fa-frown:before {
                    content: "\f119"; }

                    .fa-frown-open:before {
                    content: "\f57a"; }

                    .fa-fulcrum:before {
                    content: "\f50b"; }

                    .fa-funnel-dollar:before {
                    content: "\f662"; }

                    .fa-futbol:before {
                    content: "\f1e3"; }

                    .fa-galactic-republic:before {
                    content: "\f50c"; }

                    .fa-galactic-senate:before {
                    content: "\f50d"; }

                    .fa-gamepad:before {
                    content: "\f11b"; }

                    .fa-gas-pump:before {
                    content: "\f52f"; }

                    .fa-gavel:before {
                    content: "\f0e3"; }

                    .fa-gem:before {
                    content: "\f3a5"; }

                    .fa-genderless:before {
                    content: "\f22d"; }

                    .fa-get-pocket:before {
                    content: "\f265"; }

                    .fa-gg:before {
                    content: "\f260"; }

                    .fa-gg-circle:before {
                    content: "\f261"; }

                    .fa-ghost:before {
                    content: "\f6e2"; }

                    .fa-gift:before {
                    content: "\f06b"; }

                    .fa-gifts:before {
                    content: "\f79c"; }

                    .fa-git:before {
                    content: "\f1d3"; }

                    .fa-git-alt:before {
                    content: "\f841"; }

                    .fa-git-square:before {
                    content: "\f1d2"; }

                    .fa-github:before {
                    content: "\f09b"; }

                    .fa-github-alt:before {
                    content: "\f113"; }

                    .fa-github-square:before {
                    content: "\f092"; }

                    .fa-gitkraken:before {
                    content: "\f3a6"; }

                    .fa-gitlab:before {
                    content: "\f296"; }

                    .fa-gitter:before {
                    content: "\f426"; }

                    .fa-glass-cheers:before {
                    content: "\f79f"; }

                    .fa-glass-martini:before {
                    content: "\f000"; }

                    .fa-glass-martini-alt:before {
                    content: "\f57b"; }

                    .fa-glass-whiskey:before {
                    content: "\f7a0"; }

                    .fa-glasses:before {
                    content: "\f530"; }

                    .fa-glide:before {
                    content: "\f2a5"; }

                    .fa-glide-g:before {
                    content: "\f2a6"; }

                    .fa-globe:before {
                    content: "\f0ac"; }

                    .fa-globe-africa:before {
                    content: "\f57c"; }

                    .fa-globe-americas:before {
                    content: "\f57d"; }

                    .fa-globe-asia:before {
                    content: "\f57e"; }

                    .fa-globe-europe:before {
                    content: "\f7a2"; }

                    .fa-gofore:before {
                    content: "\f3a7"; }

                    .fa-golf-ball:before {
                    content: "\f450"; }

                    .fa-goodreads:before {
                    content: "\f3a8"; }

                    .fa-goodreads-g:before {
                    content: "\f3a9"; }

                    .fa-google:before {
                    content: "\f1a0"; }

                    .fa-google-drive:before {
                    content: "\f3aa"; }

                    .fa-google-pay:before {
                    content: "\e079"; }

                    .fa-google-play:before {
                    content: "\f3ab"; }

                    .fa-google-plus:before {
                    content: "\f2b3"; }

                    .fa-google-plus-g:before {
                    content: "\f0d5"; }

                    .fa-google-plus-square:before {
                    content: "\f0d4"; }

                    .fa-google-wallet:before {
                    content: "\f1ee"; }

                    .fa-gopuram:before {
                    content: "\f664"; }

                    .fa-graduation-cap:before {
                    content: "\f19d"; }

                    .fa-gratipay:before {
                    content: "\f184"; }

                    .fa-grav:before {
                    content: "\f2d6"; }

                    .fa-greater-than:before {
                    content: "\f531"; }

                    .fa-greater-than-equal:before {
                    content: "\f532"; }

                    .fa-grimace:before {
                    content: "\f57f"; }

                    .fa-grin:before {
                    content: "\f580"; }

                    .fa-grin-alt:before {
                    content: "\f581"; }

                    .fa-grin-beam:before {
                    content: "\f582"; }

                    .fa-grin-beam-sweat:before {
                    content: "\f583"; }

                    .fa-grin-hearts:before {
                    content: "\f584"; }

                    .fa-grin-squint:before {
                    content: "\f585"; }

                    .fa-grin-squint-tears:before {
                    content: "\f586"; }

                    .fa-grin-stars:before {
                    content: "\f587"; }

                    .fa-grin-tears:before {
                    content: "\f588"; }

                    .fa-grin-tongue:before {
                    content: "\f589"; }

                    .fa-grin-tongue-squint:before {
                    content: "\f58a"; }

                    .fa-grin-tongue-wink:before {
                    content: "\f58b"; }

                    .fa-grin-wink:before {
                    content: "\f58c"; }

                    .fa-grip-horizontal:before {
                    content: "\f58d"; }

                    .fa-grip-lines:before {
                    content: "\f7a4"; }

                    .fa-grip-lines-vertical:before {
                    content: "\f7a5"; }

                    .fa-grip-vertical:before {
                    content: "\f58e"; }

                    .fa-gripfire:before {
                    content: "\f3ac"; }

                    .fa-grunt:before {
                    content: "\f3ad"; }

                    .fa-guilded:before {
                    content: "\e07e"; }

                    .fa-guitar:before {
                    content: "\f7a6"; }

                    .fa-gulp:before {
                    content: "\f3ae"; }

                    .fa-h-square:before {
                    content: "\f0fd"; }

                    .fa-hacker-news:before {
                    content: "\f1d4"; }

                    .fa-hacker-news-square:before {
                    content: "\f3af"; }

                    .fa-hackerrank:before {
                    content: "\f5f7"; }

                    .fa-hamburger:before {
                    content: "\f805"; }

                    .fa-hammer:before {
                    content: "\f6e3"; }

                    .fa-hamsa:before {
                    content: "\f665"; }

                    .fa-hand-holding:before {
                    content: "\f4bd"; }

                    .fa-hand-holding-heart:before {
                    content: "\f4be"; }

                    .fa-hand-holding-medical:before {
                    content: "\e05c"; }

                    .fa-hand-holding-usd:before {
                    content: "\f4c0"; }

                    .fa-hand-holding-water:before {
                    content: "\f4c1"; }

                    .fa-hand-lizard:before {
                    content: "\f258"; }

                    .fa-hand-middle-finger:before {
                    content: "\f806"; }

                    .fa-hand-paper:before {
                    content: "\f256"; }

                    .fa-hand-peace:before {
                    content: "\f25b"; }

                    .fa-hand-point-down:before {
                    content: "\f0a7"; }

                    .fa-hand-point-left:before {
                    content: "\f0a5"; }

                    .fa-hand-point-right:before {
                    content: "\f0a4"; }

                    .fa-hand-point-up:before {
                    content: "\f0a6"; }

                    .fa-hand-pointer:before {
                    content: "\f25a"; }

                    .fa-hand-rock:before {
                    content: "\f255"; }

                    .fa-hand-scissors:before {
                    content: "\f257"; }

                    .fa-hand-sparkles:before {
                    content: "\e05d"; }

                    .fa-hand-spock:before {
                    content: "\f259"; }

                    .fa-hands:before {
                    content: "\f4c2"; }

                    .fa-hands-helping:before {
                    content: "\f4c4"; }

                    .fa-hands-wash:before {
                    content: "\e05e"; }

                    .fa-handshake:before {
                    content: "\f2b5"; }

                    .fa-handshake-alt-slash:before {
                    content: "\e05f"; }

                    .fa-handshake-slash:before {
                    content: "\e060"; }

                    .fa-hanukiah:before {
                    content: "\f6e6"; }

                    .fa-hard-hat:before {
                    content: "\f807"; }

                    .fa-hashtag:before {
                    content: "\f292"; }

                    .fa-hat-cowboy:before {
                    content: "\f8c0"; }

                    .fa-hat-cowboy-side:before {
                    content: "\f8c1"; }

                    .fa-hat-wizard:before {
                    content: "\f6e8"; }

                    .fa-hdd:before {
                    content: "\f0a0"; }

                    .fa-head-side-cough:before {
                    content: "\e061"; }

                    .fa-head-side-cough-slash:before {
                    content: "\e062"; }

                    .fa-head-side-mask:before {
                    content: "\e063"; }

                    .fa-head-side-virus:before {
                    content: "\e064"; }

                    .fa-heading:before {
                    content: "\f1dc"; }

                    .fa-headphones:before {
                    content: "\f025"; }

                    .fa-headphones-alt:before {
                    content: "\f58f"; }

                    .fa-headset:before {
                    content: "\f590"; }

                    .fa-heart:before {
                    content: "\f004"; }

                    .fa-heart-broken:before {
                    content: "\f7a9"; }

                    .fa-heartbeat:before {
                    content: "\f21e"; }

                    .fa-helicopter:before {
                    content: "\f533"; }

                    .fa-highlighter:before {
                    content: "\f591"; }

                    .fa-hiking:before {
                    content: "\f6ec"; }

                    .fa-hippo:before {
                    content: "\f6ed"; }

                    .fa-hips:before {
                    content: "\f452"; }

                    .fa-hire-a-helper:before {
                    content: "\f3b0"; }

                    .fa-history:before {
                    content: "\f1da"; }

                    .fa-hive:before {
                    content: "\e07f"; }

                    .fa-hockey-puck:before {
                    content: "\f453"; }

                    .fa-holly-berry:before {
                    content: "\f7aa"; }

                    .fa-home:before {
                    content: "\f015"; }

                    .fa-hooli:before {
                    content: "\f427"; }

                    .fa-hornbill:before {
                    content: "\f592"; }

                    .fa-horse:before {
                    content: "\f6f0"; }

                    .fa-horse-head:before {
                    content: "\f7ab"; }

                    .fa-hospital:before {
                    content: "\f0f8"; }

                    .fa-hospital-alt:before {
                    content: "\f47d"; }

                    .fa-hospital-symbol:before {
                    content: "\f47e"; }

                    .fa-hospital-user:before {
                    content: "\f80d"; }

                    .fa-hot-tub:before {
                    content: "\f593"; }

                    .fa-hotdog:before {
                    content: "\f80f"; }

                    .fa-hotel:before {
                    content: "\f594"; }

                    .fa-hotjar:before {
                    content: "\f3b1"; }

                    .fa-hourglass:before {
                    content: "\f254"; }

                    .fa-hourglass-end:before {
                    content: "\f253"; }

                    .fa-hourglass-half:before {
                    content: "\f252"; }

                    .fa-hourglass-start:before {
                    content: "\f251"; }

                    .fa-house-damage:before {
                    content: "\f6f1"; }

                    .fa-house-user:before {
                    content: "\e065"; }

                    .fa-houzz:before {
                    content: "\f27c"; }

                    .fa-hryvnia:before {
                    content: "\f6f2"; }

                    .fa-html5:before {
                    content: "\f13b"; }

                    .fa-hubspot:before {
                    content: "\f3b2"; }

                    .fa-i-cursor:before {
                    content: "\f246"; }

                    .fa-ice-cream:before {
                    content: "\f810"; }

                    .fa-icicles:before {
                    content: "\f7ad"; }

                    .fa-icons:before {
                    content: "\f86d"; }

                    .fa-id-badge:before {
                    content: "\f2c1"; }

                    .fa-id-card:before {
                    content: "\f2c2"; }

                    .fa-id-card-alt:before {
                    content: "\f47f"; }

                    .fa-ideal:before {
                    content: "\e013"; }

                    .fa-igloo:before {
                    content: "\f7ae"; }

                    .fa-image:before {
                    content: "\f03e"; }

                    .fa-images:before {
                    content: "\f302"; }

                    .fa-imdb:before {
                    content: "\f2d8"; }

                    .fa-inbox:before {
                    content: "\f01c"; }

                    .fa-indent:before {
                    content: "\f03c"; }

                    .fa-industry:before {
                    content: "\f275"; }

                    .fa-infinity:before {
                    content: "\f534"; }

                    .fa-info:before {
                    content: "\f129"; }

                    .fa-info-circle:before {
                    content: "\f05a"; }

                    .fa-innosoft:before {
                    content: "\e080"; }

                    .fa-instagram:before {
                    content: "\f16d"; }

                    .fa-instagram-square:before {
                    content: "\e055"; }

                    .fa-instalod:before {
                    content: "\e081"; }

                    .fa-intercom:before {
                    content: "\f7af"; }

                    .fa-internet-explorer:before {
                    content: "\f26b"; }

                    .fa-invision:before {
                    content: "\f7b0"; }

                    .fa-ioxhost:before {
                    content: "\f208"; }

                    .fa-italic:before {
                    content: "\f033"; }

                    .fa-itch-io:before {
                    content: "\f83a"; }

                    .fa-itunes:before {
                    content: "\f3b4"; }

                    .fa-itunes-note:before {
                    content: "\f3b5"; }

                    .fa-java:before {
                    content: "\f4e4"; }

                    .fa-jedi:before {
                    content: "\f669"; }

                    .fa-jedi-order:before {
                    content: "\f50e"; }

                    .fa-jenkins:before {
                    content: "\f3b6"; }

                    .fa-jira:before {
                    content: "\f7b1"; }

                    .fa-joget:before {
                    content: "\f3b7"; }

                    .fa-joint:before {
                    content: "\f595"; }

                    .fa-joomla:before {
                    content: "\f1aa"; }

                    .fa-journal-whills:before {
                    content: "\f66a"; }

                    .fa-js:before {
                    content: "\f3b8"; }

                    .fa-js-square:before {
                    content: "\f3b9"; }

                    .fa-jsfiddle:before {
                    content: "\f1cc"; }

                    .fa-kaaba:before {
                    content: "\f66b"; }

                    .fa-kaggle:before {
                    content: "\f5fa"; }

                    .fa-key:before {
                    content: "\f084"; }

                    .fa-keybase:before {
                    content: "\f4f5"; }

                    .fa-keyboard:before {
                    content: "\f11c"; }

                    .fa-keycdn:before {
                    content: "\f3ba"; }

                    .fa-khanda:before {
                    content: "\f66d"; }

                    .fa-kickstarter:before {
                    content: "\f3bb"; }

                    .fa-kickstarter-k:before {
                    content: "\f3bc"; }

                    .fa-kiss:before {
                    content: "\f596"; }

                    .fa-kiss-beam:before {
                    content: "\f597"; }

                    .fa-kiss-wink-heart:before {
                    content: "\f598"; }

                    .fa-kiwi-bird:before {
                    content: "\f535"; }

                    .fa-korvue:before {
                    content: "\f42f"; }

                    .fa-landmark:before {
                    content: "\f66f"; }

                    .fa-language:before {
                    content: "\f1ab"; }

                    .fa-laptop:before {
                    content: "\f109"; }

                    .fa-laptop-code:before {
                    content: "\f5fc"; }

                    .fa-laptop-house:before {
                    content: "\e066"; }

                    .fa-laptop-medical:before {
                    content: "\f812"; }

                    .fa-laravel:before {
                    content: "\f3bd"; }

                    .fa-lastfm:before {
                    content: "\f202"; }

                    .fa-lastfm-square:before {
                    content: "\f203"; }

                    .fa-laugh:before {
                    content: "\f599"; }

                    .fa-laugh-beam:before {
                    content: "\f59a"; }

                    .fa-laugh-squint:before {
                    content: "\f59b"; }

                    .fa-laugh-wink:before {
                    content: "\f59c"; }

                    .fa-layer-group:before {
                    content: "\f5fd"; }

                    .fa-leaf:before {
                    content: "\f06c"; }

                    .fa-leanpub:before {
                    content: "\f212"; }

                    .fa-lemon:before {
                    content: "\f094"; }

                    .fa-less:before {
                    content: "\f41d"; }

                    .fa-less-than:before {
                    content: "\f536"; }

                    .fa-less-than-equal:before {
                    content: "\f537"; }

                    .fa-level-down-alt:before {
                    content: "\f3be"; }

                    .fa-level-up-alt:before {
                    content: "\f3bf"; }

                    .fa-life-ring:before {
                    content: "\f1cd"; }

                    .fa-lightbulb:before {
                    content: "\f0eb"; }

                    .fa-line:before {
                    content: "\f3c0"; }

                    .fa-link:before {
                    content: "\f0c1"; }

                    .fa-linkedin:before {
                    content: "\f08c"; }

                    .fa-linkedin-in:before {
                    content: "\f0e1"; }

                    .fa-linode:before {
                    content: "\f2b8"; }

                    .fa-linux:before {
                    content: "\f17c"; }

                    .fa-lira-sign:before {
                    content: "\f195"; }

                    .fa-list:before {
                    content: "\f03a"; }

                    .fa-list-alt:before {
                    content: "\f022"; }

                    .fa-list-ol:before {
                    content: "\f0cb"; }

                    .fa-list-ul:before {
                    content: "\f0ca"; }

                    .fa-location-arrow:before {
                    content: "\f124"; }

                    .fa-lock:before {
                    content: "\f023"; }

                    .fa-lock-open:before {
                    content: "\f3c1"; }

                    .fa-long-arrow-alt-down:before {
                    content: "\f309"; }

                    .fa-long-arrow-alt-left:before {
                    content: "\f30a"; }

                    .fa-long-arrow-alt-right:before {
                    content: "\f30b"; }

                    .fa-long-arrow-alt-up:before {
                    content: "\f30c"; }

                    .fa-low-vision:before {
                    content: "\f2a8"; }

                    .fa-luggage-cart:before {
                    content: "\f59d"; }

                    .fa-lungs:before {
                    content: "\f604"; }

                    .fa-lungs-virus:before {
                    content: "\e067"; }

                    .fa-lyft:before {
                    content: "\f3c3"; }

                    .fa-magento:before {
                    content: "\f3c4"; }

                    .fa-magic:before {
                    content: "\f0d0"; }

                    .fa-magnet:before {
                    content: "\f076"; }

                    .fa-mail-bulk:before {
                    content: "\f674"; }

                    .fa-mailchimp:before {
                    content: "\f59e"; }

                    .fa-male:before {
                    content: "\f183"; }

                    .fa-mandalorian:before {
                    content: "\f50f"; }

                    .fa-map:before {
                    content: "\f279"; }

                    .fa-map-marked:before {
                    content: "\f59f"; }

                    .fa-map-marked-alt:before {
                    content: "\f5a0"; }

                    .fa-map-marker:before {
                    content: "\f041"; }

                    .fa-map-marker-alt:before {
                    content: "\f3c5"; }

                    .fa-map-pin:before {
                    content: "\f276"; }

                    .fa-map-signs:before {
                    content: "\f277"; }

                    .fa-markdown:before {
                    content: "\f60f"; }

                    .fa-marker:before {
                    content: "\f5a1"; }

                    .fa-mars:before {
                    content: "\f222"; }

                    .fa-mars-double:before {
                    content: "\f227"; }

                    .fa-mars-stroke:before {
                    content: "\f229"; }

                    .fa-mars-stroke-h:before {
                    content: "\f22b"; }

                    .fa-mars-stroke-v:before {
                    content: "\f22a"; }

                    .fa-mask:before {
                    content: "\f6fa"; }

                    .fa-mastodon:before {
                    content: "\f4f6"; }

                    .fa-maxcdn:before {
                    content: "\f136"; }

                    .fa-mdb:before {
                    content: "\f8ca"; }

                    .fa-medal:before {
                    content: "\f5a2"; }

                    .fa-medapps:before {
                    content: "\f3c6"; }

                    .fa-medium:before {
                    content: "\f23a"; }

                    .fa-medium-m:before {
                    content: "\f3c7"; }

                    .fa-medkit:before {
                    content: "\f0fa"; }

                    .fa-medrt:before {
                    content: "\f3c8"; }

                    .fa-meetup:before {
                    content: "\f2e0"; }

                    .fa-megaport:before {
                    content: "\f5a3"; }

                    .fa-meh:before {
                    content: "\f11a"; }

                    .fa-meh-blank:before {
                    content: "\f5a4"; }

                    .fa-meh-rolling-eyes:before {
                    content: "\f5a5"; }

                    .fa-memory:before {
                    content: "\f538"; }

                    .fa-mendeley:before {
                    content: "\f7b3"; }

                    .fa-menorah:before {
                    content: "\f676"; }

                    .fa-mercury:before {
                    content: "\f223"; }

                    .fa-meteor:before {
                    content: "\f753"; }

                    .fa-microblog:before {
                    content: "\e01a"; }

                    .fa-microchip:before {
                    content: "\f2db"; }

                    .fa-microphone:before {
                    content: "\f130"; }

                    .fa-microphone-alt:before {
                    content: "\f3c9"; }

                    .fa-microphone-alt-slash:before {
                    content: "\f539"; }

                    .fa-microphone-slash:before {
                    content: "\f131"; }

                    .fa-microscope:before {
                    content: "\f610"; }

                    .fa-microsoft:before {
                    content: "\f3ca"; }

                    .fa-minus:before {
                    content: "\f068"; }

                    .fa-minus-circle:before {
                    content: "\f056"; }

                    .fa-minus-square:before {
                    content: "\f146"; }

                    .fa-mitten:before {
                    content: "\f7b5"; }

                    .fa-mix:before {
                    content: "\f3cb"; }

                    .fa-mixcloud:before {
                    content: "\f289"; }

                    .fa-mixer:before {
                    content: "\e056"; }

                    .fa-mizuni:before {
                    content: "\f3cc"; }

                    .fa-mobile:before {
                    content: "\f10b"; }

                    .fa-mobile-alt:before {
                    content: "\f3cd"; }

                    .fa-modx:before {
                    content: "\f285"; }

                    .fa-monero:before {
                    content: "\f3d0"; }

                    .fa-money-bill:before {
                    content: "\f0d6"; }

                    .fa-money-bill-alt:before {
                    content: "\f3d1"; }

                    .fa-money-bill-wave:before {
                    content: "\f53a"; }

                    .fa-money-bill-wave-alt:before {
                    content: "\f53b"; }

                    .fa-money-check:before {
                    content: "\f53c"; }

                    .fa-money-check-alt:before {
                    content: "\f53d"; }

                    .fa-monument:before {
                    content: "\f5a6"; }

                    .fa-moon:before {
                    content: "\f186"; }

                    .fa-mortar-pestle:before {
                    content: "\f5a7"; }

                    .fa-mosque:before {
                    content: "\f678"; }

                    .fa-motorcycle:before {
                    content: "\f21c"; }

                    .fa-mountain:before {
                    content: "\f6fc"; }

                    .fa-mouse:before {
                    content: "\f8cc"; }

                    .fa-mouse-pointer:before {
                    content: "\f245"; }

                    .fa-mug-hot:before {
                    content: "\f7b6"; }

                    .fa-music:before {
                    content: "\f001"; }

                    .fa-napster:before {
                    content: "\f3d2"; }

                    .fa-neos:before {
                    content: "\f612"; }

                    .fa-network-wired:before {
                    content: "\f6ff"; }

                    .fa-neuter:before {
                    content: "\f22c"; }

                    .fa-newspaper:before {
                    content: "\f1ea"; }

                    .fa-nimblr:before {
                    content: "\f5a8"; }

                    .fa-node:before {
                    content: "\f419"; }

                    .fa-node-js:before {
                    content: "\f3d3"; }

                    .fa-not-equal:before {
                    content: "\f53e"; }

                    .fa-notes-medical:before {
                    content: "\f481"; }

                    .fa-npm:before {
                    content: "\f3d4"; }

                    .fa-ns8:before {
                    content: "\f3d5"; }

                    .fa-nutritionix:before {
                    content: "\f3d6"; }

                    .fa-object-group:before {
                    content: "\f247"; }

                    .fa-object-ungroup:before {
                    content: "\f248"; }

                    .fa-octopus-deploy:before {
                    content: "\e082"; }

                    .fa-odnoklassniki:before {
                    content: "\f263"; }

                    .fa-odnoklassniki-square:before {
                    content: "\f264"; }

                    .fa-oil-can:before {
                    content: "\f613"; }

                    .fa-old-republic:before {
                    content: "\f510"; }

                    .fa-om:before {
                    content: "\f679"; }

                    .fa-opencart:before {
                    content: "\f23d"; }

                    .fa-openid:before {
                    content: "\f19b"; }

                    .fa-opera:before {
                    content: "\f26a"; }

                    .fa-optin-monster:before {
                    content: "\f23c"; }

                    .fa-orcid:before {
                    content: "\f8d2"; }

                    .fa-osi:before {
                    content: "\f41a"; }

                    .fa-otter:before {
                    content: "\f700"; }

                    .fa-outdent:before {
                    content: "\f03b"; }

                    .fa-page4:before {
                    content: "\f3d7"; }

                    .fa-pagelines:before {
                    content: "\f18c"; }

                    .fa-pager:before {
                    content: "\f815"; }

                    .fa-paint-brush:before {
                    content: "\f1fc"; }

                    .fa-paint-roller:before {
                    content: "\f5aa"; }

                    .fa-palette:before {
                    content: "\f53f"; }

                    .fa-palfed:before {
                    content: "\f3d8"; }

                    .fa-pallet:before {
                    content: "\f482"; }

                    .fa-paper-plane:before {
                    content: "\f1d8"; }

                    .fa-paperclip:before {
                    content: "\f0c6"; }

                    .fa-parachute-box:before {
                    content: "\f4cd"; }

                    .fa-paragraph:before {
                    content: "\f1dd"; }

                    .fa-parking:before {
                    content: "\f540"; }

                    .fa-passport:before {
                    content: "\f5ab"; }

                    .fa-pastafarianism:before {
                    content: "\f67b"; }

                    .fa-paste:before {
                    content: "\f0ea"; }

                    .fa-patreon:before {
                    content: "\f3d9"; }

                    .fa-pause:before {
                    content: "\f04c"; }

                    .fa-pause-circle:before {
                    content: "\f28b"; }

                    .fa-paw:before {
                    content: "\f1b0"; }

                    .fa-paypal:before {
                    content: "\f1ed"; }

                    .fa-peace:before {
                    content: "\f67c"; }

                    .fa-pen:before {
                    content: "\f304"; }

                    .fa-pen-alt:before {
                    content: "\f305"; }

                    .fa-pen-fancy:before {
                    content: "\f5ac"; }

                    .fa-pen-nib:before {
                    content: "\f5ad"; }

                    .fa-pen-square:before {
                    content: "\f14b"; }

                    .fa-pencil-alt:before {
                    content: "\f303"; }

                    .fa-pencil-ruler:before {
                    content: "\f5ae"; }

                    .fa-penny-arcade:before {
                    content: "\f704"; }

                    .fa-people-arrows:before {
                    content: "\e068"; }

                    .fa-people-carry:before {
                    content: "\f4ce"; }

                    .fa-pepper-hot:before {
                    content: "\f816"; }

                    .fa-perbyte:before {
                    content: "\e083"; }

                    .fa-percent:before {
                    content: "\f295"; }

                    .fa-percentage:before {
                    content: "\f541"; }

                    .fa-periscope:before {
                    content: "\f3da"; }

                    .fa-person-booth:before {
                    content: "\f756"; }

                    .fa-phabricator:before {
                    content: "\f3db"; }

                    .fa-phoenix-framework:before {
                    content: "\f3dc"; }

                    .fa-phoenix-squadron:before {
                    content: "\f511"; }

                    .fa-phone:before {
                    content: "\f095"; }

                    .fa-phone-alt:before {
                    content: "\f879"; }

                    .fa-phone-slash:before {
                    content: "\f3dd"; }

                    .fa-phone-square:before {
                    content: "\f098"; }

                    .fa-phone-square-alt:before {
                    content: "\f87b"; }

                    .fa-phone-volume:before {
                    content: "\f2a0"; }

                    .fa-photo-video:before {
                    content: "\f87c"; }

                    .fa-php:before {
                    content: "\f457"; }

                    .fa-pied-piper:before {
                    content: "\f2ae"; }

                    .fa-pied-piper-alt:before {
                    content: "\f1a8"; }

                    .fa-pied-piper-hat:before {
                    content: "\f4e5"; }

                    .fa-pied-piper-pp:before {
                    content: "\f1a7"; }

                    .fa-pied-piper-square:before {
                    content: "\e01e"; }

                    .fa-piggy-bank:before {
                    content: "\f4d3"; }

                    .fa-pills:before {
                    content: "\f484"; }

                    .fa-pinterest:before {
                    content: "\f0d2"; }

                    .fa-pinterest-p:before {
                    content: "\f231"; }

                    .fa-pinterest-square:before {
                    content: "\f0d3"; }

                    .fa-pizza-slice:before {
                    content: "\f818"; }

                    .fa-place-of-worship:before {
                    content: "\f67f"; }

                    .fa-plane:before {
                    content: "\f072"; }

                    .fa-plane-arrival:before {
                    content: "\f5af"; }

                    .fa-plane-departure:before {
                    content: "\f5b0"; }

                    .fa-plane-slash:before {
                    content: "\e069"; }

                    .fa-play:before {
                    content: "\f04b"; }

                    .fa-play-circle:before {
                    content: "\f144"; }

                    .fa-playstation:before {
                    content: "\f3df"; }

                    .fa-plug:before {
                    content: "\f1e6"; }

                    .fa-plus:before {
                    content: "\f067"; }

                    .fa-plus-circle:before {
                    content: "\f055"; }

                    .fa-plus-square:before {
                    content: "\f0fe"; }

                    .fa-podcast:before {
                    content: "\f2ce"; }

                    .fa-poll:before {
                    content: "\f681"; }

                    .fa-poll-h:before {
                    content: "\f682"; }

                    .fa-poo:before {
                    content: "\f2fe"; }

                    .fa-poo-storm:before {
                    content: "\f75a"; }

                    .fa-poop:before {
                    content: "\f619"; }

                    .fa-portrait:before {
                    content: "\f3e0"; }

                    .fa-pound-sign:before {
                    content: "\f154"; }

                    .fa-power-off:before {
                    content: "\f011"; }

                    .fa-pray:before {
                    content: "\f683"; }

                    .fa-praying-hands:before {
                    content: "\f684"; }

                    .fa-prescription:before {
                    content: "\f5b1"; }

                    .fa-prescription-bottle:before {
                    content: "\f485"; }

                    .fa-prescription-bottle-alt:before {
                    content: "\f486"; }

                    .fa-print:before {
                    content: "\f02f"; }

                    .fa-procedures:before {
                    content: "\f487"; }

                    .fa-product-hunt:before {
                    content: "\f288"; }

                    .fa-project-diagram:before {
                    content: "\f542"; }

                    .fa-pump-medical:before {
                    content: "\e06a"; }

                    .fa-pump-soap:before {
                    content: "\e06b"; }

                    .fa-pushed:before {
                    content: "\f3e1"; }

                    .fa-puzzle-piece:before {
                    content: "\f12e"; }

                    .fa-python:before {
                    content: "\f3e2"; }

                    .fa-qq:before {
                    content: "\f1d6"; }

                    .fa-qrcode:before {
                    content: "\f029"; }

                    .fa-question:before {
                    content: "\f128"; }

                    .fa-question-circle:before {
                    content: "\f059"; }

                    .fa-quidditch:before {
                    content: "\f458"; }

                    .fa-quinscape:before {
                    content: "\f459"; }

                    .fa-quora:before {
                    content: "\f2c4"; }

                    .fa-quote-left:before {
                    content: "\f10d"; }

                    .fa-quote-right:before {
                    content: "\f10e"; }

                    .fa-quran:before {
                    content: "\f687"; }

                    .fa-r-project:before {
                    content: "\f4f7"; }

                    .fa-radiation:before {
                    content: "\f7b9"; }

                    .fa-radiation-alt:before {
                    content: "\f7ba"; }

                    .fa-rainbow:before {
                    content: "\f75b"; }

                    .fa-random:before {
                    content: "\f074"; }

                    .fa-raspberry-pi:before {
                    content: "\f7bb"; }

                    .fa-ravelry:before {
                    content: "\f2d9"; }

                    .fa-react:before {
                    content: "\f41b"; }

                    .fa-reacteurope:before {
                    content: "\f75d"; }

                    .fa-readme:before {
                    content: "\f4d5"; }

                    .fa-rebel:before {
                    content: "\f1d0"; }

                    .fa-receipt:before {
                    content: "\f543"; }

                    .fa-record-vinyl:before {
                    content: "\f8d9"; }

                    .fa-recycle:before {
                    content: "\f1b8"; }

                    .fa-red-river:before {
                    content: "\f3e3"; }

                    .fa-reddit:before {
                    content: "\f1a1"; }

                    .fa-reddit-alien:before {
                    content: "\f281"; }

                    .fa-reddit-square:before {
                    content: "\f1a2"; }

                    .fa-redhat:before {
                    content: "\f7bc"; }

                    .fa-redo:before {
                    content: "\f01e"; }

                    .fa-redo-alt:before {
                    content: "\f2f9"; }

                    .fa-registered:before {
                    content: "\f25d"; }

                    .fa-remove-format:before {
                    content: "\f87d"; }

                    .fa-renren:before {
                    content: "\f18b"; }

                    .fa-reply:before {
                    content: "\f3e5"; }

                    .fa-reply-all:before {
                    content: "\f122"; }

                    .fa-replyd:before {
                    content: "\f3e6"; }

                    .fa-republican:before {
                    content: "\f75e"; }

                    .fa-researchgate:before {
                    content: "\f4f8"; }

                    .fa-resolving:before {
                    content: "\f3e7"; }

                    .fa-restroom:before {
                    content: "\f7bd"; }

                    .fa-retweet:before {
                    content: "\f079"; }

                    .fa-rev:before {
                    content: "\f5b2"; }

                    .fa-ribbon:before {
                    content: "\f4d6"; }

                    .fa-ring:before {
                    content: "\f70b"; }

                    .fa-road:before {
                    content: "\f018"; }

                    .fa-robot:before {
                    content: "\f544"; }

                    .fa-rocket:before {
                    content: "\f135"; }

                    .fa-rocketchat:before {
                    content: "\f3e8"; }

                    .fa-rockrms:before {
                    content: "\f3e9"; }

                    .fa-route:before {
                    content: "\f4d7"; }

                    .fa-rss:before {
                    content: "\f09e"; }

                    .fa-rss-square:before {
                    content: "\f143"; }

                    .fa-ruble-sign:before {
                    content: "\f158"; }

                    .fa-ruler:before {
                    content: "\f545"; }

                    .fa-ruler-combined:before {
                    content: "\f546"; }

                    .fa-ruler-horizontal:before {
                    content: "\f547"; }

                    .fa-ruler-vertical:before {
                    content: "\f548"; }

                    .fa-running:before {
                    content: "\f70c"; }

                    .fa-rupee-sign:before {
                    content: "\f156"; }

                    .fa-rust:before {
                    content: "\e07a"; }

                    .fa-sad-cry:before {
                    content: "\f5b3"; }

                    .fa-sad-tear:before {
                    content: "\f5b4"; }

                    .fa-safari:before {
                    content: "\f267"; }

                    .fa-salesforce:before {
                    content: "\f83b"; }

                    .fa-sass:before {
                    content: "\f41e"; }

                    .fa-satellite:before {
                    content: "\f7bf"; }

                    .fa-satellite-dish:before {
                    content: "\f7c0"; }

                    .fa-save:before {
                    content: "\f0c7"; }

                    .fa-schlix:before {
                    content: "\f3ea"; }

                    .fa-school:before {
                    content: "\f549"; }

                    .fa-screwdriver:before {
                    content: "\f54a"; }

                    .fa-scribd:before {
                    content: "\f28a"; }

                    .fa-scroll:before {
                    content: "\f70e"; }

                    .fa-sd-card:before {
                    content: "\f7c2"; }

                    .fa-search:before {
                    content: "\f002"; }

                    .fa-search-dollar:before {
                    content: "\f688"; }

                    .fa-search-location:before {
                    content: "\f689"; }

                    .fa-search-minus:before {
                    content: "\f010"; }

                    .fa-search-plus:before {
                    content: "\f00e"; }

                    .fa-searchengin:before {
                    content: "\f3eb"; }

                    .fa-seedling:before {
                    content: "\f4d8"; }

                    .fa-sellcast:before {
                    content: "\f2da"; }

                    .fa-sellsy:before {
                    content: "\f213"; }

                    .fa-server:before {
                    content: "\f233"; }

                    .fa-servicestack:before {
                    content: "\f3ec"; }

                    .fa-shapes:before {
                    content: "\f61f"; }

                    .fa-share:before {
                    content: "\f064"; }

                    .fa-share-alt:before {
                    content: "\f1e0"; }

                    .fa-share-alt-square:before {
                    content: "\f1e1"; }

                    .fa-share-square:before {
                    content: "\f14d"; }

                    .fa-shekel-sign:before {
                    content: "\f20b"; }

                    .fa-shield-alt:before {
                    content: "\f3ed"; }

                    .fa-shield-virus:before {
                    content: "\e06c"; }

                    .fa-ship:before {
                    content: "\f21a"; }

                    .fa-shipping-fast:before {
                    content: "\f48b"; }

                    .fa-shirtsinbulk:before {
                    content: "\f214"; }

                    .fa-shoe-prints:before {
                    content: "\f54b"; }

                    .fa-shopify:before {
                    content: "\e057"; }

                    .fa-shopping-bag:before {
                    content: "\f290"; }

                    .fa-shopping-basket:before {
                    content: "\f291"; }

                    .fa-shopping-cart:before {
                    content: "\f07a"; }

                    .fa-shopware:before {
                    content: "\f5b5"; }

                    .fa-shower:before {
                    content: "\f2cc"; }

                    .fa-shuttle-van:before {
                    content: "\f5b6"; }

                    .fa-sign:before {
                    content: "\f4d9"; }

                    .fa-sign-in-alt:before {
                    content: "\f2f6"; }

                    .fa-sign-language:before {
                    content: "\f2a7"; }

                    .fa-sign-out-alt:before {
                    content: "\f2f5"; }

                    .fa-signal:before {
                    content: "\f012"; }

                    .fa-signature:before {
                    content: "\f5b7"; }

                    .fa-sim-card:before {
                    content: "\f7c4"; }

                    .fa-simplybuilt:before {
                    content: "\f215"; }

                    .fa-sink:before {
                    content: "\e06d"; }

                    .fa-sistrix:before {
                    content: "\f3ee"; }

                    .fa-sitemap:before {
                    content: "\f0e8"; }

                    .fa-sith:before {
                    content: "\f512"; }

                    .fa-skating:before {
                    content: "\f7c5"; }

                    .fa-sketch:before {
                    content: "\f7c6"; }

                    .fa-skiing:before {
                    content: "\f7c9"; }

                    .fa-skiing-nordic:before {
                    content: "\f7ca"; }

                    .fa-skull:before {
                    content: "\f54c"; }

                    .fa-skull-crossbones:before {
                    content: "\f714"; }

                    .fa-skyatlas:before {
                    content: "\f216"; }

                    .fa-skype:before {
                    content: "\f17e"; }

                    .fa-slack:before {
                    content: "\f198"; }

                    .fa-slack-hash:before {
                    content: "\f3ef"; }

                    .fa-slash:before {
                    content: "\f715"; }

                    .fa-sleigh:before {
                    content: "\f7cc"; }

                    .fa-sliders-h:before {
                    content: "\f1de"; }

                    .fa-slideshare:before {
                    content: "\f1e7"; }

                    .fa-smile:before {
                    content: "\f118"; }

                    .fa-smile-beam:before {
                    content: "\f5b8"; }

                    .fa-smile-wink:before {
                    content: "\f4da"; }

                    .fa-smog:before {
                    content: "\f75f"; }

                    .fa-smoking:before {
                    content: "\f48d"; }

                    .fa-smoking-ban:before {
                    content: "\f54d"; }

                    .fa-sms:before {
                    content: "\f7cd"; }

                    .fa-snapchat:before {
                    content: "\f2ab"; }

                    .fa-snapchat-ghost:before {
                    content: "\f2ac"; }

                    .fa-snapchat-square:before {
                    content: "\f2ad"; }

                    .fa-snowboarding:before {
                    content: "\f7ce"; }

                    .fa-snowflake:before {
                    content: "\f2dc"; }

                    .fa-snowman:before {
                    content: "\f7d0"; }

                    .fa-snowplow:before {
                    content: "\f7d2"; }

                    .fa-soap:before {
                    content: "\e06e"; }

                    .fa-socks:before {
                    content: "\f696"; }

                    .fa-solar-panel:before {
                    content: "\f5ba"; }

                    .fa-sort:before {
                    content: "\f0dc"; }

                    .fa-sort-alpha-down:before {
                    content: "\f15d"; }

                    .fa-sort-alpha-down-alt:before {
                    content: "\f881"; }

                    .fa-sort-alpha-up:before {
                    content: "\f15e"; }

                    .fa-sort-alpha-up-alt:before {
                    content: "\f882"; }

                    .fa-sort-amount-down:before {
                    content: "\f160"; }

                    .fa-sort-amount-down-alt:before {
                    content: "\f884"; }

                    .fa-sort-amount-up:before {
                    content: "\f161"; }

                    .fa-sort-amount-up-alt:before {
                    content: "\f885"; }

                    .fa-sort-down:before {
                    content: "\f0dd"; }

                    .fa-sort-numeric-down:before {
                    content: "\f162"; }

                    .fa-sort-numeric-down-alt:before {
                    content: "\f886"; }

                    .fa-sort-numeric-up:before {
                    content: "\f163"; }

                    .fa-sort-numeric-up-alt:before {
                    content: "\f887"; }

                    .fa-sort-up:before {
                    content: "\f0de"; }

                    .fa-soundcloud:before {
                    content: "\f1be"; }

                    .fa-sourcetree:before {
                    content: "\f7d3"; }

                    .fa-spa:before {
                    content: "\f5bb"; }

                    .fa-space-shuttle:before {
                    content: "\f197"; }

                    .fa-speakap:before {
                    content: "\f3f3"; }

                    .fa-speaker-deck:before {
                    content: "\f83c"; }

                    .fa-spell-check:before {
                    content: "\f891"; }

                    .fa-spider:before {
                    content: "\f717"; }

                    .fa-spinner:before {
                    content: "\f110"; }

                    .fa-splotch:before {
                    content: "\f5bc"; }

                    .fa-spotify:before {
                    content: "\f1bc"; }

                    .fa-spray-can:before {
                    content: "\f5bd"; }

                    .fa-square:before {
                    content: "\f0c8"; }

                    .fa-square-full:before {
                    content: "\f45c"; }

                    .fa-square-root-alt:before {
                    content: "\f698"; }

                    .fa-squarespace:before {
                    content: "\f5be"; }

                    .fa-stack-exchange:before {
                    content: "\f18d"; }

                    .fa-stack-overflow:before {
                    content: "\f16c"; }

                    .fa-stackpath:before {
                    content: "\f842"; }

                    .fa-stamp:before {
                    content: "\f5bf"; }

                    .fa-star:before {
                    content: "\f005"; }

                    .fa-star-and-crescent:before {
                    content: "\f699"; }

                    .fa-star-half:before {
                    content: "\f089"; }

                    .fa-star-half-alt:before {
                    content: "\f5c0"; }

                    .fa-star-of-david:before {
                    content: "\f69a"; }

                    .fa-star-of-life:before {
                    content: "\f621"; }

                    .fa-staylinked:before {
                    content: "\f3f5"; }

                    .fa-steam:before {
                    content: "\f1b6"; }

                    .fa-steam-square:before {
                    content: "\f1b7"; }

                    .fa-steam-symbol:before {
                    content: "\f3f6"; }

                    .fa-step-backward:before {
                    content: "\f048"; }

                    .fa-step-forward:before {
                    content: "\f051"; }

                    .fa-stethoscope:before {
                    content: "\f0f1"; }

                    .fa-sticker-mule:before {
                    content: "\f3f7"; }

                    .fa-sticky-note:before {
                    content: "\f249"; }

                    .fa-stop:before {
                    content: "\f04d"; }

                    .fa-stop-circle:before {
                    content: "\f28d"; }

                    .fa-stopwatch:before {
                    content: "\f2f2"; }

                    .fa-stopwatch-20:before {
                    content: "\e06f"; }

                    .fa-store:before {
                    content: "\f54e"; }

                    .fa-store-alt:before {
                    content: "\f54f"; }

                    .fa-store-alt-slash:before {
                    content: "\e070"; }

                    .fa-store-slash:before {
                    content: "\e071"; }

                    .fa-strava:before {
                    content: "\f428"; }

                    .fa-stream:before {
                    content: "\f550"; }

                    .fa-street-view:before {
                    content: "\f21d"; }

                    .fa-strikethrough:before {
                    content: "\f0cc"; }

                    .fa-stripe:before {
                    content: "\f429"; }

                    .fa-stripe-s:before {
                    content: "\f42a"; }

                    .fa-stroopwafel:before {
                    content: "\f551"; }

                    .fa-studiovinari:before {
                    content: "\f3f8"; }

                    .fa-stumbleupon:before {
                    content: "\f1a4"; }

                    .fa-stumbleupon-circle:before {
                    content: "\f1a3"; }

                    .fa-subscript:before {
                    content: "\f12c"; }

                    .fa-subway:before {
                    content: "\f239"; }

                    .fa-suitcase:before {
                    content: "\f0f2"; }

                    .fa-suitcase-rolling:before {
                    content: "\f5c1"; }

                    .fa-sun:before {
                    content: "\f185"; }

                    .fa-superpowers:before {
                    content: "\f2dd"; }

                    .fa-superscript:before {
                    content: "\f12b"; }

                    .fa-supple:before {
                    content: "\f3f9"; }

                    .fa-surprise:before {
                    content: "\f5c2"; }

                    .fa-suse:before {
                    content: "\f7d6"; }

                    .fa-swatchbook:before {
                    content: "\f5c3"; }

                    .fa-swift:before {
                    content: "\f8e1"; }

                    .fa-swimmer:before {
                    content: "\f5c4"; }

                    .fa-swimming-pool:before {
                    content: "\f5c5"; }

                    .fa-symfony:before {
                    content: "\f83d"; }

                    .fa-synagogue:before {
                    content: "\f69b"; }

                    .fa-sync:before {
                    content: "\f021"; }

                    .fa-sync-alt:before {
                    content: "\f2f1"; }

                    .fa-syringe:before {
                    content: "\f48e"; }

                    .fa-table:before {
                    content: "\f0ce"; }

                    .fa-table-tennis:before {
                    content: "\f45d"; }

                    .fa-tablet:before {
                    content: "\f10a"; }

                    .fa-tablet-alt:before {
                    content: "\f3fa"; }

                    .fa-tablets:before {
                    content: "\f490"; }

                    .fa-tachometer-alt:before {
                    content: "\f3fd"; }

                    .fa-tag:before {
                    content: "\f02b"; }

                    .fa-tags:before {
                    content: "\f02c"; }

                    .fa-tape:before {
                    content: "\f4db"; }

                    .fa-tasks:before {
                    content: "\f0ae"; }

                    .fa-taxi:before {
                    content: "\f1ba"; }

                    .fa-teamspeak:before {
                    content: "\f4f9"; }

                    .fa-teeth:before {
                    content: "\f62e"; }

                    .fa-teeth-open:before {
                    content: "\f62f"; }

                    .fa-telegram:before {
                    content: "\f2c6"; }

                    .fa-telegram-plane:before {
                    content: "\f3fe"; }

                    .fa-temperature-high:before {
                    content: "\f769"; }

                    .fa-temperature-low:before {
                    content: "\f76b"; }

                    .fa-tencent-weibo:before {
                    content: "\f1d5"; }

                    .fa-tenge:before {
                    content: "\f7d7"; }

                    .fa-terminal:before {
                    content: "\f120"; }

                    .fa-text-height:before {
                    content: "\f034"; }

                    .fa-text-width:before {
                    content: "\f035"; }

                    .fa-th:before {
                    content: "\f00a"; }

                    .fa-th-large:before {
                    content: "\f009"; }

                    .fa-th-list:before {
                    content: "\f00b"; }

                    .fa-the-red-yeti:before {
                    content: "\f69d"; }

                    .fa-theater-masks:before {
                    content: "\f630"; }

                    .fa-themeco:before {
                    content: "\f5c6"; }

                    .fa-themeisle:before {
                    content: "\f2b2"; }

                    .fa-thermometer:before {
                    content: "\f491"; }

                    .fa-thermometer-empty:before {
                    content: "\f2cb"; }

                    .fa-thermometer-full:before {
                    content: "\f2c7"; }

                    .fa-thermometer-half:before {
                    content: "\f2c9"; }

                    .fa-thermometer-quarter:before {
                    content: "\f2ca"; }

                    .fa-thermometer-three-quarters:before {
                    content: "\f2c8"; }

                    .fa-think-peaks:before {
                    content: "\f731"; }

                    .fa-thumbs-down:before {
                    content: "\f165"; }

                    .fa-thumbs-up:before {
                    content: "\f164"; }

                    .fa-thumbtack:before {
                    content: "\f08d"; }

                    .fa-ticket-alt:before {
                    content: "\f3ff"; }

                    .fa-tiktok:before {
                    content: "\e07b"; }

                    .fa-times:before {
                    content: "\f00d"; }

                    .fa-times-circle:before {
                    content: "\f057"; }

                    .fa-tint:before {
                    content: "\f043"; }

                    .fa-tint-slash:before {
                    content: "\f5c7"; }

                    .fa-tired:before {
                    content: "\f5c8"; }

                    .fa-toggle-off:before {
                    content: "\f204"; }

                    .fa-toggle-on:before {
                    content: "\f205"; }

                    .fa-toilet:before {
                    content: "\f7d8"; }

                    .fa-toilet-paper:before {
                    content: "\f71e"; }

                    .fa-toilet-paper-slash:before {
                    content: "\e072"; }

                    .fa-toolbox:before {
                    content: "\f552"; }

                    .fa-tools:before {
                    content: "\f7d9"; }

                    .fa-tooth:before {
                    content: "\f5c9"; }

                    .fa-torah:before {
                    content: "\f6a0"; }

                    .fa-torii-gate:before {
                    content: "\f6a1"; }

                    .fa-tractor:before {
                    content: "\f722"; }

                    .fa-trade-federation:before {
                    content: "\f513"; }

                    .fa-trademark:before {
                    content: "\f25c"; }

                    .fa-traffic-light:before {
                    content: "\f637"; }

                    .fa-trailer:before {
                    content: "\e041"; }

                    .fa-train:before {
                    content: "\f238"; }

                    .fa-tram:before {
                    content: "\f7da"; }

                    .fa-transgender:before {
                    content: "\f224"; }

                    .fa-transgender-alt:before {
                    content: "\f225"; }

                    .fa-trash:before {
                    content: "\f1f8"; }

                    .fa-trash-alt:before {
                    content: "\f2ed"; }

                    .fa-trash-restore:before {
                    content: "\f829"; }

                    .fa-trash-restore-alt:before {
                    content: "\f82a"; }

                    .fa-tree:before {
                    content: "\f1bb"; }

                    .fa-trello:before {
                    content: "\f181"; }

                    .fa-trophy:before {
                    content: "\f091"; }

                    .fa-truck:before {
                    content: "\f0d1"; }

                    .fa-truck-loading:before {
                    content: "\f4de"; }

                    .fa-truck-monster:before {
                    content: "\f63b"; }

                    .fa-truck-moving:before {
                    content: "\f4df"; }

                    .fa-truck-pickup:before {
                    content: "\f63c"; }

                    .fa-tshirt:before {
                    content: "\f553"; }

                    .fa-tty:before {
                    content: "\f1e4"; }

                    .fa-tumblr:before {
                    content: "\f173"; }

                    .fa-tumblr-square:before {
                    content: "\f174"; }

                    .fa-tv:before {
                    content: "\f26c"; }

                    .fa-twitch:before {
                    content: "\f1e8"; }

                    .fa-twitter:before {
                    content: "\f099"; }

                    .fa-twitter-square:before {
                    content: "\f081"; }

                    .fa-typo3:before {
                    content: "\f42b"; }

                    .fa-uber:before {
                    content: "\f402"; }

                    .fa-ubuntu:before {
                    content: "\f7df"; }

                    .fa-uikit:before {
                    content: "\f403"; }

                    .fa-umbraco:before {
                    content: "\f8e8"; }

                    .fa-umbrella:before {
                    content: "\f0e9"; }

                    .fa-umbrella-beach:before {
                    content: "\f5ca"; }

                    .fa-uncharted:before {
                    content: "\e084"; }

                    .fa-underline:before {
                    content: "\f0cd"; }

                    .fa-undo:before {
                    content: "\f0e2"; }

                    .fa-undo-alt:before {
                    content: "\f2ea"; }

                    .fa-uniregistry:before {
                    content: "\f404"; }

                    .fa-unity:before {
                    content: "\e049"; }

                    .fa-universal-access:before {
                    content: "\f29a"; }

                    .fa-university:before {
                    content: "\f19c"; }

                    .fa-unlink:before {
                    content: "\f127"; }

                    .fa-unlock:before {
                    content: "\f09c"; }

                    .fa-unlock-alt:before {
                    content: "\f13e"; }

                    .fa-unsplash:before {
                    content: "\e07c"; }

                    .fa-untappd:before {
                    content: "\f405"; }

                    .fa-upload:before {
                    content: "\f093"; }

                    .fa-ups:before {
                    content: "\f7e0"; }

                    .fa-usb:before {
                    content: "\f287"; }

                    .fa-user:before {
                    content: "\f007"; }

                    .fa-user-alt:before {
                    content: "\f406"; }

                    .fa-user-alt-slash:before {
                    content: "\f4fa"; }

                    .fa-user-astronaut:before {
                    content: "\f4fb"; }

                    .fa-user-check:before {
                    content: "\f4fc"; }

                    .fa-user-circle:before {
                    content: "\f2bd"; }

                    .fa-user-clock:before {
                    content: "\f4fd"; }

                    .fa-user-cog:before {
                    content: "\f4fe"; }

                    .fa-user-edit:before {
                    content: "\f4ff"; }

                    .fa-user-friends:before {
                    content: "\f500"; }

                    .fa-user-graduate:before {
                    content: "\f501"; }

                    .fa-user-injured:before {
                    content: "\f728"; }

                    .fa-user-lock:before {
                    content: "\f502"; }

                    .fa-user-md:before {
                    content: "\f0f0"; }

                    .fa-user-minus:before {
                    content: "\f503"; }

                    .fa-user-ninja:before {
                    content: "\f504"; }

                    .fa-user-nurse:before {
                    content: "\f82f"; }

                    .fa-user-plus:before {
                    content: "\f234"; }

                    .fa-user-secret:before {
                    content: "\f21b"; }

                    .fa-user-shield:before {
                    content: "\f505"; }

                    .fa-user-slash:before {
                    content: "\f506"; }

                    .fa-user-tag:before {
                    content: "\f507"; }

                    .fa-user-tie:before {
                    content: "\f508"; }

                    .fa-user-times:before {
                    content: "\f235"; }

                    .fa-users:before {
                    content: "\f0c0"; }

                    .fa-users-cog:before {
                    content: "\f509"; }

                    .fa-users-slash:before {
                    content: "\e073"; }

                    .fa-usps:before {
                    content: "\f7e1"; }

                    .fa-ussunnah:before {
                    content: "\f407"; }

                    .fa-utensil-spoon:before {
                    content: "\f2e5"; }

                    .fa-utensils:before {
                    content: "\f2e7"; }

                    .fa-vaadin:before {
                    content: "\f408"; }

                    .fa-vector-square:before {
                    content: "\f5cb"; }

                    .fa-venus:before {
                    content: "\f221"; }

                    .fa-venus-double:before {
                    content: "\f226"; }

                    .fa-venus-mars:before {
                    content: "\f228"; }

                    .fa-vest:before {
                    content: "\e085"; }

                    .fa-vest-patches:before {
                    content: "\e086"; }

                    .fa-viacoin:before {
                    content: "\f237"; }

                    .fa-viadeo:before {
                    content: "\f2a9"; }

                    .fa-viadeo-square:before {
                    content: "\f2aa"; }

                    .fa-vial:before {
                    content: "\f492"; }

                    .fa-vials:before {
                    content: "\f493"; }

                    .fa-viber:before {
                    content: "\f409"; }

                    .fa-video:before {
                    content: "\f03d"; }

                    .fa-video-slash:before {
                    content: "\f4e2"; }

                    .fa-vihara:before {
                    content: "\f6a7"; }

                    .fa-vimeo:before {
                    content: "\f40a"; }

                    .fa-vimeo-square:before {
                    content: "\f194"; }

                    .fa-vimeo-v:before {
                    content: "\f27d"; }

                    .fa-vine:before {
                    content: "\f1ca"; }

                    .fa-virus:before {
                    content: "\e074"; }

                    .fa-virus-slash:before {
                    content: "\e075"; }

                    .fa-viruses:before {
                    content: "\e076"; }

                    .fa-vk:before {
                    content: "\f189"; }

                    .fa-vnv:before {
                    content: "\f40b"; }

                    .fa-voicemail:before {
                    content: "\f897"; }

                    .fa-volleyball-ball:before {
                    content: "\f45f"; }

                    .fa-volume-down:before {
                    content: "\f027"; }

                    .fa-volume-mute:before {
                    content: "\f6a9"; }

                    .fa-volume-off:before {
                    content: "\f026"; }

                    .fa-volume-up:before {
                    content: "\f028"; }

                    .fa-vote-yea:before {
                    content: "\f772"; }

                    .fa-vr-cardboard:before {
                    content: "\f729"; }

                    .fa-vuejs:before {
                    content: "\f41f"; }

                    .fa-walking:before {
                    content: "\f554"; }

                    .fa-wallet:before {
                    content: "\f555"; }

                    .fa-warehouse:before {
                    content: "\f494"; }

                    .fa-watchman-monitoring:before {
                    content: "\e087"; }

                    .fa-water:before {
                    content: "\f773"; }

                    .fa-wave-square:before {
                    content: "\f83e"; }

                    .fa-waze:before {
                    content: "\f83f"; }

                    .fa-weebly:before {
                    content: "\f5cc"; }

                    .fa-weibo:before {
                    content: "\f18a"; }

                    .fa-weight:before {
                    content: "\f496"; }

                    .fa-weight-hanging:before {
                    content: "\f5cd"; }

                    .fa-weixin:before {
                    content: "\f1d7"; }

                    .fa-whatsapp:before {
                    content: "\f232"; }

                    .fa-whatsapp-square:before {
                    content: "\f40c"; }

                    .fa-wheelchair:before {
                    content: "\f193"; }

                    .fa-whmcs:before {
                    content: "\f40d"; }

                    .fa-wifi:before {
                    content: "\f1eb"; }

                    .fa-wikipedia-w:before {
                    content: "\f266"; }

                    .fa-wind:before {
                    content: "\f72e"; }

                    .fa-window-close:before {
                    content: "\f410"; }

                    .fa-window-maximize:before {
                    content: "\f2d0"; }

                    .fa-window-minimize:before {
                    content: "\f2d1"; }

                    .fa-window-restore:before {
                    content: "\f2d2"; }

                    .fa-windows:before {
                    content: "\f17a"; }

                    .fa-wine-bottle:before {
                    content: "\f72f"; }

                    .fa-wine-glass:before {
                    content: "\f4e3"; }

                    .fa-wine-glass-alt:before {
                    content: "\f5ce"; }

                    .fa-wix:before {
                    content: "\f5cf"; }

                    .fa-wizards-of-the-coast:before {
                    content: "\f730"; }

                    .fa-wodu:before {
                    content: "\e088"; }

                    .fa-wolf-pack-battalion:before {
                    content: "\f514"; }

                    .fa-won-sign:before {
                    content: "\f159"; }

                    .fa-wordpress:before {
                    content: "\f19a"; }

                    .fa-wordpress-simple:before {
                    content: "\f411"; }

                    .fa-wpbeginner:before {
                    content: "\f297"; }

                    .fa-wpexplorer:before {
                    content: "\f2de"; }

                    .fa-wpforms:before {
                    content: "\f298"; }

                    .fa-wpressr:before {
                    content: "\f3e4"; }

                    .fa-wrench:before {
                    content: "\f0ad"; }

                    .fa-x-ray:before {
                    content: "\f497"; }

                    .fa-xbox:before {
                    content: "\f412"; }

                    .fa-xing:before {
                    content: "\f168"; }

                    .fa-xing-square:before {
                    content: "\f169"; }

                    .fa-y-combinator:before {
                    content: "\f23b"; }

                    .fa-yahoo:before {
                    content: "\f19e"; }

                    .fa-yammer:before {
                    content: "\f840"; }

                    .fa-yandex:before {
                    content: "\f413"; }

                    .fa-yandex-international:before {
                    content: "\f414"; }

                    .fa-yarn:before {
                    content: "\f7e3"; }

                    .fa-yelp:before {
                    content: "\f1e9"; }

                    .fa-yen-sign:before {
                    content: "\f157"; }

                    .fa-yin-yang:before {
                    content: "\f6ad"; }

                    .fa-yoast:before {
                    content: "\f2b1"; }

                    .fa-youtube:before {
                    content: "\f167"; }

                    .fa-youtube-square:before {
                    content: "\f431"; }

                    .fa-zhihu:before {
                    content: "\f63f"; }

                    .sr-only {
                    border: 0;
                    clip: rect(0, 0, 0, 0);
                    height: 1px;
                    margin: -1px;
                    overflow: hidden;
                    padding: 0;
                    position: absolute;
                    width: 1px; }

                    .sr-only-focusable:active, .sr-only-focusable:focus {
                    clip: auto;
                    height: auto;
                    margin: 0;
                    overflow: visible;
                    position: static;
                    width: auto; }
                    @font-face {
                    font-family: 'Font Awesome 5 Brands';
                    font-style: normal;
                    font-weight: 400;
                    font-display: block;
                    src:
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-brands-400-23f19b.eot);
                    src:
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-brands-400-23f19b.eot?#iefix)
                    format("embedded-opentype"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-brands-400-d878b0.woff2)
                    format("woff2"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-brands-400-228577.woff)
                    format("woff"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-brands-400-527940.ttf)
                    format("truetype"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/imgs/fa-brands-400.svg#fontawesome)
                    format("svg"); }

                    .fab {
                    font-family: 'Font Awesome 5 Brands';
                    font-weight: 400; }
                    @font-face {
                    font-family: 'Font Awesome 5 Free';
                    font-style: normal;
                    font-weight: 400;
                    font-display: block;
                    src:
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-regular-400-77206a.eot);
                    src:
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-regular-400-77206a.eot?#iefix)
                    format("embedded-opentype"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-regular-400-7a3337.woff2)
                    format("woff2"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-regular-400-bb58e5.woff)
                    format("woff"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-regular-400-491974.ttf)
                    format("truetype"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/imgs/fa-regular-400.svg#fontawesome)
                    format("svg"); }

                    .far {
                    font-family: 'Font Awesome 5 Free';
                    font-weight: 400; }
                    @font-face {
                    font-family: 'Font Awesome 5 Free';
                    font-style: normal;
                    font-weight: 900;
                    font-display: block;
                    src:
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-solid-900-9bbb24.eot);
                    src:
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-solid-900-9bbb24.eot?#iefix)
                    format("embedded-opentype"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-solid-900-1551f4.woff2)
                    format("woff2"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-solid-900-eeccf4.woff)
                    format("woff"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/fonts/fa-solid-900-be9ee2.ttf)
                    format("truetype"),
                    url(https://www.arturia.com/templates/arturia-bootstrap/webpack/build/assets/imgs/fa-solid-900.svg#fontawesome)
                    format("svg"); }

                    .fa,
                    .fas {
                    font-family: 'Font Awesome 5 Free';
                    font-weight: 900; }
                </style>
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
                                                <xsl:variable name="img_url" select="concat('background-image: url','(','&quot;https://medias.arturia.net/cdn-cgi/image/quality=60,width=null/images/products/v-collection/banner-image.png&quot;','); padding-bottom: 65%;')"/>
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