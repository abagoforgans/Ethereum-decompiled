contract main {




// =====================  Runtime code  =====================


const allowRecoverability(address arg1) = 0

const TRANSFER_ROLE = sha3(Mask(104, 152, 'TRANSFER_ROLE') >> 152)


address kernelAddress;
uint256 isDepositable;
uint256 appId;
uint256 initializationBlock;

function isDepositable() {
    return bool(isDepositable)
}

function appId() {
    return appId
}

function getInitializationBlock() {
    return initializationBlock
}

function kernel() {
    return kernelAddress
}

function isPetrified() {
    return (initializationBlock == -1)
}

function transferToVault(address arg1) {
    revert with 0, 'RECOVER_DISALLOWED'
}

function hasInitialized() {
    if not initializationBlock:
        return bool(initializationBlock)
    return block.number >= initializationBlock
}

function initialize() {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    isDepositable = 1
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

function balance(address arg1) {
    if not arg1:
        return eth.balance(this.address)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address) << 64, 0
    if not ext_call.success:
        revert with 0, 'SAFE_ERC_20_BALANCE_REVERTED'
    if ext_call.success <= 0:
        return 0
    return ext_call.return_data[0]
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

function _fallback() payable {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if calldata.size:
        revert with 0, 'VAULT_DATA_NON_ZERO'
    if not isDepositable:
        revert with 0, 'VAULT_NOT_DEPOSITABLE'
    if msg.value <= 0:
        revert with 0, 'VAULT_DEPOSIT_VALUE_ZERO'
    if msg.value != msg.value:
        revert with 0, 'VAULT_VALUE_MISMATCH'
    emit VaultDeposit(msg.value, 0, msg.sender);
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

function deposit(address arg1, uint256 arg2) payable {
    if not initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if block.number < initializationBlock:
        revert with 0, 'INIT_NOT_INITIALIZED'
    if not isDepositable:
        revert with 0, 'VAULT_NOT_DEPOSITABLE'
    if arg2 <= 0:
        revert with 0, 'VAULT_DEPOSIT_VALUE_ZERO'
    if not arg1:
        if arg2 != msg.value:
            revert with 0, 'VAULT_VALUE_MISMATCH'
    else:
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if ext_call.success <= 0:
            revert with 0, 'VAULT_TOKEN_TRANSFER_FROM_REVERT'
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'VAULT_TOKEN_TRANSFER_FROM_REVERT'
            if ext_call.return_data[0] != 1:
                revert with 0, 'VAULT_TOKEN_TRANSFER_FROM_REVERT'
    emit VaultDeposit(arg2, arg1, msg.sender);
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('TRANSFER_ROLE'), 128, 96, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg3 <= 0:
        revert with 0, 'VAULT_TRANSFER_VALUE_ZERO'
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'VAULT_SEND_REVERTED'
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2) << 64, 0, arg3
        if ext_call.success <= 0:
            revert with 0, 'VAULT_TOKEN_TRANSFER_REVERTED'
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'VAULT_TOKEN_TRANSFER_REVERTED'
            if ext_call.return_data[0] != 1:
                revert with 0, 'VAULT_TOKEN_TRANSFER_REVERTED'
    emit VaultTransfer(arg3, arg1, arg2);
}



}
