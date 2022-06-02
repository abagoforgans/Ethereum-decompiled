contract main {




// =====================  Runtime code  =====================


#
#  - registerNameXID(string arg1, uint256 arg2, bool arg3)
#
address stor0;
address teamJustAddress;
mapping of struct stor2;
uint256 nameFee;
mapping of address games_;
mapping of uint256 gameNames_;
mapping of uint256 gameIDs_;
uint256 gID_;
uint256 pID_;
mapping of uint32 pIDxAddr_;
mapping of uint256 pIDxName_;
mapping of struct playerAddr;
mapping of uint8 stor12;
mapping of uint256 plyrNameList_;
address owner;

function teamJust() {
    return teamJustAddress
}

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
    return bool(stor12[arg1][arg2])
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

function setTeam(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only dev!'
    if teamJustAddress:
        revert with 0, 'already set!'
    teamJustAddress = arg1
}

function getPlayerID(address arg1) {
    require gameIDs_[msg.sender]
    if not uint256(pIDxAddr_[address(arg1)]):
        pID_++
        uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
        playerAddr[stor8 + 1].field_0 = arg1
    return uint256(pIDxAddr_[address(arg1)])
}

function isDev(address arg1) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function checkData(bytes32 arg1) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'amsg sender is not a dev'
    return stor2[arg1][this.address].field_0, stor2[arg1][this.address].field_256
}

function deleteAnyProposal(bytes32 arg1) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'amsg sender is not a dev'
    idx = 0
    s = 0
    while idx < stor2[arg1][this.address].field_256:
        stor2[arg1][this.address][2][stor2[arg1][this.address][3][idx].field_0].field_0 = 0
        stor2[arg1][this.address][3][idx].field_0 = 0
        mem[0] = sha3(arg1, this.address)
        mem[32] = 2
        idx = idx + 1
        s = stor2[arg1][this.address][3][idx].field_0
        continue 
    stor2[arg1][this.address].field_0 = 0
    stor2[arg1][this.address].field_256 = 0
}

function checkSignersByAddress(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'amsg sender is not a dev'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSFun checkSigner failed - 0 not allowed'
    if arg3 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    if arg4 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    return stor2[arg1][this.address][3][arg2 - 1].field_0, 
           stor2[arg1][this.address][3][arg3 - 1].field_0,
           stor2[arg1][this.address][3][arg4 - 1].field_0
}

function addMeToGame(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 > gID_:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'silly player, that game doesn't exist yet'
    if not uint256(pIDxAddr_[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey there buddy, you dont even have an account'
    require ext_code.size(games_[arg1])
    call games_[arg1].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(pIDxAddr_[msg.sender]), msg.sender, playerAddr[uint256(stor9[msg.sender])].field_256, playerAddr[uint256(stor9[msg.sender])].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if playerAddr[uint256(stor9[msg.sender])].field_768 > 1:
        idx = 1
        while idx <= playerAddr[uint256(stor9[msg.sender])].field_768:
            mem[0] = idx
            mem[32] = sha3(uint256(pIDxAddr_[msg.sender]), 13)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[msg.sender])
            mem[132] = plyrNameList_[uint256(stor9[msg.sender])][idx]
            require ext_code.size(games_[arg1])
            call games_[arg1].receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[msg.sender]), plyrNameList_[uint256(stor9[msg.sender])][idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function checkSignersByName(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'amsg sender is not a dev'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(teamJustAddress)
    call teamJustAddress.0xaf1c084d with:
         gas gas_remaining wei
        args stor2[arg1][this.address][3][arg2 - 1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(teamJustAddress)
    call teamJustAddress.0xaf1c084d with:
         gas gas_remaining wei
        args stor2[arg1][this.address][3][arg3 - 1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(teamJustAddress)
    call teamJustAddress.0xaf1c084d with:
         gas gas_remaining wei
        args stor2[arg1][this.address][3][arg4 - 1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function addMeToAllGames() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not uint256(pIDxAddr_[msg.sender]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey there buddy, you dont even have an account'
    s = 0
    idx = 1
    while idx <= gID_:
        mem[0] = idx
        mem[32] = 4
        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
        mem[100] = uint256(pIDxAddr_[msg.sender])
        mem[132] = msg.sender
        mem[164] = playerAddr[uint256(stor9[msg.sender])].field_256
        mem[196] = playerAddr[uint256(stor9[msg.sender])].field_512
        require ext_code.size(games_[idx])
        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args uint256(pIDxAddr_[msg.sender]), msg.sender, playerAddr[uint256(stor9[msg.sender])].field_256, playerAddr[uint256(stor9[msg.sender])].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if playerAddr[uint256(stor9[msg.sender])].field_768 <= 1:
            s = s
            idx = idx + 1
            continue 
        s = 1
        while s <= playerAddr[uint256(stor9[msg.sender])].field_768:
            mem[0] = s
            mem[32] = sha3(uint256(pIDxAddr_[msg.sender]), 13)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[msg.sender])
            mem[132] = plyrNameList_[uint256(stor9[msg.sender])][s]
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[msg.sender]), plyrNameList_[uint256(stor9[msg.sender])][s]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        s = playerAddr[uint256(stor9[msg.sender])].field_768 + 1
        idx = idx + 1
        continue 
}

function setRegistrationFee(uint256 arg1) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'amsg sender is not a dev'
    require ext_code.size(teamJustAddress)
    call teamJustAddress.0xfcf2f85f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2['setRegistrationFee'][this.address].field_256:
        stor2['setRegistrationFee'][this.address].field_0 = sha3(call.data[0 len calldata.size])
        stor2['setRegistrationFee'][this.address][2][address(msg.sender)].field_0 = 1
        stor2['setRegistrationFee'][this.address][3][stor2['setRegistrationFee'][this.address].field_256].field_0 = msg.sender
        stor2['setRegistrationFee'][this.address].field_256++
        if ext_call.return_data[0] == stor2['setRegistrationFee'][this.address].field_256 + 1:
            idx = 0
            s = 0
            while idx < stor2['setRegistrationFee'][this.address].field_256:
                stor2['setRegistrationFee'][this.address][2][stor2['setRegistrationFee'][this.address][3][idx].field_0].field_0 = 0
                stor2['setRegistrationFee'][this.address][3][idx].field_0 = 0
                mem[0] = sha3('setRegistrationFee', this.address)
                mem[32] = 2
                idx = idx + 1
                s = stor2['setRegistrationFee'][this.address][3][idx].field_0
                continue 
            stor2['setRegistrationFee'][this.address].field_0 = 0
            stor2['setRegistrationFee'][this.address].field_256 = 0
            nameFee = arg1
    else:
        if sha3(call.data[0 len calldata.size]) == stor2['setRegistrationFee'][this.address].field_0:
            if not stor2['setRegistrationFee'][this.address][2][address(msg.sender)].field_0:
                stor2['setRegistrationFee'][this.address][2][address(msg.sender)].field_0 = 1
                stor2['setRegistrationFee'][this.address][3][stor2['setRegistrationFee'][this.address].field_256].field_0 = msg.sender
                stor2['setRegistrationFee'][this.address].field_256++
            if ext_call.return_data[0] == stor2['setRegistrationFee'][this.address].field_256:
                idx = 0
                s = 0
                while idx < stor2['setRegistrationFee'][this.address].field_256:
                    stor2['setRegistrationFee'][this.address][2][stor2['setRegistrationFee'][this.address][3][idx].field_0].field_0 = 0
                    stor2['setRegistrationFee'][this.address][3][idx].field_0 = 0
                    mem[0] = sha3('setRegistrationFee', this.address)
                    mem[32] = 2
                    idx = idx + 1
                    s = stor2['setRegistrationFee'][this.address][3][idx].field_0
                    continue 
                stor2['setRegistrationFee'][this.address].field_0 = 0
                stor2['setRegistrationFee'][this.address].field_256 = 0
                nameFee = arg1
}

function addGame(address arg1, bytes32 arg2) {
    require ext_code.size(teamJustAddress)
    call teamJustAddress.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'amsg sender is not a dev'
    if gameIDs_[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'derp, that games already been registered'
    require ext_code.size(teamJustAddress)
    call teamJustAddress.0xfcf2f85f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor2['addGame'][this.address].field_256:
        stor2['addGame'][this.address].field_0 = sha3(call.data[0 len calldata.size])
        stor2['addGame'][this.address][2][address(msg.sender)].field_0 = 1
        stor2['addGame'][this.address][3][stor2['addGame'][this.address].field_256].field_0 = msg.sender
        stor2['addGame'][this.address].field_256++
        if ext_call.return_data[0] == stor2['addGame'][this.address].field_256 + 1:
            idx = 0
            s = 0
            while idx < stor2['addGame'][this.address].field_256:
                stor2['addGame'][this.address][2][stor2['addGame'][this.address][3][idx].field_0].field_0 = 0
                stor2['addGame'][this.address][3][idx].field_0 = 0
                mem[0] = sha3('addGame', this.address)
                mem[32] = 2
                idx = idx + 1
                s = stor2['addGame'][this.address][3][idx].field_0
                continue 
            stor2['addGame'][this.address].field_0 = 0
            stor2['addGame'][this.address].field_256 = 0
            gID_++
            gameIDs_[address(arg1)] = gID_ + 1
            gameNames_[address(arg1)] = arg2
            games_[stor7] = arg1
    else:
        if sha3(call.data[0 len calldata.size]) == stor2['addGame'][this.address].field_0:
            if not stor2['addGame'][this.address][2][address(msg.sender)].field_0:
                stor2['addGame'][this.address][2][address(msg.sender)].field_0 = 1
                stor2['addGame'][this.address][3][stor2['addGame'][this.address].field_256].field_0 = msg.sender
                stor2['addGame'][this.address].field_256++
            if ext_call.return_data[0] == stor2['addGame'][this.address].field_256:
                idx = 0
                s = 0
                while idx < stor2['addGame'][this.address].field_256:
                    stor2['addGame'][this.address][2][stor2['addGame'][this.address][3][idx].field_0].field_0 = 0
                    stor2['addGame'][this.address][3][idx].field_0 = 0
                    mem[0] = sha3('addGame', this.address)
                    mem[32] = 2
                    idx = idx + 1
                    s = stor2['addGame'][this.address][3][idx].field_0
                    continue 
                stor2['addGame'][this.address].field_0 = 0
                stor2['addGame'][this.address].field_256 = 0
                gID_++
                gameIDs_[address(arg1)] = gID_ + 1
                gameNames_[address(arg1)] = arg2
                games_[stor7] = arg1
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
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
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
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg1.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
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
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg1.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg1.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    if bool(stor12[uint256(stor9[msg.sender])][mem[128]]) != 1:
        revert with 0, 'umm... thats not a name you own'
    playerAddr[uint256(stor9[msg.sender])].field_256 = mem[128]
}

function registerNameXnameFromDapp(address arg1, bytes32 arg2, bytes32 arg3, bool arg4) payable {
    require gameIDs_[msg.sender]
    if msg.value < nameFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the nme fee'
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if pIDxName_[arg3] != playerAddr[uint256(stor9[address(arg1)])].field_512:
            playerAddr[uint256(stor9[address(arg1)])].field_512 = pIDxName_[arg3]
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = pIDxName_[arg3]
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, pIDxName_[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, pIDxName_[arg3], playerAddr[stor10[arg3]].field_0, playerAddr[stor10[arg3]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, pIDxName_[arg3]
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    playerAddr[stor8 + 1].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if pIDxName_[arg3] != playerAddr[uint256(stor9[address(arg1)])].field_512:
        playerAddr[uint256(stor9[address(arg1)])].field_512 = pIDxName_[arg3]
    if pIDxName_[arg2]:
        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
            revert with 0, 'sorry that names already taken'
    playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor12[uint256(stor9[address(arg1)])][arg2]:
        stor12[uint256(stor9[address(arg1)])][arg2] = 1
        playerAddr[uint256(stor9[address(arg1)])].field_768++
        plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 4
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = pIDxName_[arg3]
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, pIDxName_[arg3]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, pIDxName_[arg3], playerAddr[stor10[arg3]].field_0, playerAddr[stor10[arg3]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, pIDxName_[arg3]
}

function registerNameXaddrFromDapp(address arg1, bytes32 arg2, address arg3, bool arg4) payable {
    require gameIDs_[msg.sender]
    if msg.value < nameFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the nme fee'
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if uint256(pIDxAddr_[address(arg3)]) != playerAddr[uint256(stor9[address(arg1)])].field_512:
            playerAddr[uint256(stor9[address(arg1)])].field_512 = uint256(pIDxAddr_[address(arg3)])
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = uint256(pIDxAddr_[address(arg3)])
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, uint256(pIDxAddr_[address(arg3)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, uint256(pIDxAddr_[address(arg3)]), playerAddr[uint256(stor9[address(arg3)])].field_0, playerAddr[uint256(stor9[address(arg3)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 0, uint256(pIDxAddr_[address(arg3)])
    pID_++
    uint256(pIDxAddr_[address(arg1)]) = pID_ + 1
    playerAddr[stor8 + 1].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if uint256(pIDxAddr_[address(arg3)]) != playerAddr[uint256(stor9[address(arg1)])].field_512:
        playerAddr[uint256(stor9[address(arg1)])].field_512 = uint256(pIDxAddr_[address(arg3)])
    if pIDxName_[arg2]:
        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
            revert with 0, 'sorry that names already taken'
    playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor12[uint256(stor9[address(arg1)])][arg2]:
        stor12[uint256(stor9[address(arg1)])][arg2] = 1
        playerAddr[uint256(stor9[address(arg1)])].field_768++
        plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 4
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = uint256(pIDxAddr_[address(arg3)])
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, uint256(pIDxAddr_[address(arg3)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, uint256(pIDxAddr_[address(arg3)]), playerAddr[uint256(stor9[address(arg3)])].field_0, playerAddr[uint256(stor9[address(arg3)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
    return 1, uint256(pIDxAddr_[address(arg3)])
}

function registerNameXIDFromDapp(address arg1, bytes32 arg2, uint256 arg3, bool arg4) payable {
    require gameIDs_[msg.sender]
    if msg.value < nameFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the nme fee'
    if uint256(pIDxAddr_[address(arg1)]):
        if not arg3:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 != uint256(pIDxAddr_[address(arg1)]):
                if arg4 == 1:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(pIDxAddr_[address(arg1)])
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        if arg3 == playerAddr[uint256(stor9[address(arg1)])].field_512:
            if pIDxName_[arg2]:
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 != uint256(pIDxAddr_[address(arg1)]):
                if arg4 == 1:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[100] = uint256(pIDxAddr_[address(arg1)])
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                    revert with 0, 'sorry that names already taken'
            playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
            pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
            if not stor12[uint256(stor9[address(arg1)])][arg2]:
                stor12[uint256(stor9[address(arg1)])][arg2] = 1
                playerAddr[uint256(stor9[address(arg1)])].field_768++
                plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
            return 0
        playerAddr[uint256(stor9[address(arg1)])].field_512 = arg3
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = arg3
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
    playerAddr[stor8 + 1].field_0 = arg1
    if not arg3:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 != uint256(pIDxAddr_[address(arg1)]):
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    if arg3 == playerAddr[uint256(stor9[address(arg1)])].field_512:
        if pIDxName_[arg2]:
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 != uint256(pIDxAddr_[address(arg1)]):
            if arg4 == 1:
                idx = 1
                while idx <= gID_:
                    mem[0] = idx
                    mem[32] = 4
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = uint256(pIDxAddr_[address(arg1)])
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    require ext_code.size(games_[idx])
                    call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
            if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
                revert with 0, 'sorry that names already taken'
        playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
        pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
        if not stor12[uint256(stor9[address(arg1)])][arg2]:
            stor12[uint256(stor9[address(arg1)])][arg2] = 1
            playerAddr[uint256(stor9[address(arg1)])].field_768++
            plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= gID_:
                mem[0] = idx
                mem[32] = 4
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = uint256(pIDxAddr_[address(arg1)])
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(games_[idx])
                call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args uint256(pIDxAddr_[address(arg1)]), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(arg1)]), arg1, arg2);
        return 1, 0
    playerAddr[uint256(stor9[address(arg1)])].field_512 = arg3
    if pIDxName_[arg2]:
        if bool(stor12[uint256(stor9[address(arg1)])][arg2]) != 1:
            revert with 0, 'sorry that names already taken'
    playerAddr[uint256(stor9[address(arg1)])].field_256 = arg2
    pIDxName_[arg2] = uint256(pIDxAddr_[address(arg1)])
    if not stor12[uint256(stor9[address(arg1)])][arg2]:
        stor12[uint256(stor9[address(arg1)])][arg2] = 1
        playerAddr[uint256(stor9[address(arg1)])].field_768++
        plyrNameList_[uint256(stor9[address(arg1)])][stor11[uint256(stor9[address(arg1)])].field_768 + 1] = arg2
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 == 1:
        idx = 1
        while idx <= gID_:
            mem[0] = idx
            mem[32] = 4
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = uint256(pIDxAddr_[address(arg1)])
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = arg3
            require ext_code.size(games_[idx])
            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
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
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < nameFee:
        revert with 0, 'umm.....  you have to pay the nme fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
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
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1399 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
    else:
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
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
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1403 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
            else:
                if mem[128] == arg2:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
                else:
                    if pIDxName_[arg2] != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = pIDxName_[arg2]
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = pIDxName_[arg2]
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, pIDxName_[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, pIDxName_[arg2], playerAddr[stor10[arg2]].field_0, playerAddr[stor10[arg2]].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
}

function registerNameXaddr(string arg1, address arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < nameFee:
        revert with 0, 'umm.....  you have to pay the nme fee'
    if arg1.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg1.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg1.length - 1 < arg1.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg1.length + 127]):
        revert with 0, 'string cannot start or end with space'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
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
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1399 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, uint256(pIDxAddr_[address(arg2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399, uint256(pIDxAddr_[address(arg2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1399);
    else:
        require 1 < arg1.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg1.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg1.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg1.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg1.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                        else:
                            if Mask(8, 248, mem[idx + 128]) >= '{':
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) <= '/':
                                    revert with 0, 'string contains invalid characters'
                                require idx < arg1.length
                                if Mask(8, 248, mem[idx + 128]) >= ':':
                                    revert with 0, 'string contains invalid characters'
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                        require idx + 1 < arg1.length
                        if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                            revert with 0, 'string cannot contain consecutive spaces'
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
        if bool(s) != 1:
            revert with 0, 'string cannot be only numbers'
        _1403 = mem[128]
        if uint256(pIDxAddr_[address(msg.sender)]):
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, uint256(pIDxAddr_[address(arg2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
        else:
            pID_++
            uint256(pIDxAddr_[address(msg.sender)]) = pID_ + 1
            playerAddr[stor8 + 1].field_0 = msg.sender
            if not arg2:
                if pIDxName_[mem[128]]:
                    if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                        revert with 0, 'sorry that names already taken'
                playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                    stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                    playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                    plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                call stor0 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= gID_:
                        mem[0] = idx
                        mem[32] = 4
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(games_[idx])
                        call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
            else:
                if arg2 == msg.sender:
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, playerAddr[0].field_0, playerAddr[0].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
                else:
                    if uint256(pIDxAddr_[address(arg2)]) != playerAddr[uint256(stor9[address(msg.sender)])].field_512:
                        playerAddr[uint256(stor9[address(msg.sender)])].field_512 = uint256(pIDxAddr_[address(arg2)])
                    if pIDxName_[mem[128]]:
                        if bool(stor12[uint256(stor9[address(msg.sender)])][mem[128]]) != 1:
                            revert with 0, 'sorry that names already taken'
                    playerAddr[uint256(stor9[address(msg.sender)])].field_256 = mem[128]
                    pIDxName_[mem[128]] = uint256(pIDxAddr_[address(msg.sender)])
                    if not stor12[uint256(stor9[address(msg.sender)])][mem[128]]:
                        stor12[uint256(stor9[address(msg.sender)])][mem[128]] = 1
                        playerAddr[uint256(stor9[address(msg.sender)])].field_768++
                        plyrNameList_[uint256(stor9[address(msg.sender)])][stor11[uint256(stor9[address(msg.sender)])].field_768 + 1] = mem[128]
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= gID_:
                            mem[0] = idx
                            mem[32] = 4
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(pIDxAddr_[address(msg.sender)])
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = uint256(pIDxAddr_[address(arg2)])
                            require ext_code.size(games_[idx])
                            call games_[idx].receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403, uint256(pIDxAddr_[address(arg2)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, uint256(pIDxAddr_[address(arg2)]), playerAddr[uint256(stor9[address(arg2)])].field_0, playerAddr[uint256(stor9[address(arg2)])].field_256, msg.value, block.timestamp, uint256(pIDxAddr_[address(msg.sender)]), msg.sender, _1403);
}



}
