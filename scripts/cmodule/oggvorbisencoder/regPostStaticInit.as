package cmodule.oggvorbisencoder
{
   public function regPostStaticInit(param1:Function) : void
   {
      if(!gpostStaticInits)
      {
         var gpostStaticInits:* = [];
      }
      gpostStaticInits.push(param1);
   }
}
