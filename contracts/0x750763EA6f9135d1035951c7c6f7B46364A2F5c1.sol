contract main {




// =====================  Runtime code  =====================


#
#  - evalParams(bytes32 arg1, address arg2, address arg3, bytes32 arg4, uint256[] arg5)
#  - hasPermission(address arg1, address arg2, bytes32 arg3)
#  - hasPermission(address arg1, address arg2, bytes32 arg3, uint256[] arg4)
#  - hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4)
#
const sub_1d63ff2b(?) = 0

const allowRecoverability(address arg1) = 1

const sub_a5ed8bf8(?) = 0xffffffffffffffffffffffffffffffffffffffff

const sub_f516bc0e(?) = 1

const CREATE_PERMISSIONS_ROLE = 0xb719b33c83b8e5d300c521cb8b54ae9bd933996a14bef8c2f4e0285d2d2400a

const EMPTY_PARAM_HASH = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563


mapping of uint256 stor0;
array of struct permissionParamsLength;
mapping of struct permissionManager;
address kernelAddress;
uint256 appId;
uint256 initializationBlock;

function getPermissionParamsLength(address arg1, address arg2, bytes32 arg3) {
    return uint256(permissionParamsLength[stor0['PERMISSION'][arg1][arg2][arg3]].field_0)
}

function appId() {
    return appId
}

function getInitializationBlock() {
    return initializationBlock
}

function getPermissionParam(address arg1, address arg2, bytes32 arg3, uint256 arg4) {
    require arg4 < uint256(permissionParamsLength[stor0['PERMISSION'][arg1][arg2][arg3]].field_0)
    return uint8(permissionParamsLength[stor0['PERMISSION'][arg1][arg2][arg3]][arg4].field_0), 
           uint8(permissionParamsLength[stor0['PERMISSION'][arg1][arg2][arg3]][arg4].field_0),
           Mask(240, 0, permissionParamsLength[stor0['PERMISSION'][arg1][arg2][arg3]][arg4].field_16)
}

function getPermissionManager(address arg1, bytes32 arg2) {
    return address(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0)
}

function kernel() {
    return kernelAddress
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

function revokePermission(address arg1, address arg2, bytes32 arg3) {
    if address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0) != msg.sender:
        revert with 0, 'ACL_AUTH_NO_MANAGER'
    stor0['PERMISSION'][arg1][arg2][arg3] = 0
    emit SetPermission(0, arg1, arg2, arg3);
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

function removePermissionManager(address arg1, bytes32 arg2) {
    if address(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0) != msg.sender:
        revert with 0, 'ACL_AUTH_NO_MANAGER'
    address(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0) = 0
    emit ChangePermissionManager(arg1, arg2, 0);
}

function setPermissionManager(address arg1, address arg2, bytes32 arg3) {
    if address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0) != msg.sender:
        revert with 0, 'ACL_AUTH_NO_MANAGER'
    address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0) = arg1
    emit ChangePermissionManager(arg2, arg3, arg1);
}

function grantPermission(address arg1, address arg2, bytes32 arg3) {
    if address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0) != msg.sender:
        revert with 0, 'ACL_AUTH_NO_MANAGER'
    stor0['PERMISSION'][arg1][arg2][arg3] = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    emit SetPermission(1, arg1, arg2, arg3);
}

function burnPermissionManager(address arg1, bytes32 arg2) {
    if address(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0) != msg.sender:
        revert with 0, 'ACL_AUTH_NO_MANAGER'
    uint8(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0) = 1
    Mask(152, 0, permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_8) = 0
    emit ChangePermissionManager(arg1, arg2, 1);
}

function getEVMScriptRegistry() {
    require ext_code.size(kernelAddress)
    call kernelAddress.0xbe00bbd8 with:
         gas gas_remaining wei
        args 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, 0xddbcfd564f642ab5627cf68b9b7d374fb4f8a36e941a75d89c87998cef03bd61
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function initialize(address arg1) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    if kernelAddress != msg.sender:
        revert with 0, 'ACL_AUTH_INIT_KERNEL'
    stor0['PERMISSION'][arg1][this.address][0xb719b33c83b8e5d300c521cb8b5][0x4ae9bd933996a14bef8c2f4e0285d2d2400a] = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    emit SetPermission(1, arg1, this.address, 0xb719b33c83b8e5d300c521cb8b54ae9bd933996a14bef8c2f4e0285d2d2400a);
    address(permissionManager['ROLE'][this.address][824610853490495069][0x300c521cb8b54ae9bd933996a14bef8c2f4e0285d2d2400a].field_0) = arg1
    emit ChangePermissionManager(this.address, 0xb719b33c83b8e5d300c521cb8b54ae9bd933996a14bef8c2f4e0285d2d2400a, arg1);
}

function getEVMScriptExecutor(bytes arg1) {
    require ext_code.size(kernelAddress)
    call kernelAddress.0xbe00bbd8 with:
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
    call kernelAddress.0xfdef9106 with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2, Array(len=32 * arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 292 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function createBurnedPermission(address arg1, bytes32 arg2) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, this.address, 0xb719b33c83b8e5d300c521cb8b54ae9bd933996a14bef8c2f4e0285d2d2400a, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if address(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0):
        revert with 0, 'ACL_EXISTENT_MANAGER'
    uint8(permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_0) = 1
    Mask(152, 0, permissionManager['ROLE'][arg1][uint64(arg2)][Mask(192, 0, arg2)].field_8) = 0
    emit ChangePermissionManager(arg1, arg2, 1);
}

function createPermission(address arg1, address arg2, bytes32 arg3, address arg4) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, this.address, 0xb719b33c83b8e5d300c521cb8b54ae9bd933996a14bef8c2f4e0285d2d2400a, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0):
        revert with 0, 'ACL_EXISTENT_MANAGER'
    stor0['PERMISSION'][arg1][arg2][arg3] = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    emit SetPermission(1, arg1, arg2, arg3);
    address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0) = arg4
    emit ChangePermissionManager(arg2, arg3, arg4);
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
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function grantPermissionP(address arg1, address arg2, bytes32 arg3, uint256[] arg4) {
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 160] = 'ROLE'
    mem[(32 * arg4.length) + 164] = address(arg2)
    mem[(32 * arg4.length) + 184] = arg3
    mem[(32 * arg4.length) + 128] = 56
    mem[(32 * arg4.length) + 216] = 19
    mem[(32 * arg4.length) + 248] = 'ACL_AUTH_NO_MANAGER'
    if address(permissionManager['ROLE'][arg2][uint64(arg3)][Mask(192, 0, arg3)].field_0) != msg.sender:
        revert with 0, 'ACL_AUTH_NO_MANAGER'
    if arg4.length <= 0:
        stor0['PERMISSION'][arg1][arg2][arg3] = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        emit SetPermission(1, arg1, arg2, arg3);
    else:
        mem[(32 * arg4.length) + 280] = 0
        mem[(32 * arg4.length) + 312] = 0
        mem[(32 * arg4.length) + 344] = 0
        mem[(32 * arg4.length) + 408 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(32 * arg4.length) + 376] = 32 * arg4.length
        mem[64] = (64 * arg4.length) + 408
        mem[(64 * arg4.length) + 408 len 32 * arg4.length] = call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 408 len (32 * arg4.length) - floor32(arg4.length)]
        _230 = sha3(mem[(64 * arg4.length) + 408 len 32 * arg4.length])
        mem[0] = sha3(mem[(64 * arg4.length) + 408 len 32 * arg4.length])
        mem[32] = 1
        _231 = sha3(sha3(mem[(64 * arg4.length) + 408 len 32 * arg4.length]), 1)
        if uint256(permissionParamsLength[mem[(64 * arg4.length) + 408 len 32 * arg4.length]].field_0):
            mem[(64 * arg4.length) + 490] = arg3
            mem[(64 * arg4.length) + 522 len floor32((127 * arg4.length) + 82)] = 'PERMISSION', arg1, arg2, mem[(64 * arg4.length) + 490 len floor32((127 * arg4.length) + 82) - 50]
            mem[(64 * arg4.length) + floor32((127 * arg4.length) + 82) + 522] = mem[(64 * arg4.length) + floor32((127 * arg4.length) + 82) + 522] and 256^(-((127 * arg4.length) + 82 % 32) + 32) - 1 or mem[(64 * arg4.length) + floor32((127 * arg4.length) + 82) + 440] and !(256^(-((127 * arg4.length) + 82 % 32) + 32) - 1)
            stor0[mem[(64 * arg4.length) + 522 len (127 * arg4.length) + 82]] = _230
        else:
            s = (32 * arg4.length) + 280
            s = 0
            idx = 0
            while idx < arg4.length:
                require idx < mem[96]
                _279 = mem[(32 * idx) + 128]
                _280 = mem[64]
                mem[64] = mem[64] + 96
                mem[_280] = mem[(32 * idx) + 128 len 1]
                mem[_280 + 32] = Mask(8, 240, _279) >> 240
                mem[_280 + 64] = Mask(240, 0, _279)
                uint256(stor[_231].field_0)++
                mem[0] = _231
                uint8(stor[uint256(stor[_231].field_0) + sha3(_231)].field_0) = Mask(8, 248, _279) >> 248
                uint8(stor[uint256(stor[_231].field_0) + sha3(_231)].field_8) = Mask(8, 240, _279) >> 240
                Mask(240, 0, stor[uint256(stor[_231].field_0) + sha3(_231)].field_16) = Mask(240, 0, _279)
                s = _280
                s = _279
                idx = idx + 1
                continue 
            _285 = mem[64]
            mem[mem[64] + 32] = 'PERMISSION'
            mem[mem[64] + 42] = address(arg1)
            mem[mem[64] + 62] = address(arg2)
            mem[mem[64] + 82] = arg3
            _286 = mem[64]
            mem[mem[64]] = 82
            mem[64] = mem[64] + 114
            _287 = mem[_286]
            mem[_285 + 114 len floor32(mem[_286])] = mem[_286 + 32 len floor32(mem[_286])]
            mem[_285 + floor32(mem[_286]) + 114] = mem[_285 + floor32(mem[_286]) + 114] and 256^(-(mem[_286] % 32) + 32) - 1 or mem[_286 + floor32(mem[_286]) + 32] and !(256^(-(mem[_286] % 32) + 32) - 1)
            mem[0] = sha3(mem[_285 + 114 len _287])
            stor0[mem[0]] = _230
        emit SetPermission(bool(_230), arg1, arg2, arg3);
        if not _230:
        else:
            if _230 != 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563:
                emit SetPermissionParams(_230, arg1, arg2, arg3);
}



}
