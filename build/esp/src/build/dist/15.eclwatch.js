(function(){
(this||window)["webpackJsonp"].registerAbsMids({
	"dijit/TitlePane":"./node_modules/dijit/TitlePane.js",
	"dijit/Toolbar":"./node_modules/dijit/Toolbar.js",
	"dojo/text!dijit/templates/TitlePane.html":"./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/templates/TitlePane.html"
})
})(),(window["webpackJsonp"] = window["webpackJsonp"] || []).push([[15],{

/***/ "./node_modules/dijit/TitlePane.js":
/*!*****************************************!*\
  !*** ./node_modules/dijit/TitlePane.js ***!
  \*****************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__(/*! dojo/_base/array */ "./node_modules/dojo/_base/array.js"), // array.forEach
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/dom */ "./node_modules/dojo/dom.js"), // dom.setSelectable
	__webpack_require__(/*! dojo/dom-attr */ "./node_modules/dojo/dom-attr.js"), // domAttr.set or get domAttr.remove
	__webpack_require__(/*! dojo/dom-class */ "./node_modules/dojo/dom-class.js"), // domClass.replace
	__webpack_require__(/*! dojo/dom-geometry */ "./node_modules/dojo/dom-geometry.js"), // domGeometry.setMarginBox domGeometry.getMarginBox
	__webpack_require__(/*! dojo/fx */ "./node_modules/dojo/fx.js"), // fxUtils.wipeIn fxUtils.wipeOut
	__webpack_require__(/*! dojo/has */ "./node_modules/dojo/has.js"),
	__webpack_require__(/*! dojo/_base/kernel */ "./node_modules/dojo/_base/kernel.js"), // kernel.deprecated
	__webpack_require__(/*! dojo/keys */ "./node_modules/dojo/keys.js"), // keys.DOWN_ARROW keys.ENTER
	__webpack_require__(/*! ./_CssStateMixin */ "./node_modules/dijit/_CssStateMixin.js"),
	__webpack_require__(/*! ./_TemplatedMixin */ "./node_modules/dijit/_TemplatedMixin.js"),
	__webpack_require__(/*! ./layout/ContentPane */ "./node_modules/dijit/layout/ContentPane.js"),
	__webpack_require__(/*! dojo/text!./templates/TitlePane.html */ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/templates/TitlePane.html"),
	__webpack_require__(/*! ./_base/manager */ "./node_modules/dijit/_base/manager.js"),    // defaultDuration
	__webpack_require__(/*! ./a11yclick */ "./node_modules/dijit/a11yclick.js")	// template uses ondijitclick
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(array, declare, dom, domAttr, domClass, domGeometry, fxUtils, has, kernel, keys,
			_CssStateMixin, _TemplatedMixin, ContentPane, template, manager){

	// module:
	//		dijit/TitlePane

	var TitlePane = declare("dijit.TitlePane", [ContentPane, _TemplatedMixin, _CssStateMixin], {
		// summary:
		//		A pane with a title on top, that can be expanded or collapsed.
		//
		// description:
		//		An accessible container with a title Heading, and a content
		//		section that slides open and closed. TitlePane is an extension to
		//		`dijit/layout/ContentPane`, providing all the useful content-control aspects from it.
		//
		// example:
		//	|	// load a TitlePane from remote file:
		//	|	var foo = new dijit.TitlePane({ href: "foobar.html", title:"Title" });
		//	|	foo.startup();
		//
		// example:
		//	|	<!-- markup href example: -->
		//	|	<div data-dojo-type="dijit/TitlePane" data-dojo-props="href: 'foobar.html', title: 'Title'"></div>
		//
		// example:
		//	|	<!-- markup with inline data -->
		//	|	<div data-dojo-type="dijit/TitlePane" title="Title">
		//	|		<p>I am content</p>
		//	|	</div>

		// title: String
		//		Title of the pane
		title: "",
		_setTitleAttr: { node: "titleNode", type: "innerHTML" }, // override default where title becomes a hover tooltip

		// open: Boolean
		//		Whether pane is opened or closed.
		open: true,

		// toggleable: Boolean
		//		Whether pane can be opened or closed by clicking the title bar.
		toggleable: true,

		// tabIndex: String
		//		Tabindex setting for the title (so users can tab to the title then
		//		use space/enter to open/close the title pane)
		tabIndex: "0",

		// duration: Integer
		//		Time in milliseconds to fade in/fade out
		duration: manager.defaultDuration,

		// baseClass: [protected] String
		//		The root className to be placed on this widget's domNode.
		baseClass: "dijitTitlePane",

		templateString: template,

		// doLayout: [protected] Boolean
		//		Don't change this parameter from the default value.
		//		This ContentPane parameter doesn't make sense for TitlePane, since TitlePane
		//		is never a child of a layout container, nor should TitlePane try to control
		//		the size of an inner widget.
		doLayout: false,

		// Tooltip is defined in _WidgetBase but we need to handle the mapping to DOM here
		_setTooltipAttr: {node: "focusNode", type: "attribute", attribute: "title"}, // focusNode spans the entire width, titleNode doesn't

		buildRendering: function(){
			this.inherited(arguments);
			dom.setSelectable(this.titleNode, false);
		},

		postCreate: function(){
			this.inherited(arguments);

			// Hover and focus effect on title bar, except for non-toggleable TitlePanes
			// This should really be controlled from _setToggleableAttr() but _CssStateMixin
			// doesn't provide a way to disconnect a previous _trackMouseState() call
			if(this.toggleable){
				this._trackMouseState(this.titleBarNode, this.baseClass + "Title");
			}

			// setup open/close animations
			var hideNode = this.hideNode, wipeNode = this.wipeNode;
			this._wipeIn = fxUtils.wipeIn({
				node: wipeNode,
				duration: this.duration,
				beforeBegin: function(){
					hideNode.style.display = "";
				}
			});
			this._wipeOut = fxUtils.wipeOut({
				node: wipeNode,
				duration: this.duration,
				onEnd: function(){
					hideNode.style.display = "none";
				}
			});
		},

		_setOpenAttr: function(/*Boolean*/ open, /*Boolean*/ animate){
			// summary:
			//		Hook to make set("open", boolean) control the open/closed state of the pane.
			// open: Boolean
			//		True if you want to open the pane, false if you want to close it.

			array.forEach([this._wipeIn, this._wipeOut], function(animation){
				if(animation && animation.status() == "playing"){
					animation.stop();
				}
			});

			if(animate){
				var anim = this[open ? "_wipeIn" : "_wipeOut"];
				anim.play();
			}else{
				this.hideNode.style.display = this.wipeNode.style.display = open ? "" : "none";
			}

			// load content (if this is the first time we are opening the TitlePane
			// and content is specified as an href, or href was set when hidden)
			if(this._started){
				if(open){
					this._onShow();
				}else{
					this.onHide();
				}
			}

			this.containerNode.setAttribute("aria-hidden", open ? "false" : "true");
			this.focusNode.setAttribute("aria-pressed", open ? "true" : "false");

			this._set("open", open);

			this._setCss();
		},

		_setToggleableAttr: function(/*Boolean*/ canToggle){
			// summary:
			//		Hook to make set("toggleable", boolean) work.
			// canToggle: Boolean
			//		True to allow user to open/close pane by clicking title bar.

			this.focusNode.setAttribute("role", canToggle ? "button" : "heading");
			if(canToggle){
				this.focusNode.setAttribute("aria-controls", this.id + "_pane");
				this.focusNode.setAttribute("tabIndex", this.tabIndex);
				this.focusNode.setAttribute("aria-pressed", this.open);
			}else{
				domAttr.remove(this.focusNode, "aria-controls");
				domAttr.remove(this.focusNode, "tabIndex");
				domAttr.remove(this.focusNode, "aria-pressed");
			}

			this._set("toggleable", canToggle);

			this._setCss();
		},

		_setContentAttr: function(/*String|DomNode|Nodelist*/ content){
			// summary:
			//		Hook to make set("content", ...) work.
			//		Typically called when an href is loaded.  Our job is to make the animation smooth.

			if(!this.open || !this._wipeOut || this._wipeOut.status() == "playing"){
				// we are currently *closing* the pane (or the pane is closed), so just let that continue
				this.inherited(arguments);
			}else{
				if(this._wipeIn && this._wipeIn.status() == "playing"){
					this._wipeIn.stop();
				}

				// freeze container at current height so that adding new content doesn't make it jump
				domGeometry.setMarginBox(this.wipeNode, { h: domGeometry.getMarginBox(this.wipeNode).h });

				// add the new content (erasing the old content, if any)
				this.inherited(arguments);

				// call _wipeIn.play() to animate from current height to new height
				if(this._wipeIn){
					this._wipeIn.play();
				}else{
					this.hideNode.style.display = "";
				}
			}
		},

		toggle: function(){
			// summary:
			//		Switches between opened and closed state
			// tags:
			//		private

			this._setOpenAttr(!this.open, true);
		},

		_setCss: function(){
			// summary:
			//		Set the open/close css state for the TitlePane
			// tags:
			//		private

			var node = this.titleBarNode || this.focusNode;
			var oldCls = this._titleBarClass;
			this._titleBarClass = this.baseClass + "Title" + (this.toggleable ? "" : "Fixed") + (this.open ? "Open" : "Closed");
			domClass.replace(node, this._titleBarClass, oldCls || "");

			// Back compat, remove for 2.0
			domClass.replace(node, this._titleBarClass.replace("TitlePaneTitle", ""), (oldCls || "").replace("TitlePaneTitle", ""));

			this.arrowNodeInner.innerHTML = this.open ? "-" : "+";
		},

		_onTitleKey: function(/*Event*/ e){
			// summary:
			//		Handler for when user hits a key
			// tags:
			//		private

			if(e.keyCode == keys.DOWN_ARROW && this.open){
				this.containerNode.focus();
				e.preventDefault();
			}
		},

		_onTitleClick: function(){
			// summary:
			//		Handler when user clicks the title bar
			// tags:
			//		private
			if(this.toggleable){
				this.toggle();
			}
		},

		setTitle: function(/*String*/ title){
			// summary:
			//		Deprecated.  Use set('title', ...) instead.
			// tags:
			//		deprecated
			kernel.deprecated("dijit.TitlePane.setTitle() is deprecated.  Use set('title', ...) instead.", "", "2.0");
			this.set("title", title);
		}
	});

	if(has("dojo-bidi")){
		TitlePane.extend({
			_setTitleAttr: function(/*String*/ title){
				// Override default where title becomes a hover tooltip
				this._set("title", title);
				this.titleNode.innerHTML = title;
				this.applyTextDir(this.titleNode);
			},

			_setTooltipAttr: function(/*String*/ tooltip){
				this._set("tooltip", tooltip);
				if(this.textDir){
					tooltip = this.enforceTextDirWithUcc(null, tooltip);
				}
				domAttr.set(this.focusNode, "title", tooltip);			// focusNode spans the entire width, titleNode doesn't
			},

			_setTextDirAttr: function(textDir){
				if(this._created && this.textDir != textDir){
					this._set("textDir", textDir);
					this.set("title", this.title);
					this.set("tooltip", this.tooltip);
				}
			}
		});
	}

	return TitlePane;
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dijit/Toolbar.js":
/*!***************************************!*\
  !*** ./node_modules/dijit/Toolbar.js ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;!(__WEBPACK_AMD_DEFINE_ARRAY__ = [
	__webpack_require__.dj.c(module.i),
	__webpack_require__(/*! dojo/_base/declare */ "./node_modules/dojo/_base/declare.js"), // declare
	__webpack_require__(/*! dojo/has */ "./node_modules/dojo/has.js"),
	__webpack_require__(/*! dojo/keys */ "./node_modules/dojo/keys.js"), // keys.LEFT_ARROW keys.RIGHT_ARROW
	__webpack_require__(/*! dojo/ready */ "./node_modules/dojo/ready.js"),
	__webpack_require__(/*! ./_Widget */ "./node_modules/dijit/_Widget.js"),
	__webpack_require__(/*! ./_KeyNavContainer */ "./node_modules/dijit/_KeyNavContainer.js"),
	__webpack_require__(/*! ./_TemplatedMixin */ "./node_modules/dijit/_TemplatedMixin.js")
], __WEBPACK_AMD_DEFINE_RESULT__ = (function(require, declare, has, keys, ready, _Widget, _KeyNavContainer, _TemplatedMixin){

	// module:
	//		dijit/Toolbar


	// Back compat w/1.6, remove for 2.0
	if(has("dijit-legacy-requires")){
		ready(0, function(){
			var requires = ["dijit/ToolbarSeparator"];
			require(requires);	// use indirection so modules not rolled into a build
		});
	}

	return declare("dijit.Toolbar", [_Widget, _TemplatedMixin, _KeyNavContainer], {
		// summary:
		//		A Toolbar widget, used to hold things like `dijit/Editor` buttons

		templateString:
			'<div class="dijit" role="toolbar" tabIndex="${tabIndex}" data-dojo-attach-point="containerNode">' +
			'</div>',

		baseClass: "dijitToolbar",

		_onLeftArrow: function(){
			this.focusPrev();
		},

		_onRightArrow: function(){
			this.focusNext();
		}
	});
}).apply(null, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));


/***/ }),

/***/ "./node_modules/dojo-webpack-plugin/loaders/dojo/text/index.js!./node_modules/dijit/templates/TitlePane.html":
/*!**********************************************************************************************************!*\
  !*** ./node_modules/dojo-webpack-plugin/loaders/dojo/text!./node_modules/dijit/templates/TitlePane.html ***!
  \**********************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<div>\n\t<div data-dojo-attach-event=\"ondijitclick:_onTitleClick, onkeydown:_onTitleKey\"\n\t\t\tclass=\"dijitTitlePaneTitle\" data-dojo-attach-point=\"titleBarNode\" id=\"${id}_titleBarNode\">\n\t\t<div class=\"dijitTitlePaneTitleFocus\" data-dojo-attach-point=\"focusNode\">\n\t\t\t<span data-dojo-attach-point=\"arrowNode\" class=\"dijitInline dijitArrowNode\" role=\"presentation\"></span\n\t\t\t><span data-dojo-attach-point=\"arrowNodeInner\" class=\"dijitArrowNodeInner\"></span\n\t\t\t><span data-dojo-attach-point=\"titleNode\" class=\"dijitTitlePaneTextNode\"></span>\n\t\t</div>\n\t</div>\n\t<div class=\"dijitTitlePaneContentOuter\" data-dojo-attach-point=\"hideNode\" role=\"presentation\">\n\t\t<div class=\"dijitReset\" data-dojo-attach-point=\"wipeNode\" role=\"presentation\">\n\t\t\t<div class=\"dijitTitlePaneContentInner\" data-dojo-attach-point=\"containerNode\" role=\"region\" id=\"${id}_pane\" aria-labelledby=\"${id}_titleBarNode\">\n\t\t\t\t<!-- nested divs because wipeIn()/wipeOut() doesn't work right on node w/padding etc.  Put padding on inner div. -->\n\t\t\t</div>\n\t\t</div>\n\t</div>\n</div>\n"

/***/ })

}]);