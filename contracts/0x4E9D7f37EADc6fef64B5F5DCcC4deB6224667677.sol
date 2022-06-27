contract main {




// =====================  Runtime code  =====================


address authorityAddress;
uint8 stor1; offset 160
address owner;
address configAddress;
mapping of uint8 stor3;
array of address userToAccounts;
array of address accounts;
address accountMaster;
address stor7;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function userToAccounts(address arg1, uint256 arg2) {
    require arg2 < uint256(userToAccounts[arg1])
    return address(userToAccounts[arg1][arg2])
}

function isAccountValid(address arg1) {
    return bool(stor3[arg1])
}

function stopped() {
    return bool(stor1)
}

function config() {
    return configAddress
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function accountMaster() {
    return accountMaster
}

function accounts(uint256 arg1) {
    require arg1 < accounts.length
    return accounts[arg1]
}

function _fallback() payable {
    revert
}

function isAccount(address arg1) {
    if stor3[address(arg1)]:
        return bool(stor3[address(arg1)])
    require ext_code.size(stor7)
    call stor7.0x25ca4c9c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setOwner(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function setConfig(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    if not arg1:
        revert with 0, 32, 24, code.data[6419 len 32]
    configAddress = arg1
}

function setAccountFactoryV1(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    if not arg1:
        revert with 0, 32, 24, code.data[6419 len 32]
    stor7 = arg1
}

function setAccountMaster(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 32, 31, code.data[6387 len 32]
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 31, code.data[6387 len 32]
    if not arg1:
        revert with 0, 32, 24, code.data[6419 len 32]
    accountMaster = arg1
}

function newAccount(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if not configAddress:
        revert with 0, 32, 24, code.data[6419 len 32]
    if not accountMaster:
        revert with 0, 32, 24, code.data[6419 len 32]
    if stor1:
        revert with 0, 'DSStop::_ FEATURE_STOPPED'
    create contract with 0 wei
                    code: code.data[5835 len 552], accountMaster
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf09a4016 with:
         gas gas_remaining wei
        args address(arg1), configAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    accounts.length++
    stor36B6[stor5.length] = address(create.new_address)
    uint256(userToAccounts[address(arg1)])++
    address(userToAccounts[address(arg1)][uint256(userToAccounts[address(arg1)])]) = address(create.new_address)
    stor3[address(create.new_address)] = 1
    emit 0xef0c4d7c: msg.sender, arg1, address(create.new_address)
    return address(create.new_address)
}

function getAllAccounts() {
    mem[96] = 0x8e93d0a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor7)
    call stor7.getAllAccounts() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    _6 = mem[mem[96] + 96]
    mem[ceil32(return_data.size) + 96] = accounts.length + mem[mem[96] + 96]
    if accounts.length + _6:
        mem[ceil32(return_data.size) + 128 len 32 * accounts.length + _6] = code.data[5835 len 32 * accounts.length + _6]
    idx = 0
    while idx < accounts.length + _6:
        if idx < accounts.length:
            mem[0] = 5
            require idx < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx) + 128] = accounts[idx]
        else:
            mem[ceil32(return_data.size) + (32 * accounts.length + _6) + 132] = idx - accounts.length
            require ext_code.size(stor7)
            call stor7.0xf2a40db8 with:
                 gas gas_remaining wei
                args (idx - accounts.length)
            mem[ceil32(return_data.size) + (32 * accounts.length + _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + (32 * accounts.length + _6) + 128] = 32
    mem[ceil32(return_data.size) + (32 * accounts.length + _6) + 160] = mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + (32 * accounts.length + _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[ceil32(return_data.size) + (32 * accounts.length + _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32], 
}

function batchNewAccount(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccountFactory::_ INVALID_ADMIN_ACCOUNT'
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 96 len calldata.size] = call.data[0 len calldata.size]
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
        if not configAddress:
            revert with 0, 32, 24, code.data[6419 len 32]
        if not accountMaster:
            revert with 0, 32, 24, code.data[6419 len 32]
        if stor1:
            revert with 0, 'DSStop::_ FEATURE_STOPPED'
        mem[mem[64] len 552] = code.data[5835 len 552]
        mem[mem[64] + 552] = accountMaster
        create contract with 0 wei
                        code: code.data[5835 len 552], accountMaster
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 36] = configAddress
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf09a4016 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg1 + 36)]), configAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        accounts.length++
        stor36B6[stor5.length] = address(create.new_address)
        uint256(userToAccounts[address(cd[((32 * idx) + arg1 + 36)])])++
        address(userToAccounts[address(cd[((32 * idx) + arg1 + 36)])][uint256(userToAccounts[address(cd[((32 * idx) + arg1 + 36)])])]) = address(create.new_address)
        mem[0] = address(create.new_address)
        mem[32] = 3
        stor3[address(create.new_address)] = 1
        mem[mem[64]] = msg.sender
        emit 0xef0c4d7c: msg.sender, address(cd[((32 * idx) + arg1 + 36)]), address(create.new_address)
        idx = idx + 1
        continue 
}

function getAccountsForUser(address arg1) {
    mem[0] = arg1
    mem[96] = 0x1eb9ef9100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor7)
    call stor7.0x1eb9ef91 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    _7 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = uint256(userToAccounts[address(arg1)]) + mem[mem[96 len 4], address(arg1) << 64 + 96]
    if uint256(userToAccounts[address(arg1)]) + _7:
        mem[ceil32(return_data.size) + 128 len 32 * uint256(userToAccounts[address(arg1)]) + _7] = code.data[5835 len 32 * uint256(userToAccounts[address(arg1)]) + _7]
    idx = 0
    while idx < uint256(userToAccounts[address(arg1)]) + _7:
        if idx < uint256(userToAccounts[address(arg1)]):
            mem[32] = 4
            require idx < uint256(userToAccounts[address(arg1)])
            mem[0] = sha3(address(arg1), 4)
            require idx < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx) + 128] = address(userToAccounts[address(arg1)][idx])
        else:
            mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 132] = arg1
            mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 164] = idx - uint256(userToAccounts[address(arg1)])
            require ext_code.size(stor7)
            call stor7.0x169b7012 with:
                 gas gas_remaining wei
                args address(arg1), idx - uint256(userToAccounts[address(arg1)])
            mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 128] = 32
    mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 160] = mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[ceil32(return_data.size) + (32 * uint256(userToAccounts[address(arg1)]) + _7) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32], 
}



}
