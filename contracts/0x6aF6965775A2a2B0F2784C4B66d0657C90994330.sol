contract main {




// =====================  Runtime code  =====================


#
#  - isValidSignature(bytes arg1, bytes arg2)
#  - forward(bytes arg1)
#
const allowRecoverability(address arg1) = 0

const isForwarder = 1

const ERC1271_INTERFACE_ID = 0xfb855dc900000000000000000000000000000000000000000000000000000000

const ERC1271_RETURN_INVALID_SIGNATURE = 0

const TRANSFER_ROLE = sha3(Mask(104, 152, 'TRANSFER_ROLE') >> 152)

const RUN_SCRIPT_ROLE = sha3(Mask(120, 136, 'RUN_SCRIPT_ROLE') >> 136)

const DESIGNATE_SIGNER_ROLE = sha3(Mask(168, 88, 'DESIGNATE_SIGNER_ROLE') >> 88)

const EXECUTE_ROLE = sha3(Mask(96, 160, 'EXECUTE_ROLE') >> 160)

const ERC1271_RETURN_VALID_SIGNATURE = 0x20c13b0b00000000000000000000000000000000000000000000000000000000

const ADD_PRESIGNED_HASH_ROLE = sha3(Mask(184, 72, 'ADD_PRESIGNED_HASH_ROLE') >> 72)


mapping of uint8 stor0;
address designatedSignerAddress;
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

function designatedSigner() {
    return designatedSignerAddress
}

function isPresigned(bytes32 arg1) {
    return bool(stor0[arg1])
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

function supportsInterface(bytes4 arg1) {
    if 0xfb855dc900000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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

function presignHash(bytes32 arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('ADD_PRESIGNED_HASH_ROLE'), 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    stor0[arg1] = 1
    emit PresignHash(msg.sender, arg1);
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

function setDesignatedSigner(address arg1) {
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sha3('DESIGNATE_SIGNER_ROLE'), 128, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    if this.address == arg1:
        revert with 0, 'AGENT_DESIGNATED_TO_SELF'
    designatedSignerAddress = arg1
    emit SetDesignatedSigner(msg.sender, designatedSignerAddress, arg1);
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

function execute(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if block.number < initializationBlock:
        revert with 0, 'APP_AUTH_FAILED'
    if not kernelAddress:
        revert with 0, 'APP_AUTH_FAILED'
    require ext_code.size(kernelAddress)
    if arg3.length >= 4:
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('EXECUTE_ROLE'), 128, 96, address(arg1), arg2, mem[128 len 4]
    else:
        call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3('EXECUTE_ROLE'), 128, 96, address(arg1), arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'APP_AUTH_FAILED'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Execute(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return ext_call.return_data[0 len return_data.size]
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

function canForward(address arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 1
    mem[ceil32(arg2.length) + 160] = code.data[14605 len 32]
    mem[ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 224] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 224] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 224 len -(arg2.length % 32) + 32], mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    if not initializationBlock:
        return 0
    if block.number < initializationBlock:
        return 0
    if not kernelAddress:
        return 0
    require ext_code.size(kernelAddress)
    call kernelAddress.hasPermission(address arg1, address arg2, bytes32 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), sha3('RUN_SCRIPT_ROLE'), 128, 32, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 224 len arg2.length % 32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isValidSignature(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if stor0[arg1]:
        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
    if designatedSignerAddress:
        if arg2.length != 0:
            require 0 < arg2.length
            if mem[128 len 1] < 4:
                require mem[128 len 1] <= 4
                if mem[128 len 1] == 1:
                    if 66 == arg2.length:
                        require 65 < arg2.length
                        if mem[193 len 1] >= 27:
                            if 27 == mem[193 len 1]:
                                signer = erecover(arg1, Mask(8, 248, mem[193]), mem[129], mem[161]) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if designatedSignerAddress == address(signer):
                                    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                            else:
                                if 28 == mem[193 len 1]:
                                    signer = erecover(arg1, Mask(8, 248, mem[193]), mem[129], mem[161]) 
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if designatedSignerAddress == address(signer):
                                        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                        else:
                            if 27 == uint8(mem[193 len 1] + 27):
                                signer = erecover(arg1, mem[193 len 1] + 27 << 248, mem[129], mem[161]) 
                                if not erecover.result:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if designatedSignerAddress == address(signer):
                                    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                            else:
                                if 28 == uint8(mem[193 len 1] + 27):
                                    signer = erecover(arg1, mem[193 len 1] + 27 << 248, mem[129], mem[161]) 
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if designatedSignerAddress == address(signer):
                                        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                else:
                    require mem[128 len 1] <= 4
                    if mem[128 len 1] == 2:
                        mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
                        mem[ceil32(arg2.length) + 188] = arg1
                        mem[ceil32(arg2.length) + 128] = 60
                        mem[ceil32(arg2.length) + 220] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1)
                        mem[ceil32(arg2.length) + 252] = Mask(192, 0, arg1), Mask(32, 224, '\x19Ethereum Signed Message:\n32') >> 224 or Mask(32, 224, mem[ceil32(arg2.length) + 252])
                        if 66 == arg2.length:
                            require 65 < arg2.length
                            if mem[193 len 1] >= 27:
                                if 27 == mem[193 len 1]:
                                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), mem[ceil32(arg2.length) + 252 len 28]), Mask(8, 248, mem[193]), mem[129], mem[161]) 
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if designatedSignerAddress == address(signer):
                                        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                                else:
                                    if 28 == mem[193 len 1]:
                                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), mem[ceil32(arg2.length) + 252 len 28]), Mask(8, 248, mem[193]), mem[129], mem[161]) 
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if designatedSignerAddress == address(signer):
                                            return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                            else:
                                if 27 == uint8(mem[193 len 1] + 27):
                                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), mem[ceil32(arg2.length) + 252 len 28]), mem[193 len 1] + 27 << 248, mem[129], mem[161]) 
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if designatedSignerAddress == address(signer):
                                        return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                                else:
                                    if 28 == uint8(mem[193 len 1] + 27):
                                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), mem[ceil32(arg2.length) + 252 len 28]), mem[193 len 1] + 27 << 248, mem[129], mem[161]) 
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if designatedSignerAddress == address(signer):
                                            return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                    else:
                        require mem[128 len 1] <= 4
                        if mem[128 len 1] == 3:
                            mem[ceil32(arg2.length) + 128] = 30
                            mem[ceil32(arg2.length) + 160] = 'SIGVAL_INVALID_LENGTH_POP_BYTE'
                            if arg2.length <= 0:
                                revert with 0, 'SIGVAL_INVALID_LENGTH_POP_BYTE'
                            mem[ceil32(arg2.length) + 192] = arg2.length - 1
                            if not arg2.length - 1:
                                if arg2.length - 1 != 0:
                                    mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[129 len floor32(arg2.length - 1)]
                                    mem[ceil32(arg2.length) + floor32(arg2.length - 1) + 224] = mem[ceil32(arg2.length) + floor32(arg2.length - 1) + 224] and 256^(-(arg2.length - 1 % 32) + 32) - 1 or mem[floor32(arg2.length - 1) + 129] and !(256^(-(arg2.length - 1 % 32) + 32) - 1)
                                mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 324] = arg2.length - 1
                                mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 356 len floor32(arg2.length + 30)] = mem[ceil32(arg2.length) + 224 len floor32(arg2.length + 30)]
                                if not arg2.length - 1 % 32:
                                    if gas_remaining > 250000:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas 250000 wei
                                               args arg1, 64, mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 324 len arg2.length + 31]
                                    else:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas gas_remaining wei
                                               args arg1, 64, mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 324 len arg2.length + 31]
                                    if ext_call.success:
                                        if return_data.size == 32:
                                            mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 30) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0x20c13b0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 30) + 355]):
                                                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 356] = mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + -(arg2.length - 1 % 32) + 388 len arg2.length - 1 % 32]
                                    if gas_remaining > 250000:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas 250000 wei
                                               args arg1, Array(len=arg2.length - 1, data=mem[ceil32(arg2.length) + 224 len floor32(arg2.length + 30)], mem[ceil32(arg2.length) + (2 * floor32(arg2.length + 30)) + 356 len floor32(arg2.length - 1) + -floor32(arg2.length + 30) + 32])
                                    else:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas gas_remaining wei
                                               args arg1, Array(len=arg2.length - 1, data=mem[ceil32(arg2.length) + 224 len floor32(arg2.length + 30)], mem[ceil32(arg2.length) + (2 * floor32(arg2.length + 30)) + 356 len floor32(arg2.length - 1) + -floor32(arg2.length + 30) + 32])
                                    if ext_call.success:
                                        if return_data.size == 32:
                                            mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if 0x20c13b0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 388]):
                                                return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                            else:
                                mem[ceil32(arg2.length) + 224 len 32 * arg2.length - 1] = code.data[14605 len 32 * arg2.length - 1]
                                if 0 == arg2.length - 1:
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260] = arg1
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 292] = 64
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 324] = arg2.length - 1
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 356 len floor32(arg2.length + 30)] = code.data[14605 len floor32(arg2.length + 30)]
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260 len 28] = Mask(224, 32, arg1) >> 32
                                    if gas_remaining > 250000:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas 250000 wei
                                               args mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260 len code.data[floor32(arg2.length + 30) + 14605 len 32] - 4]
                                    else:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas gas_remaining wei
                                               args mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260 len code.data[floor32(arg2.length + 30) + 14605 len 32] - 4]
                                    if not arg2.length - 1 % 32:
                                        if ext_call.success:
                                            if return_data.size == 32:
                                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 30) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0x20c13b0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 30) + 355]):
                                                    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                                    else:
                                        if ext_call.success:
                                            if return_data.size == 32:
                                                mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0x20c13b0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 388]):
                                                    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                                else:
                                    mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[129 len floor32(arg2.length - 1)]
                                    mem[ceil32(arg2.length) + floor32(arg2.length - 1) + 224] = mem[ceil32(arg2.length) + floor32(arg2.length - 1) + 224] and 256^(-(arg2.length - 1 % 32) + 32) - 1 or mem[floor32(arg2.length - 1) + 129] and !(256^(-(arg2.length - 1 % 32) + 32) - 1)
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260] = arg1
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 292] = 64
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 324] = arg2.length - 1
                                    mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 356 len floor32(arg2.length + 30)] = code.data[14605 len floor32(arg2.length + 30)]
                                    if gas_remaining > 250000:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas 250000 wei
                                               args mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260 len code.data[floor32(arg2.length + 30) + 14605 len 32] - 4]
                                    else:
                                        staticcall designatedSignerAddress.0x1626ba7e with:
                                                gas gas_remaining wei
                                               args mem[ceil32(arg2.length) + floor32(arg2.length + 30) + 260 len code.data[floor32(arg2.length + 30) + 14605 len 32] - 4]
                                    if not arg2.length - 1 % 32:
                                        if ext_call.success:
                                            if return_data.size == 32:
                                                mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 30) + 355 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0x20c13b0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 30) + 355]):
                                                    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                                    else:
                                        if ext_call.success:
                                            if return_data.size == 32:
                                                mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if 0x20c13b0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, mem[floor32(arg2.length - 1) + ceil32(arg2.length) + floor32(arg2.length + 30) + 388]):
                                                    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
