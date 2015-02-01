    function varargout = gui_try(varargin)

% GUI_TRY M-file for gui_try.fig
%      GUI_TRY, by itself, creates a new GUI_TRY or raises the existing
%      singleton*.
%
%      H = GUI_TRY returns the handle to a new GUI_TRY or the handle to
%      the existing singleton*.
%
%      GUI_TRY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_TRY.M with the given input arguments.
%
%      GUI_TRY('Property','Value',...) creates a new GUI_TRY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_try_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_try_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_try

% Last Modified by GUIDE v2.5 30-May-2012 02:03:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
%global file;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_try_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_try_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
    end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_try is made visible.
function gui_try_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_try (see VARARGIN)

% Choose default command line output for gui_try
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_try wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = gui_try_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on button press in Train.
function Train_Callback(hObject, eventdata, handles)
% hObject    handle to Train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1;
if(strcmp(f1,'mfcc')==1)
  mfcc;
else
    tda;
end
end
% --- Executes on button press in Test.
function Test_Callback(hObject, eventdata, handles)
% hObject    handle to Test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1;
if(strcmp(f1,'mfcc')==1)
   mfccte;
else
    tdat;
end
end
    

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from
%        popupmenu1
global f1;
str = get(hObject, 'String');
val = get(hObject,'Value');
switch str{val}
case 'MFCC'
      f1 = 'mfcc';

case 'TDA'
     f1 = 'tda';
end
end

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
