contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 nameFee;
mapping of address games_;
mapping of uint256 gameNames_;
mapping of uint256 gameIDs_;
uint256 gID_;
uint256 pID_;
mapping of uint32 pIDxAddr_;
mapping of uint256 pIDxName_;
mapping of struct playerAddr;
mapping of uint8 stor11;
mapping of uint256 plyrNameList_;

function pIDxAddr_(address arg1) {
    return uint256(pIDxAddr_[arg1])
}

function registrationFee_() {
    return nameFee
}

function getNameFee() {
    return nameFee
}

function plyrNames_(uint256 arg1, bytes32 arg2) {
    return bool(stor11[arg1][arg2])
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
    require msg.sender == stor0
    nameFee = arg1
}

function getPlayerID(address arg1) {
    require gameIDs_[msg.sender]
    if not uint256(pIDxAddr_[address(arg1)]):
        pID_++
        uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
        playerAddr[stor7 + 1].field_0 = arg1
    return uint256(pIDxAddr_[address(arg1)])
}

function addMeToGame(uint256 arg1) {
    require not ext_code.size(msg.sender)
    require tx.origin == msg.sender
    require arg1 <= gID_
    require uint256(pIDxAddr_[msg.sender])
    require ext_code.size(games_[arg1])
    call games_[arg1].0x49cc635d with:
         gas gas_remaining wei
        args 0, uint32(pIDxAddr_[msg.sender]), msg.sender, playerAddr[uint256(stor8[msg.sender])].field_256, playerAddr[uint256(stor8[msg.sender])].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if playerAddr[uint256(stor8[msg.sender])].field_768 > 1:
        idx = 1
        while idx <= playerAddr[uint256(stor8[msg.sender])].field_768:
            mem[0] = idx
            mem[32] = sha3(uint256(pIDxAddr_[msg.sender]), 12)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[msg.sender])
            mem[132] = plyrNameList_[uint256(stor8[msg.sender])][idx]
            require ext_code.size(games_[arg1])
            call games_[arg1].0x8f7140ea with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[msg.sender]), plyrNameList_[uint256(stor8[msg.sender])][idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function checkIfNameValid(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require arg1.length <= 32
    require arg1.length > 0
    require 0 < arg1.length
    require Mask(8, 248, mem[128]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require arg1.length - 1 < arg1.length
    require Mask(8, 248, mem[arg1.length + 127]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    require Mask(8, 248, mem[idx + 128]) > '/'
                    require idx < arg1.length
                    require Mask(8, 248, mem[idx + 128]) < ':'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    if pIDxName_[mem[128]]:
        return 0
    return 1
}

function useMyOldName(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not ext_code.size(msg.sender)
    require tx.origin == msg.sender
    require arg1.length <= 32
    require arg1.length > 0
    require 0 < arg1.length
    require Mask(8, 248, mem[128]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require arg1.length - 1 < arg1.length
    require Mask(8, 248, mem[arg1.length + 127]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    require Mask(8, 248, mem[idx + 128]) > '/'
                    require idx < arg1.length
                    require Mask(8, 248, mem[idx + 128]) < ':'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    require 1 == bool(stor11[uint256(stor8[msg.sender])][mem[128]])
    playerAddr[uint256(stor8[msg.sender])].field_256 = mem[128]
}

function addGame(address arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == stor0
    mem[0] = arg1
    mem[32] = 5
    require not gameIDs_[address(arg1)]
    gID_++
    require arg2.length <= 32
    require arg2.length > 0
    require 0 < arg2.length
    require Mask(8, 248, mem[128]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require arg2.length - 1 < arg2.length
    require Mask(8, 248, mem[arg2.length + 127]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require 0 < arg2.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg2.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg2.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) <= '@':
            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= '`':
                    require Mask(8, 248, mem[idx + 128]) > '/'
                    require idx < arg2.length
                    require Mask(8, 248, mem[idx + 128]) < ':'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg2.length
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg2.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg2.length
                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
            if s:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) >= '0':
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) <= '9':
                    idx = idx + 1
                    s = s
                    continue 
        else:
            require idx < arg2.length
            if Mask(8, 248, mem[idx + 128]) < '[':
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                if s:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg2.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg2.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg2.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg2.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg2.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    gameIDs_[address(arg1)] = gID_
    gameNames_[address(arg1)] = mem[128]
    games_[stor6] = arg1
}

function registerNameXnameFromDapp(address arg1, bytes32 arg2, bytes32 arg3, bool arg4) payable {
    require gameIDs_[msg.sender]
    require msg.value >= nameFee
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg2 == arg3:
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if pIDxName_[arg3] != playerAddr[uint256(stor8[address(arg1)])].field_512:
            playerAddr[uint256(stor8[address(arg1)])].field_512 = pIDxName_[arg3]
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = pIDxName_[arg3]
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, pIDxName_[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, pIDxName_[arg3], playerAddr[stor9[arg3]].field_0, playerAddr[stor9[arg3]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, pIDxName_[arg3]
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    playerAddr[stor7 + 1].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg2 == arg3:
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if pIDxName_[arg3] != playerAddr[uint256(stor8[address(arg1)])].field_512:
        playerAddr[uint256(stor8[address(arg1)])].field_512 = pIDxName_[arg3]
    if pIDxName_[arg2]:
        require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
    playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor11[uint256(stor8[address(arg1)])][arg2]:
        stor11[uint256(stor8[address(arg1)])][arg2] = 1
        playerAddr[uint256(stor8[address(arg1)])].field_768++
        plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 3
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = pIDxName_[arg3]
            require ext_code.size(games_[idx])
            call games_[idx].0x49cc635d with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, pIDxName_[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, pIDxName_[arg3], playerAddr[stor9[arg3]].field_0, playerAddr[stor9[arg3]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, pIDxName_[arg3]
}

function registerNameXaddrFromDapp(address arg1, bytes32 arg2, address arg3, bool arg4) payable {
    require gameIDs_[msg.sender]
    require msg.value >= nameFee
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == arg1:
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if uint256(pIDxAddr_[address(arg3)]) != playerAddr[uint256(stor8[address(arg1)])].field_512:
            playerAddr[uint256(stor8[address(arg1)])].field_512 = uint256(pIDxAddr_[address(arg3)])
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = uint256(pIDxAddr_[address(arg3)])
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, uint256(pIDxAddr_[address(arg3)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, uint256(pIDxAddr_[address(arg3)]), playerAddr[uint256(stor8[address(arg3)])].field_0, playerAddr[uint256(stor8[address(arg3)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, uint256(pIDxAddr_[address(arg3)])
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    playerAddr[stor7 + 1].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == arg1:
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if uint256(pIDxAddr_[address(arg3)]) != playerAddr[uint256(stor8[address(arg1)])].field_512:
        playerAddr[uint256(stor8[address(arg1)])].field_512 = uint256(pIDxAddr_[address(arg3)])
    if pIDxName_[arg2]:
        require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
    playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor11[uint256(stor8[address(arg1)])][arg2]:
        stor11[uint256(stor8[address(arg1)])][arg2] = 1
        playerAddr[uint256(stor8[address(arg1)])].field_768++
        plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 3
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = uint256(pIDxAddr_[address(arg3)])
            require ext_code.size(games_[idx])
            call games_[idx].0x49cc635d with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, uint256(pIDxAddr_[address(arg3)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, uint256(pIDxAddr_[address(arg3)]), playerAddr[uint256(stor8[address(arg3)])].field_0, playerAddr[uint256(stor8[address(arg3)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, uint256(pIDxAddr_[address(arg3)])
}

function registerNameXIDFromDapp(address arg1, bytes32 arg2, uint256 arg3, bool arg4) payable {
    require gameIDs_[msg.sender]
    require msg.value >= nameFee
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg3 != uint256(pIDxAddr_[address(arg1)]):
                if arg4 == 1:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 3
                        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(pIDxAddr_[address(arg1)])
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(games_[idx])
                        call games_[idx].0x49cc635d with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                emit onNewName(0, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
                return 0, arg3
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == playerAddr[uint256(stor8[address(arg1)])].field_512:
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg3 != uint256(pIDxAddr_[address(arg1)]):
                if arg4 == 1:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 3
                        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(pIDxAddr_[address(arg1)])
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(games_[idx])
                        call games_[idx].0x49cc635d with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                emit onNewName(0, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
                return 0, arg3
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == uint256(pIDxAddr_[address(arg1)]):
            if pIDxName_[arg2]:
                require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
            playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor11[uint256(stor8[address(arg1)])][arg2]:
                stor11[uint256(stor8[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor8[address(arg1)])].field_768++
                plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor1 with:
               value eth.balance(this.address) / 2 wei
                 gas 2300 * is_zero(value) wei
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        playerAddr[uint256(stor8[address(arg1)])].field_512 = arg3
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = arg3
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, arg3
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    playerAddr[stor7 + 1].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg3 != uint256(pIDxAddr_[address(arg1)]):
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(1, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 1, arg3
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == playerAddr[uint256(stor8[address(arg1)])].field_512:
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg3 != uint256(pIDxAddr_[address(arg1)]):
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 3
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    require ext_code.size(games_[idx])
                    call games_[idx].0x49cc635d with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(1, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 1, arg3
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == uint256(pIDxAddr_[address(arg1)]):
        if pIDxName_[arg2]:
            require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
        playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor11[uint256(stor8[address(arg1)])][arg2]:
            stor11[uint256(stor8[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor8[address(arg1)])].field_768++
            plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1 with:
           value eth.balance(this.address) / 2 wei
             gas 2300 * is_zero(value) wei
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 3
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].0x49cc635d with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    playerAddr[uint256(stor8[address(arg1)])].field_512 = arg3
    if pIDxName_[arg2]:
        require 1 == bool(stor11[uint256(stor8[address(arg1)])][arg2])
    playerAddr[uint256(stor8[address(arg1)])].field_256 = arg2
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor11[uint256(stor8[address(arg1)])][arg2]:
        stor11[uint256(stor8[address(arg1)])][arg2] = 1
        playerAddr[uint256(stor8[address(arg1)])].field_768++
        plyrNameList_[uint256(stor8[address(arg1)])][stor10[uint256(stor8[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 3
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = arg3
            require ext_code.size(games_[idx])
            call games_[idx].0x49cc635d with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, arg3, playerAddr[arg3].field_0, playerAddr[arg3].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, arg3
}

function registerNameXname(string arg1, bytes32 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not ext_code.size(msg.sender)
    require tx.origin == msg.sender
    require msg.value >= nameFee
    require arg1.length <= 32
    require arg1.length > 0
    require 0 < arg1.length
    require Mask(8, 248, mem[128]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require arg1.length - 1 < arg1.length
    require Mask(8, 248, mem[arg1.length + 127]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) > '/'
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) < ':'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        require bool(s) == 1
        _1341 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 3
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1341
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].0x49cc635d with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1341
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1341
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor7 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 3
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1341
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].0x49cc635d with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1341
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1341
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
    else:
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) > '/'
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) < ':'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        require bool(s) == 1
        _1343 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 3
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1343
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].0x49cc635d with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1343
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1343
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor7 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg3 != 1:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 3
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1343
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].0x49cc635d with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1343
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg3 != 1:
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1343
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor9[arg2]].field_0, playerAddr[stor9[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
}

function registerNameXID(string arg1, uint256 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not ext_code.size(msg.sender)
    require tx.origin == msg.sender
    require msg.value >= nameFee
    require arg1.length <= 32
    require arg1.length > 0
    require 0 < arg1.length
    require Mask(8, 248, mem[128]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require arg1.length - 1 < arg1.length
    require Mask(8, 248, mem[arg1.length + 127]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) > '/'
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) < ':'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        require bool(s) == 1
        _1857 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1857
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                else:
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1857
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
            else:
                if arg2 == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                    else:
                        if arg3 != 1:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor7 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1857
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                else:
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1857
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
            else:
                if arg2 == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                    else:
                        if arg3 != 1:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1857
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1857);
    else:
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg1.length
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                if s:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '0':
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '9':
                        idx = idx + 1
                        s = s
                        continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) < '[':
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) > '/'
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) < ':'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= '0':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '9':
                            idx = idx + 1
                            s = s
                            continue 
            idx = idx + 1
            s = 1
            continue 
        require bool(s) == 1
        _1859 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1859
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                else:
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1859
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
            else:
                if arg2 == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                    else:
                        if arg3 != 1:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor7 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                    stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor1 with:
                   value eth.balance(this.address) / 2 wei
                     gas 2300 * is_zero(value) wei
                if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                    if arg3 != 1:
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1859
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                else:
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 3
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1859
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].0x49cc635d with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
            else:
                if arg2 == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                    if pIDxName_[mem[128]]:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor1 with:
                       value eth.balance(this.address) / 2 wei
                         gas 2300 * is_zero(value) wei
                    if arg2 != uint256(pIDxAddr_[address(msg.sender)]):
                        if arg3 != 1:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                    else:
                        if arg3 != 1:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                else:
                    if arg2 == uint256(pIDxAddr_[address(msg.sender)]):
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = 0
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = arg2
                        if pIDxName_[mem[128]]:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if not stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call stor1 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if arg3 != 1:
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= gID_:
                                mem[0] = idx
                                mem[32] = 3
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1859
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(games_[idx])
                                call games_[idx].0x49cc635d with:
                                     gas gas_remaining wei
                                    args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, playerAddr[arg2].field_0, playerAddr[arg2].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1859);
}

function registerNameXaddr(string arg1, address arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not ext_code.size(msg.sender)
    require tx.origin == msg.sender
    require msg.value >= nameFee
    require arg1.length <= 32
    require arg1.length > 0
    require 0 < arg1.length
    require Mask(8, 248, mem[128]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require arg1.length - 1 < arg1.length
    require Mask(8, 248, mem[arg1.length + 127]) != 0x2000000000000000000000000000000000000000000000000000000000000000
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) != 0x3000000000000000000000000000000000000000000000000000000000000000:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                require idx < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        if s:
                            idx = idx + 1
                            s = s
                            continue 
                        else:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) < '0':
                                idx = idx + 1
                                s = 1
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    idx = idx + 1
                                    s = 1
                                    continue 
                    else:
                        require idx + 1 < arg1.length
                        require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                        if s:
                            idx = idx + 1
                            s = s
                            continue 
                        else:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) < '0':
                                idx = idx + 1
                                s = 1
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    idx = idx + 1
                                    s = 1
                                    continue 
                else:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                        else:
                            require idx + 1 < arg1.length
                            require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                    else:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) < '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                            else:
                                require idx + 1 < arg1.length
                                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                        else:
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                            else:
                                require idx + 1 < arg1.length
                                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '[':
                    require idx < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                        else:
                            require idx + 1 < arg1.length
                            require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                    else:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                            else:
                                require idx + 1 < arg1.length
                                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                        else:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) < '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                                else:
                                    require idx + 1 < arg1.length
                                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                            else:
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) > '/'
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) < ':'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                                else:
                                    require idx + 1 < arg1.length
                                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                else:
                    require idx < arg1.length
                    require idx < arg1.length
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    else:
                        idx = idx + 1
                        s = 1
                        continue 
        require bool(s) == 1
        _1341 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if not pIDxName_[mem[128]]:
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                else:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
            else:
                if arg2 == msg.sender:
                    if not pIDxName_[mem[128]]:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor7 + 1].field_0 = msg.sender
            if not arg2:
                if not pIDxName_[mem[128]]:
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                else:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1341
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
            else:
                if arg2 == msg.sender:
                    if not pIDxName_[mem[128]]:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1341
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1341
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1341);
    else:
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x7800000000000000000000000000000000000000000000000000000000000000
        require 1 < arg1.length
        require Mask(8, 248, mem[129]) != 0x5800000000000000000000000000000000000000000000000000000000000000
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) <= '@':
                require idx < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                        if s:
                            idx = idx + 1
                            s = s
                            continue 
                        else:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) < '0':
                                idx = idx + 1
                                s = 1
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    idx = idx + 1
                                    s = 1
                                    continue 
                    else:
                        require idx + 1 < arg1.length
                        require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                        if s:
                            idx = idx + 1
                            s = s
                            continue 
                        else:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) < '0':
                                idx = idx + 1
                                s = 1
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '9':
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    idx = idx + 1
                                    s = 1
                                    continue 
                else:
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) <= '`':
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) > '/'
                        require idx < arg1.length
                        require Mask(8, 248, mem[idx + 128]) < ':'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                        else:
                            require idx + 1 < arg1.length
                            require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                    else:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) < '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                            else:
                                require idx + 1 < arg1.length
                                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                        else:
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                            else:
                                require idx + 1 < arg1.length
                                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
            else:
                require idx < arg1.length
                if Mask(8, 248, mem[idx + 128]) >= '[':
                    require idx < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                        else:
                            require idx + 1 < arg1.length
                            require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                            if s:
                                idx = idx + 1
                                s = s
                                continue 
                            else:
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) < '0':
                                    idx = idx + 1
                                    s = 1
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) <= '9':
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        idx = idx + 1
                                        s = 1
                                        continue 
                    else:
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '`':
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) > '/'
                            require idx < arg1.length
                            require Mask(8, 248, mem[idx + 128]) < ':'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                            else:
                                require idx + 1 < arg1.length
                                require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                if s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                else:
                                    require idx < arg1.length
                                    if Mask(8, 248, mem[idx + 128]) < '0':
                                        idx = idx + 1
                                        s = 1
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) <= '9':
                                            idx = idx + 1
                                            s = s
                                            continue 
                                        else:
                                            idx = idx + 1
                                            s = 1
                                            continue 
                        else:
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) < '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                                else:
                                    require idx + 1 < arg1.length
                                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                            else:
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) > '/'
                                require idx < arg1.length
                                require Mask(8, 248, mem[idx + 128]) < ':'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                                else:
                                    require idx + 1 < arg1.length
                                    require Mask(8, 248, mem[idx + 129]) != 0x2000000000000000000000000000000000000000000000000000000000000000
                                    if s:
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    else:
                                        require idx < arg1.length
                                        if Mask(8, 248, mem[idx + 128]) < '0':
                                            idx = idx + 1
                                            s = 1
                                            continue 
                                        else:
                                            require idx < arg1.length
                                            if Mask(8, 248, mem[idx + 128]) <= '9':
                                                idx = idx + 1
                                                s = s
                                                continue 
                                            else:
                                                idx = idx + 1
                                                s = 1
                                                continue 
                else:
                    require idx < arg1.length
                    require idx < arg1.length
                    mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
                    if s:
                        idx = idx + 1
                        s = s
                        continue 
                    else:
                        idx = idx + 1
                        s = 1
                        continue 
        require bool(s) == 1
        _1343 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if not pIDxName_[mem[128]]:
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                else:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
            else:
                if arg2 == msg.sender:
                    if not pIDxName_[mem[128]]:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor7 + 1].field_0 = msg.sender
            if not arg2:
                if not pIDxName_[mem[128]]:
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                else:
                    require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                    playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                        call stor0 with:
                           value eth.balance(this.address) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call stor1 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if arg3 != 1:
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                            else:
                                idx = 1
                                while idx <= gID_:
                                    mem[0] = idx
                                    mem[32] = 3
                                    mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = _1343
                                    mem[mem[64] + 100] = 0
                                    require ext_code.size(games_[idx])
                                    call games_[idx].0x49cc635d with:
                                         gas gas_remaining wei
                                        args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        idx = idx + 1
                                        continue 
                                emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
            else:
                if arg2 == msg.sender:
                    if not pIDxName_[mem[128]]:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                        playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                        pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                        if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                            playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                            plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                            call stor0 with:
                               value eth.balance(this.address) / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call stor1 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if arg3 != 1:
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                else:
                                    idx = 1
                                    while idx <= gID_:
                                        mem[0] = idx
                                        mem[32] = 3
                                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = _1343
                                        mem[mem[64] + 100] = 0
                                        require ext_code.size(games_[idx])
                                        call games_[idx].0x49cc635d with:
                                             gas gas_remaining wei
                                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            idx = idx + 1
                                            continue 
                                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) == playerAddr[uint256(stor8[address(msg.sender)])].field_512:
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                    else:
                        playerAddr[uint256(stor8[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                        if not pIDxName_[mem[128]]:
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                        else:
                            require 1 == bool(stor11[uint256(stor8[address(msg.sender)])][mem[128]])
                            playerAddr[uint256(stor8[address(msg.sender)])].field_256 = mem[128]
                            pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                            if stor11[uint256(stor8[address(msg.sender)])][mem[128]]:
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
                            else:
                                stor11[uint256(stor8[address(msg.sender)])][mem[128]] = 1
                                playerAddr[uint256(stor8[address(msg.sender)])].field_768++
                                plyrNameList_[uint256(stor8[address(msg.sender)])][stor10[uint256(stor8[address(msg.sender)])].field_768 + 1] = mem[128]
                                call stor0 with:
                                   value eth.balance(this.address) / 2 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call stor1 with:
                                       value eth.balance(this.address) / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if arg3 != 1:
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                                    else:
                                        idx = 1
                                        while idx <= gID_:
                                            mem[0] = idx
                                            mem[32] = 3
                                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                                            mem[mem[64] + 36] = msg.sender
                                            mem[mem[64] + 68] = _1343
                                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                                            require ext_code.size(games_[idx])
                                            call games_[idx].0x49cc635d with:
                                                 gas gas_remaining wei
                                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343, uint256(pIDxAddr_[address(arg2)])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                idx = idx + 1
                                                continue 
                                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor8[address(arg2)])].field_0, playerAddr[uint256(stor8[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1343);
}



}
