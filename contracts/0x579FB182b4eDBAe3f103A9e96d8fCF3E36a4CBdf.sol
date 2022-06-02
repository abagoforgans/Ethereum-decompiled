contract main {




// =====================  Runtime code  =====================


function pIDxAddr_(address arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 7)))
}

function registrationFee_() {
    return ('storage', 256, 0, 1)
}

function getNameFee() {
    return ('storage', 256, 0, 1)
}

function plyrNames_(uint256 arg1, bytes32 arg2) {
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 10))))))
}

function gameNames_(address arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 3)))
}

function pIDxName_(bytes32 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 8)))
}

function pID_() {
    return ('storage', 256, 0, 6)
}

function getPlayerAddr(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 9)))
}

function getPlayerName(uint256 arg1) {
    return ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 9))))
}

function plyrNameList_(uint256 arg1, uint256 arg2) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 11)))))
}

function gID_() {
    return ('storage', 256, 0, 5)
}

function getPlayerCount() {
    return ('storage', 256, 0, 6)
}

function games_(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2)))
}

function gameIDs_(address arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 4)))
}

function plyr_(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 9))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 9)))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 9)))),
           ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 9))))
}

function getPlayerLAff(uint256 arg1) {
    return ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 9))))
}

function _fallback() payable {
    revert
}

function getPlayerID(address arg1) {
    require ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 4)))
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        uint256(stor[6]) = ('storage', 256, 0, 6) + 1
        uint256(stor[sha3(address(arg1), 7)]) = ('storage', 256, 0, 6) + 1
        address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = arg1
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
}

function checkData(bytes32 arg1) {
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    return ('storage', 256, 0, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))))
}

function deleteAnyProposal(bytes32 arg1) {
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    idx = 0
    s = 0
    while idx < ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0)))):
        uint8(stor[sha3(('storage', 160, 0, ('sha3', ('data', ('var', 0), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0)))))), sha3(sha3(arg1, this.address), 0) + 2)]) = 0
        address(stor[sha3(idx, sha3(sha3(arg1, this.address), 0) + 3)]) = 0
        mem[0] = sha3(arg1, this.address)
        mem[32] = 0
        idx = idx + 1
        s = ('storage', 160, 0, ('sha3', ('data', ('var', 0), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))))))
        continue 
    uint256(stor[sha3(sha3(arg1, this.address), 0)]) = 0
    uint256(stor[sha3(sha3(arg1, this.address), 0) + 1]) = 0
}

function checkSignersByAddress(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSFun checkSigner failed - 0 not allowed'
    if arg3 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    if arg4 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    return ('storage', 160, 0, ('sha3', ('data', ('add', -1, ('param', 'arg2')), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0)))))), 
           ('storage', 160, 0, ('sha3', ('data', ('add', -1, ('param', 'arg3')), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0)))))),
           ('storage', 160, 0, ('sha3', ('data', ('add', -1, ('param', 'arg4')), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))))))
}

function checkSignersByName(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.0xaf1c084d with:
         gas gas_remaining wei
        args ('storage', 160, 0, ('sha3', ('data', ('add', -1, ('param', 'arg2')), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.0xaf1c084d with:
         gas gas_remaining wei
        args ('storage', 160, 0, ('sha3', ('data', ('add', -1, ('param', 'arg3')), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.0xaf1c084d with:
         gas gas_remaining wei
        args ('storage', 160, 0, ('sha3', ('data', ('add', -1, ('param', 'arg4')), ('add', 3, ('sha3', ('data', ('sha3', ('data', ('param', 'arg1'), 'address')), 0))))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function addMeToGame(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 > ('storage', 256, 0, 5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'silly player, that game doesn't exist yet'
    if not ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey there buddy, you dont even have an account'
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))))
    call ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, ('storage', 32, 0, ('sha3', ('data', 'msg.sender', 7))), msg.sender, ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))), ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9))))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))) > 1:
        idx = 1
        while idx <= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))):
            mem[0] = idx
            mem[32] = sha3(('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 11)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7)))
            mem[132] = ('storage', 256, 0, ('sha3', ('data', ('var', 0), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 11)))))
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))))
            call ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))).receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), ('storage', 256, 0, ('sha3', ('data', ('var', 0), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 11)))))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_853a6a29(?) {
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        uint256(stor[6]) = ('storage', 256, 0, 6) + 1
        uint256(stor[sha3(address(arg1), 7)]) = ('storage', 256, 0, 6) + 1
        address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = arg1
    if arg2:
        if arg2 != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
            if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = arg2
    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))):
        if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg3'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
            revert with 0, 'sorry that names already taken'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg3
    uint256(stor[sha3(arg3, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
    if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg3'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
        uint8(stor[sha3(arg3, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg3
}

function addMeToAllGames() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey there buddy, you dont even have an account'
    s = 0
    idx = 1
    while idx <= ('storage', 256, 0, 5):
        mem[0] = idx
        mem[32] = 2
        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
        mem[100] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7)))
        mem[132] = msg.sender
        mem[164] = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9))))
        mem[196] = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9))))
        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), msg.sender, ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))), ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9))))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))) <= 1:
            s = s
            idx = idx + 1
            continue 
        s = 1
        while s <= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))):
            mem[0] = s
            mem[32] = sha3(('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 11)
            mem[96] = 0x8f7140ea00000000000000000000000000000000000000000000000000000000
            mem[100] = ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7)))
            mem[132] = ('storage', 256, 0, ('sha3', ('data', ('var', 1), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 11)))))
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerNameList(uint256 arg1, bytes32 arg2) with:
                 gas gas_remaining wei
                args ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), ('storage', 256, 0, ('sha3', ('data', ('var', 1), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 11)))))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = s + 1
            continue 
        s = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9)))) + 1
        idx = idx + 1
        continue 
}

function setRegistrationFee(uint256 arg1) {
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    require ext_code.size(0xbd635c3416c898dede08bcc980ec4d46cb475)
    call 0x000bd635c3416c898dede08bcc980ec4d46cb475.0xfcf2f85f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))):
        uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0)]) = sha3(call.data[0 len calldata.size])
        uint8(stor[sha3(address(msg.sender), sha3(sha3('setRegistrationFee', this.address), 0) + 2)]) = 1
        address(stor[sha3(('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))), sha3(sha3('setRegistrationFee', this.address), 0) + 3)]) = msg.sender
        uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0) + 1]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))) + 1
        if ext_call.return_data[0] == ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))) + 1:
            idx = 0
            s = 0
            while idx < ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))):
                uint8(stor[sha3(('storage', 160, 0, ('sha3', ('data', ('var', 0), ('add', 3, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))))), sha3(sha3('setRegistrationFee', this.address), 0) + 2)]) = 0
                address(stor[sha3(idx, sha3(sha3('setRegistrationFee', this.address), 0) + 3)]) = 0
                mem[0] = sha3('setRegistrationFee', this.address)
                mem[32] = 0
                idx = idx + 1
                s = ('storage', 160, 0, ('sha3', ('data', ('var', 0), ('add', 3, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0))))))
                continue 
            uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0)]) = 0
            uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0) + 1]) = 0
            uint256(stor[1]) = arg1
    else:
        if sha3(call.data[0 len calldata.size]) == ('storage', 256, 0, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0))):
            if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), ('add', 2, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))))):
                uint8(stor[sha3(address(msg.sender), sha3(sha3('setRegistrationFee', this.address), 0) + 2)]) = 1
                address(stor[sha3(('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))), sha3(sha3('setRegistrationFee', this.address), 0) + 3)]) = msg.sender
                uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0) + 1]) = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))) + 1
            if ext_call.return_data[0] == ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))):
                idx = 0
                s = 0
                while idx < ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))):
                    uint8(stor[sha3(('storage', 160, 0, ('sha3', ('data', ('var', 0), ('add', 3, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0)))))), sha3(sha3('setRegistrationFee', this.address), 0) + 2)]) = 0
                    address(stor[sha3(idx, sha3(sha3('setRegistrationFee', this.address), 0) + 3)]) = 0
                    mem[0] = sha3('setRegistrationFee', this.address)
                    mem[32] = 0
                    idx = idx + 1
                    s = ('storage', 160, 0, ('sha3', ('data', ('var', 0), ('add', 3, ('sha3', ('data', ('sha3', ('data', "'setRegistrationFee'", 'address')), 0))))))
                    continue 
                uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0)]) = 0
                uint256(stor[sha3(sha3('setRegistrationFee', this.address), 0) + 1]) = 0
                uint256(stor[1]) = arg1
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
    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
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
    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 10)))))) != 1:
        revert with 0, 'umm... thats not a name you own'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', 'msg.sender', 7))), 9) + 1]) = mem[128]
}

function addGame(address arg1, string arg2) {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 132] = msg.sender
    require ext_code.size(0x610000000000000000000000000bd635c3416c898dede08bcc980ec4d46cb475)
    call ????????????????????????????????????????.isDev(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xc66d73672073656e646572206973206e6f742061206465760000000000000000
    mem[0] = arg1
    mem[32] = 4
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        revert with 0, 'derp, that games already been registered'
    uint256(stor[5]) = ('storage', 256, 0, 5) + 1
    if arg2.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg2.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg2.length - 1 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(8 * arg2.length + -ceil32(arg2.length) + 31) + 248, mem[arg2.length + 127 len ceil32(arg2.length) + -arg2.length + 1]) << 8 * arg2.length + -ceil32(arg2.length) + 31:
        revert with 0, 'string cannot start or end with space'
    require 0 < arg2.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg2.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg2.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
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
                    if Mask(8, 248, mem[idx + 128]) <= '/':
                        revert with 0, 'string contains invalid characters'
                    require idx < arg2.length
                    if Mask(8, 248, mem[idx + 128]) >= ':':
                        revert with 0, 'string contains invalid characters'
                else:
                    if Mask(8, 248, mem[idx + 128]) >= '{':
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
            if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                require idx + 1 < arg2.length
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                    revert with 0, 'string cannot contain consecutive spaces'
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
                        if Mask(8, 248, mem[idx + 128]) <= '/':
                            revert with 0, 'string contains invalid characters'
                        require idx < arg2.length
                        if Mask(8, 248, mem[idx + 128]) >= ':':
                            revert with 0, 'string contains invalid characters'
                    else:
                        if Mask(8, 248, mem[idx + 128]) >= '{':
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) <= '/':
                                revert with 0, 'string contains invalid characters'
                            require idx < arg2.length
                            if Mask(8, 248, mem[idx + 128]) >= ':':
                                revert with 0, 'string contains invalid characters'
                if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 128]):
                    require idx + 1 < arg2.length
                    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[idx + 129]):
                        revert with 0, 'string cannot contain consecutive spaces'
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
    if bool(s) != 1:
        revert with 0, 'string cannot be only numbers'
    uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, 5)
    uint256(stor[sha3(address(arg1), 3)]) = mem[128]
    address(stor[sha3(('storage', 256, 0, 5), 2)]) = arg1
    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, 5), 2))))
    call ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, 5), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 1, ('storage', 160, 0, 66448226337682112469901396875338497574368918010328814248214166510316316219958), ('storage', 256, 0, 66448226337682112469901396875338497574368918010328814248214166510316316219959), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function registerNameXnameFromDapp(address arg1, bytes32 arg2, bytes32 arg3, bool arg4) payable {
    require ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 4)))
    if msg.value < ('storage', 256, 0, 1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the nme fee'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        if not arg3:
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        if arg2 == arg3:
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 0, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
    uint256(stor[6]) = ('storage', 256, 0, 6) + 1
    uint256(stor[sha3(address(arg1), 7)]) = ('storage', 256, 0, 6) + 1
    address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = arg1
    if not arg3:
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    if arg2 == arg3:
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
        if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
            revert with 0, 'sorry that names already taken'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
    uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
    if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
        uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 == 1:
        idx = 1
        while idx <= ('storage', 256, 0, 5):
            mem[0] = idx
            mem[32] = 2
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
    return 1, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 8)))
}

function registerNameXaddrFromDapp(address arg1, bytes32 arg2, address arg3, bool arg4) payable {
    require ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 4)))
    if msg.value < ('storage', 256, 0, 1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the nme fee'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        if not arg3:
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        if arg3 == arg1:
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 0, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
    uint256(stor[6]) = ('storage', 256, 0, 6) + 1
    uint256(stor[sha3(address(arg1), 7)]) = ('storage', 256, 0, 6) + 1
    address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = arg1
    if not arg3:
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    if arg3 == arg1:
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
        if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
            revert with 0, 'sorry that names already taken'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
    uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
    if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
        uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 == 1:
        idx = 1
        while idx <= ('storage', 256, 0, 5):
            mem[0] = idx
            mem[32] = 2
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
    return 1, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg3')), 7)))
}

function registerNameXIDFromDapp(address arg1, bytes32 arg2, uint256 arg3, bool arg4) payable {
    require ('storage', 256, 0, ('sha3', ('data', 'msg.sender', 4)))
    if msg.value < ('storage', 256, 0, 1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'umm.....  you have to pay the nme fee'
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        if not arg3:
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                if arg4 == 1:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                emit onNewName(0, arg3, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg3'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
                return 0, arg3
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        if arg3 == ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg3 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
                if arg4 == 1:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                        mem[132] = arg1
                        mem[164] = arg2
                        mem[196] = arg3
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                emit onNewName(0, arg3, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg3'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
                return 0, arg3
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        if arg3 == ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
            if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
                if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                    revert with 0, 'sorry that names already taken'
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
            uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
                uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
                uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
            call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = 0
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 0
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = arg3
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = arg3
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(0, arg3, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg3'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 0, arg3
    uint256(stor[6]) = ('storage', 256, 0, 6) + 1
    uint256(stor[sha3(address(arg1), 7)]) = ('storage', 256, 0, 6) + 1
    address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = arg1
    if not arg3:
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(1, arg3, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg3'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 1, arg3
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    if arg3 == ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))):
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg3 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
            if arg4 == 1:
                idx = 1
                while idx <= ('storage', 256, 0, 5):
                    mem[0] = idx
                    mem[32] = 2
                    mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                    mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                    mem[132] = arg1
                    mem[164] = arg2
                    mem[196] = arg3
                    require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                    call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            emit onNewName(1, arg3, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg3'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
            return 1, arg3
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    if arg3 == ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))):
        if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
            if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
                revert with 0, 'sorry that names already taken'
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
        uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
        if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
            uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg4 == 1:
            idx = 1
            while idx <= ('storage', 256, 0, 5):
                mem[0] = idx
                mem[32] = 2
                mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
                mem[132] = arg1
                mem[164] = arg2
                mem[196] = 0
                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
        return 1, 0
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 2]) = arg3
    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))):
        if bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10)))))) != 1:
            revert with 0, 'sorry that names already taken'
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 1]) = arg2
    uint256(stor[sha3(arg2, 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
    if not ('storage', 8, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))))):
        uint8(stor[sha3(arg2, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 10))]) = 1
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1
        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), 11))]) = arg2
    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 == 1:
        idx = 1
        while idx <= ('storage', 256, 0, 5):
            mem[0] = idx
            mem[32] = 2
            mem[96] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
            mem[100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7)))
            mem[132] = arg1
            mem[164] = arg2
            mem[196] = arg3
            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), address(arg1), arg2, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit onNewName(1, arg3, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg3'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 7))), arg1, arg2);
    return 1, arg3
}

function registerNameXname(string arg1, bytes32 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < ('storage', 256, 0, 1):
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
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
            else:
                if mem[128] == arg2:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
        else:
            uint256(stor[6]) = ('storage', 256, 0, 6) + 1
            uint256(stor[sha3(address(msg.sender), 7)]) = ('storage', 256, 0, 6) + 1
            address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = msg.sender
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
            else:
                if mem[128] == arg2:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
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
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
            else:
                if mem[128] == arg2:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
        else:
            uint256(stor[6]) = ('storage', 256, 0, 6) + 1
            uint256(stor[sha3(address(msg.sender), 7)]) = ('storage', 256, 0, 6) + 1
            address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = msg.sender
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
            else:
                if mem[128] == arg2:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), 8))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
}

function registerNameXaddr(string arg1, address arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < ('storage', 256, 0, 1):
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
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
            else:
                if arg2 == msg.sender:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
        else:
            uint256(stor[6]) = ('storage', 256, 0, 6) + 1
            uint256(stor[sha3(address(msg.sender), 7)]) = ('storage', 256, 0, 6) + 1
            address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = msg.sender
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1399
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
            else:
                if arg2 == msg.sender:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1399
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1399);
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
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
            else:
                if arg2 == msg.sender:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
        else:
            uint256(stor[6]) = ('storage', 256, 0, 6) + 1
            uint256(stor[sha3(address(msg.sender), 7)]) = ('storage', 256, 0, 6) + 1
            address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = msg.sender
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != 1:
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                else:
                    idx = 1
                    while idx <= ('storage', 256, 0, 5):
                        mem[0] = idx
                        mem[32] = 2
                        mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1403
                        mem[mem[64] + 100] = 0
                        require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                        call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                    emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
            else:
                if arg2 == msg.sender:
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
                else:
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))) != ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != 1:
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1403
                            mem[mem[64] + 100] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7)))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 7))), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1403);
}

function registerNameXID(string arg1, uint256 arg2, bool arg3) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < ('storage', 256, 0, 1):
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
        _1899 = mem[128]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                    if arg3 != 1:
                        emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1899
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                else:
                    if arg3 != 1:
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1899
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
            else:
                if arg2 == ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if arg3 != 1:
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                    else:
                        if arg3 != 1:
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                else:
                    if arg2 == ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                    else:
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = arg2
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
        else:
            uint256(stor[6]) = ('storage', 256, 0, 6) + 1
            uint256(stor[sha3(address(msg.sender), 7)]) = ('storage', 256, 0, 6) + 1
            address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = msg.sender
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                    if arg3 != 1:
                        emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1899
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                else:
                    if arg3 != 1:
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1899
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
            else:
                if arg2 == ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if arg3 != 1:
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                    else:
                        if arg3 != 1:
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                else:
                    if arg2 == ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
                    else:
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = arg2
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1899
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1899);
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
        _1903 = mem[128]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                    if arg3 != 1:
                        emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1903
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                else:
                    if arg3 != 1:
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1903
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
            else:
                if arg2 == ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if arg3 != 1:
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                    else:
                        if arg3 != 1:
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                else:
                    if arg2 == ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                    else:
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = arg2
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(0, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
        else:
            uint256(stor[6]) = ('storage', 256, 0, 6) + 1
            uint256(stor[sha3(address(msg.sender), 7)]) = ('storage', 256, 0, 6) + 1
            address(stor[sha3(('storage', 256, 0, 6) + 1, 9)]) = msg.sender
            if not arg2:
                if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                    if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                        revert with 0, 'sorry that names already taken'
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                    uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                    uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                    if arg3 != 1:
                        emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1903
                            mem[mem[64] + 100] = arg2
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                else:
                    if arg3 != 1:
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                    else:
                        idx = 1
                        while idx <= ('storage', 256, 0, 5):
                            mem[0] = idx
                            mem[32] = 2
                            mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _1903
                            mem[mem[64] + 100] = 0
                            require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                            call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                        emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
            else:
                if arg2 == ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                        if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                            revert with 0, 'sorry that names already taken'
                    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                    uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                    if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                        uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                        uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                    call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 != ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if arg3 != 1:
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                    else:
                        if arg3 != 1:
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                else:
                    if arg2 == ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = 0
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, 0, ('storage', 160, 0, ('sha3', ('data', 0, 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', 0, 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
                    else:
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 2]) = arg2
                        if ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), 8))):
                            if bool(('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10)))))) != 1:
                                revert with 0, 'sorry that names already taken'
                        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 1]) = mem[128]
                        uint256(stor[sha3(mem[128], 8)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                        if not ('storage', 8, 0, ('sha3', ('data', ('mem', ('range', 128, 32)), ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))))):
                            uint8(stor[sha3(mem[128], sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 10))]) = 1
                            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1
                            uint256(stor[sha3(('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 9)))) + 1, sha3(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), 11))]) = mem[128]
                        call 0x9ed74f3b9bc08943be81f9afd25843520aa53d6d with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg3 != 1:
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, mem[128]);
                        else:
                            idx = 1
                            while idx <= ('storage', 256, 0, 5):
                                mem[0] = idx
                                mem[32] = 2
                                mem[mem[64]] = 0x49cc635d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7)))
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = _1903
                                mem[mem[64] + 100] = arg2
                                require ext_code.size(('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))))
                                call ('storage', 160, 0, ('sha3', ('data', ('var', 0), 2))).receivePlayerInfo(uint256 arg1, address arg2, bytes32 arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                            emit onNewName(1, arg2, ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 9))), ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg2'), 9)))), msg.value, block.timestamp, ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 7))), msg.sender, _1903);
}



}
