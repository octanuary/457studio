package anifire.studio.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.Button;
   import spark.primitives.Path;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class FlatNumericStepperDecrementButtonSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _93090825arrow:Path;
      
      private var _1874324385arrowStroke:SolidColorStroke;
      
      private var _3143043fill:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatNumericStepperDecrementButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatNumericStepperDecrementButtonSkin_Rect1_i(),this._FlatNumericStepperDecrementButtonSkin_Path1_i()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"arrowStroke",
               "name":"color",
               "value":11184810
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
      
      private function _FlatNumericStepperDecrementButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.bottom = 0;
         _loc1_.fill = this._FlatNumericStepperDecrementButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private function _FlatNumericStepperDecrementButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.alpha = 0;
         return _loc1_;
      }
      
      private function _FlatNumericStepperDecrementButtonSkin_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.data = "M 0 0 l 4 4 l 4 -4";
         _loc1_.stroke = this._FlatNumericStepperDecrementButtonSkin_SolidColorStroke1_i();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private function _FlatNumericStepperDecrementButtonSkin_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 6142119;
         _loc1_.weight = 2;
         _loc1_.caps = "square";
         _loc1_.joints = "miter";
         this.arrowStroke = _loc1_;
         BindingManager.executeBindings(this,"arrowStroke",this.arrowStroke);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get arrow() : Path
      {
         return this._93090825arrow;
      }
      
      public function set arrow(param1:Path) : void
      {
         var _loc2_:Object = this._93090825arrow;
         if(_loc2_ !== param1)
         {
            this._93090825arrow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowStroke() : SolidColorStroke
      {
         return this._1874324385arrowStroke;
      }
      
      public function set arrowStroke(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._1874324385arrowStroke;
         if(_loc2_ !== param1)
         {
            this._1874324385arrowStroke = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowStroke",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fill() : Rect
      {
         return this._3143043fill;
      }
      
      public function set fill(param1:Rect) : void
      {
         var _loc2_:Object = this._3143043fill;
         if(_loc2_ !== param1)
         {
            this._3143043fill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
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
