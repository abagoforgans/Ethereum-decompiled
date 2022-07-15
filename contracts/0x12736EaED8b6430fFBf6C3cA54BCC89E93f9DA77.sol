contract main {




// =====================  Runtime code  =====================


#
#  - forward(bytes arg1)
#
const onApprove(address arg1, address arg2, uint256 arg3) = 0

const isForwarder = 1

const BURN_ROLE = sha3(Mask(72, 184, 'BURN_ROLE') >> 184)

const MANAGER_ROLE = sha3(Mask(96, 160, 'MANAGER_ROLE') >> 160)


address tokenAddress;
address erc20Address;
address tokensaleAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address whitelistAddress;
uint256 claimAmount;
array of struct stor5;
array of struct stor6;
array of struct stor7;
mapping of uint8 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function tokensale() {
    return tokensaleAddress
}

function erc20() {
    return erc20Address
}

function appId() {
    return appId
}

function claimAmount() {
    return claimAmount
}

function getInitializationBlock() {
    return initializationBlock
}

function whitelist() {
    return whitelistAddress
}

function sub_cdcb04c8(?) {
    return bool(uint8(stor3.field_160))
}

function kernel() {
    return kernelAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isPetrified() {
    return (initializationBlock == -1)
}

function allowRecoverability(address arg1) {
    if arg1 != erc20Address:
        return 1
    return bool(uint8(stor3.field_160))
}

function hasInitialized() {
    if not initializationBlock:
        return not not initializationBlock
    return block.number >= initializationBlock
}

function proxyPayment(address arg1) payable {
    if tokenAddress != msg.sender:
        revert with 0, 'TM_PROXY_PAYMENT_WRONG_SENDER'
    else:
        return 0
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    else:
        return 0
}

function getRecoveryVault() {
    require ext_code.size(kernelAddress)
    call kernelAddress.0x32f0a3b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_243de53b(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^uint8(ext_call.return_data[0]) != 10^uint8(ext_call.return_data[0]):
        revert with 0, 'MATH_MUL_OVERFLOW'
    claimAmount = 10^uint8(ext_call.return_data[0])
}

function getEVMScriptRegistry() {
    require ext_code.size(kernelAddress)
    call kernelAddress.getApp(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function canForward(address arg1, bytes arg2) {
    if not initializationBlock:
        return not not initializationBlock
    if block.number < initializationBlock:
        return block.number >= initializationBlock
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function changeWhitelist(address arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MANAGER_ROLE'), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    whitelistAddress = arg1
}

function sub_840c0350(?) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MANAGER_ROLE'), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function sub_1d7f5311(?) {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = uint256(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function sub_3575ca80(?) {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = uint256(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
}

function sub_fc1cd0f9(?) {
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = uint256(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function getEVMScriptExecutor(bytes arg1) {
    require ext_code.size(kernelAddress)
    call kernelAddress.getApp(bytes32 arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getScriptExecutor(bytes arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function canPerform(address arg1, bytes32 arg2, uint256[] arg3) {
    if not initializationBlock:
        return 0
    if block.number < initializationBlock:
        return 0
    if not kernelAddress:
        return 0
    mem[(32 * arg3.length) + 292 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2, Array(len=32 * arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function changeTokenController(address arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MANAGER_ROLE'), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(tokenAddress)
    call tokenAddress.changeController(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim(uint16 arg1) {
    if whitelistAddress:
        require ext_code.size(whitelistAddress)
        call whitelistAddress.checkWhitelist(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'User not in whitelist'
    require ext_code.size(tokensaleAddress)
    call tokensaleAddress.getWeiContributed(uint16 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 240, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User not authorized to claim any tokens'
    if stor8[address(msg.sender)]:
        revert with 0, 'User has already claimed tokens'
    stor8[address(msg.sender)] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, claimAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x689e9fbd: msg.sender
}

function unlock() {
    if stor10[address(msg.sender)] >= block.timestamp:
        revert with 0, 'Tokens are still locked'
    stor10[address(msg.sender)] = 0
    stor9[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor8[address(msg.sender)]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        require ext_code.size(tokenAddress)
        call tokenAddress.destroyTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if claimAmount > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        require ext_code.size(tokenAddress)
        call tokenAddress.destroyTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - claimAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Tokens not destroyed'
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor11[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'ERC20 not returned'
    stor11[address(msg.sender)] = 0
    emit TokensLocked(msg.sender, 0);
}

function transferToVault(address arg1) {
    if arg1 == erc20Address:
        if not uint8(stor3.field_160):
            revert with 0, 'RECOVER_DISALLOWED'
    require ext_code.size(kernelAddress)
    call kernelAddress.0x32f0a3b5 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if ext_code.size(ext_call.return_data[0]) <= 0:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if not arg1:
        call address(ext_call.return_data[0]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit RecoverToVault(eth.balance(this.address), address(ext_call.return_data[0]), arg1);
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address) << 64, 0
        if not ext_call.success:
            revert with 0, 'SAFE_ERC_20_BALANCE_REVERTED'
        if ext_call.success <= 0:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]) << 64, 0, 0
            if ext_call.success <= 0:
                revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            emit RecoverToVault(0, address(ext_call.return_data[0]), arg1);
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0]
            if ext_call.success <= 0:
                revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
                if ext_call.return_data[0] != 1:
                    revert with 0, 'RECOVER_TOKEN_TRANSFER_FAILED'
            emit RecoverToVault(ext_call.return_data[0], address(ext_call.return_data[0]), arg1);
}

function sub_452e2f61(?) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MANAGER_ROLE'), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    require ('cd', 4).length == ('cd', 36).length
    require ('cd', 36).length == ('cd', 68).length
    stor5.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor5[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor6[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7.length = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor7[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_5d9ef52e(?) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('BURN_ROLE'), 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'User has no tokens to burn'
    if stor11[address(arg1)] > 0:
        require ext_code.size(kernelAddress)
        call kernelAddress.0x32f0a3b5 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor11[address(arg1)] = 0
        if address(ext_call.return_data[0]):
            require ext_code.size(erc20Address)
            call erc20Address.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), stor11[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args erc20Address, stor11[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.destroyTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xfad31924: address(arg1), ext_call.return_data[0], Array(len=arg2.length, data=arg2[all])
}

function sub_3c31996b(?) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    require ext_code.size(address(cd[4]))
    call address(cd[4]).controller() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'TM_TOKEN_CONTROLLER'
    require ('cd', 132).length == ('cd', 164).length
    require ('cd', 164).length == ('cd', 196).length
    tokenAddress = address(cd[4])
    require ext_code.size(tokenAddress)
    call tokenAddress.enableTransfers(bool arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    erc20Address = address(cd[36])
    tokensaleAddress = address(cd[68])
    whitelistAddress = address(cd[100])
    stor5.length = ('cd', 132).length
    if not ('cd', 132).length:
        idx = 0
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[132] + 36
        while cd[132] + (32 * ('cd', 132).length) + 36 > idx:
            stor5[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6.length = ('cd', 164).length
    if not ('cd', 164).length:
        idx = 0
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[164] + 36
        while cd[164] + (32 * ('cd', 164).length) + 36 > idx:
            stor6[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor7.length = ('cd', 196).length
    if not ('cd', 196).length:
        idx = 0
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[196] + 36
        while cd[196] + (32 * ('cd', 196).length) + 36 > idx:
            stor7[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 196).length) + 31) >> 5
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10^uint8(ext_call.return_data[0]) != 10^uint8(ext_call.return_data[0]):
        revert with 0, 'MATH_MUL_OVERFLOW'
    claimAmount = 10^uint8(ext_call.return_data[0])
}

function lock(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if whitelistAddress:
        require ext_code.size(whitelistAddress)
        call whitelistAddress.checkWhitelist(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'User not in whitelist'
    mem[0] = msg.sender
    mem[32] = 8
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor8[address(msg.sender)]:
        if ext_call.return_data[0] < 0:
            revert with 0, 'Ya burnt'
        mem[100] = msg.sender
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = stor6.length - 1
            while idx >= 0:
                require idx < stor6.length
                mem[0] = 6
                if arg1 < stor6[idx].field_0:
                    idx = idx - 1
                    continue 
                require idx < stor7.length
                require idx < stor5.length
                require idx < stor6.length
                if not stor6[idx].field_0:
                    stor9[address(msg.sender)] = block.timestamp
                    stor10[address(msg.sender)] = stor9[address(msg.sender)]
                else:
                    require stor6[idx].field_0
                    mem[128] = 'MATH_MUL_OVERFLOW'
                    if 720 * 24 * 3600 * stor6[idx].field_0 / stor6[idx].field_0 != 720 * 24 * 3600:
                        mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[164] = 32
                        idx = 0
                        while idx < 17:
                            mem[idx + 228] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        mem[228] = mem[243 len 17]
                        revert with 0, 32, 17, mem[228]
                    stor9[address(msg.sender)] = block.timestamp
                    stor10[address(msg.sender)] = stor9[address(msg.sender)] + (720 * 24 * 3600 * stor6[idx].field_0)
                stor11[address(msg.sender)] = stor5[idx].field_0
                require stor7[idx].field_0 > 0
                require ext_code.size(erc20Address)
                call erc20Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), stor5[idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Transfer from msg sender failed'
                require ext_code.size(tokenAddress)
                call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, stor7[idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensLocked(msg.sender, stor11[address(msg.sender)]);
            stor9[address(msg.sender)] = block.timestamp
            stor10[address(msg.sender)] = stor9[address(msg.sender)]
            stor11[address(msg.sender)] = 0
            revert
    else:
        if ext_call.return_data[0] < claimAmount:
            revert with 0, 'Ya burnt'
        mem[100] = msg.sender
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == claimAmount:
            idx = stor6.length - 1
            while idx >= 0:
                require idx < stor6.length
                mem[0] = 6
                if arg1 < stor6[idx].field_0:
                    idx = idx - 1
                    continue 
                require idx < stor7.length
                require idx < stor5.length
                require idx < stor6.length
                if not stor6[idx].field_0:
                    stor9[address(msg.sender)] = block.timestamp
                    stor10[address(msg.sender)] = stor9[address(msg.sender)]
                else:
                    require stor6[idx].field_0
                    mem[128] = 'MATH_MUL_OVERFLOW'
                    if 720 * 24 * 3600 * stor6[idx].field_0 / stor6[idx].field_0 != 720 * 24 * 3600:
                        mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[164] = 32
                        idx = 0
                        while idx < 17:
                            mem[idx + 228] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        mem[228] = mem[243 len 17]
                        revert with 0, 32, 17, mem[228]
                    stor9[address(msg.sender)] = block.timestamp
                    stor10[address(msg.sender)] = stor9[address(msg.sender)] + (720 * 24 * 3600 * stor6[idx].field_0)
                stor11[address(msg.sender)] = stor5[idx].field_0
                require stor7[idx].field_0 > 0
                require ext_code.size(erc20Address)
                call erc20Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), stor5[idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Transfer from msg sender failed'
                require ext_code.size(tokenAddress)
                call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, stor7[idx].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit TokensLocked(msg.sender, stor11[address(msg.sender)]);
            stor9[address(msg.sender)] = block.timestamp
            stor10[address(msg.sender)] = stor9[address(msg.sender)]
            stor11[address(msg.sender)] = 0
            revert
    if not arg1:
        mem[0] = msg.sender
        mem[32] = 9
        if stor9[address(msg.sender)] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has not started locking, nothing to update'
        mem[64] = 160
        mem[96] = 13
        mem[128] = 'MATH_DIV_ZERO'
        idx = stor6.length - 1
        while idx >= 0:
            require idx < stor6.length
            mem[0] = 6
            if 0 < stor6[idx].field_0:
                idx = idx - 1
                continue 
            require idx < stor7.length
            require idx < stor5.length
            require idx < stor6.length
            if not stor6[idx].field_0:
                stor10[address(msg.sender)] = stor9[address(msg.sender)]
                mem[192] = 'MATH_SUB_UNDERFLOW'
                if stor11[address(msg.sender)] > stor5[idx].field_0:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 0
                    while idx < 18:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[306 len 18]
                    revert with 0, 32, 18, mem[292]
                stor11[address(msg.sender)] = stor5[idx].field_0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[256] = 'MATH_SUB_UNDERFLOW'
                if not stor8[address(msg.sender)]:
                    if 0 > ext_call.return_data[0]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[370 len 18]
                        revert with 0, 32, 18, mem[356]
                    mem[320] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] > stor7[idx].field_0:
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[434 len 18]
                        revert with 0, 32, 18, mem[420]
                    require stor7[idx].field_0 - ext_call.return_data[0] > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0]
                else:
                    if claimAmount > ext_call.return_data[0]:
                        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[292] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 356] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[370 len 18]
                        revert with 0, 32, 18, mem[356]
                    mem[320] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] - claimAmount > stor7[idx].field_0:
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[434 len 18]
                        revert with 0, 32, 18, mem[420]
                    require stor7[idx].field_0 - ext_call.return_data[0] + claimAmount > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0] + claimAmount
            else:
                require stor6[idx].field_0
                mem[192] = 'MATH_MUL_OVERFLOW'
                if 720 * 24 * 3600 * stor6[idx].field_0 / stor6[idx].field_0 != 720 * 24 * 3600:
                    mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[228] = 32
                    idx = 0
                    while idx < 17:
                        mem[idx + 292] = mem[idx + 192]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[307 len 17]
                    revert with 0, 32, 17, mem[292]
                stor10[address(msg.sender)] = stor9[address(msg.sender)] + (720 * 24 * 3600 * stor6[idx].field_0)
                mem[256] = 'MATH_SUB_UNDERFLOW'
                if stor11[address(msg.sender)] > stor5[idx].field_0:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 18:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[370 len 18]
                    revert with 0, 32, 18, mem[356]
                stor11[address(msg.sender)] = stor5[idx].field_0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[320] = 'MATH_SUB_UNDERFLOW'
                if not stor8[address(msg.sender)]:
                    if 0 > ext_call.return_data[0]:
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[434 len 18]
                        revert with 0, 32, 18, mem[420]
                    mem[384] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] > stor7[idx].field_0:
                        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[420] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 484] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        mem[484] = mem[498 len 18]
                        revert with 0, 32, 18, mem[484]
                    require stor7[idx].field_0 - ext_call.return_data[0] > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0]
                else:
                    if claimAmount > ext_call.return_data[0]:
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[434 len 18]
                        revert with 0, 32, 18, mem[420]
                    mem[384] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] - claimAmount > stor7[idx].field_0:
                        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[420] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 484] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        mem[484] = mem[498 len 18]
                        revert with 0, 32, 18, mem[484]
                    require stor7[idx].field_0 - ext_call.return_data[0] + claimAmount > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0] + claimAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensLocked(msg.sender, stor11[address(msg.sender)]);
    else:
        require arg1
        mem[96] = 17
        mem[128] = 'MATH_MUL_OVERFLOW'
        if 720 * 24 * 3600 * arg1 / arg1 != 720 * 24 * 3600:
            revert with 0, 'MATH_MUL_OVERFLOW'
        mem[0] = msg.sender
        mem[32] = 9
        if stor9[address(msg.sender)] <= 0:
            revert with 0, 'User has not started locking, nothing to update'
        mem[64] = 224
        mem[160] = 13
        mem[192] = 'MATH_DIV_ZERO'
        idx = stor6.length - 1
        while idx >= 0:
            require idx < stor6.length
            mem[0] = 6
            if 720 * 24 * 3600 * arg1 / 720 * 24 * 3600 < stor6[idx].field_0:
                idx = idx - 1
                continue 
            require idx < stor7.length
            require idx < stor5.length
            require idx < stor6.length
            if not stor6[idx].field_0:
                stor10[address(msg.sender)] = stor9[address(msg.sender)]
                mem[256] = 'MATH_SUB_UNDERFLOW'
                if stor11[address(msg.sender)] > stor5[idx].field_0:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 18:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[370 len 18]
                    revert with 0, 32, 18, mem[356]
                stor11[address(msg.sender)] = stor5[idx].field_0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[320] = 'MATH_SUB_UNDERFLOW'
                if not stor8[address(msg.sender)]:
                    if 0 > ext_call.return_data[0]:
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[434 len 18]
                        revert with 0, 32, 18, mem[420]
                    mem[384] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] > stor7[idx].field_0:
                        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[420] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 484] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        mem[484] = mem[498 len 18]
                        revert with 0, 32, 18, mem[484]
                    require stor7[idx].field_0 - ext_call.return_data[0] > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0]
                else:
                    if claimAmount > ext_call.return_data[0]:
                        mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[356] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 420] = mem[idx + 320]
                            idx = idx + 32
                            continue 
                        mem[420] = mem[434 len 18]
                        revert with 0, 32, 18, mem[420]
                    mem[384] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] - claimAmount > stor7[idx].field_0:
                        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[420] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 484] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        mem[484] = mem[498 len 18]
                        revert with 0, 32, 18, mem[484]
                    require stor7[idx].field_0 - ext_call.return_data[0] + claimAmount > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0] + claimAmount
            else:
                require stor6[idx].field_0
                mem[256] = 'MATH_MUL_OVERFLOW'
                if 720 * 24 * 3600 * stor6[idx].field_0 / stor6[idx].field_0 != 720 * 24 * 3600:
                    mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[292] = 32
                    idx = 0
                    while idx < 17:
                        mem[idx + 356] = mem[idx + 256]
                        idx = idx + 32
                        continue 
                    mem[356] = mem[371 len 17]
                    revert with 0, 32, 17, mem[356]
                stor10[address(msg.sender)] = stor9[address(msg.sender)] + (720 * 24 * 3600 * stor6[idx].field_0)
                mem[320] = 'MATH_SUB_UNDERFLOW'
                if stor11[address(msg.sender)] > stor5[idx].field_0:
                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[356] = 32
                    idx = 0
                    while idx < 18:
                        mem[idx + 420] = mem[idx + 320]
                        idx = idx + 32
                        continue 
                    mem[420] = mem[434 len 18]
                    revert with 0, 32, 18, mem[420]
                stor11[address(msg.sender)] = stor5[idx].field_0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[384] = 'MATH_SUB_UNDERFLOW'
                if not stor8[address(msg.sender)]:
                    if 0 > ext_call.return_data[0]:
                        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[420] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 484] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        mem[484] = mem[498 len 18]
                        revert with 0, 32, 18, mem[484]
                    mem[448] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] > stor7[idx].field_0:
                        mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[484] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 548] = mem[idx + 448]
                            idx = idx + 32
                            continue 
                        mem[548] = mem[562 len 18]
                        revert with 0, 32, 18, mem[548]
                    require stor7[idx].field_0 - ext_call.return_data[0] > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0]
                else:
                    if claimAmount > ext_call.return_data[0]:
                        mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[420] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 484] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        mem[484] = mem[498 len 18]
                        revert with 0, 32, 18, mem[484]
                    mem[448] = 'MATH_SUB_UNDERFLOW'
                    if ext_call.return_data[0] - claimAmount > stor7[idx].field_0:
                        mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[484] = 32
                        idx = 0
                        while idx < 18:
                            mem[idx + 548] = mem[idx + 448]
                            idx = idx + 32
                            continue 
                        mem[548] = mem[562 len 18]
                        revert with 0, 32, 18, mem[548]
                    require stor7[idx].field_0 - ext_call.return_data[0] + claimAmount > 0
                    require ext_code.size(erc20Address)
                    call erc20Address.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), stor5[idx].field_0 - stor11[address(msg.sender)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'Transfer from msg sender failed'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor7[idx].field_0 - ext_call.return_data[0] + claimAmount
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokensLocked(msg.sender, stor11[address(msg.sender)]);
    stor10[address(msg.sender)] = stor9[address(msg.sender)]
    if stor11[address(msg.sender)] > 0:
        revert with 0, 'MATH_SUB_UNDERFLOW'
    stor11[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor8[address(msg.sender)]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        if ext_call.return_data[0] > 0:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        require -ext_call.return_data[0] > 0
        require ext_code.size(erc20Address)
        call erc20Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), -stor11[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer from msg sender failed'
        require ext_code.size(tokenAddress)
        call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -ext_call.return_data[0]
    else:
        if claimAmount > ext_call.return_data[0]:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        if ext_call.return_data[0] - claimAmount > 0:
            revert with 0, 'MATH_SUB_UNDERFLOW'
        require -ext_call.return_data[0] + claimAmount > 0
        require ext_code.size(erc20Address)
        call erc20Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), -stor11[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer from msg sender failed'
        require ext_code.size(tokenAddress)
        call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -ext_call.return_data[0] + claimAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokensLocked(msg.sender, stor11[address(msg.sender)]);
}



}
