contract main {




// =====================  Runtime code  =====================


#
#  - forward(bytes arg1)
#
const isForwarder = 1

const MAX_VESTINGS_PER_ADDRESS = 50

const ISSUE_ROLE = sha3(Mask(80, 176, 'ISSUE_ROLE') >> 176)

const ASSIGN_ROLE = sha3(Mask(88, 168, 'ASSIGN_ROLE') >> 168)

const BURN_ROLE = sha3(Mask(72, 184, 'BURN_ROLE') >> 184)

const MINT_ROLE = sha3(Mask(72, 184, 'MINT_ROLE') >> 184)

const REVOKE_VESTINGS_ROLE = sha3(Mask(160, 96, 'REVOKE_VESTINGS_ROLE') >> 96)


address tokenAddress;
uint256 maxAccountTokens;
mapping of struct vesting;
mapping of uint256 vestingsLengths;
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function getVesting(address arg1, uint256 arg2) {
    if arg2 >= vestingsLengths[address(arg1)]:
        revert with 0, 'TM_NO_VESTING'
    return vesting[address(arg1)][arg2].field_0, 
           vesting[address(arg1)][arg2].field_256,
           vesting[address(arg1)][arg2].field_256,
           vesting[address(arg1)][arg2].field_256,
           bool(vesting[address(arg1)][arg2].field_448)
}

function appId() {
    return appId
}

function getInitializationBlock() {
    return initializationBlock
}

function vestingsLengths(address arg1) {
    return vestingsLengths[arg1]
}

function kernel() {
    return kernelAddress
}

function maxAccountTokens() {
    return maxAccountTokens
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
    return arg1 != tokenAddress
}

function hasInitialized() {
    if not initializationBlock:
        return bool(initializationBlock)
    return block.number >= initializationBlock
}

function proxyPayment(address arg1) payable {
    if tokenAddress != msg.sender:
        revert with 0, 'TM_CALLER_NOT_TOKEN'
    else:
        return 0
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    if tokenAddress != msg.sender:
        revert with 0, 'TM_CALLER_NOT_TOKEN'
    return 1
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
        return bool(initializationBlock)
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

function burn(address arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('BURN_ROLE'), 128, 64, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(tokenAddress)
    call tokenAddress.destroyTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize(address arg1, bool arg2, uint256 arg3) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    require ext_code.size(arg1)
    call arg1.controller() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'TM_TOKEN_CONTROLLER'
    tokenAddress = arg1
    if not arg3:
        maxAccountTokens = -1
    else:
        maxAccountTokens = arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.transfersEnabled() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != arg2:
        require ext_code.size(tokenAddress)
        call tokenAddress.enableTransfers(bool arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function issue(uint256 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('ISSUE_ROLE'), 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(tokenAddress)
    if this.address != this.address:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'MATH_ADD_OVERFLOW'
        if arg1 + ext_call.return_data[0] > maxAccountTokens:
            revert with 0, 'TM_BALANCE_INC_NOT_ALLOWED'
    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function mint(address arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('MINT_ROLE'), 128, 64, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if this.address == arg1:
        revert with 0, 'TM_MINT_RECEIVER_IS_TM'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'MATH_ADD_OVERFLOW'
    if arg2 + ext_call.return_data[0] > maxAccountTokens:
        revert with 0, 'TM_BALANCE_INC_NOT_ALLOWED'
    require ext_code.size(tokenAddress)
    call tokenAddress.generateTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function assign(address arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('ASSIGN_ROLE'), 128, 64, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(tokenAddress)
    if arg1 != this.address:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'MATH_ADD_OVERFLOW'
        if arg2 + ext_call.return_data[0] > maxAccountTokens:
            revert with 0, 'TM_BALANCE_INC_NOT_ALLOWED'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'TM_ASSIGN_TRANSFER_FROM_REVERTED'
}

function transferToVault(address arg1) {
    if arg1 == tokenAddress:
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

function assignVested(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5, bool arg6) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('ASSIGN_ROLE'), 128, 64, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if this.address == arg1:
        revert with 0, 'TM_VESTING_TO_TM'
    if 50 <= vestingsLengths[address(arg1)]:
        revert with 0, 'TM_TOO_MANY_VESTINGS'
    if arg3 > arg4:
        revert with 0, 'TM_WRONG_CLIFF_DATE'
    if arg4 > arg5:
        revert with 0, 'TM_WRONG_CLIFF_DATE'
    vestingsLengths[address(arg1)]++
    vesting[address(arg1)][stor3[address(arg1)]].field_0 = arg2
    vesting[address(arg1)][stor3[address(arg1)]].field_256 = arg3
    vesting[address(arg1)][stor3[address(arg1)]].field_320 = arg4
    vesting[address(arg1)][stor3[address(arg1)]].field_384 = arg5
    vesting[address(arg1)][stor3[address(arg1)]].field_448 = uint64(arg6)
    require ext_code.size(tokenAddress)
    if arg1 != this.address:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'MATH_ADD_OVERFLOW'
        if arg2 + ext_call.return_data[0] > maxAccountTokens:
            revert with 0, 'TM_BALANCE_INC_NOT_ALLOWED'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'TM_ASSIGN_TRANSFER_FROM_REVERTED'
    emit NewVesting(vestingsLengths[address(arg1)], arg2, arg1);
    return vestingsLengths[address(arg1)]
}

function revokeVesting(address arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('REVOKE_VESTINGS_ROLE'), 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg2 >= vestingsLengths[address(arg1)]:
        revert with 0, 'TM_NO_VESTING'
    if not vesting[address(arg1)][arg2].field_448:
        revert with 0, 'TM_VESTING_NOT_REVOKABLE'
    if block.timestamp >= vesting[address(arg1)][arg2].field_384:
        vesting[address(arg1)][arg2].field_0 = 0
        vesting[address(arg1)][arg2].field_256 = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'TM_REVOKE_TRANSFER_FROM_REVERTED'
        emit RevokeVesting(arg2, 0, arg1);
    else:
        if block.timestamp < vesting[address(arg1)][arg2].field_320:
            vesting[address(arg1)][arg2].field_0 = 0
            vesting[address(arg1)][arg2].field_256 = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), this.address, vesting[address(arg1)][arg2].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'TM_REVOKE_TRANSFER_FROM_REVERTED'
            emit RevokeVesting(arg2, vesting[address(arg1)][arg2].field_0, arg1);
        else:
            if vesting[address(arg1)][arg2].field_256 > vesting[address(arg1)][arg2].field_384:
                revert with 0, 'MATH_SUB_UNDERFLOW'
            if vesting[address(arg1)][arg2].field_256 > block.timestamp:
                revert with 0, 'MATH_SUB_UNDERFLOW'
            if not vesting[address(arg1)][arg2].field_0:
                require vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256
                if 0 / vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256 > vesting[address(arg1)][arg2].field_0:
                    revert with 0, 'MATH_SUB_UNDERFLOW'
                vesting[address(arg1)][arg2].field_0 = 0
                vesting[address(arg1)][arg2].field_256 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), this.address, vesting[address(arg1)][arg2].field_0 - (0 / vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TM_REVOKE_TRANSFER_FROM_REVERTED'
                emit RevokeVesting(arg2, vesting[address(arg1)][arg2].field_0 - (0 / vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256), arg1);
            else:
                if (block.timestamp * vesting[address(arg1)][arg2].field_0) - (vesting[address(arg1)][arg2].field_256 * vesting[address(arg1)][arg2].field_0) / vesting[address(arg1)][arg2].field_0 != block.timestamp - vesting[address(arg1)][arg2].field_256:
                    revert with 0, 'MATH_MUL_OVERFLOW'
                require vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256
                if (block.timestamp * vesting[address(arg1)][arg2].field_0) - (vesting[address(arg1)][arg2].field_256 * vesting[address(arg1)][arg2].field_0) / vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256 > vesting[address(arg1)][arg2].field_0:
                    revert with 0, 'MATH_SUB_UNDERFLOW'
                vesting[address(arg1)][arg2].field_0 = 0
                vesting[address(arg1)][arg2].field_256 = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), this.address, vesting[address(arg1)][arg2].field_0 - ((block.timestamp * vesting[address(arg1)][arg2].field_0) - (vesting[address(arg1)][arg2].field_256 * vesting[address(arg1)][arg2].field_0) / vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TM_REVOKE_TRANSFER_FROM_REVERTED'
                emit RevokeVesting(arg2, vesting[address(arg1)][arg2].field_0 - ((block.timestamp * vesting[address(arg1)][arg2].field_0) - (vesting[address(arg1)][arg2].field_256 * vesting[address(arg1)][arg2].field_0) / vesting[address(arg1)][arg2].field_384 - vesting[address(arg1)][arg2].field_256), arg1);
}

function transferableBalance(address arg1, uint256 arg2) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[64] = 160
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[164] = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != this.address:
        mem[32] = 3
        s = 0
        idx = 0
        while idx < vestingsLengths[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            if arg2 >= vesting[address(arg1)][idx].field_384:
                _160 = mem[64]
                mem[64] = mem[64] + 64
                mem[_160] = 18
                mem[_160 + 32] = 'MATH_SUB_UNDERFLOW'
                if 0 <= ext_call.return_data[0]:
                    s = sha3(idx, sha3(address(arg1), 2))
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _160 + 32]
                    idx = idx + 32
                    continue 
            else:
                if arg2 < vesting[address(arg1)][idx].field_320:
                    _162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_162] = 18
                    mem[_162 + 32] = 'MATH_SUB_UNDERFLOW'
                    if vesting[address(arg1)][idx].field_0 <= ext_call.return_data[0]:
                        s = sha3(idx, sha3(address(arg1), 2))
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _162 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _156 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_156] = 18
                    mem[_156 + 32] = 'MATH_SUB_UNDERFLOW'
                    if vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_384:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 18
                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                        idx = 32
                        while idx < 18:
                            mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_172] = 18
                        mem[_172 + 32] = 'MATH_SUB_UNDERFLOW'
                        if vesting[address(arg1)][idx].field_256 > arg2:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 18
                            mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                            idx = 32
                            while idx < 18:
                                mem[idx + mem[64] + 68] = mem[idx + _172 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not vesting[address(arg1)][idx].field_0:
                                require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                _211 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_211] = 18
                                mem[_211 + 32] = 'MATH_SUB_UNDERFLOW'
                                if 0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _211 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _234 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_234] = 18
                                    mem[_234 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if vesting[address(arg1)][idx].field_0 - (0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                        s = sha3(idx, sha3(address(arg1), 2))
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _234 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                _203 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_203] = 17
                                mem[_203 + 32] = 'MATH_MUL_OVERFLOW'
                                if (arg2 * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_0 != arg2 - vesting[address(arg1)][idx].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 17
                                    mem[mem[64] + 68] = 'MATH_MUL_OVERFLOW'
                                    idx = 32
                                    while idx < 17:
                                        mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'MATH_MUL_OVERFLOW'
                                require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                _212 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_212] = 18
                                mem[_212 + 32] = 'MATH_SUB_UNDERFLOW'
                                if (arg2 * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _212 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _237 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_237] = 18
                                    mem[_237 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if vesting[address(arg1)][idx].field_0 - ((arg2 * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                        s = sha3(idx, sha3(address(arg1), 2))
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _237 + 32]
                                        idx = idx + 32
                                        continue 
            revert with 0, 'MATH_SUB_UNDERFLOW'
    return ext_call.return_data[0]
}

function spendableBalanceOf(address arg1) {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[64] = 160
    mem[96] = 20
    mem[128] = 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    mem[164] = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != this.address:
        mem[32] = 3
        s = 0
        idx = 0
        while idx < vestingsLengths[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            if block.timestamp >= vesting[address(arg1)][idx].field_384:
                _152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_152] = 18
                mem[_152 + 32] = 'MATH_SUB_UNDERFLOW'
                if 0 <= ext_call.return_data[0]:
                    s = sha3(idx, sha3(address(arg1), 2))
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 18
                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                idx = 32
                while idx < 18:
                    mem[idx + mem[64] + 68] = mem[idx + _152 + 32]
                    idx = idx + 32
                    continue 
            else:
                if block.timestamp < vesting[address(arg1)][idx].field_320:
                    _154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_154] = 18
                    mem[_154 + 32] = 'MATH_SUB_UNDERFLOW'
                    if vesting[address(arg1)][idx].field_0 <= ext_call.return_data[0]:
                        s = sha3(idx, sha3(address(arg1), 2))
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _154 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_148] = 18
                    mem[_148 + 32] = 'MATH_SUB_UNDERFLOW'
                    if vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_384:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 18
                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                        idx = 32
                        while idx < 18:
                            mem[idx + mem[64] + 68] = mem[idx + _148 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_164] = 18
                        mem[_164 + 32] = 'MATH_SUB_UNDERFLOW'
                        if vesting[address(arg1)][idx].field_256 > block.timestamp:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 18
                            mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                            idx = 32
                            while idx < 18:
                                mem[idx + mem[64] + 68] = mem[idx + _164 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not vesting[address(arg1)][idx].field_0:
                                require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                _203 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_203] = 18
                                mem[_203 + 32] = 'MATH_SUB_UNDERFLOW'
                                if 0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _226 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_226] = 18
                                    mem[_226 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if vesting[address(arg1)][idx].field_0 - (0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                        s = sha3(idx, sha3(address(arg1), 2))
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _226 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                _195 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_195] = 17
                                mem[_195 + 32] = 'MATH_MUL_OVERFLOW'
                                if (block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_0 != block.timestamp - vesting[address(arg1)][idx].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 17
                                    mem[mem[64] + 68] = 'MATH_MUL_OVERFLOW'
                                    idx = 32
                                    while idx < 17:
                                        mem[idx + mem[64] + 68] = mem[idx + _195 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'MATH_MUL_OVERFLOW'
                                require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                _204 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_204] = 18
                                mem[_204 + 32] = 'MATH_SUB_UNDERFLOW'
                                if (block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _204 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    _229 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_229] = 18
                                    mem[_229 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if vesting[address(arg1)][idx].field_0 - ((block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                        s = sha3(idx, sha3(address(arg1), 2))
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 18
                                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                    idx = 32
                                    while idx < 18:
                                        mem[idx + mem[64] + 68] = mem[idx + _229 + 32]
                                        idx = idx + 32
                                        continue 
            revert with 0, 'MATH_SUB_UNDERFLOW'
    return ext_call.return_data[0]
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    mem[64] = 160
    mem[96] = 19
    mem[128] = 'TM_CALLER_NOT_TOKEN'
    if tokenAddress != msg.sender:
        revert with 0, 'TM_CALLER_NOT_TOKEN'
    if this.address == arg2:
        mem[164] = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 != this.address:
            mem[32] = 3
            s = 0
            idx = 0
            while idx < vestingsLengths[address(arg1)]:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 2)
                if block.timestamp >= vesting[address(arg1)][idx].field_384:
                    _294 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_294] = 18
                    mem[_294 + 32] = 'MATH_SUB_UNDERFLOW'
                    if 0 <= ext_call.return_data[0]:
                        s = sha3(idx, sha3(address(arg1), 2))
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _294 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if block.timestamp < vesting[address(arg1)][idx].field_320:
                        _301 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_301] = 18
                        mem[_301 + 32] = 'MATH_SUB_UNDERFLOW'
                        if vesting[address(arg1)][idx].field_0 <= ext_call.return_data[0]:
                            s = sha3(idx, sha3(address(arg1), 2))
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 18
                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                        idx = 32
                        while idx < 18:
                            mem[idx + mem[64] + 68] = mem[idx + _301 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_286] = 18
                        mem[_286 + 32] = 'MATH_SUB_UNDERFLOW'
                        if vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_384:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 18
                            mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                            idx = 32
                            while idx < 18:
                                mem[idx + mem[64] + 68] = mem[idx + _286 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _323 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_323] = 18
                            mem[_323 + 32] = 'MATH_SUB_UNDERFLOW'
                            if vesting[address(arg1)][idx].field_256 > block.timestamp:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 18
                                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                idx = 32
                                while idx < 18:
                                    mem[idx + mem[64] + 68] = mem[idx + _323 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not vesting[address(arg1)][idx].field_0:
                                    require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                    _396 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_396] = 18
                                    mem[_396 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if 0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _396 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _444 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_444] = 18
                                        mem[_444 + 32] = 'MATH_SUB_UNDERFLOW'
                                        if vesting[address(arg1)][idx].field_0 - (0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                            s = sha3(idx, sha3(address(arg1), 2))
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _444 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    _381 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_381] = 17
                                    mem[_381 + 32] = 'MATH_MUL_OVERFLOW'
                                    if (block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_0 != block.timestamp - vesting[address(arg1)][idx].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 17
                                        mem[mem[64] + 68] = 'MATH_MUL_OVERFLOW'
                                        idx = 32
                                        while idx < 17:
                                            mem[idx + mem[64] + 68] = mem[idx + _381 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'MATH_MUL_OVERFLOW'
                                    require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                    _403 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_403] = 18
                                    mem[_403 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if (block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _403 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _454 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_454] = 18
                                        mem[_454 + 32] = 'MATH_SUB_UNDERFLOW'
                                        if vesting[address(arg1)][idx].field_0 - ((block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                            s = sha3(idx, sha3(address(arg1), 2))
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _454 + 32]
                                            idx = idx + 32
                                            continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = 224
        mem[160] = 17
        mem[192] = 'MATH_ADD_OVERFLOW'
        if arg3 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'MATH_ADD_OVERFLOW'
        if arg3 + ext_call.return_data[0] > maxAccountTokens:
            return arg3 + ext_call.return_data[0] <= maxAccountTokens
        mem[228] = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 != this.address:
            mem[32] = 3
            s = 0
            idx = 0
            while idx < vestingsLengths[address(arg1)]:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 2)
                if block.timestamp >= vesting[address(arg1)][idx].field_384:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 18
                    mem[_290 + 32] = 'MATH_SUB_UNDERFLOW'
                    if 0 <= ext_call.return_data[0]:
                        s = sha3(idx, sha3(address(arg1), 2))
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 18
                    mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                    idx = 32
                    while idx < 18:
                        mem[idx + mem[64] + 68] = mem[idx + _290 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if block.timestamp < vesting[address(arg1)][idx].field_320:
                        _296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_296] = 18
                        mem[_296 + 32] = 'MATH_SUB_UNDERFLOW'
                        if vesting[address(arg1)][idx].field_0 <= ext_call.return_data[0]:
                            s = sha3(idx, sha3(address(arg1), 2))
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 18
                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                        idx = 32
                        while idx < 18:
                            mem[idx + mem[64] + 68] = mem[idx + _296 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        _285 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_285] = 18
                        mem[_285 + 32] = 'MATH_SUB_UNDERFLOW'
                        if vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_384:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 18
                            mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                            idx = 32
                            while idx < 18:
                                mem[idx + mem[64] + 68] = mem[idx + _285 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            _317 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_317] = 18
                            mem[_317 + 32] = 'MATH_SUB_UNDERFLOW'
                            if vesting[address(arg1)][idx].field_256 > block.timestamp:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 18
                                mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                idx = 32
                                while idx < 18:
                                    mem[idx + mem[64] + 68] = mem[idx + _317 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not vesting[address(arg1)][idx].field_0:
                                    require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                    _393 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_393] = 18
                                    mem[_393 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if 0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _393 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _439 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_439] = 18
                                        mem[_439 + 32] = 'MATH_SUB_UNDERFLOW'
                                        if vesting[address(arg1)][idx].field_0 - (0 / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                            s = sha3(idx, sha3(address(arg1), 2))
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _439 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    _379 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_379] = 17
                                    mem[_379 + 32] = 'MATH_MUL_OVERFLOW'
                                    if (block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_0 != block.timestamp - vesting[address(arg1)][idx].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 17
                                        mem[mem[64] + 68] = 'MATH_MUL_OVERFLOW'
                                        idx = 32
                                        while idx < 17:
                                            mem[idx + mem[64] + 68] = mem[idx + _379 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'MATH_MUL_OVERFLOW'
                                    require vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256
                                    _397 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_397] = 18
                                    mem[_397 + 32] = 'MATH_SUB_UNDERFLOW'
                                    if (block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256 > vesting[address(arg1)][idx].field_0:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _397 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _447 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_447] = 18
                                        mem[_447 + 32] = 'MATH_SUB_UNDERFLOW'
                                        if vesting[address(arg1)][idx].field_0 - ((block.timestamp * vesting[address(arg1)][idx].field_0) - (vesting[address(arg1)][idx].field_256 * vesting[address(arg1)][idx].field_0) / vesting[address(arg1)][idx].field_384 - vesting[address(arg1)][idx].field_256) <= ext_call.return_data[0]:
                                            s = sha3(idx, sha3(address(arg1), 2))
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 18
                                        mem[mem[64] + 68] = 'MATH_SUB_UNDERFLOW'
                                        idx = 32
                                        while idx < 18:
                                            mem[idx + mem[64] + 68] = mem[idx + _447 + 32]
                                            idx = idx + 32
                                            continue 
                revert with 0, 'MATH_SUB_UNDERFLOW'
    return ext_call.return_data[0] >= arg3
}



}
