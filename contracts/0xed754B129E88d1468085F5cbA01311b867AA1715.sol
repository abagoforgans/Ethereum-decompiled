contract main {




// =====================  Runtime code  =====================


const allowRecoverability(address arg1) = 1

const REGISTRY_ADD_EXECUTOR_ROLE = 0xc4e90f38eea8c4212a009ca7b8947943ba4d4a58d19b683417f65291d1cd9ed2

const REGISTRY_MANAGER_ROLE = 0xf7a450ef335e1892cb42c8ca72e7242359d7711924b75db5717410da3f614aa3


uint256 stor0;
mapping of struct executors;
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function appId() {
    return appId
}

function getInitializationBlock() {
    return initializationBlock
}

function kernel() {
    return kernelAddress
}

function executors(uint256 arg1) {
    return executors[arg1].field_0, bool(executors[arg1].field_160)
}

function _fallback() payable {
    revert
}

function isPetrified() {
    return (initializationBlock == -1)
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
    stor0 = 1
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

function getScriptExecutor(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 30
    if arg1.length < 4:
        revert with 0, 'EVMREG_SCRIPT_LENGTH_TOO_SHORT'
    if executors[mem[128 len 4]].field_160:
        return executors[mem[128 len 4]].field_0
    else:
        return 0
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

function addScriptExecutor(address arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xc4e90f38eea8c4212a009ca7b8947943ba4d4a58d19b683417f65291d1cd9ed2, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    stor0++
    executors[stor0].field_0 = arg1
    executors[stor0].field_160 = 1
    emit EnableExecutor(stor0, arg1);
    return stor0
}

function disableScriptExecutor(uint256 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xf7a450ef335e1892cb42c8ca72e7242359d7711924b75db5717410da3f614aa3, 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if not executors[arg1].field_160:
        revert with 0, 'EVMREG_EXECUTOR_DISABLED'
    executors[arg1].field_160 = 0
    emit DisableExecutor(arg1, executors[arg1].field_0);
}

function enableScriptExecutor(uint256 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xf7a450ef335e1892cb42c8ca72e7242359d7711924b75db5717410da3f614aa3, 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if arg1 <= 0:
        revert with 0, 'EVMREG_INEXISTENT_EXECUTOR'
    if arg1 >= stor0:
        revert with 0, 'EVMREG_INEXISTENT_EXECUTOR'
    if executors[arg1].field_160:
        revert with 0, 'EVMREG_EXECUTOR_ENABLED'
    executors[arg1].field_160 = 1
    emit EnableExecutor(arg1, 0 or executors[arg1].field_0);
}

function transferToVault(address arg1) {
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



}
