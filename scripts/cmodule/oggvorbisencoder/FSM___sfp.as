package cmodule.oggvorbisencoder
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM___sfp extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 0;
       
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public function FSM___sfp()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___sfp = null;
         _loc1_ = new FSM___sfp();
         FSM___sfp.gworker = _loc1_;
      }
      
      override public final function work() : void
      {
         loop4:
         switch(state)
         {
            case 0:
               mstate.esp = mstate.esp - 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp = mstate.esp - 0;
               this.i0 = li8(FSM___sfp);
               if(this.i0 == 0)
               {
                  this.i0 = FSM___sfp;
                  this.i1 = FSM___sfp;
                  this.i2 = 0;
                  this.i0 = this.i0 + 56;
                  while(true)
                  {
                     si32(this.i1,this.i0);
                     this.i1 = this.i1 + 152;
                     this.i0 = this.i0 + 88;
                     this.i2 = this.i2 + 1;
                     if(this.i2 != 17)
                     {
                        continue;
                     }
                     break;
                  }
                  this.i0 = 1;
                  si8(this.i0,FSM___sfp);
                  si8(this.i0,FSM___sfp);
                  this.i0 = FSM___sfp;
               }
               else
               {
                  this.i0 = FSM___sfp;
               }
               while(this.i0 != 0)
               {
                  this.i1 = li32(this.i0 + 4);
                  this.i2 = li32(this.i0 + 8);
                  this.i3 = this.i2;
                  this.i4 = this.i1 + -1;
                  if(this.i4 >= 0)
                  {
                     this.i4 = 0;
                     this.i2 = this.i2 + 12;
                     this.i1 = this.i1 + -1;
                     while(true)
                     {
                        this.i5 = li16(this.i2);
                        if(this.i5 != 0)
                        {
                           this.i2 = this.i2 + 88;
                           this.i1 = this.i1 + -1;
                           this.i4 = this.i4 + 1;
                           if(this.i1 >= 0)
                           {
                              continue;
                           }
                           break;
                        }
                        addr421:
                        this.i0 = this.i4 * 88;
                        this.i3 = this.i3 + this.i0;
                        this.i0 = this.i3;
                        this.i1 = 1;
                        si16(this.i1,this.i0 + 12);
                        this.i1 = 0;
                        si32(this.i1,this.i0);
                        si32(this.i1,this.i0 + 8);
                        si32(this.i1,this.i0 + 4);
                        si32(this.i1,this.i0 + 16);
                        si32(this.i1,this.i0 + 20);
                        si32(this.i1,this.i0 + 24);
                        this.i2 = -1;
                        si16(this.i2,this.i0 + 14);
                        si32(this.i1,this.i0 + 48);
                        si32(this.i1,this.i0 + 52);
                        si32(this.i1,this.i0 + 68);
                        si32(this.i1,this.i0 + 72);
                        this.i2 = li32(this.i0 + 56);
                        si32(this.i1,this.i2 + 16);
                        this.i2 = li32(this.i0 + 56);
                        this.i2 = this.i2 + 24;
                        this.i3 = 128;
                        memset(this.i2,this.i1,this.i3);
                        break loop4;
                     }
                  }
                  this.i0 = li32(this.i0);
               }
               this.i3 = 2415;
               mstate.esp = mstate.esp - 8;
               this.i4 = 0;
               si32(this.i4,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 1;
               mstate.esp = mstate.esp - 4;
               FSM___sfp.start();
               return;
            case 1:
               this.i3 = mstate.eax;
               mstate.esp = mstate.esp + 8;
               this.i4 = this.i3;
               if(this.i3 == 0)
               {
                  this.i3 = 0;
               }
               else
               {
                  this.i0 = 0;
                  this.i1 = this.i3 + 15;
                  si32(this.i0,this.i3);
                  this.i3 = 10;
                  this.i0 = this.i1 & -4;
                  si32(this.i3,this.i4 + 4);
                  si32(this.i0,this.i4 + 8);
                  this.i3 = 9;
                  this.i1 = this.i0 + 880;
                  do
                  {
                     this.i2 = FSM___sfp;
                     this.i5 = this.i0;
                     this.i6 = 88;
                     memcpy(this.i5,this.i2,this.i6);
                     si32(this.i1,this.i0 + 56);
                     this.i2 = this.i1;
                     this.i5 = FSM___sfp;
                     this.i6 = 152;
                     memcpy(this.i2,this.i5,this.i6);
                     this.i1 = this.i1 + 152;
                     this.i0 = this.i0 + 88;
                     this.i3 = this.i3 + -1;
                  }
                  while(this.i3 > -1);
                  
                  this.i3 = this.i4;
               }
               if(this.i3 != 0)
               {
                  this.i4 = li32(FSM___sfp);
                  si32(this.i3,this.i4);
                  si32(this.i3,FSM___sfp);
                  this.i3 = li32(this.i3 + 8);
                  ????goto(addr421);
               }
               else
               {
                  this.i0 = 0;
                  break;
               }
         }
         mstate.eax = this.i0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp = mstate.esp + 4;
         mstate.esp = mstate.esp + 4;
         mstate.gworker = caller;
      }
   }
}
