package anifire.studio.models.tutorial
{
   public class BasicTutorial extends TutorialModel
   {
      
      public static var DEFAULT_SEARCH_KEYWORD:String = "walk";
       
      
      public function BasicTutorial()
      {
         super();
      }
      
      override protected function createTutorial() : void
      {
         var _loc1_:TutorialStepModel = null;
         tutorialId = "basic";
         totalUserStep = 16;
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "start";
         _loc1_.title = "Tutorial: Getting Started";
         _loc1_.message = "Welcome to the GoAnimate Video Maker. We have prepared a quick interactive tutorial to help you get started.\n\nIt should take a couple of minutes to complete and will give you an overview of the basic features in our Video Maker.";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_STUDIO_CENTER;
         _loc1_.expectedAction = TutorialStepModel.EXPECT_TUTORIAL_NEXT;
         _loc1_.proceedButtonText = "Start Tutorial";
         _loc1_.userStepIndex = TutorialStepModel.STEP_INDEX_FIRST;
         _loc1_.helpText = "You can restart the tutorial using the menu in the top right.";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "prepare_start_scene";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "scene_editor_change";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "change_common_theme";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "theme_change_common";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "change_bg_tab";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "theme_bg_panel_select";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "add_com_bg";
         _loc1_.title = "Choose Template";
         _loc1_.message = "Templates are listed here. Select one and drag it to the stage on the right to replace the current one.";
         _loc1_.componentId = "theme_bg_explorer";
         _loc1_.expectedAction = "add_com_bg";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.allowDragForwarding = true;
         _loc1_.arrowVisible = true;
         _loc1_.waitForNext = true;
         _loc1_.offsetX = -10;
         _loc1_.offsetY = 100;
         _loc1_.userStepIndex = 1;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_char_tab";
         _loc1_.title = "Browse Characters";
         _loc1_.message = "Click on this tab to browse characters";
         _loc1_.componentId = "theme_char_tab";
         _loc1_.expectedAction = "theme_char_panel_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.userStepIndex = 2;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "add_char";
         _loc1_.title = "Add a Character";
         _loc1_.message = "Drag a character to the stage on the right. It will be added to your scene.";
         _loc1_.componentId = "theme_char_explorer";
         _loc1_.expectedAction = "add_char";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.allowDragForwarding = true;
         _loc1_.arrowVisible = true;
         _loc1_.offsetY = 100;
         _loc1_.userStepIndex = 3;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_char";
         _loc1_.title = "Control the Character";
         _loc1_.message = "Click on the character to reveal additional options. Notice the character settings panel sliding out from the left.";
         _loc1_.componentId = "tutorial_char";
         _loc1_.expectedAction = "tutorial_char_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 20;
         _loc1_.userStepIndex = 4;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "asset_control_bar_show";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "asset_control_bar_show";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "asset_control_bar";
         _loc1_.title = "Control Bar";
         _loc1_.message = "These icons allow you to flip your character and move it backward and forward in your scene.\n\nClick on the flip icon to make your character face the other way.";
         _loc1_.componentId = "asset_control_bar_flip";
         _loc1_.highlightComponents = ["tutorial_char"];
         _loc1_.expectedAction = "asset_flip";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.waitForNext = true;
         _loc1_.userStepIndex = 5;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "change_action";
         _loc1_.title = "Make the Character Act";
         _loc1_.message = "There are multiple animated actions available for each character.\n\nThe actions are divided into categories, which are listed on the left. Many of the actions have background elements, props and even other characters built-in!\n\nJust click one and it will be applied automatically.";
         _loc1_.componentId = "action_explorer";
         _loc1_.expectedAction = "action_update";
         _loc1_.waitForNext = true;
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 100;
         _loc1_.userStepIndex = 6;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_voice_tab";
         _loc1_.title = "Make your Character Speak";
         _loc1_.message = "There are four ways to add voice to your character. Record directly into GoAnimate using an ordinary microphone or headset, upload a file, retrieve an already uploaded file or use our text-to-speech function.\n\nClick on the Voice tab";
         _loc1_.componentId = "voice_tab";
         _loc1_.expectedAction = "voice_tab_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.userStepIndex = 7;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "tts";
         _loc1_.title = "Testing a Line";
         _loc1_.message = "Mic recording and text-to-speech allow you to easily assign a voice. Try one of these two options and click on the \"ADD VOICE\" button to assign the voice to your character.";
         _loc1_.componentId = "dialog_panel";
         _loc1_.expectedAction = "dialog_panel_popup";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 50;
         _loc1_.userStepIndex = 8;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "find_scene1";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "find_scene1";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "add_scene";
         _loc1_.title = "Move on to the Next Scene";
         _loc1_.message = "Characters can only perform one action and speak one line per scene. Click the \"+\" sign to keep things moving along. The new scene will automatically match the previous scene, so you pick up EXACTLY where you left off.\n\nClick here to add a second scene";
         _loc1_.componentId = "timeline_add_scene";
         _loc1_.expectedAction = "scene_add";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.userStepIndex = 9;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "wait_add_scene";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "scene_editor_change";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "find_char";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "find_char";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.isPreparation = true;
         _loc1_.flagName = "static_theme";
         _loc1_.destStepId = "select_char2a";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_char2";
         _loc1_.title = "Make Your Character Move";
         _loc1_.message = "Let\'s now make your character walk around in the second scene.\n\nClick on the character";
         _loc1_.componentId = "tutorial_char";
         _loc1_.expectedAction = "tutorial_char_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 20;
         _loc1_.userStepIndex = 10;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "wait_tray_open";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "tray_open";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.isPreparation = true;
         _loc1_.flagName = TutorialStepModel.CONDITION_TRUE;
         _loc1_.destStepId = "search_action";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_char2a";
         _loc1_.title = "Make Your Character Act";
         _loc1_.message = "Let’s now make your character do something different in scene 2 compared to scene 1.\n\nClick on the character";
         _loc1_.componentId = "tutorial_char";
         _loc1_.expectedAction = "tutorial_char_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 20;
         _loc1_.userStepIndex = 10;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "wait_tray_open";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "tray_open";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.isPreparation = true;
         _loc1_.flagName = "static_theme";
         _loc1_.destStepId = "change_action2a";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "search_action";
         _loc1_.title = "Searching Actions";
         _loc1_.message = "Characters can have hundreds of actions, so to make it easier to find what you want we have a search feature.\n\nEnter \"walk\" in the search field and press enter";
         _loc1_.componentId = "action_explorer_search";
         _loc1_.expectedAction = "search_complete";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.userStepIndex = 11;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "search_walk_action";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "search_walk_complete";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "search_walk_action";
         _loc1_.title = "Select a Movement";
         _loc1_.message = "Click on an action. The character action is updated and a movement is added as well";
         _loc1_.componentId = "action_explorer_product_list";
         _loc1_.expectedAction = "movement_add";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 100;
         _loc1_.userStepIndex = 12;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "move_motion_destination";
         _loc1_.title = "Adjust the End Position";
         _loc1_.message = "The movement duration matches the scene duration. Your character will reach the end position you set at the end of the scene.\n\nDrag the end position to where you want";
         _loc1_.readyMessage = "Well done! You can even drag the end position outside the stage to make your character exit the scene.";
         _loc1_.componentId = "sceneActiveArea";
         _loc1_.expectedAction = "tutorial_char_move";
         _loc1_.waitForNext = true;
         _loc1_.offsetX = -90;
         _loc1_.offsetY = 50;
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.userStepIndex = 13;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.isPreparation = true;
         _loc1_.flagName = TutorialStepModel.CONDITION_TRUE;
         _loc1_.destStepId = "select_previous_scene";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "change_action2a";
         _loc1_.title = "Update the Action";
         _loc1_.message = "Just click on an action and it will be applied automatically.";
         _loc1_.componentId = "action_explorer";
         _loc1_.expectedAction = "action_update";
         _loc1_.waitForNext = true;
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 100;
         _loc1_.userStepIndex = 12;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_previous_scene";
         _loc1_.title = "Modify Previous Scenes";
         _loc1_.message = "You can always modify the scenes you already created.\n\nClick on scene 1 in the timeline to select it and modify its content";
         _loc1_.componentId = "scene1";
         _loc1_.expectedAction = "scene1_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.userStepIndex = 14;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "wait_scene_change";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "scene_editor_change";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "find_char2";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "find_char";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "select_char3";
         _loc1_.title = "Select Your Character";
         _loc1_.message = "Let’s update the action the character is performing in this scene.\n\nClick on the character";
         _loc1_.componentId = "tutorial_char";
         _loc1_.expectedAction = "tutorial_char_select";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 20;
         _loc1_.userStepIndex = 15;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "wait_tray_open";
         _loc1_.isPreparation = true;
         _loc1_.expectedAction = "tray_open";
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "update_action";
         _loc1_.title = "Update the Action";
         _loc1_.message = "Click on an action. Don’t hesitate to select different categories in the left column to preview and try many different actions.";
         _loc1_.componentId = "action_explorer";
         _loc1_.expectedAction = "action_update";
         _loc1_.waitForNext = true;
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
         _loc1_.offsetY = 100;
         _loc1_.userStepIndex = 16;
         steps.push(_loc1_);
         _loc1_ = new TutorialStepModel();
         _loc1_.stepId = "preview";
         _loc1_.title = "Tutorial Completed";
         _loc1_.message = "That\'s the basics covered. Use the \"Preview\" button to view your video. Learn more at our Help Center.";
         _loc1_.expectedAction = "toolbar_preview";
         _loc1_.infoPosition = TutorialStepModel.INFO_PLACEMENT_STUDIO_CENTER;
         _loc1_.proceedButtonText = "Preview Video";
         _loc1_.helpText = "You can restart the tutorial using the menu in the top right.";
         _loc1_.userStepIndex = TutorialStepModel.STEP_INDEX_LAST;
         steps.push(_loc1_);
      }
   }
}