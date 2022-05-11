#!/bin/bash
GREEN='\033[0;32m'
BLUE='\033[0;34m'
BIGBLUE='\033[1;34m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'


INSTALL_DIR="/home/$USER/.local/bin"
SCRIPT="rm-trash-bin"
SOURCE="/home/$USER/.zshrc"

SUCCESS=0

if [ -f "$INSTALL_DIR/$SCRIPT" ]; then
    cp "$SCRIPT" "$INSTALL_DIR"/"$SCRIPT"
    if [[ $? -eq 1 ]]; then
        printf "${RED}rm-trash-bin FAIL on update. Use sudo or change the INSTALL_DIR.${NC}\n"
        exit
    fi
    chmod +x "$INSTALL_DIR"/"$SCRIPT"
    printf "${GREEN}rm-trash-bin Updated successfully...${NC}\n"

else
    cp "$SCRIPT" "$INSTALL_DIR"/"$SCRIPT"
    if [[ $? -eq 1 ]]; then
        printf "${RED}rm-trash-bin FAIL on install. Use sudo or change the INSTALL_DIR.${NC}\n"
        exit
    fi
    chmod +x "$INSTALL_DIR"/"$SCRIPT"
    printf "${GREEN}AWS Quick Switch Installed successfully...${NC}\n"
    
    echo "#########################" >> ${SOURCE}
    echo "####RM TRASH BIN ########" >> ${SOURCE}
    echo "#########################" >> ${SOURCE}
    echo "if [ ! -d /tmp/trash ]; then mkdir /tmp/trash; fi" >> ${SOURCE}
    echo "alias rm='${SCRIPT}'" >> ${SOURCE}
    printf "${GREEN}Added ALIAS for rm to ${YELLOW}$SOURCE${YELLOW}...${NC}\n"
    echo "alias empty-trash='/usr/bin/rm -Rf /tmp/trash; mkdir /tmp/trash'" >> ${SOURCE}
    printf "${GREEN}Added ALIAS for empty-trash to ${YELLOW}$SOURCE${YELLOW}...${NC}\n"
    printf "${YELLOW}This action needs a terminal restart to take effect${NC}\n"

fi
