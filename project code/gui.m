function gui
% SIMPLE_GUI2 Select a data set from the pop-up menu, then
% click one of the plot-type push buttons. Clicking the button
% plots the selected data in the axes.
 
   %  Create and then hide the GUI as it is being constructed.
   f = figure('Visible','off','Position',[360,600,500,485]);
 
   %  Construct the components.
   mfcc_train = uicontrol('Style','pushbutton','String','train_mfcc',...
          'Position',[315,220,70,25],...
          'Callback',{@mfcctrain_Callback});
   mfcc_test = uicontrol('Style','pushbutton','String','test_mfcc',...
          'Position',[315,180,70,25],...
          'Callback',{@mfcctest_Callback});
  tda_train = uicontrol('Style','pushbutton','String','train_tda',...
          'Position',[315,140,70,25],...
          'Callback',{@tdatrain_Callback});
   tda_test = uicontrol('Style','pushbutton','String','test_tda',...
          'Position',[315,100,70,25],...
          'Callback',{@tdatest_Callback});
  
   
   align([mfcc_train,mfcc_test,tda_train,tda_test],'Center','None');
   
   
   
   % Initialize the GUI.
   % Change units to normalized so components resize 
   % automatically.
   set([f,mfcc_train,mfcc_test,tda_train,tda_test],...
   'Units','normalized');
   %Create a plot in the axes.
   %%current_data = peaks_data;
  %%surf(current_data);
   % Assign the GUI a name to appear in the window title.
   set(f,'Name','Project')
   % Move the GUI to the center of the screen.
   movegui(f,'center')
   % Make the GUI visible.
   set(f,'Visible','on');
 
   %  Callbacks for gui. These callbacks automatically
   %  have access to component handles and initialized data 
   %  because they are nested at a lower level.
  
   % Push button callbacks. Each callback plots current_data in
   % the specified plot type.
 
   function mfcctrain_Callback(source,eventdata) 
   % open mfcc training.
      mfcc;
   end
 
   function mfcctest_Callback(source,eventdata) 
   % open mfcc test.
      mfccte;
   end

    function tdatrain_Callback(source,eventdata)
   % open tda training.
      tda;
   end
 
   function tdatest_Callback(source,eventdata) 
   % open tda test.
      tdat;
   end
 
  
end 