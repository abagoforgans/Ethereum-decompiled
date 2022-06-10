contract main {




// =====================  Runtime code  =====================


const allowRecoverability(address arg1) = 1

const KERNEL_APP_ID = 0x3b4bf6bf3ad5000ecf0f989d5befde585c6860fea3e574a4fab4c49d1c177d9c

const APP_ADDR_NAMESPACE = 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb

const CORE_NAMESPACE = 0xc681a85306374a5ab27f0bbc385296a54bcd314a1948b6cf61c4ea1bc44bb9f8

const APP_MANAGER_ROLE = 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0

const APP_BASES_NAMESPACE = 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f

const DEFAULT_ACL_APP_ID = 0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a


mapping of address app;
uint256 recoveryVaultAppId;
mapping of address recoveryVault;
uint256 initializationBlock;

function getRecoveryVault() {
    return recoveryVault[stor1]
}

function apps(bytes32 arg1, bytes32 arg2) {
    return app[arg1][arg2]
}

function recoveryVaultAppId() {
    return recoveryVaultAppId
}

function getInitializationBlock() {
    return initializationBlock
}

function getApp(bytes32 arg1, bytes32 arg2) {
    return app[arg1][arg2]
}

function acl() {
    return app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]
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

function newAppProxy(address arg1, bytes32 arg2) {
    create contract with 0 wei
                    code: code.data[9617 len 1769], address(arg1), arg2, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 1, arg2);
    return address(create.new_address)
}

function newAppProxyPinned(address arg1, bytes32 arg2) {
    create contract with 0 wei
                    code: code.data[7832 len 1785], address(arg1), arg2, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 0, arg2);
    return address(create.new_address)
}

function hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) {
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        return bool(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setRecoveryVaultAppId(bytes32 arg1) {
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    recoveryVaultAppId = arg1
}

function transferToVault(address arg1) {
    if not recoveryVault[stor1]:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if ext_code.size(recoveryVault[stor1]) <= 0:
        revert with 0, 'RECOVER_VAULT_NOT_CONTRACT'
    if not arg1:
        call recoveryVault[stor1] with:
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
            args recoveryVault[stor1], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function setApp(bytes32 arg1, bytes32 arg2, address arg3) {
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if not arg3:
        revert with 0, 'KERNEL_APP_NOT_CONTRACT'
    if ext_code.size(arg3) <= 0:
        revert with 0, 'KERNEL_APP_NOT_CONTRACT'
    app[arg1][arg2] = arg3
    emit SetApp(arg3, arg1, arg2);
}

function newAppProxy(address arg1, bytes32 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 1769] = code.data[9617 len 1769]
    mem[ceil32(arg3.length) + 2025 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[9617 len 1769], address(arg1), arg2, 96, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2025] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2057 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[9617 len 1769], address(arg1), arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 2025 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 1, arg2);
    return address(create.new_address)
}

function newAppProxyPinned(address arg1, bytes32 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 1785] = code.data[7832 len 1785]
    mem[ceil32(arg3.length) + 2041 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[7832 len 1785], address(arg1), arg2, 96, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2041] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2073 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[7832 len 1785], address(arg1), arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 2041 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 0, arg2);
    return address(create.new_address)
}

function initialize(address arg1, address arg2) {
    if initializationBlock:
        revert with 0, 'INIT_ALREADY_INITIALIZED'
    initializationBlock = block.number
    if not arg1:
        revert with 0, 'KERNEL_APP_NOT_CONTRACT'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'KERNEL_APP_NOT_CONTRACT'
    app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a] = arg1
    emit SetApp(bytes32 arg1, bytes32 arg2, address arg3):
                arg1,
    emit 0xf1f3eb40: arg1
    emit 0xe3262375: arg1
    create contract with 0 wei
                    code: code.data[9617 len 1769], address(this.address), 0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 1, 0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a);
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(create.new_address):
        revert with 0, 'KERNEL_APP_NOT_CONTRACT'
    if ext_code.size(create.new_address) <= 0:
        revert with 0, 'KERNEL_APP_NOT_CONTRACT'
    app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a] = address(create.new_address)
    emit SetApp(bytes32 arg1, bytes32 arg2, address arg3):
                address(create.new_address),
    emit 0xd6f028ca: address(create.new_address)
    emit 0xe3262375: address(create.new_address)
    recoveryVaultAppId = 0x7e852e0fcfce6551c13800f1e7476f982525c2b5277ba14b24339c68416336d1
}

function newAppInstance(bytes32 arg1, address arg2) {
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
        if arg2 != app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
            revert with 0, 'KERNEL_INVALID_APP_CHANGE'
    else:
        if not arg2:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        if ext_code.size(arg2) <= 0:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1] = arg2
        emit SetApp(arg2, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1);
    create contract with 0 wei
                    code: code.data[9617 len 1769], address(this.address), arg1, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 1, arg1);
    return address(create.new_address)
}

function newPinnedAppInstance(bytes32 arg1, address arg2) {
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
        if arg2 != app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
            revert with 0, 'KERNEL_INVALID_APP_CHANGE'
    else:
        if not arg2:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        if ext_code.size(arg2) <= 0:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1] = arg2
        emit SetApp(arg2, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1);
    create contract with 0 wei
                    code: code.data[7832 len 1785], address(this.address), arg1, 96, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 0, arg1);
    return address(create.new_address)
}

function newAppInstance(bytes32 arg1, address arg2, bytes arg3, bool arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 64
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
        if arg2 != app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
            revert with 0, 'KERNEL_INVALID_APP_CHANGE'
    else:
        if not arg2:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        if ext_code.size(arg2) <= 0:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1] = arg2
        emit SetApp(arg2, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1);
    mem[ceil32(arg3.length) + 2249 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[9617 len 1769], address(this.address), arg1, 96, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2249] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2281 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[9617 len 1769], address(this.address), arg1, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 2249 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 1, arg1);
    if arg4:
        if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
            revert with 0, 'KERNEL_AUTH_FAILED'
        require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
        call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'KERNEL_AUTH_FAILED'
        if not address(create.new_address):
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        if ext_code.size(create.new_address) <= 0:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][arg1] = address(create.new_address)
        emit SetApp(address(create.new_address), 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, arg1);
    return address(create.new_address)
}

function newPinnedAppInstance(bytes32 arg1, address arg2, bytes arg3, bool arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 64
    if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
    call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'KERNEL_AUTH_FAILED'
    if app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
        if arg2 != app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1]:
            revert with 0, 'KERNEL_INVALID_APP_CHANGE'
    else:
        if not arg2:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        if ext_code.size(arg2) <= 0:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        app[0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f][arg1] = arg2
        emit SetApp(arg2, 0xf1f3eb40f5bc1ad1344716ced8b8a0431d840b5783aea1fd01786bc26f35ac0f, arg1);
    mem[ceil32(arg3.length) + 2265 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[7832 len 1785], address(this.address), arg1, 96, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2265] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2297 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[7832 len 1785], address(this.address), arg1, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 2265 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit NewAppProxy(address(create.new_address), 0, arg1);
    if arg4:
        if not app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a]:
            revert with 0, 'KERNEL_AUTH_FAILED'
        require ext_code.size(app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a])
        call app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][0xe3262375f45a6e2026b7e7b18c2b807434f2508fe1a2a3dfb493c7df8f4aad6a].0xfdef9106 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0xb6d92708f3d4817afc106147d969e229ced5c46e65e0a5002a0d391287762bd0, 128, 64, 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'KERNEL_AUTH_FAILED'
        if not address(create.new_address):
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        if ext_code.size(create.new_address) <= 0:
            revert with 0, 'KERNEL_APP_NOT_CONTRACT'
        app[0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb][arg1] = address(create.new_address)
        emit SetApp(address(create.new_address), 0xd6f028ca0e8edb4a8c9757ca4fdccab25fa1e0317da1188108f7d2dee14902fb, arg1);
    return address(create.new_address)
}



}
