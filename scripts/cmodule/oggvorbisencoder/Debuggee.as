package cmodule.oggvorbisencoder
{
   public interface Debuggee
   {
       
      
      function cancelDebug() : void;
      
      function suspend() : void;
      
      function resume() : void;
      
      function get isRunning() : Boolean;
   }
}
