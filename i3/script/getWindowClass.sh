#!/bin/bash                                                                                                                 
                                                                                                                            
wnd_focus=$(xdotool getwindowfocus)                                                                                                                         
wnd_title=$(xprop -id $wnd_focus WM_NAME)                                                                                   
lookfor='"(.*)"'                                                                                                            
                                                                                                                            
if [[ "$wnd_title" =~ $lookfor ]]; then                                                                                     
	  wnd_title=${BASH_REMATCH[1]}                                                                                              
	    echo $wnd_title                                                                                                           
fi
