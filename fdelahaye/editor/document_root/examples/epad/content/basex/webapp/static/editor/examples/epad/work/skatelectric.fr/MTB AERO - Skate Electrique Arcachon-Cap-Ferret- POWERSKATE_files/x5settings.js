(function ( $, x5engine ) {
	var x = x5engine,
		s = x.settings,
		p = s.currentPath,
		b = x.boot;

	s.siteId = '3ABC0C5615BACE591EBD2FD1F0E6EA37';
	s.version = '2022-1-7-0';
	b.push(function () {
		x.setupDateTime();
		x.imAccess.showLogout();
		x.utils.autoHeight();
		x.cart.ui.updateWidget();
		x.imGrid.init();
	});
	b.push(function () {
		x.sidebarScroll({
			enabledBreakpoints: ['d2f9bff7f63c0d6b7c7d55510409c19b']
		});
	});
	b.push(function () {
		x.stickyBar({
			enabledBreakpoints: ['72e5146e7d399bc2f8a12127e43469f1','5ecdcca63de80fd3d4fbb36295d22b7d']
		});
	});

	// Links
	$.extend(s.links, {
		'htmlPlaceholder' : '<!--html_content_placeholder-->',
		'cssPlaceholder' : '<!--css_class_placeholder-->',
		'baseUrlPlaceholder' : '<!--base_url_placeholder-->'
	});


	// ShowBox
	$.extend(s.imShowBox, {
		"effect": "custom", "customEffect": "generic animated zoomIn",
		'transitionEffect' : 'none',
		'fullScreenEnabled' : true,
		'zoomEnabled' : true,
		'showProgress' : false,
		'shadow' : '',
		'background' : 'rgba(0, 0, 0, 1)',
		'backgroundBlur' : false,
		'borderWidth' : {
			'top': 1,
			'right': 1,
			'bottom': 1,
			'left': 1
		},
		'buttonLeft': '<svg class=\"im-common-left-button\"  xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><path class=\"a\" d=\"M5,25A20,20,0,1,1,25,45,20,20,0,0,1,5,25Z\"/><path class=\"b\" d=\"M11.6,25a1.63,1.63,0,0,0,.47,1.17l2.37,2.37L23.87,38a1.7,1.7,0,0,0,2.34,0l2.37-2.37a1.63,1.63,0,0,0,0-2.34l-4.92-4.92H36.73a1.68,1.68,0,0,0,1.67-1.67V23.33a1.68,1.68,0,0,0-1.67-1.67H23.66l4.92-4.92a1.7,1.7,0,0,0,0-2.34L26.21,12a1.7,1.7,0,0,0-2.34,0l-9.43,9.43-2.37,2.37A1.63,1.63,0,0,0,11.6,25Z\"/><\/svg>',
		'buttonRight': '<svg class=\"im-common-right-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><path class=\"a\" d=\"M25,45A20,20,0,1,1,45,25,20,20,0,0,1,25,45Z\"/><path class=\"b\" d=\"M37.93,23.83l-2.37-2.37L26.13,12a1.7,1.7,0,0,0-2.34,0L21.42,14.4a1.7,1.7,0,0,0,0,2.34l4.92,4.92H13.27a1.68,1.68,0,0,0-1.67,1.67v3.33a1.68,1.68,0,0,0,1.67,1.67H26.34l-4.92,4.92a1.63,1.63,0,0,0,0,2.34L23.79,38a1.7,1.7,0,0,0,2.34,0l9.43-9.43,2.37-2.37a1.7,1.7,0,0,0,0-2.34Z\"/><\/svg>',
		'buttonClose': '<svg class=\"im-common-close-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><path class=\"a\" d=\"M25,44.81A19.81,19.81,0,1,1,44.81,25,19.82,19.82,0,0,1,25,44.81Z\"/><path class=\"b\" d=\"M27.27,25l3.35-3.36a1.14,1.14,0,0,0,0-1.62L30,19.37a1.15,1.15,0,0,0-1.62,0L25,22.73l-3.35-3.36a1.18,1.18,0,0,0-1.62,0l-.66.66a1.15,1.15,0,0,0,0,1.62L22.73,25l-3.36,3.35a1.15,1.15,0,0,0,0,1.62l.66.66a1.17,1.17,0,0,0,1.62,0L25,27.27l3.36,3.35a1.14,1.14,0,0,0,1.62,0l.65-.66a1.14,1.14,0,0,0,0-1.62Z\"/><\/svg>',
		'buttonEnterFS': '<svg class=\"im-common-enter-fs-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><circle class=\"a\" cx=\"25\" cy=\"25\" r=\"20\"/><path class=\"b\" d=\"M35.88,28a1.25,1.25,0,1,0-2.49,0l.06,3.39L26.83,25l6.47-6.25-.06,3.64a1.29,1.29,0,1,0,2.58,0l.12-6.76a1.29,1.29,0,0,0-1.27-1.31l-6.75-.12a1.32,1.32,0,0,0-.92.36,1.29,1.29,0,0,0,.88,2.22l3.64.06L25,23.21,18.44,16.9l3.64-.06A1.29,1.29,0,0,0,23,14.62a1.32,1.32,0,0,0-.92-.36l-6.76.12A1.29,1.29,0,0,0,14,15.69l.12,6.75a1.28,1.28,0,0,0,.39.91,1.34,1.34,0,0,0,.92.36,1.29,1.29,0,0,0,1.27-1.31l-.06-3.64,6.68,6.46-6.16,5.95.06-3.64A1.29,1.29,0,0,0,16,26.22a1.25,1.25,0,0,0-.92.36,1.28,1.28,0,0,0-.39.91l-.12,6.76a1.29,1.29,0,0,0,1.27,1.31l6.76.12h0a1.29,1.29,0,0,0,0-2.58L19,33,25.25,27l6.46,6.24-3.39.06a1.25,1.25,0,0,0,0,2.49h0l6.4-.11A1.24,1.24,0,0,0,36,34.37Z\"/><\/svg>',
		'buttonExitFS': '<svg class=\"im-common-exit-fs-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><circle class=\"a\" cx=\"25\" cy=\"25\" r=\"20\"/><path class=\"b\" d=\"M36.37,21.91H34.65a.37.37,0,0,0-.37.37V33.11H15.72V16.89H29.57a.37.37,0,0,0,.37-.37V14.8a.37.37,0,0,0-.37-.37H13.63a.37.37,0,0,0-.37.37V35.2a.37.37,0,0,0,.37.37H36.37a.37.37,0,0,0,.37-.37V22.28A.37.37,0,0,0,36.37,21.91Z\"/><path class=\"b\" d=\"M24.18,20.42a1.32,1.32,0,0,0-1.32-1.32h0a1.32,1.32,0,0,0-1.32,1.32V28a1.31,1.31,0,0,0,.39.93,1.33,1.33,0,0,0,.93.39h7.59A1.32,1.32,0,0,0,31.76,28a1.32,1.32,0,0,0-1.32-1.32H26l8.1-8.08a1.32,1.32,0,0,0-1.86-1.87l-8.1,8.08Z\"/><\/svg>',
		'buttonZoomIn': '<svg class=\"im-common-zoom-in-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><ellipse class=\"a\" cx=\"25\" cy=\"25\" rx=\"20\" ry=\"19.83\"/><path class=\"b\" d=\"M36.93,34.44,30.07,28.1a9.47,9.47,0,1,0-1.88,2l6.86,6.34a.87.87,0,0,0,1.24,0l.69-.74a.87.87,0,0,0,0-1.24ZM22.26,16.06a6.75,6.75,0,1,1-.27,0Z\"/><polygon class=\"b\" points=\"21.32 26.37 23.27 26.37 23.27 23.75 26.05 23.75 26.05 21.89 23.27 21.89 23.27 19.24 21.32 19.24 21.32 21.89 18.54 21.89 18.54 23.75 21.32 23.75 21.32 26.37\"/><\/svg>',
		'buttonZoomOut': '<svg class=\"im-common-zoom-out-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><circle class=\"a\" cx=\"25\" cy=\"25\" r=\"20\"/><path class=\"b\" d=\"M36.93,34.45,30.06,28.1a9.47,9.47,0,1,0-1.87,2l6.87,6.35a.87.87,0,0,0,1.23,0l.69-.74a.87.87,0,0,0,0-1.23ZM22.26,16a6.75,6.75,0,1,1-.27,0Z\"/><rect class=\"b\" x=\"18.26\" y=\"21.79\" width=\"7.88\" height=\"2.03\"/><\/svg>',
		'buttonZoomRestore': '<svg class=\"im-common-zoom-restore-button\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 50 50\"><defs><style>.a{fill:#3e3d40;}.b{fill:#fff;}<\/style><\/defs><circle class=\"a\" cx=\"25\" cy=\"25\" r=\"20\"/><path class=\"b\" d=\"M36.13,34.92,29,28.33a1.4,1.4,0,0,0-.38-.35l-.05,0v0a1.4,1.4,0,0,0-1.47.07,6.83,6.83,0,1,1,2.79-7.18l-1.25-1.25a1.41,1.41,0,0,0-2,2l3.61,3.61a1.44,1.44,0,0,0,2,0l3.61-3.61a1.41,1.41,0,0,0-2-2l-1.14,1.14A9.64,9.64,0,1,0,23.22,32a9.59,9.59,0,0,0,4.4-1.07L34.19,37A.89.89,0,0,0,35.46,37l.72-.78a.89.89,0,0,0,0-1.27Z\"/><\/svg>',
		'borderRadius' : '8px 8px 8px 8px',
		'borderColor' : 'rgba(0, 0, 0, 1) rgba(0, 0, 0, 1) rgba(0, 0, 0, 1) rgba(0, 0, 0, 1)',
		'textColor' : 'rgba(64, 64, 64, 1)',
		'fontFamily' : 'Orbitron',
		'fontStyle' : 'normal',
		'fontWeight' : 'normal',
		'fontSize' : '9pt',
		'textAlignment' : 'left',
		'boxColor' : 'rgba(255, 153, 0, 1)',
		'opacity' : 1,
		'radialBg' : false // Works only in Mozilla Firefox and Google Chrome
	});

	// PopUp
	$.extend(s.imPopUp, {
		'effect' : 'websitex5.bl.project.templates.properties.showboxanimation',
		'width' : 500,
		'shadow' : '',
		'background' : 'rgba(0, 0, 0, 1)',
		'backgroundBlur' : false,
		'borderRadius' : 10,
		'textColor' : 'rgba(64, 64, 64, 1)',
		'boxColor' : 'rgba(255, 153, 0, 1)',
		'opacity' : 1
	});

	// Tip
	$.extend(s.imTip, {
		'borderRadius' : 1,
		'arrow' : true,
		'shape' : 'classic',
		'position' : 'bottom',
		'effect' : 'fade',
		'showTail' : true
	});

	// PageToTop
	$.extend(s.imPageToTop, {
		'imageFile' : 'style/page-to-top.png'
	});

	// Captcha
	b.push(function () {
		x5engine.captcha.instance = new x5engine.captcha.x5captcha({
			"phpfile": "captcha/x5captcha.php",
		});
	}, false, 'first');
	b.push(function() { x.passwordpolicy.init({ "requiredPolicy": "false", "minimumCharacters": "6", "includeUppercase": "false", "includeNumeric": "false", "includeSpecial": "false" });
	});

	// BreakPoints
	s.breakPoints.push({"name": "Desktop", "hash": "f2e973e1275d18e3048ba45454ee16a2", "start": "max", "end": 1200.0, "fluid": false});
	s.breakPoints.push({"name": "Breakpoint 1", "hash": "d2f9bff7f63c0d6b7c7d55510409c19b", "start": 1199.9, "end": 720.0, "fluid": false});
	s.breakPoints.push({"name": "Mobile", "hash": "72e5146e7d399bc2f8a12127e43469f1", "start": 719.9, "end": 480.0, "fluid": false});
	s.breakPoints.push({"name": "Mobile Fluid", "hash": "5ecdcca63de80fd3d4fbb36295d22b7d", "start": 479.9, "end": 0.0, "fluid": true});

	b.push(function () { x.cookielaw.activateScripts() });

	s.loaded = true;
})( _jq, x5engine );
