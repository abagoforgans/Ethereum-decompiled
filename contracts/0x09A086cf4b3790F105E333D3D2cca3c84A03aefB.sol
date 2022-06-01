contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct checkData;
mapping of struct adminName;
uint256 adminCount;
uint256 devCount;
uint256 requiredSignatures;
uint256 requiredDevSignatures;

function isDev(address arg1) {
    return bool(adminName[address(arg1)].field_8)
}

function isAdmin(address arg1) {
    return bool(adminName[address(arg1)].field_0)
}

function adminCount() {
    return adminCount
}

function requiredSignatures() {
    return requiredSignatures
}

function checkData(bytes32 arg1) {
    if bool(adminName[msg.sender].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onlyAdmins failed - msg.sender is not an admin'
    return checkData[arg1][this.address].field_0, checkData[arg1][this.address].field_256
}

function adminName(address arg1) {
    return adminName[address(arg1)].field_256
}

function devCount() {
    return devCount
}

function requiredDevSignatures() {
    return requiredDevSignatures
}

function setup(address arg1) {
    if bool(adminName[msg.sender].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eonlyDevs failed - msg.sender is not a dev'
    require not stor0
    stor0 = arg1
}

function _fallback() payable {
    require ext_code.size(stor0)
    call stor0.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deleteAnyProposal(bytes32 arg1) {
    if bool(adminName[msg.sender].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eonlyDevs failed - msg.sender is not a dev'
    idx = 0
    s = 0
    while idx < checkData[arg1][this.address].field_256:
        checkData[arg1][this.address][2][checkData[arg1][this.address][3][idx].field_0].field_0 = 0
        checkData[arg1][this.address][3][idx].field_0 = 0
        mem[0] = sha3(arg1, this.address)
        mem[32] = 1
        idx = idx + 1
        s = checkData[arg1][this.address][3][idx].field_0
        continue 
    checkData[arg1][this.address].field_0 = 0
    checkData[arg1][this.address].field_256 = 0
}

function checkSignersByName(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if bool(adminName[msg.sender].field_0) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onlyAdmins failed - msg.sender is not an admin'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(this.address)
    call this.address.0xaf1c084d with:
         gas gas_remaining wei
        args checkData[arg1][this.address][3][arg2 - 1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(this.address)
    call this.address.0xaf1c084d with:
         gas gas_remaining wei
        args checkData[arg1][this.address][3][arg3 - 1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 <= 0:
        revert with 0, 'MSFun checkSigner failed - 0 not allowed'
    require ext_code.size(this.address)
    call this.address.0xaf1c084d with:
         gas gas_remaining wei
        args checkData[arg1][this.address][3][arg4 - 1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function addAdmin(address arg1, bytes32 arg2, bool arg3) {
    if bool(adminName[msg.sender].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eonlyDevs failed - msg.sender is not a dev'
    if not checkData['addAdmin'][this.address].field_256:
        checkData['addAdmin'][this.address].field_0 = sha3(call.data[0 len calldata.size])
        checkData['addAdmin'][this.address][2][address(msg.sender)].field_0 = 1
        checkData['addAdmin'][this.address][3][checkData['addAdmin'][this.address].field_256].field_0 = msg.sender
        checkData['addAdmin'][this.address].field_256++
        if requiredDevSignatures == checkData['addAdmin'][this.address].field_256 + 1:
            idx = 0
            s = 0
            while idx < checkData['addAdmin'][this.address].field_256:
                checkData['addAdmin'][this.address][2][checkData['addAdmin'][this.address][3][idx].field_0].field_0 = 0
                checkData['addAdmin'][this.address][3][idx].field_0 = 0
                mem[0] = sha3('addAdmin', this.address)
                mem[32] = 1
                idx = idx + 1
                s = checkData['addAdmin'][this.address][3][idx].field_0
                continue 
            checkData['addAdmin'][this.address].field_0 = 0
            checkData['addAdmin'][this.address].field_256 = 0
            if not adminName[address(arg1)].field_0:
                adminName[address(arg1)].field_0 = 1
                adminCount++
                requiredSignatures++
            if arg3 == 1:
                adminName[address(arg1)].field_8 = Mask(248, 0, arg3)
                devCount++
                requiredDevSignatures++
    else:
        if sha3(call.data[0 len calldata.size]) == checkData['addAdmin'][this.address].field_0:
            if not checkData['addAdmin'][this.address][2][address(msg.sender)].field_0:
                checkData['addAdmin'][this.address][2][address(msg.sender)].field_0 = 1
                checkData['addAdmin'][this.address][3][checkData['addAdmin'][this.address].field_256].field_0 = msg.sender
                checkData['addAdmin'][this.address].field_256++
            if requiredDevSignatures == checkData['addAdmin'][this.address].field_256:
                idx = 0
                s = 0
                while idx < checkData['addAdmin'][this.address].field_256:
                    checkData['addAdmin'][this.address][2][checkData['addAdmin'][this.address][3][idx].field_0].field_0 = 0
                    checkData['addAdmin'][this.address][3][idx].field_0 = 0
                    mem[0] = sha3('addAdmin', this.address)
                    mem[32] = 1
                    idx = idx + 1
                    s = checkData['addAdmin'][this.address][3][idx].field_0
                    continue 
                checkData['addAdmin'][this.address].field_0 = 0
                checkData['addAdmin'][this.address].field_256 = 0
                if not adminName[address(arg1)].field_0:
                    adminName[address(arg1)].field_0 = 1
                    adminCount++
                    requiredSignatures++
                if arg3 == 1:
                    adminName[address(arg1)].field_8 = Mask(248, 0, arg3)
                    devCount++
                    requiredDevSignatures++
    adminName[address(arg1)].field_256 = arg2
}

function changeRequiredSignatures(uint256 arg1) {
    if bool(adminName[msg.sender].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eonlyDevs failed - msg.sender is not a dev'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'changeRequiredSignatures failed - must be between 1 and number of admins'
    if arg1 > adminCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'changeRequiredSignatures failed - must be between 1 and number of admins'
    if not checkData['changeRequiredSignatures'][this.address].field_256:
        checkData['changeRequiredSignatures'][this.address].field_0 = sha3(call.data[0 len calldata.size])
        checkData['changeRequiredSignatures'][this.address][2][address(msg.sender)].field_0 = 1
        checkData['changeRequiredSignatures'][this.address][3][checkData['changeRequiredSignatures'][this.address].field_256].field_0 = msg.sender
        checkData['changeRequiredSignatures'][this.address].field_256++
        if requiredDevSignatures == checkData['changeRequiredSignatures'][this.address].field_256 + 1:
            idx = 0
            s = 0
            while idx < checkData['changeRequiredSignatures'][this.address].field_256:
                checkData['changeRequiredSignatures'][this.address][2][checkData['changeRequiredSignatures'][this.address][3][idx].field_0].field_0 = 0
                checkData['changeRequiredSignatures'][this.address][3][idx].field_0 = 0
                mem[0] = sha3('changeRequiredSignatures', this.address)
                mem[32] = 1
                idx = idx + 1
                s = checkData['changeRequiredSignatures'][this.address][3][idx].field_0
                continue 
            checkData['changeRequiredSignatures'][this.address].field_0 = 0
            checkData['changeRequiredSignatures'][this.address].field_256 = 0
            requiredSignatures = arg1
    else:
        if sha3(call.data[0 len calldata.size]) == checkData['changeRequiredSignatures'][this.address].field_0:
            if not checkData['changeRequiredSignatures'][this.address][2][address(msg.sender)].field_0:
                checkData['changeRequiredSignatures'][this.address][2][address(msg.sender)].field_0 = 1
                checkData['changeRequiredSignatures'][this.address][3][checkData['changeRequiredSignatures'][this.address].field_256].field_0 = msg.sender
                checkData['changeRequiredSignatures'][this.address].field_256++
            if requiredDevSignatures == checkData['changeRequiredSignatures'][this.address].field_256:
                idx = 0
                s = 0
                while idx < checkData['changeRequiredSignatures'][this.address].field_256:
                    checkData['changeRequiredSignatures'][this.address][2][checkData['changeRequiredSignatures'][this.address][3][idx].field_0].field_0 = 0
                    checkData['changeRequiredSignatures'][this.address][3][idx].field_0 = 0
                    mem[0] = sha3('changeRequiredSignatures', this.address)
                    mem[32] = 1
                    idx = idx + 1
                    s = checkData['changeRequiredSignatures'][this.address][3][idx].field_0
                    continue 
                checkData['changeRequiredSignatures'][this.address].field_0 = 0
                checkData['changeRequiredSignatures'][this.address].field_256 = 0
                requiredSignatures = arg1
}

function changeRequiredDevSignatures(uint256 arg1) {
    if bool(adminName[msg.sender].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eonlyDevs failed - msg.sender is not a dev'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'changeRequiredDevSignatures failed - must be between 1 and number of devs'
    if arg1 > devCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'changeRequiredDevSignatures failed - must be between 1 and number of devs'
    if not checkData['changeRequiredDevSignatures'][this.address].field_256:
        checkData['changeRequiredDevSignatures'][this.address].field_0 = sha3(call.data[0 len calldata.size])
        checkData['changeRequiredDevSignatures'][this.address][2][address(msg.sender)].field_0 = 1
        checkData['changeRequiredDevSignatures'][this.address][3][checkData['changeRequiredDevSignatures'][this.address].field_256].field_0 = msg.sender
        checkData['changeRequiredDevSignatures'][this.address].field_256++
        if requiredDevSignatures == checkData['changeRequiredDevSignatures'][this.address].field_256 + 1:
            idx = 0
            s = 0
            while idx < checkData['changeRequiredDevSignatures'][this.address].field_256:
                checkData['changeRequiredDevSignatures'][this.address][2][checkData['changeRequiredDevSignatures'][this.address][3][idx].field_0].field_0 = 0
                checkData['changeRequiredDevSignatures'][this.address][3][idx].field_0 = 0
                mem[0] = sha3('changeRequiredDevSignatures', this.address)
                mem[32] = 1
                idx = idx + 1
                s = checkData['changeRequiredDevSignatures'][this.address][3][idx].field_0
                continue 
            checkData['changeRequiredDevSignatures'][this.address].field_0 = 0
            checkData['changeRequiredDevSignatures'][this.address].field_256 = 0
            requiredDevSignatures = arg1
    else:
        if sha3(call.data[0 len calldata.size]) == checkData['changeRequiredDevSignatures'][this.address].field_0:
            if not checkData['changeRequiredDevSignatures'][this.address][2][address(msg.sender)].field_0:
                checkData['changeRequiredDevSignatures'][this.address][2][address(msg.sender)].field_0 = 1
                checkData['changeRequiredDevSignatures'][this.address][3][checkData['changeRequiredDevSignatures'][this.address].field_256].field_0 = msg.sender
                checkData['changeRequiredDevSignatures'][this.address].field_256++
            if requiredDevSignatures == checkData['changeRequiredDevSignatures'][this.address].field_256:
                idx = 0
                s = 0
                while idx < checkData['changeRequiredDevSignatures'][this.address].field_256:
                    checkData['changeRequiredDevSignatures'][this.address][2][checkData['changeRequiredDevSignatures'][this.address][3][idx].field_0].field_0 = 0
                    checkData['changeRequiredDevSignatures'][this.address][3][idx].field_0 = 0
                    mem[0] = sha3('changeRequiredDevSignatures', this.address)
                    mem[32] = 1
                    idx = idx + 1
                    s = checkData['changeRequiredDevSignatures'][this.address][3][idx].field_0
                    continue 
                checkData['changeRequiredDevSignatures'][this.address].field_0 = 0
                checkData['changeRequiredDevSignatures'][this.address].field_256 = 0
                requiredDevSignatures = arg1
}

function removeAdmin(address arg1) {
    if bool(adminName[msg.sender].field_8) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'eonlyDevs failed - msg.sender is not a dev'
    if 1 >= adminCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'removeAdmin failed - cannot hav less than 2 admins'
    if adminCount < requiredSignatures:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'removeAdmin failed - cannot hav less admins than number of required signatures'
    if 1 == bool(adminName[address(arg1)].field_8):
        if 1 >= devCount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'removeAdmin failed - cannot hav less than 2 devs'
        if devCount < requiredDevSignatures:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'removeAdmin failed - cannot hav less devs than number of required dev signatures'
    if not checkData['removeAdmin'][this.address].field_256:
        checkData['removeAdmin'][this.address].field_0 = sha3(call.data[0 len calldata.size])
        checkData['removeAdmin'][this.address][2][address(msg.sender)].field_0 = 1
        checkData['removeAdmin'][this.address][3][checkData['removeAdmin'][this.address].field_256].field_0 = msg.sender
        checkData['removeAdmin'][this.address].field_256++
        if requiredDevSignatures == checkData['removeAdmin'][this.address].field_256 + 1:
            idx = 0
            s = 0
            while idx < checkData['removeAdmin'][this.address].field_256:
                checkData['removeAdmin'][this.address][2][checkData['removeAdmin'][this.address][3][idx].field_0].field_0 = 0
                checkData['removeAdmin'][this.address][3][idx].field_0 = 0
                mem[0] = sha3('removeAdmin', this.address)
                mem[32] = 1
                idx = idx + 1
                s = checkData['removeAdmin'][this.address][3][idx].field_0
                continue 
            checkData['removeAdmin'][this.address].field_0 = 0
            checkData['removeAdmin'][this.address].field_256 = 0
            if bool(adminName[address(arg1)].field_0) != 1:
                if 1 == bool(adminName[address(arg1)].field_8):
                    adminName[address(arg1)].field_8 = 0
                    devCount--
                    if 1 < requiredDevSignatures:
                        requiredDevSignatures--
            else:
                adminName[address(arg1)].field_0 = 0
                adminCount--
                if 1 < requiredSignatures:
                    requiredSignatures--
                if 1 == bool(adminName[address(arg1)].field_8):
                    adminName[address(arg1)].field_8 = 0
                    devCount--
                    if 1 < requiredDevSignatures:
                        requiredDevSignatures--
    else:
        if sha3(call.data[0 len calldata.size]) == checkData['removeAdmin'][this.address].field_0:
            if not checkData['removeAdmin'][this.address][2][address(msg.sender)].field_0:
                checkData['removeAdmin'][this.address][2][address(msg.sender)].field_0 = 1
                checkData['removeAdmin'][this.address][3][checkData['removeAdmin'][this.address].field_256].field_0 = msg.sender
                checkData['removeAdmin'][this.address].field_256++
            if requiredDevSignatures == checkData['removeAdmin'][this.address].field_256:
                idx = 0
                s = 0
                while idx < checkData['removeAdmin'][this.address].field_256:
                    checkData['removeAdmin'][this.address][2][checkData['removeAdmin'][this.address][3][idx].field_0].field_0 = 0
                    checkData['removeAdmin'][this.address][3][idx].field_0 = 0
                    mem[0] = sha3('removeAdmin', this.address)
                    mem[32] = 1
                    idx = idx + 1
                    s = checkData['removeAdmin'][this.address][3][idx].field_0
                    continue 
                checkData['removeAdmin'][this.address].field_0 = 0
                checkData['removeAdmin'][this.address].field_256 = 0
                if bool(adminName[address(arg1)].field_0) != 1:
                    if 1 == bool(adminName[address(arg1)].field_8):
                        adminName[address(arg1)].field_8 = 0
                        devCount--
                        if 1 < requiredDevSignatures:
                            requiredDevSignatures--
                else:
                    adminName[address(arg1)].field_0 = 0
                    adminCount--
                    if 1 < requiredSignatures:
                        requiredSignatures--
                    if 1 == bool(adminName[address(arg1)].field_8):
                        adminName[address(arg1)].field_8 = 0
                        devCount--
                        if 1 < requiredDevSignatures:
                            requiredDevSignatures--
}



}
