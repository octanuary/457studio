package anifire.studio.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import spark.components.ToggleButton;
   import spark.primitives.BitmapImage;
   import spark.skins.SparkSkin;
   
   public class PlainPlayVoiceToggleButtonSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _952927314_PlainPlayVoiceToggleButtonSkin_BitmapImage1:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml__styles_images_voicetab_viewpage_stop_hover_png_783107687:Class;
      
      private var _embed_mxml__styles_images_voicetab_viewpage_play_hover_png_1368043777:Class;
      
      private var _embed_mxml__styles_images_voicetab_viewpage_stop_png_1089984513:Class;
      
      private var _embed_mxml__styles_images_voicetab_viewpage_play_png_1642351745:Class;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function PlainPlayVoiceToggleButtonSkin()
      {
         this._embed_mxml__styles_images_voicetab_viewpage_stop_hover_png_783107687 = PlainPlayVoiceToggleButtonSkin__embed_mxml__styles_images_voicetab_viewpage_stop_hover_png_783107687;
         this._embed_mxml__styles_images_voicetab_viewpage_play_hover_png_1368043777 = PlainPlayVoiceToggleButtonSkin__embed_mxml__styles_images_voicetab_viewpage_play_hover_png_1368043777;
         this._embed_mxml__styles_images_voicetab_viewpage_stop_png_1089984513 = PlainPlayVoiceToggleButtonSkin__embed_mxml__styles_images_voicetab_viewpage_stop_png_1089984513;
         this._embed_mxml__styles_images_voicetab_viewpage_play_png_1642351745 = PlainPlayVoiceToggleButtonSkin__embed_mxml__styles_images_voicetab_viewpage_play_png_1642351745;
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._PlainPlayVoiceToggleButtonSkin_BitmapImage1_i()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "stateGroups":["overStates","overDownStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",
               "name":"source",
               "value":this._embed_mxml__styles_images_voicetab_viewpage_play_hover_png_1368043777
            })]
         }),new State({
            "name":"down",
            "stateGroups":["downStates","overDownStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",
               "name":"source",
               "value":this._embed_mxml__styles_images_voicetab_viewpage_play_hover_png_1368043777
            })]
         }),new State({
            "name":"disabled",
            "stateGroups":["disabledStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"upAndSelected",
            "stateGroups":["selectedStates","selectedUpStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",
               "name":"source",
               "value":this._embed_mxml__styles_images_voicetab_viewpage_stop_png_1089984513
            })]
         }),new State({
            "name":"overAndSelected",
            "stateGroups":["selectedStates","overDownSelectedStates","overStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",
               "name":"source",
               "value":this._embed_mxml__styles_images_voicetab_viewpage_stop_hover_png_783107687
            })]
         }),new State({
            "name":"downAndSelected",
            "stateGroups":["selectedStates","downStates","overDownSelectedStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",
               "name":"source",
               "value":this._embed_mxml__styles_images_voicetab_viewpage_stop_hover_png_783107687
            })]
         }),new State({
            "name":"disabledAndSelected",
            "stateGroups":["selectedStates","selectedUpStates","disabledStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",
               "name":"source",
               "value":this._embed_mxml__styles_images_voicetab_viewpage_stop_png_1089984513
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
      
      private function _PlainPlayVoiceToggleButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.source = this._embed_mxml__styles_images_voicetab_viewpage_play_png_1642351745;
         _loc1_.initialized(this,"_PlainPlayVoiceToggleButtonSkin_BitmapImage1");
         this._PlainPlayVoiceToggleButtonSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",this._PlainPlayVoiceToggleButtonSkin_BitmapImage1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlainPlayVoiceToggleButtonSkin_BitmapImage1() : BitmapImage
      {
         return this._952927314_PlainPlayVoiceToggleButtonSkin_BitmapImage1;
      }
      
      public function set _PlainPlayVoiceToggleButtonSkin_BitmapImage1(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._952927314_PlainPlayVoiceToggleButtonSkin_BitmapImage1;
         if(_loc2_ !== param1)
         {
            this._952927314_PlainPlayVoiceToggleButtonSkin_BitmapImage1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlainPlayVoiceToggleButtonSkin_BitmapImage1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButton) : void
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
