package anifire.studio.skins
{
   import anifire.studio.components.FocusTextInput;
   import anifire.studio.components.IconButton;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.FlexVersion;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class SearchTextInputSkin extends SparkSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["background","textDisplay","promptDisplay","border"];
      
      private static const exclusions_4_0:Array = ["background","textDisplay","promptDisplay"];
      
      private static const contentFill:Array = ["bgFill"];
      
      private static const focusExclusions:Array = ["textDisplay","contentGroup"];
       
      
      public var _SearchTextInputSkin_HGroup1:HGroup;
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _1383304148border:Rect;
      
      private var _1395787140borderStroke:SolidColorStroke;
      
      private var _1990131276cancelButton:Button;
      
      private var _236983790confirmButton:IconButton;
      
      private var _1184053038labelDisplay:Label;
      
      private var _263438014promptDisplay:Label;
      
      private var _903579360shadow:Rect;
      
      private var _831827669textDisplay:RichEditableText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var paddingChanged:Boolean;
      
      private var _embed_mxml__styles_images_tray_magglass_png_474504759:Class;
      
      private var _213507019hostComponent:FocusTextInput;
      
      public function SearchTextInputSkin()
      {
         this._embed_mxml__styles_images_tray_magglass_png_474504759 = SearchTextInputSkin__embed_mxml__styles_images_tray_magglass_png_474504759;
         super();
         mx_internal::_document = this;
         this.blendMode = "normal";
         this.minHeight = 32;
         this.mxmlContent = [this._SearchTextInputSkin_Rect1_i(),this._SearchTextInputSkin_Rect2_i(),this._SearchTextInputSkin_Rect3_i(),this._SearchTextInputSkin_Label1_i(),this._SearchTextInputSkin_HGroup1_i()];
         this.currentState = "normal";
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._SearchTextInputSkin_Label2_i);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"focused",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "stateGroups":["disabledStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"normalWithPrompt",
            "stateGroups":["promptStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_SearchTextInputSkin_HGroup1"]
            })]
         }),new State({
            "name":"disabledWithPrompt",
            "stateGroups":["promptStates","disabledStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_SearchTextInputSkin_HGroup1"]
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         })];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function get colorizeExclusions() : Array
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_4_5)
         {
            return exclusions_4_0;
         }
         return exclusions;
      }
      
      override public function get contentItems() : Array
      {
         return contentFill;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.paddingChanged)
         {
            this.updatePadding();
            this.paddingChanged = false;
         }
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         if(getStyle("borderVisible") == true)
         {
            this.border.visible = true;
            this.shadow.visible = true;
            this.background.left = this.background.top = this.background.right = this.background.bottom = 1;
            this.textDisplay.left = this.textDisplay.top = this.textDisplay.right = this.textDisplay.bottom = 1;
            if(this.promptDisplay)
            {
               this.promptDisplay.setLayoutBoundsSize(param1 - 2,param2 - 2);
               this.promptDisplay.setLayoutBoundsPosition(1,1);
            }
         }
         else
         {
            this.border.visible = false;
            this.shadow.visible = false;
            this.background.left = this.background.top = this.background.right = this.background.bottom = 0;
            this.textDisplay.left = this.textDisplay.top = this.textDisplay.right = this.textDisplay.bottom = 0;
            if(this.promptDisplay)
            {
               this.promptDisplay.setLayoutBoundsSize(param1,param2);
               this.promptDisplay.setLayoutBoundsPosition(0,0);
            }
         }
         this.borderStroke.color = getStyle("borderColor");
         this.borderStroke.alpha = getStyle("borderAlpha");
         super.updateDisplayList(param1,param2);
      }
      
      private function updatePadding() : void
      {
         var _loc1_:Number = NaN;
         if(!this.textDisplay)
         {
            return;
         }
         _loc1_ = getStyle("paddingLeft");
         if(this.textDisplay.getStyle("paddingLeft") != _loc1_)
         {
            this.textDisplay.setStyle("paddingLeft",_loc1_);
         }
         _loc1_ = getStyle("paddingTop");
         if(this.textDisplay.getStyle("paddingTop") != _loc1_)
         {
            this.textDisplay.setStyle("paddingTop",_loc1_);
         }
         _loc1_ = getStyle("paddingRight");
         if(this.textDisplay.getStyle("paddingRight") != _loc1_)
         {
            this.textDisplay.setStyle("paddingRight",_loc1_);
         }
         _loc1_ = getStyle("paddingBottom");
         if(this.textDisplay.getStyle("paddingBottom") != _loc1_)
         {
            this.textDisplay.setStyle("paddingBottom",_loc1_);
         }
         if(!this.promptDisplay)
         {
            return;
         }
         _loc1_ = getStyle("paddingLeft");
         if(this.promptDisplay.getStyle("paddingLeft") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingLeft",_loc1_);
         }
         _loc1_ = getStyle("paddingTop");
         if(this.promptDisplay.getStyle("paddingTop") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingTop",_loc1_);
         }
         _loc1_ = getStyle("paddingRight");
         if(this.promptDisplay.getStyle("paddingRight") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingRight",_loc1_);
         }
         _loc1_ = getStyle("paddingBottom");
         if(this.promptDisplay.getStyle("paddingBottom") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingBottom",_loc1_);
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc2_:Boolean = !param1 || param1 == "styleName";
         super.styleChanged(param1);
         if(_loc2_ || param1.indexOf("padding") == 0)
         {
            this.paddingChanged = true;
            invalidateProperties();
         }
      }
      
      override public function get focusSkinExclusions() : Array
      {
         return focusExclusions;
      }
      
      private function _SearchTextInputSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.radiusX = 3;
         _loc1_.stroke = this._SearchTextInputSkin_SolidColorStroke1_i();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 13290196;
         _loc1_.weight = 1;
         this.borderStroke = _loc1_;
         BindingManager.executeBindings(this,"borderStroke",this.borderStroke);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.radiusX = 2;
         _loc1_.fill = this._SearchTextInputSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.height = 1;
         _loc1_.radiusX = 2;
         _loc1_.fill = this._SearchTextInputSkin_SolidColor2_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.verticalCenter = 0;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.verticalCenter = -1;
         _loc1_.paddingLeft = 3;
         _loc1_.paddingRight = 6;
         _loc1_.mxmlContent = [this._SearchTextInputSkin_RichEditableText1_i(),this._SearchTextInputSkin_Group1_c(),this._SearchTextInputSkin_IconButton1_i()];
         _loc1_.id = "_SearchTextInputSkin_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SearchTextInputSkin_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_SearchTextInputSkin_HGroup1",this._SearchTextInputSkin_HGroup1);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         _loc1_.percentWidth = 100;
         _loc1_.widthInChars = 10;
         _loc1_.id = "textDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textDisplay = _loc1_;
         BindingManager.executeBindings(this,"textDisplay",this.textDisplay);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._SearchTextInputSkin_Button1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.buttonMode = true;
         _loc1_.top = 2;
         _loc1_.setStyle("skinClass",ClosePopUpButtonSkin);
         _loc1_.id = "cancelButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cancelButton = _loc1_;
         BindingManager.executeBindings(this,"cancelButton",this.cancelButton);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_IconButton1_i() : IconButton
      {
         var _loc1_:IconButton = new IconButton();
         _loc1_.buttonMode = true;
         _loc1_.setStyle("icon",this._embed_mxml__styles_images_tray_magglass_png_474504759);
         _loc1_.id = "confirmButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.confirmButton = _loc1_;
         BindingManager.executeBindings(this,"confirmButton",this.confirmButton);
         return _loc1_;
      }
      
      private function _SearchTextInputSkin_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.includeInLayout = false;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "promptDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.promptDisplay = _loc1_;
         BindingManager.executeBindings(this,"promptDisplay",this.promptDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : Rect
      {
         return this._1332194002background;
      }
      
      public function set background(param1:Rect) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFill() : SolidColor
      {
         return this._1391998104bgFill;
      }
      
      public function set bgFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1391998104bgFill;
         if(_loc2_ !== param1)
         {
            this._1391998104bgFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get border() : Rect
      {
         return this._1383304148border;
      }
      
      public function set border(param1:Rect) : void
      {
         var _loc2_:Object = this._1383304148border;
         if(_loc2_ !== param1)
         {
            this._1383304148border = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"border",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get borderStroke() : SolidColorStroke
      {
         return this._1395787140borderStroke;
      }
      
      public function set borderStroke(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._1395787140borderStroke;
         if(_loc2_ !== param1)
         {
            this._1395787140borderStroke = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderStroke",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelButton() : Button
      {
         return this._1990131276cancelButton;
      }
      
      public function set cancelButton(param1:Button) : void
      {
         var _loc2_:Object = this._1990131276cancelButton;
         if(_loc2_ !== param1)
         {
            this._1990131276cancelButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmButton() : IconButton
      {
         return this._236983790confirmButton;
      }
      
      public function set confirmButton(param1:IconButton) : void
      {
         var _loc2_:Object = this._236983790confirmButton;
         if(_loc2_ !== param1)
         {
            this._236983790confirmButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : Label
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get promptDisplay() : Label
      {
         return this._263438014promptDisplay;
      }
      
      public function set promptDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._263438014promptDisplay;
         if(_loc2_ !== param1)
         {
            this._263438014promptDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"promptDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadow() : Rect
      {
         return this._903579360shadow;
      }
      
      public function set shadow(param1:Rect) : void
      {
         var _loc2_:Object = this._903579360shadow;
         if(_loc2_ !== param1)
         {
            this._903579360shadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textDisplay() : RichEditableText
      {
         return this._831827669textDisplay;
      }
      
      public function set textDisplay(param1:RichEditableText) : void
      {
         var _loc2_:Object = this._831827669textDisplay;
         if(_loc2_ !== param1)
         {
            this._831827669textDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FocusTextInput
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FocusTextInput) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
