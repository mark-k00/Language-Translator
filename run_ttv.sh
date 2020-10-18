#!/bin/sh

mainmenu(){
    echo
	echo Choose from one of the below options:
    echo
	echo 1. Help
	echo 2. Set Source and Target language
    echo 3. Quit
    echo
#	echo 3. Set Target language
	read  -n 1 -p "Select an option:" mainmenuinput
	echo


	if [ "$mainmenuinput" = "1" ]; then
            echo
            echo "Follow the instructions!"
            echo
    		mainmenu
        elif [ "$mainmenuinput" = "2" ]; then
            echo
            echo Choose your source language:
            echo
            echo 1. English
            echo 2. Spanish
            echo 3. Irish
            echo 4. French
            echo 5. German
            echo
            read  -n 1 -p "Select an option:" sourcelanginput
            echo
            
            if [ "$sourcelanginput" = "1" ]; then
  #          	echo You chose English as the source langauge
            	SRCLANG="EN" slang="English"
            	elif [ "$sourcelanginput" = "2" ]; then
   #         		echo You chose Spanish as the source langauge
            		SRCLANG="ES" slang="Spanish"
            	elif [ "$sourcelanginput" = "3" ]; then
   #         		echo You chose Irish as the source langauge
            		SRCLANG="GA" slang="Irish"
                elif [ "$sourcelanginput" = "4" ]; then
   #                echo You chose French as the source langauge
                    SRCLANG="FR" slang="French"
                elif [ "$sourcelanginput" = "5" ]; then
   #                echo You chose Dutch as the source langauge
                    SRCLANG="DE" slang="German"

            fi	

            echo
   #         echo $sourcelanginput
   #         echo $SRCLANG
            echo
            echo Choose your target language:
            echo
            echo 1. English
            echo 2. Spanish
            echo 3. Irish
            echo 4. French
            echo 5. German
            echo
            read  -n 1 -p "Select an option:" targetlanginput
            if [ "$targetlanginput" = "1" ]; then
    #        	echo You chose English as the target langauge
            	TRGLANG="EN" tlang="English"
            	elif [ "$targetlanginput" = "2" ]; then
     #       		echo You chose Spanish as the target langauge
            		TRGLANG="ES" tlang="Spanish"
                elif [ "$targetlanginput" = "3" ]; then
     #              echo You chose Irish as the target langauge
                    TRGLANG="GA" tlang="Irish"
                elif [ "$targetlanginput" = "4" ]; then
     #              echo You chose French as the target langauge
                    TRGLANG="FR"  tlang="French"
                elif [ "$targetlanginput" = "5" ]; then
     #              echo You chose Dutch as the target langauge
                    TRGLANG="DE" tlang="German"
      #      		echo $TRGLANG
            fi	
            echo
            echo You chose $slang as your source language and $tlang as your target language
            echo


            export SRCLANG 
            export TRGLANG
            export slang
            export tlang

            echo How do you want to select the data:
            echo
            echo 1. Random selection
            echo 2. Length selection
            echo 3. Based on keywords
            echo
            read  -n 1 -p "Select an option:" dataselection
            if [ "$dataselection" = "1" ]; then
                dataselection="1" dataselect="Random Selection"
                elif [ "$dataselection" = "2" ]; then
                dataselection="2" dataselect="Length Selection"
            elif [ "$dataselection" = "3" ]; then
                dataselection="3" dataselect="Based on Keywords"
            fi

        elif [ "$mainmenuinput" = "3" ]; then
            break;
        else
            echo "You have entered an invallid selection!"
            echo "Please try again!"
            echo ""
            echo "Press any key to continue..."
            read -n 1
            clear
            mainmenu
        fi

}

mainmenu


if [ "$mainmenuinput" = "2" ]; then
       sh Download-file.sh

        if [ "$dataselection" = "1" ]; then
            sh RANDOMSELECT.sh

        elif [ "$dataselection" = "2" ]; then
            sh SHORTESTLINE.sh
        elif [ "$dataselection" = "3" ]; then
            sh TESTKEYWORD.sh

        fi
      
        export dataselect
        sh output.sh
    
fi