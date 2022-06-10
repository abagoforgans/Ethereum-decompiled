contract main {




// =====================  Runtime code  =====================


address owner;
uint256 nameFee;
mapping of address games_;
mapping of uint256 gameNames_;
mapping of uint256 gameIDs_;
uint256 gID_;
uint256 pID_;
mapping of uint256 pIDxAddr_;
mapping of uint256 pIDxName_;
mapping of struct playerAddr;
mapping of uint8 stor10;
mapping of uint256 plyrNameList_;

function pIDxAddr_(address arg1) {
    return pIDxAddr_[arg1]
}

function registrationFee_() {
    return nameFee
}

function getNameFee() {
    return nameFee
}

function plyrNames_(uint256 arg1, bytes32 arg2) {
    return bool(stor10[arg1][arg2])
}

function gameNames_(address arg1) {
    return gameNames_[arg1]
}

function pIDxName_(bytes32 arg1) {
    return pIDxName_[arg1]
}

function pID_() {
    return pID_
}

function getPlayerAddr(uint256 arg1) {
    return playerAddr[arg1].field_0
}

function getPlayerName(uint256 arg1) {
    return playerAddr[arg1].field_256
}

function owner() {
    return owner
}

function plyrNameList_(uint256 arg1, uint256 arg2) {
    return plyrNameList_[arg1][arg2]
}

function gID_() {
    return gID_
}

function games_(uint256 arg1) {
    return games_[arg1]
}

function gameIDs_(address arg1) {
    return gameIDs_[arg1]
}

function plyr_(uint256 arg1) {
    return playerAddr[arg1].field_0, playerAddr[arg1].field_256, playerAddr[arg1].field_512, playerAddr[arg1].field_768
}

function getPlayerLAff(uint256 arg1) {
    return playerAddr[arg1].field_512
}

function _fallback() payable {
    revert
}

function setRegistrationFee(uint256 arg1) {
    require owner == msg.sender
    nameFee = arg1
}

function getPlayerID(address arg1) {
    require gameIDs_[address(msg.sender)]
    if pIDxAddr_[address(arg1)]:
        return pIDxAddr_[address(arg1)]
    pID_++
    pIDxAddr_[address(arg1)] = pID_
    playerAddr[stor6].field_0 = arg1
    return pID_
}

function addMeToGame(uint256 arg1) {
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if gID_ <= 0:
        revert with 0, 'that game doesn't exist yet'
    if arg1 > gID_:
        revert with 0, 'that game doesn't exist yet'
    if not pIDxAddr_[address(msg.sender)]:
        revert with 0, 'you dont even have an account'
    require ext_code.size(games_[arg1])
    call games_[arg1].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args pIDxAddr_[address(msg.sender)], msg.sender, playerAddr[stor7[address(msg.sender)]].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if playerAddr[stor7[address(msg.sender)]].field_768 > 1:
        idx = 1
        while idx <= playerAddr[stor7[address(msg.sender)]].field_768:
            mem[0] = idx
            mem[32] = sha3(pIDxAddr_[address(msg.sender)], 11)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = pIDxAddr_[address(msg.sender)]
            mem[132] = plyrNameList_[stor7[address(msg.sender)]][idx]
            require ext_code.size(games_[arg1])
            call games_[arg1].receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args pIDxAddr_[address(msg.sender)], plyrNameList_[stor7[address(msg.sender)]][idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function addMeToAllGames() {
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not pIDxAddr_[address(msg.sender)]:
        revert with 0, 'you dont even have an account'
    s = 0
    idx = 1
    while idx <= gID_:
        mem[0] = idx
        mem[32] = 2
        mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
        mem[100] = pIDxAddr_[address(msg.sender)]
        mem[132] = msg.sender
        mem[164] = playerAddr[stor7[address(msg.sender)]].field_256
        require ext_code.size(games_[idx])
        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args pIDxAddr_[address(msg.sender)], msg.sender, playerAddr[stor7[address(msg.sender)]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if playerAddr[stor7[address(msg.sender)]].field_768 <= 1:
            s = s
            idx = idx + 1
            continue 
        s = 1
        while s <= playerAddr[stor7[address(msg.sender)]].field_768:
            mem[0] = s
            mem[32] = sha3(pIDxAddr_[address(msg.sender)], 11)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = pIDxAddr_[address(msg.sender)]
            mem[132] = plyrNameList_[stor7[address(msg.sender)]][s]
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args pIDxAddr_[address(msg.sender)], plyrNameList_[stor7[address(msg.sender)]][s]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        s = playerAddr[stor7[address(msg.sender)]].field_768 + 1
        idx = idx + 1
        continue 
}

function checkIfNameValid(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg1.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if pIDxName_[mem[128]]:
        return 0
    return 1
}

function useMyOldName(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg1.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if not stor10[stor7[address(msg.sender)]][mem[128]]:
        revert with 0, 'thats not a name you own'
    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
}

function addGame(address arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[0] = arg1
    mem[32] = 4
    if gameIDs_[address(arg1)]:
        revert with 0, 'that games already been registered'
    gID_++
    if arg2.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg2.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg2.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg2.length - 1 < arg2.length
    if Mask(8, 248, mem[arg2.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg2.length
    if Mask(8, 248, mem[128]) == 0x3000000000000000000000000000000000000000000000000000000000000000:
        require 1 < arg2.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg2.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
            if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx + 1 < arg2.length
                if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'string cannot contain consecutive spaces'
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg2.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    gameIDs_[address(arg1)] = gID_
    gameNames_[address(arg1)] = mem[128]
    games_[stor5] = arg1
    require ext_code.size(games_[stor5])
    call games_[stor5].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args 1, playerAddr[1].field_0, playerAddr[1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function registerNameXnameFromDapp(address arg1, bytes32 arg2, bytes32 arg3, bool arg4) payable {
    require gameIDs_[address(msg.sender)]
    if msg.value < nameFee:
        revert with 0, 'you have to pay the name fee'
    if pIDxAddr_[address(arg1)]:
        if not arg3:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        if arg3 == arg2:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        if pIDxName_[arg3] != playerAddr[stor7[address(arg1)]].field_512:
            playerAddr[stor7[address(arg1)]].field_512 = pIDxName_[arg3]
        if pIDxName_[arg2]:
            if not stor10[stor7[address(arg1)]][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor7[address(arg1)]].field_256 = arg2
        pIDxName_[arg2] = pIDxAddr_[address(arg1)]
        if not stor10[stor7[address(arg1)]][arg2]:
            stor10[stor7[address(arg1)]][arg2] = 1
            playerAddr[stor7[address(arg1)]].field_768++
            plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pIDxAddr_[address(arg1)]
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pIDxAddr_[address(arg1)], address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, pIDxName_[arg3], playerAddr[stor8[arg3]].field_0, playerAddr[stor8[arg3]].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
        return 0, pIDxName_[arg3]
    pID_++
    pIDxAddr_[address(arg1)] = pID_
    playerAddr[stor6].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    if arg3 == arg2:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    if pIDxName_[arg3] != playerAddr[stor6].field_512:
        playerAddr[stor6].field_512 = pIDxName_[arg3]
    if pIDxName_[arg2]:
        if not stor10[stor6][arg2]:
            revert with 0, 'that name already taken'
    playerAddr[stor6].field_256 = arg2
    pIDxName_[arg2] = pID_
    if not stor10[stor6][arg2]:
        stor10[stor6][arg2] = 1
        playerAddr[stor6].field_768++
        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 2
            mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
            mem[100] = pID_
            mem[132] = arg1
            mem[164] = arg2
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                 gas gas_remaining wei
                args pID_, address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, pIDxName_[arg3], playerAddr[stor8[arg3]].field_0, playerAddr[stor8[arg3]].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
    return 1, pIDxName_[arg3]
}

function registerNameXaddrFromDapp(address arg1, bytes32 arg2, address arg3, bool arg4) payable {
    require gameIDs_[address(msg.sender)]
    if msg.value < nameFee:
        revert with 0, 'you have to pay the name fee'
    if pIDxAddr_[address(arg1)]:
        if not arg3:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        if arg3 == arg1:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        if pIDxAddr_[address(arg3)] != playerAddr[stor7[address(arg1)]].field_512:
            playerAddr[stor7[address(arg1)]].field_512 = pIDxAddr_[address(arg3)]
        if pIDxName_[arg2]:
            if not stor10[stor7[address(arg1)]][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor7[address(arg1)]].field_256 = arg2
        pIDxName_[arg2] = pIDxAddr_[address(arg1)]
        if not stor10[stor7[address(arg1)]][arg2]:
            stor10[stor7[address(arg1)]][arg2] = 1
            playerAddr[stor7[address(arg1)]].field_768++
            plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pIDxAddr_[address(arg1)]
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pIDxAddr_[address(arg1)], address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, pIDxAddr_[address(arg3)], playerAddr[stor7[address(arg3)]].field_0, playerAddr[stor7[address(arg3)]].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
        return 0, pIDxAddr_[address(arg3)]
    pID_++
    pIDxAddr_[address(arg1)] = pID_
    playerAddr[stor6].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    if arg3 == arg1:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    if pIDxAddr_[address(arg3)] != playerAddr[stor6].field_512:
        playerAddr[stor6].field_512 = pIDxAddr_[address(arg3)]
    if pIDxName_[arg2]:
        if not stor10[stor6][arg2]:
            revert with 0, 'that name already taken'
    playerAddr[stor6].field_256 = arg2
    pIDxName_[arg2] = pID_
    if not stor10[stor6][arg2]:
        stor10[stor6][arg2] = 1
        playerAddr[stor6].field_768++
        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 2
            mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
            mem[100] = pID_
            mem[132] = arg1
            mem[164] = arg2
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                 gas gas_remaining wei
                args pID_, address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, pIDxAddr_[address(arg3)], playerAddr[stor7[address(arg3)]].field_0, playerAddr[stor7[address(arg3)]].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
    return 1, pIDxAddr_[address(arg3)]
}

function registerNameXIDFromDapp(address arg1, bytes32 arg2, uint256 arg3, bool arg4) payable {
    require gameIDs_[address(msg.sender)]
    if msg.value < nameFee:
        revert with 0, 'you have to pay the name fee'
    if pIDxAddr_[address(arg1)]:
        if not arg3:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            if arg3 != pIDxAddr_[address(arg1)]:
                emit onNewName(0, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
                return 0, arg3
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        if arg3 == playerAddr[stor7[address(arg1)]].field_512:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            if arg3 != pIDxAddr_[address(arg1)]:
                emit onNewName(0, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
                return 0, arg3
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        if arg3 == pIDxAddr_[address(arg1)]:
            if pIDxName_[arg2]:
                if not stor10[stor7[address(arg1)]][arg2]:
                    revert with 0, 'that name already taken'
            playerAddr[stor7[address(arg1)]].field_256 = arg2
            pIDxName_[arg2] = pIDxAddr_[address(arg1)]
            if not stor10[stor7[address(arg1)]][arg2]:
                stor10[stor7[address(arg1)]][arg2] = 1
                playerAddr[stor7[address(arg1)]].field_768++
                plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                    mem[100] = pIDxAddr_[address(arg1)]
                    mem[132] = arg1
                    mem[164] = arg2
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                         gas gas_remaining wei
                        args pIDxAddr_[address(arg1)], address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
            return 0
        playerAddr[stor7[address(arg1)]].field_512 = arg3
        if pIDxName_[arg2]:
            if not stor10[stor7[address(arg1)]][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor7[address(arg1)]].field_256 = arg2
        pIDxName_[arg2] = pIDxAddr_[address(arg1)]
        if not stor10[stor7[address(arg1)]][arg2]:
            stor10[stor7[address(arg1)]][arg2] = 1
            playerAddr[stor7[address(arg1)]].field_768++
            plyrNameList_[stor7[address(arg1)]][stor9[stor7[address(arg1)]].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pIDxAddr_[address(arg1)]
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pIDxAddr_[address(arg1)], address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, pIDxAddr_[address(arg1)], arg1, arg2);
        return 0, arg3
    pID_++
    pIDxAddr_[address(arg1)] = pID_
    playerAddr[stor6].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        if arg3 != pID_:
            emit onNewName(1, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
            return 1, arg3
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    if arg3 == playerAddr[stor6].field_512:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        if arg3 != pID_:
            emit onNewName(1, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
            return 1, arg3
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    if arg3 == pID_:
        if pIDxName_[arg2]:
            if not stor10[stor6][arg2]:
                revert with 0, 'that name already taken'
        playerAddr[stor6].field_256 = arg2
        pIDxName_[arg2] = pID_
        if not stor10[stor6][arg2]:
            stor10[stor6][arg2] = 1
            playerAddr[stor6].field_768++
            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                mem[100] = pID_
                mem[132] = arg1
                mem[164] = arg2
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                     gas gas_remaining wei
                    args pID_, address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
        return 1, 0
    playerAddr[stor6].field_512 = arg3
    if pIDxName_[arg2]:
        if not stor10[stor6][arg2]:
            revert with 0, 'that name already taken'
    playerAddr[stor6].field_256 = arg2
    pIDxName_[arg2] = pID_
    if not stor10[stor6][arg2]:
        stor10[stor6][arg2] = 1
        playerAddr[stor6].field_768++
        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = arg2
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 2
            mem[96] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
            mem[100] = pID_
            mem[132] = arg1
            mem[164] = arg2
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                 gas gas_remaining wei
                args pID_, address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, pID_, arg1, arg2);
    return 1, arg3
}

function registerNameXname(string arg1, bytes32 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < nameFee:
        revert with 0, 'you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                    if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx + 1 < arg1.length
                        if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1613 = mem[128]
        if pIDxAddr_[address(msg.sender)]:
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                if not stor10[stor7[address(msg.sender)]][mem[128]]:
                    stor10[stor7[address(msg.sender)]][mem[128]] = 1
                    playerAddr[stor7[address(msg.sender)]].field_768++
                    plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1613
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pIDxAddr_[address(msg.sender)], msg.sender, _1613
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1613);
            else:
                if arg2 == mem[128]:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1613);
                else:
                    if pIDxName_[arg2] != playerAddr[stor7[address(msg.sender)]].field_512:
                        playerAddr[stor7[address(msg.sender)]].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1613);
        else:
            pID_++
            pIDxAddr_[address(msg.sender)] = pID_
            playerAddr[stor6].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor6][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor6].field_256 = mem[128]
                pIDxName_[mem[128]] = pID_
                if not stor10[stor6][mem[128]]:
                    stor10[stor6][mem[128]] = 1
                    playerAddr[stor6].field_768++
                    plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pID_
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1613
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pID_, msg.sender, _1613
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1613);
            else:
                if arg2 == mem[128]:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1613);
                else:
                    if pIDxName_[arg2] != playerAddr[stor6].field_512:
                        playerAddr[stor6].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pID_, msg.sender, _1613);
    else:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                    if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx + 1 < arg1.length
                        if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1617 = mem[128]
        if pIDxAddr_[address(msg.sender)]:
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                if not stor10[stor7[address(msg.sender)]][mem[128]]:
                    stor10[stor7[address(msg.sender)]][mem[128]] = 1
                    playerAddr[stor7[address(msg.sender)]].field_768++
                    plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1617
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pIDxAddr_[address(msg.sender)], msg.sender, _1617
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1617);
            else:
                if arg2 == mem[128]:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1617);
                else:
                    if pIDxName_[arg2] != playerAddr[stor7[address(msg.sender)]].field_512:
                        playerAddr[stor7[address(msg.sender)]].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1617);
        else:
            pID_++
            pIDxAddr_[address(msg.sender)] = pID_
            playerAddr[stor6].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor6][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor6].field_256 = mem[128]
                pIDxName_[mem[128]] = pID_
                if not stor10[stor6][mem[128]]:
                    stor10[stor6][mem[128]] = 1
                    playerAddr[stor6].field_768++
                    plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pID_
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1617
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pID_, msg.sender, _1617
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1617);
            else:
                if arg2 == mem[128]:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1617);
                else:
                    if pIDxName_[arg2] != playerAddr[stor6].field_512:
                        playerAddr[stor6].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor8[arg2]].field_0, playerAddr[stor8[arg2]].field_256, msg.value, block.timestamp, pID_, msg.sender, _1617);
}

function registerNameXaddr(string arg1, address arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < nameFee:
        revert with 0, 'you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                    if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx + 1 < arg1.length
                        if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1613 = mem[128]
        if pIDxAddr_[address(msg.sender)]:
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                if not stor10[stor7[address(msg.sender)]][mem[128]]:
                    stor10[stor7[address(msg.sender)]][mem[128]] = 1
                    playerAddr[stor7[address(msg.sender)]].field_768++
                    plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1613
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pIDxAddr_[address(msg.sender)], msg.sender, _1613
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1613);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1613);
                else:
                    if pIDxAddr_[address(arg2)] != playerAddr[stor7[address(msg.sender)]].field_512:
                        playerAddr[stor7[address(msg.sender)]].field_512 = pIDxAddr_[address(arg2)]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1613);
        else:
            pID_++
            pIDxAddr_[address(msg.sender)] = pID_
            playerAddr[stor6].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor6][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor6].field_256 = mem[128]
                pIDxName_[mem[128]] = pID_
                if not stor10[stor6][mem[128]]:
                    stor10[stor6][mem[128]] = 1
                    playerAddr[stor6].field_768++
                    plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pID_
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1613
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pID_, msg.sender, _1613
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1613);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1613);
                else:
                    if pIDxAddr_[address(arg2)] != playerAddr[stor6].field_512:
                        playerAddr[stor6].field_512 = pIDxAddr_[address(arg2)]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1613
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1613
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pID_, msg.sender, _1613);
    else:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                    if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx + 1 < arg1.length
                        if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1617 = mem[128]
        if pIDxAddr_[address(msg.sender)]:
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                if not stor10[stor7[address(msg.sender)]][mem[128]]:
                    stor10[stor7[address(msg.sender)]][mem[128]] = 1
                    playerAddr[stor7[address(msg.sender)]].field_768++
                    plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1617
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pIDxAddr_[address(msg.sender)], msg.sender, _1617
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1617);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1617);
                else:
                    if pIDxAddr_[address(arg2)] != playerAddr[stor7[address(msg.sender)]].field_512:
                        playerAddr[stor7[address(msg.sender)]].field_512 = pIDxAddr_[address(arg2)]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(0, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _1617);
        else:
            pID_++
            pIDxAddr_[address(msg.sender)] = pID_
            playerAddr[stor6].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor6][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor6].field_256 = mem[128]
                pIDxName_[mem[128]] = pID_
                if not stor10[stor6][mem[128]]:
                    stor10[stor6][mem[128]] = 1
                    playerAddr[stor6].field_768++
                    plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg3:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = pID_
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1617
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                             gas gas_remaining wei
                            args pID_, msg.sender, _1617
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1617);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _1617);
                else:
                    if pIDxAddr_[address(arg2)] != playerAddr[stor6].field_512:
                        playerAddr[stor6].field_512 = pIDxAddr_[address(arg2)]
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg3:
                        emit onNewName(1, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1617
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _1617
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxAddr_[address(arg2)], playerAddr[stor7[address(arg2)]].field_0, playerAddr[stor7[address(arg2)]].field_256, msg.value, block.timestamp, pID_, msg.sender, _1617);
}

function registerNameXID(string arg1, uint256 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == tx.origin
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < nameFee:
        revert with 0, 'you have to pay the name fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if Mask(8, 248, mem[arg1.length + 127]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                    if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx + 1 < arg1.length
                        if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _2225 = mem[128]
        if pIDxAddr_[address(msg.sender)]:
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                if not stor10[stor7[address(msg.sender)]][mem[128]]:
                    stor10[stor7[address(msg.sender)]][mem[128]] = 1
                    playerAddr[stor7[address(msg.sender)]].field_768++
                    plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != pIDxAddr_[address(msg.sender)]:
                    if not arg3:
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2225
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _2225
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2225);
                else:
                    if not arg3:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2225
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _2225
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2225);
            else:
                if arg2 == playerAddr[stor7[address(msg.sender)]].field_512:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != pIDxAddr_[address(msg.sender)]:
                        if not arg3:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2225);
                    else:
                        if not arg3:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2225);
                else:
                    if arg2 == pIDxAddr_[address(msg.sender)]:
                        if pIDxName_[mem[128]]:
                            if not stor10[stor7[address(msg.sender)]][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                        pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            stor10[stor7[address(msg.sender)]][mem[128]] = 1
                            playerAddr[stor7[address(msg.sender)]].field_768++
                            plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2225);
                    else:
                        playerAddr[stor7[address(msg.sender)]].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            if not stor10[stor7[address(msg.sender)]][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                        pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            stor10[stor7[address(msg.sender)]][mem[128]] = 1
                            playerAddr[stor7[address(msg.sender)]].field_768++
                            plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2225);
        else:
            pID_++
            pIDxAddr_[address(msg.sender)] = pID_
            playerAddr[stor6].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor6][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor6].field_256 = mem[128]
                pIDxName_[mem[128]] = pID_
                if not stor10[stor6][mem[128]]:
                    stor10[stor6][mem[128]] = 1
                    playerAddr[stor6].field_768++
                    plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != pID_:
                    if not arg3:
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2225
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _2225
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, _2225);
                else:
                    if not arg3:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2225
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _2225
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _2225);
            else:
                if arg2 == playerAddr[stor6].field_512:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != pID_:
                        if not arg3:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, _2225);
                    else:
                        if not arg3:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _2225);
                else:
                    if arg2 == pID_:
                        if pIDxName_[mem[128]]:
                            if not stor10[stor6][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor6].field_256 = mem[128]
                        pIDxName_[mem[128]] = pID_
                        if not stor10[stor6][mem[128]]:
                            stor10[stor6][mem[128]] = 1
                            playerAddr[stor6].field_768++
                            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _2225);
                    else:
                        playerAddr[stor6].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            if not stor10[stor6][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor6].field_256 = mem[128]
                        pIDxName_[mem[128]] = pID_
                        if not stor10[stor6][mem[128]]:
                            stor10[stor6][mem[128]] = 1
                            playerAddr[stor6].field_768++
                            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2225
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2225
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, _2225);
    else:
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x7800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if Mask(8, 248, mem[129]) == 0x5800000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'string cannot start with 0X'
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= 0x4000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx + 1 < arg1.length
                    if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'string cannot contain consecutive spaces'
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < 0x5b00000000000000000000000000000000000000000000000000000000000000:
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x6000000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= 0x7b00000000000000000000000000000000000000000000000000000000000000:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= 0x2f00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= 0x3a00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'string contains invalid characters'
                    if Mask(8, 248, mem[idx + 128]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx + 1 < arg1.length
                        if Mask(8, 248, mem[idx + 129]) == 0x2000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'string cannot contain consecutive spaces'
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _2229 = mem[128]
        if pIDxAddr_[address(msg.sender)]:
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                if not stor10[stor7[address(msg.sender)]][mem[128]]:
                    stor10[stor7[address(msg.sender)]][mem[128]] = 1
                    playerAddr[stor7[address(msg.sender)]].field_768++
                    plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != pIDxAddr_[address(msg.sender)]:
                    if not arg3:
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2229
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _2229
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2229);
                else:
                    if not arg3:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2229
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pIDxAddr_[address(msg.sender)], msg.sender, _2229
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2229);
            else:
                if arg2 == playerAddr[stor7[address(msg.sender)]].field_512:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                    pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                    if not stor10[stor7[address(msg.sender)]][mem[128]]:
                        stor10[stor7[address(msg.sender)]][mem[128]] = 1
                        playerAddr[stor7[address(msg.sender)]].field_768++
                        plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != pIDxAddr_[address(msg.sender)]:
                        if not arg3:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2229);
                    else:
                        if not arg3:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2229);
                else:
                    if arg2 == pIDxAddr_[address(msg.sender)]:
                        if pIDxName_[mem[128]]:
                            if not stor10[stor7[address(msg.sender)]][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                        pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            stor10[stor7[address(msg.sender)]][mem[128]] = 1
                            playerAddr[stor7[address(msg.sender)]].field_768++
                            plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2229);
                    else:
                        playerAddr[stor7[address(msg.sender)]].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            if not stor10[stor7[address(msg.sender)]][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor7[address(msg.sender)]].field_256 = mem[128]
                        pIDxName_[mem[128]] = pIDxAddr_[address(msg.sender)]
                        if not stor10[stor7[address(msg.sender)]][mem[128]]:
                            stor10[stor7[address(msg.sender)]][mem[128]] = 1
                            playerAddr[stor7[address(msg.sender)]].field_768++
                            plyrNameList_[stor7[address(msg.sender)]][stor9[stor7[address(msg.sender)]].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pIDxAddr_[address(msg.sender)]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pIDxAddr_[address(msg.sender)], msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pIDxAddr_[address(msg.sender)], msg.sender, _2229);
        else:
            pID_++
            pIDxAddr_[address(msg.sender)] = pID_
            playerAddr[stor6].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if not stor10[stor6][mem[128]]:
                        revert with 0, 'that name already taken'
                playerAddr[stor6].field_256 = mem[128]
                pIDxName_[mem[128]] = pID_
                if not stor10[stor6][mem[128]]:
                    stor10[stor6][mem[128]] = 1
                    playerAddr[stor6].field_768++
                    plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != pID_:
                    if not arg3:
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2229
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _2229
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, _2229);
                else:
                    if not arg3:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = pID_
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _2229
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                 gas gas_remaining wei
                                args pID_, msg.sender, _2229
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _2229);
            else:
                if arg2 == playerAddr[stor6].field_512:
                    if pIDxName_[mem[128]]:
                        if not stor10[stor6][mem[128]]:
                            revert with 0, 'that name already taken'
                    playerAddr[stor6].field_256 = mem[128]
                    pIDxName_[mem[128]] = pID_
                    if not stor10[stor6][mem[128]]:
                        stor10[stor6][mem[128]] = 1
                        playerAddr[stor6].field_768++
                        plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != pID_:
                        if not arg3:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, _2229);
                    else:
                        if not arg3:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _2229);
                else:
                    if arg2 == pID_:
                        if pIDxName_[mem[128]]:
                            if not stor10[stor6][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor6].field_256 = mem[128]
                        pIDxName_[mem[128]] = pID_
                        if not stor10[stor6][mem[128]]:
                            stor10[stor6][mem[128]] = 1
                            playerAddr[stor6].field_768++
                            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, pID_, msg.sender, _2229);
                    else:
                        playerAddr[stor6].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            if not stor10[stor6][mem[128]]:
                                revert with 0, 'that name already taken'
                        playerAddr[stor6].field_256 = mem[128]
                        pIDxName_[mem[128]] = pID_
                        if not stor10[stor6][mem[128]]:
                            stor10[stor6][mem[128]] = 1
                            playerAddr[stor6].field_768++
                            plyrNameList_[stor6][stor9[stor6].field_768 + 1] = mem[128]
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not arg3:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x1fda5b4500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = pID_
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _2229
                                require ext_code.size(games_[idx])
                                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3) with:
                                     gas gas_remaining wei
                                    args pID_, msg.sender, _2229
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, pID_, msg.sender, _2229);
}



}
