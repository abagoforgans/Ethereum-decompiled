contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct users;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint128 stor4; offset 160
address weth9Address;
uint256 stor4;
uint8 stor5; offset 160
address configAddress;

function users(uint256 arg1) {
    require arg1 < users.length
    return address(users[arg1].field_0)
}

function isInitialized() {
    return bool(stor5)
}

function isUser(address arg1) {
    return bool(stor2[arg1])
}

function sub_4d41bc8e(?) {
    return bool(stor3[arg1])
}

function weth9() {
    return weth9Address
}

function config() {
    return configAddress
}

function balanceFor(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeMasterCopy(address arg1) {
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Method can only be called from this contract'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid master copy address provided'
    stor0 = arg1
}

function init(address arg1, address arg2) {
    if stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account::_ ACCOUNT_ALREADY_INITIALIZED'
    users.length++
    address(users[users.length].field_0) = arg1
    stor2[address(arg1)] = 1
    configAddress = arg2
    require ext_code.size(arg2)
    call arg2.0x50879c1c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4.field_0) = Mask(96, 0, stor4.field_160)
    stor5 = 1
}

function _fallback() payable {
    if calldata.size:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account::fallback INVALID_ETHER_TRANSFER'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account::fallback INVALID_ETHER_TRANSFER'
    if weth9Address != msg.sender:
        require ext_code.size(weth9Address)
        call weth9Address.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getAllUsers() {
    if not users.length:
        mem[(32 * users.length) + 128] = 32
        mem[(32 * users.length) + 160] = users.length
        mem[(32 * users.length) + 192 len floor32(users.length)] = mem[128 len floor32(users.length)]
        return memory
          from (32 * users.length) + 128
           len (96 * users.length) + 64
    mem[128] = address(users.field_0)
    idx = 128
    s = 0
    while (32 * users.length) + 96 > idx:
        mem[idx + 32] = address(users[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * users.length) + 192 len floor32(users.length)] = mem[128 len floor32(users.length)]
    return Array(len=users.length, data=mem[128 len floor32(users.length)], mem[(32 * users.length) + floor32(users.length) + 192 len (32 * users.length) - floor32(users.length)]), 
}

function sub_93ef43df(?) {
    require ext_code.size(configAddress)
    call configAddress.0x6147f6d2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Account::_ INVALID_ACC_HANDLER'
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TAccount::_ ACCOUNT_NOT_INITIALIED'
    require ext_code.size(address(arg1))
    call address(arg1).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Account::transferBySystem INSUFFICIENT_BALANCE_IN_ACCOUNT'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xb841ece5: arg3, msg.sender, address(arg1), address(arg2)
}

function sub_6a44f65f(?) {
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not address(arg1):
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    if stor2[address(arg1)]:
        revert with 0, 'Account::_ USER_DOES_NOT_EXISTS'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TAccount::_ ACCOUNT_NOT_INITIALIED'
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UAccount::_ INVALID_ADMIN_ACCOUN'
    mem[232 len 0] = None
    mem[232] = 0, mem[244 len 20] or ADD_USER
    mem[272 len 64] = this.address, address(arg1), mem[232 len 8], uint128(arg2)
    mem[336 len 16] = uint128(arg2)
    if stor3[this.address][address(arg1)][mem[232 len 8]][uint128(arg2)][uint128(arg2)]:
        emit LogError(string arg1, string arg2):
                      64,
                      128,
                      16,
                      'Account::addUser',
                      24,
                      0x5a414354494f4e5f414c52454144595f504552464f524d454400000000000000,
    else:
        mem[304 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + 336] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg3.length) + 364] = sha3(this.address, address(arg1), mem[232 len 8], uint128(arg2), uint128(arg2))
        mem[ceil32(arg3.length) + 304] = 60
        mem[ceil32(arg3.length) + 396] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(this.address, address(arg1), mem[232 len 8], uint128(arg2), uint128(arg2))) >> 224
        if arg3.length != 65:
            if not stor2[0]:
                emit LogError(string arg1, string arg2):
                              64,
                              128,
                              16,
                              'Account::addUser',
                              34,
                              0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                              0x4e54000000000000000000000000000000000000000000000000000000000000,
            else:
                stor3[this.address][address(arg1)][mem[232 len 8]][uint128(arg2)][uint128(arg2)] = 1
                users.length++
                address(users[users.length].field_0) = address(arg1)
                stor2[address(arg1)] = 1
                emit LogUserAdded(0, address(arg1));
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), mem[232 len 8], uint128(arg2), uint128(arg2))), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27 << 248, mem[304], uint128(arg2), mem[352 len 16]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor2[address(signer)]:
                    emit LogError(string arg1, string arg2):
                                  64,
                                  128,
                                  16,
                                  'Account::addUser',
                                  34,
                                  0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                  0x4e54000000000000000000000000000000000000000000000000000000000000,
                else:
                    stor3[this.address][address(arg1)][mem[232 len 8]][uint128(arg2)][uint128(arg2)] = 1
                    users.length++
                    address(users[users.length].field_0) = address(arg1)
                    stor2[address(arg1)] = 1
                    emit LogUserAdded(address(signer), address(arg1));
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27) != 28:
                    if not stor2[0]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      16,
                                      'Account::addUser',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)][mem[232 len 8]][uint128(arg2)][uint128(arg2)] = 1
                        users.length++
                        address(users[users.length].field_0) = address(arg1)
                        stor2[address(arg1)] = 1
                        emit LogUserAdded(0, address(arg1));
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), mem[232 len 8], uint128(arg2), uint128(arg2))), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 368, 32))), 0) - 256) + 27 << 248, mem[304], uint128(arg2), mem[352 len 16]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor2[address(signer)]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      16,
                                      'Account::addUser',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)][mem[232 len 8]][uint128(arg2)][uint128(arg2)] = 1
                        users.length++
                        address(users[users.length].field_0) = address(arg1)
                        stor2[address(arg1)] = 1
                        emit LogUserAdded(address(signer), address(arg1));
}

function sub_792280c3(?) {
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not address(arg1):
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TAccount::_ ACCOUNT_NOT_INITIALIED'
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UAccount::_ INVALID_ADMIN_ACCOUN'
    mem[293 len 96] = this.address, address(arg1), 'CHANGE_ACCOUNT_IMPLEMENTATION', Mask(216, 40, arg2) >> 40
    if stor3[this.address][address(arg1)]['CHANGE_ACCOUNT_IMPLEMENTATION'][arg2]:
        emit LogError(string arg1, string arg2):
                      64,
                      128,
                      19,
                      'Account::changeImpl',
                      24,
                      0x5a414354494f4e5f414c52454144595f504552464f524d454400000000000000,
    else:
        mem[325 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + 357] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg3.length) + 385] = sha3(this.address, address(arg1), 'CHANGE_ACCOUNT_IMPLEMENTATION', arg2)
        mem[ceil32(arg3.length) + 325] = 60
        mem[ceil32(arg3.length) + 417] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(this.address, address(arg1), 'CHANGE_ACCOUNT_IMPLEMENTATION', arg2)) >> 224
        if arg3.length != 65:
            if not stor2[0]:
                emit LogError(string arg1, string arg2):
                              64,
                              128,
                              19,
                              'Account::changeImpl',
                              34,
                              0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                              0x4e54000000000000000000000000000000000000000000000000000000000000,
            else:
                stor3[this.address][address(arg1)]['CHANGE_ACCOUNT_IMPLEMENTATION'][arg2] = 1
                require ext_code.size(this.address)
                call this.address.0x7de7edef with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x46d1374f: address(arg1), stor0
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), 'CHANGE_ACCOUNT_IMPLEMENTATION', arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) - 256) + 27 << 248, mem[325], mem[357]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor2[address(signer)]:
                    emit LogError(string arg1, string arg2):
                                  64,
                                  128,
                                  19,
                                  'Account::changeImpl',
                                  34,
                                  0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                  0x4e54000000000000000000000000000000000000000000000000000000000000,
                else:
                    stor3[this.address][address(arg1)]['CHANGE_ACCOUNT_IMPLEMENTATION'][arg2] = 1
                    require ext_code.size(this.address)
                    call this.address.0x7de7edef with:
                         gas gas_remaining wei
                        args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x46d1374f: address(arg1), stor0
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) - 256) + 27) != 28:
                    if not stor2[0]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      19,
                                      'Account::changeImpl',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)]['CHANGE_ACCOUNT_IMPLEMENTATION'][arg2] = 1
                        require ext_code.size(this.address)
                        call this.address.0x7de7edef with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x46d1374f: address(arg1), stor0
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), 'CHANGE_ACCOUNT_IMPLEMENTATION', arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 0, ('param', 'arg2')), ('mem', ('range', 394, 27)))), 0) - 256) + 27 << 248, mem[325], mem[357]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor2[address(signer)]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      19,
                                      'Account::changeImpl',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)]['CHANGE_ACCOUNT_IMPLEMENTATION'][arg2] = 1
                        require ext_code.size(this.address)
                        call this.address.0x7de7edef with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x46d1374f: address(arg1), stor0
}

function sub_b91ab1a6(?) {
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not stor2[address(arg1)]:
        revert with 0, 'Account::_ INVALID_USER'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TAccount::_ ACCOUNT_NOT_INITIALIED'
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UAccount::_ INVALID_ADMIN_ACCOUN'
    mem[232 len 0] = None
    mem[232] = 0, mem[244 len 20] or REMOVE_USER
    mem[275 len 64] = this.address, address(arg1), mem[232 len 11], Mask(104, 152, arg2) >> 152
    mem[339 len 19] = Mask(152, 0, arg2)
    if stor3[this.address][address(arg1)][mem[232 len 11]][arg2]:
        emit LogError(string arg1, string arg2):
                      64,
                      128,
                      19,
                      'Account::removeUser',
                      24,
                      0x5a414354494f4e5f414c52454144595f504552464f524d454400000000000000,
    else:
        mem[307 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + 339] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg3.length) + 367] = sha3(this.address, address(arg1), mem[232 len 11], arg2)
        mem[ceil32(arg3.length) + 307] = 60
        mem[ceil32(arg3.length) + 399] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(this.address, address(arg1), mem[232 len 11], arg2)) >> 224
        if arg3.length != 65:
            if not stor2[0]:
                emit LogError(string arg1, string arg2):
                              64,
                              128,
                              19,
                              'Account::removeUser',
                              34,
                              0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                              0x4e54000000000000000000000000000000000000000000000000000000000000,
            else:
                stor3[this.address][address(arg1)][mem[232 len 11]][arg2] = 1
                stor2[address(arg1)] = 0
                idx = 0
                while idx < users.length - 1:
                    require idx < users.length
                    mem[0] = 1
                    if address(users[idx].field_0) != address(arg1):
                        idx = idx + 1
                        continue 
                    require users.length - 1 < users.length
                    require idx < users.length
                    address(users[idx].field_0) = address(users[users.length].field_0)
                    users.length--
                    if users.length > users.length - 1:
                        idx = users.length + sha3(1) - 1
                        while sha3(1) + users.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit 0xcc173a99: 0, address(arg1)
                emit 0xcc173a99: 0, address(arg1)
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) - 256) + 27):
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), mem[232 len 11], arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) - 256) + 27 << 248, mem[307], Mask(152, 0, arg2), mem[358 len 13]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor2[address(signer)]:
                    emit LogError(string arg1, string arg2):
                                  64,
                                  128,
                                  19,
                                  'Account::removeUser',
                                  34,
                                  0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                  0x4e54000000000000000000000000000000000000000000000000000000000000,
                else:
                    stor3[this.address][address(arg1)][mem[232 len 11]][arg2] = 1
                    stor2[address(arg1)] = 0
                    idx = 0
                    while idx < users.length - 1:
                        require idx < users.length
                        mem[0] = 1
                        if address(users[idx].field_0) != address(arg1):
                            idx = idx + 1
                            continue 
                        require users.length - 1 < users.length
                        require idx < users.length
                        address(users[idx].field_0) = address(users[users.length].field_0)
                        users.length--
                        if users.length > users.length - 1:
                            idx = users.length + sha3(1) - 1
                            while sha3(1) + users.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        emit 0xcc173a99: address(signer), address(arg1)
                    emit 0xcc173a99: address(signer), address(arg1)
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) - 256) + 27) != 28:
                    if not stor2[0]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      19,
                                      'Account::removeUser',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)][mem[232 len 11]][arg2] = 1
                        stor2[address(arg1)] = 0
                        idx = 0
                        while idx < users.length - 1:
                            require idx < users.length
                            mem[0] = 1
                            if address(users[idx].field_0) != address(arg1):
                                idx = idx + 1
                                continue 
                            require users.length - 1 < users.length
                            require idx < users.length
                            address(users[idx].field_0) = address(users[users.length].field_0)
                            users.length--
                            if users.length > users.length - 1:
                                idx = users.length + sha3(1) - 1
                                while sha3(1) + users.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            emit 0xcc173a99: 0, address(arg1)
                        emit 0xcc173a99: 0, address(arg1)
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), mem[232 len 11], arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 371, 32))), 0) - 256) + 27 << 248, mem[307], Mask(152, 0, arg2), mem[358 len 13]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor2[address(signer)]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      19,
                                      'Account::removeUser',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)][mem[232 len 11]][arg2] = 1
                        stor2[address(arg1)] = 0
                        idx = 0
                        while idx < users.length - 1:
                            require idx < users.length
                            mem[0] = 1
                            if address(users[idx].field_0) != address(arg1):
                                idx = idx + 1
                                continue 
                            require users.length - 1 < users.length
                            require idx < users.length
                            address(users[idx].field_0) = address(users[users.length].field_0)
                            users.length--
                            if users.length > users.length - 1:
                                idx = users.length + sha3(1) - 1
                                while sha3(1) + users.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                            emit 0xcc173a99: address(signer), address(arg1)
                        emit 0xcc173a99: address(signer), address(arg1)
}

function sub_0b94a945(?) {
    if not arg2:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TAccount::_ ACCOUNT_NOT_INITIALIED'
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'UAccount::_ INVALID_ADMIN_ACCOUN'
    mem[252 len 96] = this.address, address(arg1), arg2, arg3, arg4
    if stor3[this.address][address(arg1)][arg2][arg3][arg4][Mask(224, 0, arg4)]:
        emit LogError(string arg1, string arg2):
                      64,
                      128,
                      23,
                      'Account::transferByUser',
                      24,
                      0x5a414354494f4e5f414c52454144595f504552464f524d454400000000000000,
    else:
        mem[256] = this.address
        require ext_code.size(address(arg1))
        call address(arg1).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            emit LogError(string arg1, string arg2):
                          64,
                          128,
                          23,
                          'Account::transferByUser',
                          31,
                          'INSUFFICIENT_BALANCE_IN_ACCOUNT',
        else:
            mem[284 len arg5.length] = arg5[all]
            mem[ceil32(arg5.length) + 316] = '\x19Ethereum Signed Message:\n32'
            mem[ceil32(arg5.length) + 344] = sha3(this.address, address(arg1), arg2, arg3, arg4, Mask(224, 0, arg4))
            mem[ceil32(arg5.length) + 284] = 60
            mem[ceil32(arg5.length) + 376] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(this.address, address(arg1), arg2, arg3, arg4, Mask(224, 0, arg4))) >> 224
            if arg5.length != 65:
                if not stor2[0]:
                    emit LogError(string arg1, string arg2):
                                  64,
                                  128,
                                  23,
                                  'Account::transferByUser',
                                  34,
                                  0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                  0x4e54000000000000000000000000000000000000000000000000000000000000,
                else:
                    stor3[this.address][address(arg1)][arg2][arg3][arg4][Mask(224, 0, arg4)] = 1
                    if weth9Address == address(arg1):
                        require ext_code.size(weth9Address)
                        call weth9Address.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call arg2 with:
                           value arg3 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Account::transferByUser TOKEN_TRANSFER_FAILED'
                    emit 0xd035e491: arg3, 0, address(arg1), arg2
            else:
                if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) - 256) + 27):
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), arg2, arg3, arg4, Mask(224, 0, arg4))), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) - 256) + 27 << 248, mem[284 len 4], 0, 0) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not stor2[address(signer)]:
                        emit LogError(string arg1, string arg2):
                                      64,
                                      128,
                                      23,
                                      'Account::transferByUser',
                                      34,
                                      0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                      0x4e54000000000000000000000000000000000000000000000000000000000000,
                    else:
                        stor3[this.address][address(arg1)][arg2][arg3][arg4][Mask(224, 0, arg4)] = 1
                        if weth9Address == address(arg1):
                            require ext_code.size(weth9Address)
                            call weth9Address.0x2e1a7d4d with:
                                 gas gas_remaining wei
                                args arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call arg2 with:
                               value arg3 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(address(arg1))
                            call address(arg1).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Account::transferByUser TOKEN_TRANSFER_FAILED'
                        emit 0xd035e491: arg3, address(signer), address(arg1), arg2
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) - 256) + 27) != 28:
                        if not stor2[0]:
                            emit LogError(string arg1, string arg2):
                                          64,
                                          128,
                                          23,
                                          'Account::transferByUser',
                                          34,
                                          0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                          0x4e54000000000000000000000000000000000000000000000000000000000000,
                        else:
                            stor3[this.address][address(arg1)][arg2][arg3][arg4][Mask(224, 0, arg4)] = 1
                            if weth9Address == address(arg1):
                                require ext_code.size(weth9Address)
                                call weth9Address.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg2 with:
                                   value arg3 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Account::transferByUser TOKEN_TRANSFER_FAILED'
                            emit 0xd035e491: arg3, 0, address(arg1), arg2
                    else:
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, address(arg1), arg2, arg3, arg4, Mask(224, 0, arg4))), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 224, 0, 0, ('param', 'arg4')), ('mem', ('range', 376, 4)))), 0) - 256) + 27 << 248, mem[284 len 4], 0, 0) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not stor2[address(signer)]:
                            emit LogError(string arg1, string arg2):
                                          64,
                                          128,
                                          23,
                                          'Account::transferByUser',
                                          34,
                                          0x5349474e45525f4e4f545f415554484f52495a45445f574954485f4143434f,
                                          0x4e54000000000000000000000000000000000000000000000000000000000000,
                        else:
                            stor3[this.address][address(arg1)][arg2][arg3][arg4][Mask(224, 0, arg4)] = 1
                            if weth9Address == address(arg1):
                                require ext_code.size(weth9Address)
                                call weth9Address.0x2e1a7d4d with:
                                     gas gas_remaining wei
                                    args arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call arg2 with:
                                   value arg3 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(arg1))
                                call address(arg1).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Account::transferByUser TOKEN_TRANSFER_FAILED'
                            emit 0xd035e491: arg3, address(signer), address(arg1), arg2
}



}
