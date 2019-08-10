(function(){
(this||window)["webpackJsonp"].registerAbsMids({
	"dijit/Menu":"./node_modules/dijit/Menu.js",
	"dijit/form/ToggleButton":"./node_modules/dijit/form/ToggleButton.js",
	"dijit/form/_ToggleButtonMixin":"./node_modules/dijit/form/_ToggleButtonMixin.js",
	"dijit/layout/ScrollingTabController":"./node_modules/dijit/layout/ScrollingTabController.js",
	"dijit/layout/StackContainer":"./node_modules/dijit/layout/StackContainer.js",
	"dijit/layout/StackController":"./node_modules/dijit/layout/StackController.js",
	"dijit/layout/TabContainer":"./node_modules/dijit/layout/TabContainer.js",
	"dijit/layout/TabController":"./node_modules/dijit/layout/TabController.js",
	"dijit/layout/_TabContainerBase":"./node_modules/dijit/layout/_TabContainerBase.js",
	"dojo/text!dijit/layout/templates/ScrollingTabController.html":"./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/ScrollingTabController.html",
	"dojo/text!dijit/layout/templates/TabContainer.html":"./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/TabContainer.html",
	"dojo/text!dijit/layout/templates/_ScrollingTabControllerButton.html":"./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/_ScrollingTabControllerButton.html",
	"dojo/text!dijit/layout/templates/_TabButton.html":"./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/_TabButton.html"
})
})(),(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[5],{

/***/ "./node_modules/dijit/Menu.js":
/*!************************************!*\
  !*** ./node_modules/dijit/Menu.js ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__.dj.c(module.i),
	__webpack_require__(/*! dojo/_base/array */ "./node_modules/dojo/_base/array.js"), // array.forEach
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom */ "./node_modules/dojo/dom.js"), // dom.byId dom.isDescendant
	__webpack_require__(/*! dojo/dom-attr */ "./node_modules/dojo/dom-attr.js"), // domAttr.get domAttr.set domAttr.has domAttr.remove
	__webpack_require__(/*! dojo/dom-geometry */ "./node_modules/dojo/dom-geometry.js"), // domStyle.getComputedStyle domGeometry.position
	__webpack_require__(/*! dojo/dom-style */ "./node_modules/dojo/dom-style.js"), // domStyle.getComputedStyle
	__webpack_require__(/*! dojo/keys */ "./node_modules/dojo/keys.js"), // keys.F10
	__webpack_require__(/*! dojo/_base/lang */ "./node_modules/dojo/_base/lang.js"), // lang.hitch
	__webpack_require__(/*! dojo/on */ "./node_modules/dojo/on.js"),
	__webpack_require__(/*! dojo/sniff */ "./node_modules/dojo/sniff.js"), // has("ie"), has("quirks")
	__webpack_require__(/*! dojo/_base/window */ "./node_modules/dojo/_base/window.js"), // win.body
	__webpack_require__(/*! dojo/window */ "./node_modules/dojo/window.js"), // winUtils.get
	__webpack_require__(/*! ./popup */ "./node_modules/dijit/popup.js"),
	__webpack_require__(/*! ./DropDownMenu */ "./node_modules/dijit/DropDownMenu.js"),
	__webpack_require__(/*! dojo/ready */ "./node_modules/dojo/ready.js")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(require, array, declare, dom, domAttr, domGeometry, domStyle, keys, lang, on, has, win, winUtils, pm, DropDownMenu, ready){

	// module:
	//		dijit/Menu

	// Back compat w/1.6, remove for 2.0
	if(has("dijit-legacy-requires")){
		ready(0, function(){
			var requires = ["dijit/MenuItem", "dijit/PopupMenuItem", "dijit/CheckedMenuItem", "dijit/MenuSeparator"];
			require(requires);	// use indirection so modules not rolled into a build
		});
	}

	return declare("dijit.Menu", DropDownMenu, {
		// summary:
		//		A context menu you can assign to multiple elements

		constructor: function(/*===== params, srcNodeRef =====*/){
			// summary:
			//		Create the widget.
			// params: Object|null
			//		Hash of initialization parameters for widget, including scalar values (like title, duration etc.)
			//		and functions, typically callbacks like onClick.
			//		The hash can contain any of the widget's properties, excluding read-only properties.
			// srcNodeRef: DOMNode|String?
			//		If a srcNodeRef (DOM node) is specified:
			//
			//		- use srcNodeRef.innerHTML as my contents
			//		- replace srcNodeRef with my generated DOM tree

			this._bindings = [];
		},

		// targetNodeIds: [const] String[]
		//		Array of dom node ids of nodes to attach to.
		//		Fill this with nodeIds upon widget creation and it becomes context menu for those nodes.
		targetNodeIds: [],

		// selector: String?
		//		CSS expression to apply this Menu to descendants of targetNodeIds, rather than to
		//		the nodes specified by targetNodeIds themselves.  Useful for applying a Menu to
		//		a range of rows in a table, tree, etc.
		//
		//		The application must require() an appropriate level of dojo/query to handle the selector.
		selector: "",

		// TODO: in 2.0 remove support for multiple targetNodeIds.   selector gives the same effect.
		// So, change targetNodeIds to a targetNodeId: "", remove bindDomNode()/unBindDomNode(), etc.

		/*=====
		// currentTarget: [readonly] DOMNode
		//		For context menus, set to the current node that the Menu is being displayed for.
		//		Useful so that the menu actions can be tailored according to the node
		currentTarget: null,
		=====*/

		// contextMenuForWindow: [const] Boolean
		//		If true, right clicking anywhere on the window will cause this context menu to open.
		//		If false, must specify targetNodeIds.
		contextMenuForWindow: false,

		// leftClickToOpen: [const] Boolean
		//		If true, menu will open on left click instead of right click, similar to a file menu.
		leftClickToOpen: false,
		// TODO: remove in 2.0, we have better ways of opening a menu with a left click, by extending _HasDropDown.

		// refocus: Boolean
		//		When this menu closes, re-focus the element which had focus before it was opened.
		refocus: true,

		postCreate: function(){
			if(this.contextMenuForWindow){
				this.bindDomNode(this.ownerDocumentBody);
			}else{
				array.forEach(this.targetNodeIds, this.bindDomNode, this);
			}
			this.inherited(arguments);
		},

		// thanks burstlib!
		_iframeContentWindow: function(/* HTMLIFrameElement */iframe_el){
			// summary:
			//		Returns the window reference of the passed iframe
			// tags:
			//		private
			return winUtils.get(this._iframeContentDocument(iframe_el)) ||
				// Moz. TODO: is this available when defaultView isn't?
				this._iframeContentDocument(iframe_el)['__parent__'] ||
				(iframe_el.name && document.frames[iframe_el.name]) || null;	//	Window
		},

		_iframeContentDocument: function(/* HTMLIFrameElement */iframe_el){
			// summary:
			//		Returns a reference to the document object inside iframe_el
			// tags:
			//		protected
			return iframe_el.contentDocument // W3
				|| (iframe_el.contentWindow && iframe_el.contentWindow.document) // IE
				|| (iframe_el.name && document.frames[iframe_el.name] && document.frames[iframe_el.name].document)
				|| null;	//	HTMLDocument
		},

		bindDomNode: function(/*String|DomNode*/ node){
			// summary:
			//		Attach menu to given node
			node = dom.byId(node, this.ownerDocument);

			var cn;	// Connect node

			// Support context menus on iframes.  Rather than binding to the iframe itself we need
			// to bind to the <body> node inside the iframe.
			if(node.tagName.toLowerCase() == "iframe"){
				var iframe = node,
					window = this._iframeContentWindow(iframe);
				cn = win.body(window.document);
			}else{
				// To capture these events at the top level, attach to <html>, not <body>.
				// Otherwise right-click context menu just doesn't work.
				cn = (node == win.body(this.ownerDocument) ? this.ownerDocument.documentElement : node);
			}


			// "binding" is the object to track our connection to the node (ie, the parameter to bindDomNode())
			var binding = {
				node: node,
				iframe: iframe
			};

			// Save info about binding in _bindings[], and make node itself record index(+1) into
			// _bindings[] array.  Prefix w/_dijitMenu to avoid setting an attribute that may
			// start with a number, which fails on FF/safari.
			domAttr.set(node, "_dijitMenu" + this.id, this._bindings.push(binding));

			// Setup the connections to monitor click etc., unless we are connecting to an iframe which hasn't finished
			// loading yet, in which case we need to wait for the onload event first, and then connect
			// On linux Shift-F10 produces the oncontextmenu event, but on Windows it doesn't, so
			// we need to monitor keyboard events in addition to the oncontextmenu event.
			var doConnects = lang.hitch(this, function(cn){
				var selector = this.selector,
					delegatedEvent = selector ?
						function(eventType){
							return on.selector(selector, eventType);
						} :
						function(eventType){
							return eventType;
						},
					self = this;
				return [
					on(cn, delegatedEvent(this.leftClickToOpen ? "click" : "contextmenu"), function(evt){
						evt.stopPropagation();
						evt.preventDefault();

						if((new Date()).getTime() < self._lastKeyDown + 500){
							// Ignore contextmenu/click events that were already processed in keydown handler below.
							// But still call preventDefault() (above) so system context menu doesn't appear.
							return;
						}

						// Schedule context menu to be opened.
						// Note that this won't work will if the click was generated by the keyboard, while
						// focused on a <button> etc.   In that case evt.pageX and evt.pageY are either (0,0) or
						// wherever the mouse cursor is.  See keydown handler below.
						self._scheduleOpen(this, iframe, {x: evt.pageX, y: evt.pageY}, evt.target);
					}),
					on(cn, delegatedEvent("keydown"), function(evt){
						if(evt.keyCode == 93 ||									// context menu key
							(evt.shiftKey && evt.keyCode == keys.F10) ||		// shift-F10
							(self.leftClickToOpen && evt.keyCode == keys.SPACE)	// space key
						){
							evt.stopPropagation();
							evt.preventDefault();

							// Open the menu around evt.target.  Note that "this" and evt.target
							// are likely different, especially for global context menu, where "this" is <body>.
							self._scheduleOpen(this, iframe, null, evt.target);	// no coords - open near evt.target

							self._lastKeyDown = (new Date()).getTime();
						}
					})
				];
			});
			binding.connects = cn ? doConnects(cn) : [];

			if(iframe){
				// Setup handler to [re]bind to the iframe when the contents are initially loaded,
				// and every time the contents change.
				// Need to do this b/c we are actually binding to the iframe's <body> node.
				// Note: can't use connect.connect(), see #9609.

				binding.onloadHandler = lang.hitch(this, function(){
					// want to remove old connections, but IE throws exceptions when trying to
					// access the <body> node because it's already gone, or at least in a state of limbo

					var window = this._iframeContentWindow(iframe),
						cn = win.body(window.document);
					binding.connects = doConnects(cn);
				});
				if(iframe.addEventListener){
					iframe.addEventListener("load", binding.onloadHandler, false);
				}else{
					iframe.attachEvent("onload", binding.onloadHandler);
				}
			}
		},

		unBindDomNode: function(/*String|DomNode*/ nodeName){
			// summary:
			//		Detach menu from given node

			var node;
			try{
				node = dom.byId(nodeName, this.ownerDocument);
			}catch(e){
				// On IE the dom.byId() call will get an exception if the attach point was
				// the <body> node of an <iframe> that has since been reloaded (and thus the
				// <body> node is in a limbo state of destruction.
				return;
			}

			// node["_dijitMenu" + this.id] contains index(+1) into my _bindings[] array
			var attrName = "_dijitMenu" + this.id;
			if(node && domAttr.has(node, attrName)){
				var bid = domAttr.get(node, attrName) - 1, b = this._bindings[bid], h;
				while((h = b.connects.pop())){
					h.remove();
				}

				// Remove listener for iframe onload events
				var iframe = b.iframe;
				if(iframe){
					if(iframe.removeEventListener){
						iframe.removeEventListener("load", b.onloadHandler, false);
					}else{
						iframe.detachEvent("onload", b.onloadHandler);
					}
				}

				domAttr.remove(node, attrName);
				delete this._bindings[bid];
			}
		},

		_scheduleOpen: function(delegatedTarget, iframe, coords, target){
			// summary:
			//		Set timer to display myself.  Using a timer rather than displaying immediately solves
			//		IE problem: without the delay, focus work in "open" causes the system
			//		context menu to appear in spite of evt.preventDefault().
			// delegatedTarget: Element
			//		The node specified in targetNodeIds or matching selector that the menu is being opened for.
			// iframe: HTMLIframeElement?
			//		Set if target is inside the specified iframe.
			// coords: Object
			//		x/y position to center the menu around.  Undefined if menu was opened via keyboard.
			// target: Element
			//		The actual clicked node, either delegatedTarget or a descendant.

			if(!this._openTimer){
				this._openTimer = this.defer(function(){
					delete this._openTimer;
					this._openMyself({
						target: target,
						delegatedTarget: delegatedTarget,
						iframe: iframe,
						coords: coords
					});
				}, 1);
			}
		},

		_openMyself: function(args){
			// summary:
			//		Internal function for opening myself when the user does a right-click or something similar.
			// args:
			//		This is an Object containing:
			//
			//		- target: The node that is being clicked.
			//		- delegatedTarget: The node from this.targetNodeIds or matching this.selector,
			//		  either the same as target or an ancestor of target.
			//		- iframe: If an `<iframe>` is being clicked, iframe points to that iframe
			//		- coords: Mouse cursor x/y coordinates.  Null when opened via keyboard.
			//		  Put menu at specified position in iframe (if iframe specified) or otherwise in viewport.
			//
			//		_openMyself() formerly took the event object, and since various code references
			//		evt.target (after connecting to _openMyself()), using an Object for parameters
			//		(so that old code still works).

			var target = args.target,
				iframe = args.iframe,
				coords = args.coords,
				byKeyboard = !coords;

			// To be used by MenuItem event handlers to tell which node the menu was opened on
			this.currentTarget = args.delegatedTarget;

			// Get coordinates to open menu, either at specified (mouse) position or (if triggered via keyboard)
			// then near the node the menu is assigned to.
			if(coords){
				if(iframe){
					// Specified coordinates are on <body> node of an <iframe>, convert to match main document
					var ifc = domGeometry.position(iframe, true),
						window = this._iframeContentWindow(iframe),
						scroll = domGeometry.docScroll(window.document);

					var cs = domStyle.getComputedStyle(iframe),
						tp = domStyle.toPixelValue,
						left = (has("ie") && has("quirks") ? 0 : tp(iframe, cs.paddingLeft)) + (has("ie") && has("quirks") ? tp(iframe, cs.borderLeftWidth) : 0),
						top = (has("ie") && has("quirks") ? 0 : tp(iframe, cs.paddingTop)) + (has("ie") && has("quirks") ? tp(iframe, cs.borderTopWidth) : 0);

					coords.x += ifc.x + left - scroll.x;
					coords.y += ifc.y + top - scroll.y;
				}
			}else{
				coords = domGeometry.position(target, true);
				coords.x += 10;
				coords.y += 10;
			}

			var self = this;
			var prevFocusNode = this._focusManager.get("prevNode");
			var curFocusNode = this._focusManager.get("curNode");
			var savedFocusNode = !curFocusNode || (dom.isDescendant(curFocusNode, this.domNode)) ? prevFocusNode : curFocusNode;

			function closeAndRestoreFocus(){
				// user has clicked on a menu or popup
				if(self.refocus && savedFocusNode){
					savedFocusNode.focus();
				}
				pm.close(self);
			}

			pm.open({
				popup: this,
				x: coords.x,
				y: coords.y,
				onExecute: closeAndRestoreFocus,
				onCancel: closeAndRestoreFocus,
				orient: this.isLeftToRight() ? 'L' : 'R'
			});

			// Focus the menu even when opened by mouse, so that a click on blank area of screen will close it
			this.focus();
			if(!byKeyboard){
				// But then (when opened by mouse), mark Menu as passive, so that the first item isn't highlighted.
				// On IE9+ this needs to be on a delay because the focus is asynchronous.
				this.defer(function(){
					this._cleanUp(true);
				});
			}

			this._onBlur = function(){
				this.inherited('_onBlur', arguments);
				// Usually the parent closes the child widget but if this is a context
				// menu then there is no parent
				pm.close(this);
				// don't try to restore focus; user has clicked another part of the screen
				// and set focus there
			};
		},

		destroy: function(){
			array.forEach(this._bindings, function(b){
				if(b){
					this.unBindDomNode(b.node);
				}
			}, this);
			this.inherited(arguments);
		}
	});
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/form/ToggleButton.js":
/*!*************************************************!*\
  !*** ./node_modules/dijit/form/ToggleButton.js ***!
  \*************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/_base/kernel */ "./node_modules/dojo/_base/kernel.js"), // kernel.deprecated
	__webpack_require__(/*! ./Button */ "./node_modules/dijit/form/Button.js"),
	__webpack_require__(/*! ./_ToggleButtonMixin */ "./node_modules/dijit/form/_ToggleButtonMixin.js")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(declare, kernel, Button, _ToggleButtonMixin){

	// module:
	//		dijit/form/ToggleButton


	return declare("dijit.form.ToggleButton", [Button, _ToggleButtonMixin], {
		// summary:
		//		A templated button widget that can be in two states (checked or not).
		//		Can be base class for things like tabs or checkbox or radio buttons.

		baseClass: "dijitToggleButton",

		setChecked: function(/*Boolean*/ checked){
			// summary:
			//		Deprecated.  Use set('checked', true/false) instead.
			kernel.deprecated("setChecked("+checked+") is deprecated. Use set('checked',"+checked+") instead.", "", "2.0");
			this.set('checked', checked);
		}
	});
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/form/_ToggleButtonMixin.js":
/*!*******************************************************!*\
  !*** ./node_modules/dijit/form/_ToggleButtonMixin.js ***!
  \*******************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom-attr */ "./node_modules/dojo/dom-attr.js") // domAttr.set
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(declare, domAttr){

	// module:
	//		dijit/form/_ToggleButtonMixin

	return declare("dijit.form._ToggleButtonMixin", null, {
		// summary:
		//		A mixin to provide functionality to allow a button that can be in two states (checked or not).

		// checked: Boolean
		//		Corresponds to the native HTML `<input>` element's attribute.
		//		In markup, specified as "checked='checked'" or just "checked".
		//		True if the button is depressed, or the checkbox is checked,
		//		or the radio button is selected, etc.
		checked: false,

		// aria-pressed for toggle buttons, and aria-checked for checkboxes
		_aria_attr: "aria-pressed",

		_onClick: function(/*Event*/ evt){
			var original = this.checked;
			this._set('checked', !original); // partially set the toggled value, assuming the toggle will work, so it can be overridden in the onclick handler
			var ret = this.inherited(arguments); // the user could reset the value here
			this.set('checked', ret ? this.checked : original); // officially set the toggled or user value, or reset it back
			return ret;
		},

		_setCheckedAttr: function(/*Boolean*/ value, /*Boolean?*/ priorityChange){
			this._set("checked", value);
			var node = this.focusNode || this.domNode;
			if(this._created){ // IE is not ready to handle checked attribute (affects tab order)
				// needlessly setting "checked" upsets IE's tab order
				if(domAttr.get(node, "checked") != !!value){
					domAttr.set(node, "checked", !!value); // "mixed" -> true
				}
			}
			node.setAttribute(this._aria_attr, String(value)); // aria values should be strings
			this._handleOnChange(value, priorityChange);
		},

		postCreate: function(){ // use postCreate instead of startup so users forgetting to call startup are OK
			this.inherited(arguments);
			var node = this.focusNode || this.domNode;
			if(this.checked){
				// need this here instead of on the template so IE8 tab order works
				node.setAttribute('checked', 'checked');
			}

			// Update our reset value if it hasn't yet been set (because this.set()
			// is only called when there *is* a value)
			if(this._resetValue === undefined){
				this._lastValueReported = this._resetValue = this.checked;
			}
		},

		reset: function(){
			// summary:
			//		Reset the widget's value to what it was at initialization time

			this._hasBeenBlurred = false;

			// set checked state to original setting
			this.set('checked', this.params.checked || false);
		}
	});
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/layout/ScrollingTabController.js":
/*!*************************************************************!*\
  !*** ./node_modules/dijit/layout/ScrollingTabController.js ***!
  \*************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/array */ "./node_modules/dojo/_base/array.js"), // array.forEach
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom-class */ "./node_modules/dojo/dom-class.js"), // domClass.add domClass.contains
	__webpack_require__(/*! dojo/dom-geometry */ "./node_modules/dojo/dom-geometry.js"), // domGeometry.contentBox
	__webpack_require__(/*! dojo/dom-style */ "./node_modules/dojo/dom-style.js"), // domStyle.style
	__webpack_require__(/*! dojo/_base/fx */ "./node_modules/dojo/_base/fx.js"), // Animation
	__webpack_require__(/*! dojo/_base/lang */ "./node_modules/dojo/_base/lang.js"), // lang.hitch
	__webpack_require__(/*! dojo/on */ "./node_modules/dojo/on.js"),
	__webpack_require__(/*! dojo/query */ "./node_modules/dojo/query.js"), // query
	__webpack_require__(/*! dojo/sniff */ "./node_modules/dojo/sniff.js"), // has("ie"), has("trident"), has("edge"), has("webkit"), has("quirks")
	__webpack_require__(/*! ../registry */ "./node_modules/dijit/registry.js"), // registry.byId()
	__webpack_require__(/*! dojo/text!./templates/ScrollingTabController.html */ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/ScrollingTabController.html"),
	__webpack_require__(/*! dojo/text!./templates/_ScrollingTabControllerButton.html */ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/_ScrollingTabControllerButton.html"),
	__webpack_require__(/*! ./TabController */ "./node_modules/dijit/layout/TabController.js"),
	__webpack_require__(/*! ./utils */ "./node_modules/dijit/layout/utils.js"), // marginBox2contextBox, layoutChildren
	__webpack_require__(/*! ../_WidgetsInTemplateMixin */ "./node_modules/dijit/_WidgetsInTemplateMixin.js"),
	__webpack_require__(/*! ../Menu */ "./node_modules/dijit/Menu.js"),
	__webpack_require__(/*! ../MenuItem */ "./node_modules/dijit/MenuItem.js"),
	__webpack_require__(/*! ../form/Button */ "./node_modules/dijit/form/Button.js"),
	__webpack_require__(/*! ../_HasDropDown */ "./node_modules/dijit/_HasDropDown.js"),
	__webpack_require__(/*! dojo/NodeList-dom */ "./node_modules/dojo/NodeList-dom.js"), // NodeList.style
	__webpack_require__(/*! ../a11yclick */ "./node_modules/dijit/a11yclick.js")	// template uses ondijitclick (not for keyboard support, but for responsive touch support)
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(array, declare, domClass, domGeometry, domStyle, fx, lang, on, query, has,
	registry, tabControllerTemplate, buttonTemplate, TabController, layoutUtils, _WidgetsInTemplateMixin,
	Menu, MenuItem, Button, _HasDropDown){

	// module:
	//		dijit/layout/ScrollingTabController

	var ScrollingTabController = declare("dijit.layout.ScrollingTabController", [TabController, _WidgetsInTemplateMixin], {
		// summary:
		//		Set of tabs with left/right arrow keys and a menu to switch between tabs not
		//		all fitting on a single row.
		//		Works only for horizontal tabs (either above or below the content, not to the left
		//		or right).
		// tags:
		//		private

		baseClass: "dijitTabController dijitScrollingTabController",

		templateString: tabControllerTemplate,

		// useMenu: [const] Boolean
		//		True if a menu should be used to select tabs when they are too
		//		wide to fit the TabContainer, false otherwise.
		useMenu: true,

		// useSlider: [const] Boolean
		//		True if a slider should be used to select tabs when they are too
		//		wide to fit the TabContainer, false otherwise.
		useSlider: true,

		// tabStripClass: [const] String
		//		The css class to apply to the tab strip, if it is visible.
		tabStripClass: "",

		// _minScroll: Number
		//		The distance in pixels from the edge of the tab strip which,
		//		if a scroll animation is less than, forces the scroll to
		//		go all the way to the left/right.
		_minScroll: 5,

		// Override default behavior mapping class to DOMNode
		_setClassAttr: { node: "containerNode", type: "class" },

		buildRendering: function(){
			this.inherited(arguments);
			var n = this.domNode;

			this.scrollNode = this.tablistWrapper;
			this._initButtons();

			if(!this.tabStripClass){
				this.tabStripClass = "dijitTabContainer" +
					this.tabPosition.charAt(0).toUpperCase() +
					this.tabPosition.substr(1).replace(/-.*/, "") +
					"None";
				domClass.add(n, "tabStrip-disabled")
			}

			domClass.add(this.tablistWrapper, this.tabStripClass);
		},

		onStartup: function(){
			this.inherited(arguments);

			// TabController is hidden until it finishes drawing, to give
			// a less visually jumpy instantiation.   When it's finished, set visibility to ""
			// to that the tabs are hidden/shown depending on the container's visibility setting.
			domStyle.set(this.domNode, "visibility", "");
			this._postStartup = true;

			// changes to the tab button label or iconClass will have changed the width of the
			// buttons, so do a resize
			this.own(on(this.containerNode, "attrmodified-label, attrmodified-iconclass", lang.hitch(this, function(evt){
				if(this._dim){
					this.resize(this._dim);
				}
			})));
		},

		onAddChild: function(page, insertIndex){
			this.inherited(arguments);

			// Increment the width of the wrapper when a tab is added
			// This makes sure that the buttons never wrap.
			// The value 200 is chosen as it should be bigger than most
			// Tab button widths.
			domStyle.set(this.containerNode, "width",
				(domStyle.get(this.containerNode, "width") + 200) + "px");
		},

		onRemoveChild: function(page, insertIndex){
			// null out _selectedTab because we are about to delete that dom node
			var button = this.pane2button(page.id);
			if(this._selectedTab === button.domNode){
				this._selectedTab = null;
			}

			this.inherited(arguments);
		},

		_initButtons: function(){
			// summary:
			//		Creates the buttons used to scroll to view tabs that
			//		may not be visible if the TabContainer is too narrow.

			// Make a list of the buttons to display when the tab labels become
			// wider than the TabContainer, and hide the other buttons.
			// Also gets the total width of the displayed buttons.
			this._btnWidth = 0;
			this._buttons = query("> .tabStripButton", this.domNode).filter(function(btn){
				if((this.useMenu && btn == this._menuBtn.domNode) ||
					(this.useSlider && (btn == this._rightBtn.domNode || btn == this._leftBtn.domNode))){
					this._btnWidth += domGeometry.getMarginSize(btn).w;
					return true;
				}else{
					domStyle.set(btn, "display", "none");
					return false;
				}
			}, this);
		},

		_getTabsWidth: function(){
			var children = this.getChildren();
			if(children.length){
				var leftTab = children[this.isLeftToRight() ? 0 : children.length - 1].domNode,
					rightTab = children[this.isLeftToRight() ? children.length - 1 : 0].domNode;
				return rightTab.offsetLeft + rightTab.offsetWidth - leftTab.offsetLeft;
			}else{
				return 0;
			}
		},

		_enableBtn: function(width){
			// summary:
			//		Determines if the tabs are wider than the width of the TabContainer, and
			//		thus that we need to display left/right/menu navigation buttons.
			var tabsWidth = this._getTabsWidth();
			width = width || domStyle.get(this.scrollNode, "width");
			return tabsWidth > 0 && width < tabsWidth;
		},

		resize: function(dim){
			// summary:
			//		Hides or displays the buttons used to scroll the tab list and launch the menu
			//		that selects tabs.

			// Save the dimensions to be used when a child is renamed.
			this._dim = dim;

			// Set my height to be my natural height (tall enough for one row of tab labels),
			// and my content-box width based on margin-box width specified in dim parameter.
			// But first reset scrollNode.height in case it was set by layoutChildren() call
			// in a previous run of this method.
			this.scrollNode.style.height = "auto";
			var cb = this._contentBox = layoutUtils.marginBox2contentBox(this.domNode, {h: 0, w: dim.w});
			cb.h = this.scrollNode.offsetHeight;
			domGeometry.setContentSize(this.domNode, cb);

			// Show/hide the left/right/menu navigation buttons depending on whether or not they
			// are needed.
			var enable = this._enableBtn(this._contentBox.w);
			this._buttons.style("display", enable ? "" : "none");

			// Position and size the navigation buttons and the tablist
			this._leftBtn.region = "left";
			this._rightBtn.region = "right";
			this._menuBtn.region = this.isLeftToRight() ? "right" : "left";
			layoutUtils.layoutChildren(this.domNode, this._contentBox,
				[this._menuBtn, this._leftBtn, this._rightBtn, {domNode: this.scrollNode, region: "center"}]);

			// set proper scroll so that selected tab is visible
			if(this._selectedTab){
				if(this._anim && this._anim.status() == "playing"){
					this._anim.stop();
				}
				this.scrollNode.scrollLeft = this._convertToScrollLeft(this._getScrollForSelectedTab());
			}

			// Enable/disabled left right buttons depending on whether or not user can scroll to left or right
			this._setButtonClass(this._getScroll());

			this._postResize = true;

			// Return my size so layoutChildren() can use it.
			// Also avoids IE9 layout glitch on browser resize when scroll buttons present
			return {h: this._contentBox.h, w: dim.w};
		},

		_getScroll: function(){
			// summary:
			//		Returns the current scroll of the tabs where 0 means
			//		"scrolled all the way to the left" and some positive number, based on #
			//		of pixels of possible scroll (ex: 1000) means "scrolled all the way to the right"
			return (this.isLeftToRight() || has("ie") < 8 || (has("trident") && has("quirks")) || has("webkit")) ?
				this.scrollNode.scrollLeft :
				domStyle.get(this.containerNode, "width") - domStyle.get(this.scrollNode, "width")
					+ (has("trident") || has("edge") ? -1 : 1) * this.scrollNode.scrollLeft;
		},

		_convertToScrollLeft: function(val){
			// summary:
			//		Given a scroll value where 0 means "scrolled all the way to the left"
			//		and some positive number, based on # of pixels of possible scroll (ex: 1000)
			//		means "scrolled all the way to the right", return value to set this.scrollNode.scrollLeft
			//		to achieve that scroll.
			//
			//		This method is to adjust for RTL funniness in various browsers and versions.
			if(this.isLeftToRight() || has("ie") < 8 || (has("trident") && has("quirks")) || has("webkit")){
				return val;
			}else{
				var maxScroll = domStyle.get(this.containerNode, "width") - domStyle.get(this.scrollNode, "width");
				return (has("trident") || has("edge") ? -1 : 1) * (val - maxScroll);
			}
		},

		onSelectChild: function(/*dijit/_WidgetBase*/ page, /*Boolean*/ tabContainerFocused){
			// summary:
			//		Smoothly scrolls to a tab when it is selected.

			var tab = this.pane2button(page.id);
			if(!tab){
				return;
			}

			var node = tab.domNode;

			// Save the selection
			if(node != this._selectedTab){
				this._selectedTab = node;

				// Scroll to the selected tab, except on startup, when scrolling is handled in resize()
				if(this._postResize){
					var sl = this._getScroll();

					if(sl > node.offsetLeft ||
						sl + domStyle.get(this.scrollNode, "width") <
							node.offsetLeft + domStyle.get(node, "width")){
						var anim = this.createSmoothScroll();
						if(tabContainerFocused){
							anim.onEnd = function(){
								// Focus is on hidden tab or previously selected tab label.  Move to current tab label.
								tab.focus();
							};
						}
						anim.play();
					}else if(tabContainerFocused){
						// Focus is on hidden tab or previously selected tab label.  Move to current tab label.
						tab.focus();
					}
				}
			}

			this.inherited(arguments);
		},

		_getScrollBounds: function(){
			// summary:
			//		Returns the minimum and maximum scroll setting to show the leftmost and rightmost
			//		tabs (respectively)
			var children = this.getChildren(),
				scrollNodeWidth = domStyle.get(this.scrollNode, "width"), // about 500px
				containerWidth = domStyle.get(this.containerNode, "width"), // 50,000px
				maxPossibleScroll = containerWidth - scrollNodeWidth, // scrolling until right edge of containerNode visible
				tabsWidth = this._getTabsWidth();

			if(children.length && tabsWidth > scrollNodeWidth){
				// Scrolling should happen
				return {
					min: this.isLeftToRight() ? 0 : children[children.length - 1].domNode.offsetLeft,
					max: this.isLeftToRight() ?
						(children[children.length - 1].domNode.offsetLeft + children[children.length - 1].domNode.offsetWidth) - scrollNodeWidth :
						maxPossibleScroll
				};
			}else{
				// No scrolling needed, all tabs visible, we stay either scrolled to far left or far right (depending on dir)
				var onlyScrollPosition = this.isLeftToRight() ? 0 : maxPossibleScroll;
				return {
					min: onlyScrollPosition,
					max: onlyScrollPosition
				};
			}
		},

		_getScrollForSelectedTab: function(){
			// summary:
			//		Returns the scroll value setting so that the selected tab
			//		will appear in the center
			var w = this.scrollNode,
				n = this._selectedTab,
				scrollNodeWidth = domStyle.get(this.scrollNode, "width"),
				scrollBounds = this._getScrollBounds();

			// TODO: scroll minimal amount (to either right or left) so that
			// selected tab is fully visible, and just return if it's already visible?
			var pos = (n.offsetLeft + domStyle.get(n, "width") / 2) - scrollNodeWidth / 2;
			pos = Math.min(Math.max(pos, scrollBounds.min), scrollBounds.max);

			// TODO:
			// If scrolling close to the left side or right side, scroll
			// all the way to the left or right.  See this._minScroll.
			// (But need to make sure that doesn't scroll the tab out of view...)
			return pos;
		},

		createSmoothScroll: function(x){
			// summary:
			//		Creates a dojo._Animation object that smoothly scrolls the tab list
			//		either to a fixed horizontal pixel value, or to the selected tab.
			// description:
			//		If an number argument is passed to the function, that horizontal
			//		pixel position is scrolled to.  Otherwise the currently selected
			//		tab is scrolled to.
			// x: Integer?
			//		An optional pixel value to scroll to, indicating distance from left.

			// Calculate position to scroll to
			if(arguments.length > 0){
				// position specified by caller, just make sure it's within bounds
				var scrollBounds = this._getScrollBounds();
				x = Math.min(Math.max(x, scrollBounds.min), scrollBounds.max);
			}else{
				// scroll to center the current tab
				x = this._getScrollForSelectedTab();
			}

			if(this._anim && this._anim.status() == "playing"){
				this._anim.stop();
			}

			var self = this,
				w = this.scrollNode,
				anim = new fx.Animation({
					beforeBegin: function(){
						if(this.curve){
							delete this.curve;
						}
						var oldS = w.scrollLeft,
							newS = self._convertToScrollLeft(x);
						anim.curve = new fx._Line(oldS, newS);
					},
					onAnimate: function(val){
						w.scrollLeft = val;
					}
				});
			this._anim = anim;

			// Disable/enable left/right buttons according to new scroll position
			this._setButtonClass(x);

			return anim; // dojo/_base/fx/Animation
		},

		_getBtnNode: function(/*Event*/ e){
			// summary:
			//		Gets a button DOM node from a mouse click event.
			// e:
			//		The mouse click event.
			var n = e.target;
			while(n && !domClass.contains(n, "tabStripButton")){
				n = n.parentNode;
			}
			return n;
		},

		doSlideRight: function(/*Event*/ e){
			// summary:
			//		Scrolls the menu to the right.
			// e:
			//		The mouse click event.
			this.doSlide(1, this._getBtnNode(e));
		},

		doSlideLeft: function(/*Event*/ e){
			// summary:
			//		Scrolls the menu to the left.
			// e:
			//		The mouse click event.
			this.doSlide(-1, this._getBtnNode(e));
		},

		doSlide: function(/*Number*/ direction, /*DomNode*/ node){
			// summary:
			//		Scrolls the tab list to the left or right by 75% of the widget width.
			// direction:
			//		If the direction is 1, the widget scrolls to the right, if it is -1,
			//		it scrolls to the left.

			if(node && domClass.contains(node, "dijitTabDisabled")){
				return;
			}

			var sWidth = domStyle.get(this.scrollNode, "width");
			var d = (sWidth * 0.75) * direction;

			var to = this._getScroll() + d;

			this._setButtonClass(to);

			this.createSmoothScroll(to).play();
		},

		_setButtonClass: function(/*Number*/ scroll){
			// summary:
			//		Disables the left scroll button if the tabs are scrolled all the way to the left,
			//		or the right scroll button in the opposite case.
			// scroll: Integer
			//		amount of horizontal scroll

			var scrollBounds = this._getScrollBounds();
			this._leftBtn.set("disabled", scroll <= scrollBounds.min);
			this._rightBtn.set("disabled", scroll >= scrollBounds.max);
		}
	});


	var ScrollingTabControllerButtonMixin = declare("dijit.layout._ScrollingTabControllerButtonMixin", null, {
		baseClass: "dijitTab tabStripButton",

		templateString: buttonTemplate,

		// Override inherited tabIndex: 0 from dijit/form/Button, because user shouldn't be
		// able to tab to the left/right/menu buttons
		tabIndex: "",

		// Similarly, override FormWidget.isFocusable() because clicking a button shouldn't focus it
		// either (this override avoids focus() call in FormWidget.js)
		isFocusable: function(){
			return false;
		}
	});

	// Class used in template
	declare("dijit.layout._ScrollingTabControllerButton", [Button, ScrollingTabControllerButtonMixin]);

	// Class used in template
	declare("dijit.layout._ScrollingTabControllerMenuButton", [Button, _HasDropDown, ScrollingTabControllerButtonMixin], {
		// id of the TabContainer itself
		containerId: "",

		// -1 so user can't tab into the button, but so that button can still be focused programatically.
		// Because need to move focus to the button (or somewhere) before the menu is hidden or IE6 will crash.
		tabIndex: "-1",

		isLoaded: function(){
			// recreate menu every time, in case the TabContainer's list of children (or their icons/labels) have changed
			return false;
		},

		loadDropDown: function(callback){
			this.dropDown = new Menu({
				id: this.containerId + "_menu",
				ownerDocument: this.ownerDocument,
				dir: this.dir,
				lang: this.lang,
				textDir: this.textDir
			});
			var container = registry.byId(this.containerId);
			array.forEach(container.getChildren(), function(page){
				var menuItem = new MenuItem({
					id: page.id + "_stcMi",
					label: page.title,
					iconClass: page.iconClass,
					disabled: page.disabled,
					ownerDocument: this.ownerDocument,
					dir: page.dir,
					lang: page.lang,
					textDir: page.textDir || container.textDir,
					onClick: function(){
						container.selectChild(page);
					}
				});
				this.dropDown.addChild(menuItem);
			}, this);
			callback();
		},

		closeDropDown: function(/*Boolean*/ focus){
			this.inherited(arguments);
			if(this.dropDown){
				this._popupStateNode.removeAttribute("aria-owns");	// remove ref to node that we are about to delete
				this.dropDown.destroyRecursive();
				delete this.dropDown;
			}
		}
	});

	return ScrollingTabController;
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/layout/StackContainer.js":
/*!*****************************************************!*\
  !*** ./node_modules/dijit/layout/StackContainer.js ***!
  \*****************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/array */ "./node_modules/dojo/_base/array.js"), // array.forEach array.indexOf array.some
	__webpack_require__(/*! dojo/cookie */ "./node_modules/dojo/cookie.js"), // cookie
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom-class */ "./node_modules/dojo/dom-class.js"), // domClass.add domClass.replace
	__webpack_require__(/*! dojo/dom-construct */ "./node_modules/dojo/dom-construct.js"),
	__webpack_require__(/*! dojo/has */ "./node_modules/dojo/has.js"), // has("dijit-legacy-requires")
	__webpack_require__(/*! dojo/_base/lang */ "./node_modules/dojo/_base/lang.js"), // lang.extend
	__webpack_require__(/*! dojo/on */ "./node_modules/dojo/on.js"),
	__webpack_require__(/*! dojo/ready */ "./node_modules/dojo/ready.js"),
	__webpack_require__(/*! dojo/topic */ "./node_modules/dojo/topic.js"), // publish
	__webpack_require__(/*! dojo/when */ "./node_modules/dojo/when.js"),
	__webpack_require__(/*! ../registry */ "./node_modules/dijit/registry.js"), // registry.byId
	__webpack_require__(/*! ../_WidgetBase */ "./node_modules/dijit/_WidgetBase.js"),
	__webpack_require__(/*! ./_LayoutWidget */ "./node_modules/dijit/layout/_LayoutWidget.js")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(array, cookie, declare, domClass, domConstruct, has, lang, on, ready, topic, when, registry, _WidgetBase, _LayoutWidget){

	// module:
	//		dijit/layout/StackContainer

	// Back compat w/1.6, remove for 2.0
	if(has("dijit-legacy-requires")){
		ready(0, function(){
			var requires = ["dijit/layout/StackController"];
			require(requires);	// use indirection so modules not rolled into a build
		});
	}

	var StackContainer = declare("dijit.layout.StackContainer", _LayoutWidget, {
		// summary:
		//		A container that has multiple children, but shows only
		//		one child at a time
		//
		// description:
		//		A container for widgets (ContentPanes, for example) That displays
		//		only one Widget at a time.
		//
		//		Publishes topics [widgetId]-addChild, [widgetId]-removeChild, and [widgetId]-selectChild
		//
		//		Can be base class for container, Wizard, Show, etc.
		//
		//		See `StackContainer.ChildWidgetProperties` for details on the properties that can be set on
		//		children of a `StackContainer`.

		// doLayout: Boolean
		//		If true, change the size of my currently displayed child to match my size
		doLayout: true,

		// persist: Boolean
		//		Remembers the selected child across sessions
		persist: false,

		baseClass: "dijitStackContainer",

		/*=====
		// selectedChildWidget: [readonly] dijit._Widget
		//		References the currently selected child widget, if any.
		//		Adjust selected child with selectChild() method.
		selectedChildWidget: null,
		=====*/

		buildRendering: function(){
			this.inherited(arguments);
			domClass.add(this.domNode, "dijitLayoutContainer");
		},

		postCreate: function(){
			this.inherited(arguments);
			this.own(
				on(this.domNode, "keydown", lang.hitch(this, "_onKeyDown"))
			);
		},

		startup: function(){
			if(this._started){
				return;
			}

			var children = this.getChildren();

			// Setup each page panel to be initially hidden
			array.forEach(children, this._setupChild, this);

			// Figure out which child to initially display, defaulting to first one
			if(this.persist){
				this.selectedChildWidget = registry.byId(cookie(this.id + "_selectedChild"));
			}else{
				array.some(children, function(child){
					if(child.selected){
						this.selectedChildWidget = child;
					}
					return child.selected;
				}, this);
			}
			var selected = this.selectedChildWidget;
			if(!selected && children[0]){
				selected = this.selectedChildWidget = children[0];
				selected.selected = true;
			}

			// Publish information about myself so any StackControllers can initialize.
			// This needs to happen before this.inherited(arguments) so that for
			// TabContainer, this._contentBox doesn't include the space for the tab labels.
			topic.publish(this.id + "-startup", {children: children, selected: selected, textDir: this.textDir});

			// Startup each child widget, and do initial layout like setting this._contentBox,
			// then calls this.resize() which does the initial sizing on the selected child.
			this.inherited(arguments);
		},

		resize: function(){
			// Overrides _LayoutWidget.resize()
			// Resize is called when we are first made visible (it's called from startup()
			// if we are initially visible). If this is the first time we've been made
			// visible then show our first child.
			if(!this._hasBeenShown){
				this._hasBeenShown = true;
				var selected = this.selectedChildWidget;
				if(selected){
					this._showChild(selected);
				}
			}
			this.inherited(arguments);
		},

		_setupChild: function(/*dijit/_WidgetBase*/ child){
			// Overrides _LayoutWidget._setupChild()

			// For aria support, wrap child widget in a <div role="tabpanel">
			var childNode = child.domNode,
				wrapper = domConstruct.place(
					"<div role='tabpanel' class='" + this.baseClass + "ChildWrapper dijitHidden'>",
					child.domNode,
					"replace"),
				label = child["aria-label"] || child.title || child.label;
			if(label){
				// setAttribute() escapes special chars, and if() statement avoids setting aria-label="undefined"
				wrapper.setAttribute("aria-label", label);
			}
			domConstruct.place(childNode, wrapper);
			child._wrapper = wrapper;	// to set the aria-labelledby in StackController

			this.inherited(arguments);

			// child may have style="display: none" (at least our test cases do), so remove that
			if(childNode.style.display == "none"){
				childNode.style.display = "block";
			}

			// remove the title attribute so it doesn't show up when i hover over a node
			child.domNode.removeAttribute("title");
		},

		addChild: function(/*dijit/_WidgetBase*/ child, /*Integer?*/ insertIndex){
			// Overrides _Container.addChild() to do layout and publish events

			this.inherited(arguments);

			if(this._started){
				topic.publish(this.id + "-addChild", child, insertIndex);	// publish

				// in case the tab titles have overflowed from one line to two lines
				// (or, if this if first child, from zero lines to one line)
				// TODO: w/ScrollingTabController this is no longer necessary, although
				// ScrollTabController.resize() does need to get called to show/hide
				// the navigation buttons as appropriate, but that's handled in ScrollingTabController.onAddChild().
				// If this is updated to not layout [except for initial child added / last child removed], update
				// "childless startup" test in StackContainer.html to check for no resize event after second addChild()
				this.layout();

				// if this is the first child, then select it
				if(!this.selectedChildWidget){
					this.selectChild(child);
				}
			}
		},

		removeChild: function(/*dijit/_WidgetBase*/ page){
			// Overrides _Container.removeChild() to do layout and publish events

			var idx = array.indexOf(this.getChildren(), page);

			this.inherited(arguments);

			// Remove the child widget wrapper we use to set aria roles.  This won't affect the page itself since it's
			// already been detached from page._wrapper via the this.inherited(arguments) call above.
			domConstruct.destroy(page._wrapper);
			delete page._wrapper;

			if(this._started){
				// This will notify any tablists to remove a button; do this first because it may affect sizing.
				topic.publish(this.id + "-removeChild", page);
			}

			// If all our children are being destroyed than don't run the code below (to select another page),
			// because we are deleting every page one by one
			if(this._descendantsBeingDestroyed){
				return;
			}

			// Select new page to display, also updating TabController to show the respective tab.
			// Do this before layout call because it can affect the height of the TabController.
			if(this.selectedChildWidget === page){
				this.selectedChildWidget = undefined;
				if(this._started){
					var children = this.getChildren();
					if(children.length){
						this.selectChild(children[Math.max(idx - 1, 0)]);
					}
				}
			}

			if(this._started){
				// In case the tab titles now take up one line instead of two lines
				// (note though that ScrollingTabController never overflows to multiple lines),
				// or the height has changed slightly because of addition/removal of tab which close icon
				this.layout();
			}
		},

		selectChild: function(/*dijit/_WidgetBase|String*/ page, /*Boolean*/ animate){
			// summary:
			//		Show the given widget (which must be one of my children)
			// page:
			//		Reference to child widget or id of child widget

			var d;

			page = registry.byId(page);

			if(this.selectedChildWidget != page){
				// Deselect old page and select new one
				d = this._transition(page, this.selectedChildWidget, animate);
				this._set("selectedChildWidget", page);
				topic.publish(this.id + "-selectChild", page, this._focused);	// publish

				if(this.persist){
					cookie(this.id + "_selectedChild", this.selectedChildWidget.id);
				}
			}

			// d may be null, or a scalar like true.  Return a promise in all cases
			return when(d || true);		// Promise
		},

		_transition: function(newWidget, oldWidget /*===== ,  animate =====*/){
			// summary:
			//		Hide the old widget and display the new widget.
			//		Subclasses should override this.
			// newWidget: dijit/_WidgetBase
			//		The newly selected widget.
			// oldWidget: dijit/_WidgetBase
			//		The previously selected widget.
			// animate: Boolean
			//		Used by AccordionContainer to turn on/off slide effect.
			// tags:
			//		protected extension
			if(oldWidget){
				this._hideChild(oldWidget);
			}
			var d = this._showChild(newWidget);

			// Size the new widget, in case this is the first time it's being shown,
			// or I have been resized since the last time it was shown.
			// Note that page must be visible for resizing to work.
			if(newWidget.resize){
				if(this.doLayout){
					newWidget.resize(this._containerContentBox || this._contentBox);
				}else{
					// the child should pick it's own size but we still need to call resize()
					// (with no arguments) to let the widget lay itself out
					newWidget.resize();
				}
			}

			return d;	// If child has an href, promise that fires when the child's href finishes loading
		},

		_adjacent: function(/*Boolean*/ forward){
			// summary:
			//		Gets the next/previous child widget in this container from the current selection.

			// TODO: remove for 2.0 if this isn't being used.   Otherwise, fix to skip disabled tabs.

			var children = this.getChildren();
			var index = array.indexOf(children, this.selectedChildWidget);
			index += forward ? 1 : children.length - 1;
			return children[ index % children.length ]; // dijit/_WidgetBase
		},

		forward: function(){
			// summary:
			//		Advance to next page.
			return this.selectChild(this._adjacent(true), true);
		},

		back: function(){
			// summary:
			//		Go back to previous page.
			return this.selectChild(this._adjacent(false), true);
		},

		_onKeyDown: function(e){
			topic.publish(this.id + "-containerKeyDown", { e: e, page: this});	// publish
		},

		layout: function(){
			// Implement _LayoutWidget.layout() virtual method.
			var child = this.selectedChildWidget;
			if(child && child.resize){
				if(this.doLayout){
					child.resize(this._containerContentBox || this._contentBox);
				}else{
					child.resize();
				}
			}
		},

		_showChild: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Show the specified child by changing it's CSS, and call _onShow()/onShow() so
			//		it can do any updates it needs regarding loading href's etc.
			// returns:
			//		Promise that fires when page has finished showing, or true if there's no href
			var children = this.getChildren();
			page.isFirstChild = (page == children[0]);
			page.isLastChild = (page == children[children.length - 1]);
			page._set("selected", true);

			if(page._wrapper){	// false if not started yet
				domClass.replace(page._wrapper, "dijitVisible", "dijitHidden");
			}

			return (page._onShow && page._onShow()) || true;
		},

		_hideChild: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Hide the specified child by changing it's CSS, and call _onHide() so
			//		it's notified.
			page._set("selected", false);

			if(page._wrapper){	// false if not started yet
				domClass.replace(page._wrapper, "dijitHidden", "dijitVisible");
			}

			page.onHide && page.onHide();
		},

		closeChild: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Callback when user clicks the [X] to remove a page.
			//		If onClose() returns true then remove and destroy the child.
			// tags:
			//		private
			var remove = !page.onClose || page.onClose(this, page);
			if(remove){
				this.removeChild(page);
				// makes sure we can clean up executeScripts in ContentPane onUnLoad
				page.destroyRecursive();
			}
		},

		destroyDescendants: function(/*Boolean*/ preserveDom){
			this._descendantsBeingDestroyed = true;
			this.selectedChildWidget = undefined;
			array.forEach(this.getChildren(), function(child){
				if(!preserveDom){
					this.removeChild(child);
				}
				child.destroyRecursive(preserveDom);
			}, this);
			this._descendantsBeingDestroyed = false;
		}
	});

	StackContainer.ChildWidgetProperties = {
		// summary:
		//		These properties can be specified for the children of a StackContainer.

		// selected: Boolean
		//		Specifies that this widget should be the initially displayed pane.
		//		Note: to change the selected child use `dijit/layout/StackContainer.selectChild`
		selected: false,

		// disabled: Boolean
		//		Specifies that the button to select this pane should be disabled.
		//		Doesn't affect programmatic selection of the pane, nor does it deselect the pane if it is currently selected.
		disabled: false,

		// closable: Boolean
		//		True if user can close (destroy) this child, such as (for example) clicking the X on the tab.
		closable: false,

		// iconClass: String
		//		CSS Class specifying icon to use in label associated with this pane.
		iconClass: "dijitNoIcon",

		// showTitle: Boolean
		//		When true, display title of this widget as tab label etc., rather than just using
		//		icon specified in iconClass
		showTitle: true
	};

	// Since any widget can be specified as a StackContainer child, mix them
	// into the base widget class.  (This is a hack, but it's effective.)
	// This is for the benefit of the parser.   Remove for 2.0.  Also, hide from doc viewer.
	lang.extend(_WidgetBase, /*===== {} || =====*/ StackContainer.ChildWidgetProperties);

	return StackContainer;
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/layout/StackController.js":
/*!******************************************************!*\
  !*** ./node_modules/dijit/layout/StackController.js ***!
  \******************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/array */ "./node_modules/dojo/_base/array.js"), // array.forEach array.indexOf array.map
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom-class */ "./node_modules/dojo/dom-class.js"),
	__webpack_require__(/*! dojo/dom-construct */ "./node_modules/dojo/dom-construct.js"),
	__webpack_require__(/*! dojo/keys */ "./node_modules/dojo/keys.js"), // keys
	__webpack_require__(/*! dojo/_base/lang */ "./node_modules/dojo/_base/lang.js"), // lang.getObject
	__webpack_require__(/*! dojo/on */ "./node_modules/dojo/on.js"),
	__webpack_require__(/*! dojo/topic */ "./node_modules/dojo/topic.js"),
	__webpack_require__(/*! ../focus */ "./node_modules/dijit/focus.js"), // focus.focus()
	__webpack_require__(/*! ../registry */ "./node_modules/dijit/registry.js"), // registry.byId
	__webpack_require__(/*! ../_Widget */ "./node_modules/dijit/_Widget.js"),
	__webpack_require__(/*! ../_TemplatedMixin */ "./node_modules/dijit/_TemplatedMixin.js"),
	__webpack_require__(/*! ../_Container */ "./node_modules/dijit/_Container.js"),
	__webpack_require__(/*! ../form/ToggleButton */ "./node_modules/dijit/form/ToggleButton.js"),
	__webpack_require__(/*! dojo/touch */ "./node_modules/dojo/touch.js")	// for normalized click handling, see dojoClick property setting in postCreate()
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(array, declare, domClass, domConstruct, keys, lang, on, topic,
			focus, registry, _Widget, _TemplatedMixin,_Container, ToggleButton){

	// module:
	//		dijit/layout/StackController

	var StackButton = declare("dijit.layout._StackButton", ToggleButton, {
		// summary:
		//		Internal widget used by StackContainer.
		// description:
		//		The button-like or tab-like object you click to select or delete a page
		// tags:
		//		private

		// Override _FormWidget.tabIndex.
		// StackContainer buttons are not in the tab order by default.
		// Probably we should be calling this.startupKeyNavChildren() instead.
		tabIndex: "-1",

		// closeButton: Boolean
		//		When true, display close button for this tab
		closeButton: false,

		_aria_attr: "aria-selected",

		buildRendering: function(/*Event*/ evt){
			this.inherited(arguments);
			(this.focusNode || this.domNode).setAttribute("role", "tab");
		}
	});


	var StackController = declare("dijit.layout.StackController", [_Widget, _TemplatedMixin, _Container], {
		// summary:
		//		Set of buttons to select a page in a `dijit/layout/StackContainer`
		// description:
		//		Monitors the specified StackContainer, and whenever a page is
		//		added, deleted, or selected, updates itself accordingly.

		baseClass: "dijitStackController",

		templateString: "<span role='tablist' data-dojo-attach-event='onkeydown'></span>",

		// containerId: [const] String
		//		The id of the page container that I point to
		containerId: "",

		// buttonWidget: [const] Constructor
		//		The button widget to create to correspond to each page
		buttonWidget: StackButton,

		// buttonWidgetCloseClass: String
		//		CSS class of [x] close icon, used by event delegation code to tell when close button was clicked
		buttonWidgetCloseClass: "dijitStackCloseButton",

		pane2button: function(/*String*/ id){
			// summary:
			//		Returns the button corresponding to the pane w/the given id.
			// tags:
			//		protected
			return registry.byId(this.id + "_" + id);
		},

		postCreate: function(){
			this.inherited(arguments);

			// Listen to notifications from StackContainer.  This is tricky because the StackContainer may not have
			// been created yet, so abstracting it through topics.
			// Note: for TabContainer we can do this through bubbled events instead of topics; maybe that's
			// all we support for 2.0?
			this.own(
				topic.subscribe(this.containerId + "-startup", lang.hitch(this, "onStartup")),
				topic.subscribe(this.containerId + "-addChild", lang.hitch(this, "onAddChild")),
				topic.subscribe(this.containerId + "-removeChild", lang.hitch(this, "onRemoveChild")),
				topic.subscribe(this.containerId + "-selectChild", lang.hitch(this, "onSelectChild")),
				topic.subscribe(this.containerId + "-containerKeyDown", lang.hitch(this, "onContainerKeyDown"))
			);

			// Listen for click events to select or close tabs.
			// No need to worry about ENTER/SPACE key handling: tabs are selected via left/right arrow keys,
			// and closed via shift-F10 (to show the close menu).
			// Also, add flag to use normalized click handling from dojo/touch
			this.containerNode.dojoClick = true;
			this.own(on(this.containerNode, 'click', lang.hitch(this, function(evt){
				var button = registry.getEnclosingWidget(evt.target);
				if(button != this.containerNode && !button.disabled && button.page){
					for(var target = evt.target; target !== this.containerNode; target = target.parentNode){
						if(domClass.contains(target, this.buttonWidgetCloseClass)){
							this.onCloseButtonClick(button.page);
							break;
						}else if(target == button.domNode){
							this.onButtonClick(button.page);
							break;
						}
					}
				}
			})));
		},

		onStartup: function(/*Object*/ info){
			// summary:
			//		Called after StackContainer has finished initializing
			// tags:
			//		private
			this.textDir = info.textDir;
			array.forEach(info.children, this.onAddChild, this);
			if(info.selected){
				// Show button corresponding to selected pane (unless selected
				// is null because there are no panes)
				this.onSelectChild(info.selected);
			}

			// Reflect events like page title changes to tab buttons
			var containerNode = registry.byId(this.containerId).containerNode,
				pane2button = lang.hitch(this, "pane2button"),
				paneToButtonAttr = {
					"title": "label",
					"showtitle": "showLabel",
					"iconclass": "iconClass",
					"closable": "closeButton",
					"tooltip": "title",
					"disabled": "disabled",
					"textdir": "textdir"
				},
				connectFunc = function(attr, buttonAttr){
					return on(containerNode, "attrmodified-" + attr, function(evt){
						var button = pane2button(evt.detail && evt.detail.widget && evt.detail.widget.id);
						if(button){
							button.set(buttonAttr, evt.detail.newValue);
						}
					});
				};
			for(var attr in paneToButtonAttr){
				this.own(connectFunc(attr, paneToButtonAttr[attr]));
			}
		},

		destroy: function(preserveDom){
			// Since the buttons are internal to the StackController widget, destroy() should remove them.
			// When #5796 is fixed for 2.0 can get rid of this function completely.
			this.destroyDescendants(preserveDom);
			this.inherited(arguments);
		},

		onAddChild: function(/*dijit/_WidgetBase*/ page, /*Integer?*/ insertIndex){
			// summary:
			//		Called whenever a page is added to the container.
			//		Create button corresponding to the page.
			// tags:
			//		private

			// create an instance of the button widget
			// (remove typeof buttonWidget == string support in 2.0)
			var Cls = lang.isString(this.buttonWidget) ? lang.getObject(this.buttonWidget) : this.buttonWidget;
			var button = new Cls({
				id: this.id + "_" + page.id,
				name: this.id + "_" + page.id, // note: must match id used in pane2button()
				label: page.title,
				disabled: page.disabled,
				ownerDocument: this.ownerDocument,
				dir: page.dir,
				lang: page.lang,
				textDir: page.textDir || this.textDir,
				showLabel: page.showTitle,
				iconClass: page.iconClass,
				closeButton: page.closable,
				title: page.tooltip,
				page: page
			});

			this.addChild(button, insertIndex);
			page.controlButton = button;	// this value might be overwritten if two tabs point to same container
			if(!this._currentChild){
				// If this is the first child then StackContainer will soon publish that it's selected,
				// but before that StackContainer calls layout(), and before layout() is called the
				// StackController needs to have the proper height... which means that the button needs
				// to be marked as selected now.   See test_TabContainer_CSS.html for test.
				this.onSelectChild(page);
			}

			// Add this StackController button to the list of things that labels that StackContainer pane.
			// Also, if there's an aria-labelledby parameter for the pane, then the aria-label parameter is unneeded.
			var labelledby = page._wrapper.getAttribute("aria-labelledby") ?
				page._wrapper.getAttribute("aria-labelledby") + " " + button.id : button.id;
			page._wrapper.removeAttribute("aria-label");
			page._wrapper.setAttribute("aria-labelledby", labelledby);
		},

		onRemoveChild: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Called whenever a page is removed from the container.
			//		Remove the button corresponding to the page.
			// tags:
			//		private

			if(this._currentChild === page){
				this._currentChild = null;
			}

			var button = this.pane2button(page.id);
			if(button){
				this.removeChild(button);
				button.destroy();
			}
			delete page.controlButton;
		},

		onSelectChild: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Called when a page has been selected in the StackContainer, either by me or by another StackController
			// tags:
			//		private

			if(!page){
				return;
			}

			if(this._currentChild){
				var oldButton = this.pane2button(this._currentChild.id);
				oldButton.set('checked', false);
				oldButton.focusNode.setAttribute("tabIndex", "-1");
			}

			var newButton = this.pane2button(page.id);
			newButton.set('checked', true);
			this._currentChild = page;
			newButton.focusNode.setAttribute("tabIndex", "0");
			var container = registry.byId(this.containerId);
		},

		onButtonClick: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Called whenever one of my child buttons is pressed in an attempt to select a page
			// tags:
			//		private

			var button = this.pane2button(page.id);

			// For TabContainer where the tabs are <span>, need to set focus explicitly when left/right arrow
			focus.focus(button.focusNode);

			if(this._currentChild && this._currentChild.id === page.id){
				//In case the user clicked the checked button, keep it in the checked state because it remains to be the selected stack page.
				button.set('checked', true);
			}
			var container = registry.byId(this.containerId);
			container.selectChild(page);
		},

		onCloseButtonClick: function(/*dijit/_WidgetBase*/ page){
			// summary:
			//		Called whenever one of my child buttons [X] is pressed in an attempt to close a page
			// tags:
			//		private

			var container = registry.byId(this.containerId);
			container.closeChild(page);
			if(this._currentChild){
				var b = this.pane2button(this._currentChild.id);
				if(b){
					focus.focus(b.focusNode || b.domNode);
				}
			}
		},

		// TODO: this is a bit redundant with forward, back api in StackContainer
		adjacent: function(/*Boolean*/ forward){
			// summary:
			//		Helper for onkeydown to find next/previous button
			// tags:
			//		private

			if(!this.isLeftToRight() && (!this.tabPosition || /top|bottom/.test(this.tabPosition))){
				forward = !forward;
			}
			// find currently focused button in children array
			var children = this.getChildren();
			var idx = array.indexOf(children, this.pane2button(this._currentChild.id)),
				current = children[idx];

			// Pick next/previous non-disabled button to focus on.   If we get back to the original button it means
			// that all buttons must be disabled, so return current child to avoid an infinite loop.
			var child;
			do{
				idx = (idx + (forward ? 1 : children.length - 1)) % children.length;
				child = children[idx];
			}while(child.disabled && child != current);

			return child; // dijit/_WidgetBase
		},

		onkeydown: function(/*Event*/ e, /*Boolean?*/ fromContainer){
			// summary:
			//		Handle keystrokes on the page list, for advancing to next/previous button
			//		and closing the current page if the page is closable.
			// tags:
			//		private

			if(this.disabled || e.altKey){
				return;
			}
			var forward = null;
			if(e.ctrlKey || !e._djpage){
				switch(e.keyCode){
					case keys.LEFT_ARROW:
					case keys.UP_ARROW:
						if(!e._djpage){
							forward = false;
						}
						break;
					case keys.PAGE_UP:
						if(e.ctrlKey){
							forward = false;
						}
						break;
					case keys.RIGHT_ARROW:
					case keys.DOWN_ARROW:
						if(!e._djpage){
							forward = true;
						}
						break;
					case keys.PAGE_DOWN:
						if(e.ctrlKey){
							forward = true;
						}
						break;
					case keys.HOME:
						// Navigate to first non-disabled child
						var children = this.getChildren();
						for(var idx = 0; idx < children.length; idx++){
							var child = children[idx];
							if(!child.disabled){
								this.onButtonClick(child.page);
								break;
							}
						}
						e.stopPropagation();
						e.preventDefault();
						break;
					case keys.END:
						// Navigate to last non-disabled child
						var children = this.getChildren();
						for(var idx = children.length - 1; idx >= 0; idx--){
							var child = children[idx];
							if(!child.disabled){
								this.onButtonClick(child.page);
								break;
							}
						}
						e.stopPropagation();
						e.preventDefault();
						break;
					case keys.DELETE:
					case "W".charCodeAt(0):    // ctrl-W
						if(this._currentChild.closable &&
							(e.keyCode == keys.DELETE || e.ctrlKey)){
							this.onCloseButtonClick(this._currentChild);

							// avoid browser tab closing
							e.stopPropagation();
							e.preventDefault();
						}
						break;
					case keys.TAB:
						if(e.ctrlKey){
							this.onButtonClick(this.adjacent(!e.shiftKey).page);
							e.stopPropagation();
							e.preventDefault();
						}
						break;
				}
				// handle next/previous page navigation (left/right arrow, etc.)
				if(forward !== null){
					this.onButtonClick(this.adjacent(forward).page);
					e.stopPropagation();
					e.preventDefault();
				}
			}
		},

		onContainerKeyDown: function(/*Object*/ info){
			// summary:
			//		Called when there was a keydown on the container
			// tags:
			//		private
			info.e._djpage = info.page;
			this.onkeydown(info.e);
		}
	});

	StackController.StackButton = StackButton;	// for monkey patching

	return StackController;
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/layout/TabContainer.js":
/*!***************************************************!*\
  !*** ./node_modules/dijit/layout/TabContainer.js ***!
  \***************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/lang */ "./node_modules/dojo/_base/lang.js"), // lang.getObject
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! ./_TabContainerBase */ "./node_modules/dijit/layout/_TabContainerBase.js"),
	__webpack_require__(/*! ./TabController */ "./node_modules/dijit/layout/TabController.js"),
	__webpack_require__(/*! ./ScrollingTabController */ "./node_modules/dijit/layout/ScrollingTabController.js")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(lang, declare, _TabContainerBase, TabController, ScrollingTabController){

	// module:
	//		dijit/layout/TabContainer


	return declare("dijit.layout.TabContainer", _TabContainerBase, {
		// summary:
		//		A Container with tabs to select each child (only one of which is displayed at a time).
		// description:
		//		A TabContainer is a container that has multiple panes, but shows only
		//		one pane at a time.  There are a set of tabs corresponding to each pane,
		//		where each tab has the name (aka title) of the pane, and optionally a close button.
		//
		//		See `StackContainer.ChildWidgetProperties` for details on the properties that can be set on
		//		children of a `TabContainer`.

		// useMenu: [const] Boolean
		//		True if a menu should be used to select tabs when they are too
		//		wide to fit the TabContainer, false otherwise.
		useMenu: true,

		// useSlider: [const] Boolean
		//		True if a slider should be used to select tabs when they are too
		//		wide to fit the TabContainer, false otherwise.
		useSlider: true,

		// controllerWidget: Class
		//		An optional parameter to override the widget used to display the tab labels
		controllerWidget: "",

		_makeController: function(/*DomNode*/ srcNode){
			// summary:
			//		Instantiate tablist controller widget and return reference to it.
			//		Callback from _TabContainerBase.postCreate().
			// tags:
			//		protected extension

			// "string" branch for back-compat, remove for 2.0
			var cls = this.baseClass + "-tabs" + (this.doLayout ? "" : " dijitTabNoLayout"),
				TabController = typeof this.controllerWidget == "string" ? lang.getObject(this.controllerWidget) :
						this.controllerWidget;

			return new TabController({
				id: this.id + "_tablist",
				ownerDocument: this.ownerDocument,
				dir: this.dir,
				lang: this.lang,
				textDir: this.textDir,
				tabPosition: this.tabPosition,
				doLayout: this.doLayout,
				containerId: this.id,
				"class": cls,
				nested: this.nested,
				useMenu: this.useMenu,
				useSlider: this.useSlider,
				tabStripClass: this.tabStrip ? this.baseClass + (this.tabStrip ? "":"No") + "Strip": null
			}, srcNode);
		},

		postMixInProperties: function(){
			this.inherited(arguments);

			// Scrolling controller only works for horizontal non-nested tabs
			if(!this.controllerWidget){
				this.controllerWidget = (this.tabPosition == "top" || this.tabPosition == "bottom") && !this.nested ?
							ScrollingTabController : TabController;
			}
		}
	});
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/layout/TabController.js":
/*!****************************************************!*\
  !*** ./node_modules/dijit/layout/TabController.js ***!
  \****************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom */ "./node_modules/dojo/dom.js"), // dom.setSelectable
	__webpack_require__(/*! dojo/dom-attr */ "./node_modules/dojo/dom-attr.js"), // domAttr.attr
	__webpack_require__(/*! dojo/dom-class */ "./node_modules/dojo/dom-class.js"), // domClass.toggle
	__webpack_require__(/*! dojo/has */ "./node_modules/dojo/has.js"),
	__webpack_require__(/*! dojo/i18n */ "./node_modules/dojo/i18n.js"), // i18n.getLocalization
	__webpack_require__(/*! dojo/_base/lang */ "./node_modules/dojo/_base/lang.js"), // lang.hitch lang.trim
	__webpack_require__(/*! ./StackController */ "./node_modules/dijit/layout/StackController.js"),
	__webpack_require__(/*! ../registry */ "./node_modules/dijit/registry.js"),
	__webpack_require__(/*! ../Menu */ "./node_modules/dijit/Menu.js"),
	__webpack_require__(/*! ../MenuItem */ "./node_modules/dijit/MenuItem.js"),
	__webpack_require__(/*! dojo/text!./templates/_TabButton.html */ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/_TabButton.html"),
	__webpack_require__(/*! dojo/i18n!../nls/common */ "./node_modules/dojo-webpack-plugin/loaders/dojo/i18n/index.js!./node_modules/dijit/nls/common.js")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(declare, dom, domAttr, domClass, has, i18n, lang, StackController, registry, Menu, MenuItem, template){

	// module:
	//		dijit/layout/TabController

	var TabButton = declare("dijit.layout._TabButton" + (has("dojo-bidi") ? "_NoBidi" : ""), StackController.StackButton, {
		// summary:
		//		A tab (the thing you click to select a pane).
		// description:
		//		Contains the title of the pane, and optionally a close-button to destroy the pane.
		//		This is an internal widget and should not be instantiated directly.
		// tags:
		//		private

		// baseClass: String
		//		The CSS class applied to the domNode.
		baseClass: "dijitTab",

		// Apply dijitTabCloseButtonHover when close button is hovered
		cssStateNodes: {
			closeNode: "dijitTabCloseButton"
		},

		templateString: template,

		// Button superclass maps name to a this.valueNode, but we don't have a this.valueNode attach point
		_setNameAttr: "focusNode",

		// Override _FormWidget.scrollOnFocus.
		// Don't scroll the whole tab container into view when the button is focused.
		scrollOnFocus: false,

		buildRendering: function(){
			this.inherited(arguments);

			dom.setSelectable(this.containerNode, false);
		},

		startup: function(){
			this.inherited(arguments);
			var n = this.domNode;

			// Required to give IE6 a kick, as it initially hides the
			// tabs until they are focused on.
			this.defer(function(){
				n.className = n.className;
			}, 1);
		},

		_setCloseButtonAttr: function(/*Boolean*/ disp){
			// summary:
			//		Hide/show close button
			this._set("closeButton", disp);
			domClass.toggle(this.domNode, "dijitClosable", disp);
			this.closeNode.style.display = disp ? "" : "none";
			if(disp){
				var _nlsResources = i18n.getLocalization("dijit", "common");
				if(this.closeNode){
					domAttr.set(this.closeNode, "title", _nlsResources.itemClose);
				}
			}
		},

		_setDisabledAttr: function(/*Boolean*/ disabled){
			// summary:
			//		Make tab selected/unselectable

			this.inherited(arguments);

			// Don't show tooltip for close button when tab is disabled
			if(this.closeNode){
				if(disabled){
					domAttr.remove(this.closeNode, "title");
				}else{
					var _nlsResources = i18n.getLocalization("dijit", "common");
					domAttr.set(this.closeNode, "title", _nlsResources.itemClose);
				}
			}
		},

		_setLabelAttr: function(/*String*/ content){
			// summary:
			//		Hook for set('label', ...) to work.
			// description:
			//		takes an HTML string.
			//		Inherited ToggleButton implementation will Set the label (text) of the button;
			//		Need to set the alt attribute of icon on tab buttons if no label displayed
			this.inherited(arguments);
			if(!this.showLabel && !this.params.title){
				this.iconNode.alt = lang.trim(this.containerNode.innerText || this.containerNode.textContent || '');
			}
		}
	});

	if(has("dojo-bidi")){
		TabButton = declare("dijit.layout._TabButton", TabButton, {
			_setLabelAttr: function(/*String*/ content){
				this.inherited(arguments);
				this.applyTextDir(this.iconNode, this.iconNode.alt);
			}
		});
	}

	var TabController = declare("dijit.layout.TabController", StackController, {
		// summary:
		//		Set of tabs (the things with titles and a close button, that you click to show a tab panel).
		//		Used internally by `dijit/layout/TabContainer`.
		// description:
		//		Lets the user select the currently shown pane in a TabContainer or StackContainer.
		//		TabController also monitors the TabContainer, and whenever a pane is
		//		added or deleted updates itself accordingly.
		// tags:
		//		private

		baseClass: "dijitTabController",

		templateString: "<div role='tablist' data-dojo-attach-event='onkeydown:onkeydown'></div>",

		// tabPosition: String
		//		Defines where tabs go relative to the content.
		//		"top", "bottom", "left-h", "right-h"
		tabPosition: "top",

		// buttonWidget: Constructor
		//		The tab widget to create to correspond to each page
		buttonWidget: TabButton,

		// buttonWidgetCloseClass: String
		//		Class of [x] close icon, used by event delegation code to tell when close button was clicked
		buttonWidgetCloseClass: "dijitTabCloseButton",

		postCreate: function(){
			this.inherited(arguments);

			// Setup a close menu to be shared between all the closable tabs (excluding disabled tabs)
			var closeMenu = new Menu({
				id: this.id + "_Menu",
				ownerDocument: this.ownerDocument,
				dir: this.dir,
				lang: this.lang,
				textDir: this.textDir,
				targetNodeIds: [this.domNode],
				selector: function(node){
					return domClass.contains(node, "dijitClosable") && !domClass.contains(node, "dijitTabDisabled");
				}
			});
			this.own(closeMenu);

			var _nlsResources = i18n.getLocalization("dijit", "common"),
				controller = this;
			closeMenu.addChild(new MenuItem({
				label: _nlsResources.itemClose,
				ownerDocument: this.ownerDocument,
				dir: this.dir,
				lang: this.lang,
				textDir: this.textDir,
				onClick: function(evt){
					var button = registry.byNode(this.getParent().currentTarget);
					controller.onCloseButtonClick(button.page);
				}
			}));
		}
	});

	TabController.TabButton = TabButton;	// for monkey patching

	return TabController;
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/layout/_TabContainerBase.js":
/*!********************************************************!*\
  !*** ./node_modules/dijit/layout/_TabContainerBase.js ***!
  \********************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom-class */ "./node_modules/dojo/dom-class.js"), // domClass.add
	__webpack_require__(/*! dojo/dom-geometry */ "./node_modules/dojo/dom-geometry.js"), // domGeometry.contentBox
	__webpack_require__(/*! dojo/dom-style */ "./node_modules/dojo/dom-style.js"), // domStyle.style
	__webpack_require__(/*! ./StackContainer */ "./node_modules/dijit/layout/StackContainer.js"),
	__webpack_require__(/*! ./utils */ "./node_modules/dijit/layout/utils.js"), // marginBox2contextBox, layoutChildren
	__webpack_require__(/*! ../_TemplatedMixin */ "./node_modules/dijit/_TemplatedMixin.js"),
	__webpack_require__(/*! dojo/text!./templates/TabContainer.html */ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/TabContainer.html")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(declare, domClass, domGeometry, domStyle, StackContainer, layoutUtils, _TemplatedMixin, template){

	// module:
	//		dijit/layout/_TabContainerBase

	return declare("dijit.layout._TabContainerBase", [StackContainer, _TemplatedMixin], {
		// summary:
		//		Abstract base class for TabContainer.   Must define _makeController() to instantiate
		//		and return the widget that displays the tab labels
		// description:
		//		A TabContainer is a container that has multiple panes, but shows only
		//		one pane at a time.  There are a set of tabs corresponding to each pane,
		//		where each tab has the name (aka title) of the pane, and optionally a close button.

		// tabPosition: String
		//		Defines where tabs go relative to tab content.
		//		"top", "bottom", "left-h", "right-h"
		tabPosition: "top",

		baseClass: "dijitTabContainer",

		// tabStrip: [const] Boolean
		//		Defines whether the tablist gets an extra class for layouting, putting a border/shading
		//		around the set of tabs.   Not supported by claro theme.
		tabStrip: false,

		// nested: [const] Boolean
		//		If true, use styling for a TabContainer nested inside another TabContainer.
		//		For tundra etc., makes tabs look like links, and hides the outer
		//		border since the outer TabContainer already has a border.
		nested: false,

		templateString: template,

		postMixInProperties: function(){
			// set class name according to tab position, ex: dijitTabContainerTop
			this.baseClass += this.tabPosition.charAt(0).toUpperCase() + this.tabPosition.substr(1).replace(/-.*/, "");

			this.srcNodeRef && domStyle.set(this.srcNodeRef, "visibility", "hidden");

			this.inherited(arguments);
		},

		buildRendering: function(){
			this.inherited(arguments);

			// Create the tab list that will have a tab (a.k.a. tab button) for each tab panel
			this.tablist = this._makeController(this.tablistNode);

			if(!this.doLayout){
				domClass.add(this.domNode, "dijitTabContainerNoLayout");
			}

			if(this.nested){
				/* workaround IE's lack of support for "a > b" selectors by
				 * tagging each node in the template.
				 */
				domClass.add(this.domNode, "dijitTabContainerNested");
				domClass.add(this.tablist.containerNode, "dijitTabContainerTabListNested");
				domClass.add(this.tablistSpacer, "dijitTabContainerSpacerNested");
				domClass.add(this.containerNode, "dijitTabPaneWrapperNested");
			}else{
				domClass.add(this.domNode, "tabStrip-" + (this.tabStrip ? "enabled" : "disabled"));
			}
		},

		_setupChild: function(/*dijit/_WidgetBase*/ tab){
			// Overrides StackContainer._setupChild().
			domClass.add(tab.domNode, "dijitTabPane");
			this.inherited(arguments);
		},

		removeChild: function(/*dijit/_WidgetBase*/ child) {
			// Overrides StackContainer.removeChild().
			domClass.remove(child.domNode, "dijitTabPane");
			this.inherited(arguments);
		},

		startup: function(){
			if(this._started){
				return;
			}

			// wire up the tablist and its tabs
			this.tablist.startup();

			this.inherited(arguments);
		},

		layout: function(){
			// Overrides StackContainer.layout().
			// Configure the content pane to take up all the space except for where the tabs are

			if(!this._contentBox || typeof(this._contentBox.l) == "undefined"){
				return;
			}

			var sc = this.selectedChildWidget;

			if(this.doLayout){
				// position and size the titles and the container node
				var titleAlign = this.tabPosition.replace(/-h/, "");
				this.tablist.region = titleAlign;
				var children = [this.tablist, {
					domNode: this.tablistSpacer,
					region: titleAlign
				}, {
					domNode: this.containerNode,
					region: "center"
				}];
				layoutUtils.layoutChildren(this.domNode, this._contentBox, children);

				// Compute size to make each of my children.
				// children[2] is the margin-box size of this.containerNode, set by layoutChildren() call above
				this._containerContentBox = layoutUtils.marginBox2contentBox(this.containerNode, children[2]);

				if(sc && sc.resize){
					sc.resize(this._containerContentBox);
				}
			}else{
				// just layout the tab controller, so it can position left/right buttons etc.
				if(this.tablist.resize){
					//make the tabs zero width so that they don't interfere with width calc, then reset
					var s = this.tablist.domNode.style;
					s.width = "0";
					var width = domGeometry.getContentBox(this.domNode).w;
					s.width = "";
					this.tablist.resize({w: width});
				}

				// and call resize() on the selected pane just to tell it that it's been made visible
				if(sc && sc.resize){
					sc.resize();
				}
			}
		},

		destroy: function(preserveDom){
			if(this.tablist){
				this.tablist.destroy(preserveDom);
			}
			this.inherited(arguments);
		}
	});
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/ScrollingTabController.html":
/*!******************************************************************************************************************************!*\
  !*** ./node_modules/dojo-webpack-plugin/loaders/dojo/text!./node_modules/dijit/layout/templates/ScrollingTabController.html ***!
  \******************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"dijitTabListContainer-${tabPosition}\" style=\"visibility:hidden\">\n\t<div data-dojo-type=\"dijit.layout._ScrollingTabControllerMenuButton\"\n\t\t class=\"tabStripButton-${tabPosition}\"\n\t\t id=\"${id}_menuBtn\"\n\t\t data-dojo-props=\"containerId: '${containerId}', iconClass: 'dijitTabStripMenuIcon',\n\t\t\t\t\tdropDownPosition: ['below-alt', 'above-alt']\"\n\t\t data-dojo-attach-point=\"_menuBtn\" showLabel=\"false\" title=\"\">&#9660;</div>\n\t<div data-dojo-type=\"dijit.layout._ScrollingTabControllerButton\"\n\t\t class=\"tabStripButton-${tabPosition}\"\n\t\t id=\"${id}_leftBtn\"\n\t\t data-dojo-props=\"iconClass:'dijitTabStripSlideLeftIcon', showLabel:false, title:''\"\n\t\t data-dojo-attach-point=\"_leftBtn\" data-dojo-attach-event=\"onClick: doSlideLeft\">&#9664;</div>\n\t<div data-dojo-type=\"dijit.layout._ScrollingTabControllerButton\"\n\t\t class=\"tabStripButton-${tabPosition}\"\n\t\t id=\"${id}_rightBtn\"\n\t\t data-dojo-props=\"iconClass:'dijitTabStripSlideRightIcon', showLabel:false, title:''\"\n\t\t data-dojo-attach-point=\"_rightBtn\" data-dojo-attach-event=\"onClick: doSlideRight\">&#9654;</div>\n\t<div class='dijitTabListWrapper' data-dojo-attach-point='tablistWrapper'>\n\t\t<div role='tablist' data-dojo-attach-event='onkeydown:onkeydown'\n\t\t\t data-dojo-attach-point='containerNode' class='nowrapTabStrip'></div>\n\t</div>\n</div>"

/***/ }),

/***/ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/TabContainer.html":
/*!********************************************************************************************************************!*\
  !*** ./node_modules/dojo-webpack-plugin/loaders/dojo/text!./node_modules/dijit/layout/templates/TabContainer.html ***!
  \********************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div class=\"dijitTabContainer\">\n\t<div class=\"dijitTabListWrapper\" data-dojo-attach-point=\"tablistNode\"></div>\n\t<div data-dojo-attach-point=\"tablistSpacer\" class=\"dijitTabSpacer ${baseClass}-spacer\"></div>\n\t<div class=\"dijitTabPaneWrapper ${baseClass}-container\" data-dojo-attach-point=\"containerNode\"></div>\n</div>\n"

/***/ }),

/***/ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/_ScrollingTabControllerButton.html":
/*!*************************************************************************************************************************************!*\
  !*** ./node_modules/dojo-webpack-plugin/loaders/dojo/text!./node_modules/dijit/layout/templates/_ScrollingTabControllerButton.html ***!
  \*************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div data-dojo-attach-event=\"ondijitclick:_onClick\" class=\"dijitTabInnerDiv dijitTabContent dijitButtonContents\"  data-dojo-attach-point=\"focusNode\" role=\"button\">\n\t<span role=\"presentation\" class=\"dijitInline dijitTabStripIcon\" data-dojo-attach-point=\"iconNode\"></span>\n\t<span data-dojo-attach-point=\"containerNode,titleNode\" class=\"dijitButtonText\"></span>\n</div>"

/***/ }),

/***/ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/layout/templates/_TabButton.html":
/*!******************************************************************************************************************!*\
  !*** ./node_modules/dojo-webpack-plugin/loaders/dojo/text!./node_modules/dijit/layout/templates/_TabButton.html ***!
  \******************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div role=\"presentation\" data-dojo-attach-point=\"titleNode,innerDiv,tabContent\" class=\"dijitTabInner dijitTabContent\">\n\t<span role=\"presentation\" class=\"dijitInline dijitIcon dijitTabButtonIcon\" data-dojo-attach-point=\"iconNode\"></span>\n\t<span data-dojo-attach-point='containerNode,focusNode' class='tabLabel'></span>\n\t<span class=\"dijitInline dijitTabCloseButton dijitTabCloseIcon\" data-dojo-attach-point='closeNode'\n\t\t  role=\"presentation\">\n\t\t<span data-dojo-attach-point='closeText' class='dijitTabCloseText'>[x]</span\n\t\t\t\t></span>\n</div>\n"

/***/ })

}]);