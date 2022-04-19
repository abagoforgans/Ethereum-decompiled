contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 8774]




// =====================  Runtime code  =====================


const sub_91f8035c(?) = 0x3231231231231231231231231231231231231233


uint8 stor0; offset 160
uint8 stor0; offset 248
uint128 stor0; offset 168
uint128 lastNonce; offset 160
address contractOwner;
address stor1;

function lastNonce() {
    return lastNonce
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert
}

function granted(address arg1) {
    return (contractOwner == arg1)
}

function alwaysRequireCosignature() {
    return not bool(uint8(stor0.field_248))
}

function isCosignerSet() {
    if not stor1:
        return 1
    return bool(stor1)
}

function constructor() {
    require not contractOwner
    contractOwner = msg.sender
}

function cosigner() {
    if not stor1:
        return 0x3231231231231231231231231231231231231233
    return stor1
}

function proxy() {
    require ext_code.size(this.address)
    call this.address.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function init(address arg1) {
    if contractOwner == msg.sender:
        require not lastNonce
        contractOwner = arg1
        uint8(stor0.field_160) = 1
        Mask(80, 0, stor0.field_168) = 0
    else:
        if msg.sender != this.address:
            emit Error('Access denied');
        else:
            require not lastNonce
            contractOwner = arg1
            uint8(stor0.field_160) = 1
            Mask(80, 0, stor0.field_168) = 0
}

function initInsecure(address arg1) {
    if contractOwner == msg.sender:
        require not lastNonce
        contractOwner = arg1
        uint8(stor0.field_160) = 1
        Mask(80, 0, stor0.field_168) = 0
    else:
        if msg.sender != this.address:
            emit Error('Access denied');
        else:
            require not lastNonce
            contractOwner = arg1
            uint8(stor0.field_160) = 1
            Mask(80, 0, stor0.field_168) = 0
    uint8(stor0.field_248) = 1
}

function enableSecureMode() {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not uint8(stor0.field_248):
        if not stor1:
            require ext_code.size(0x3231231231231231231231231231231231231233)
            call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
        else:
            require ext_code.size(stor1)
            call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Cosigner: access denied');
            return 0
    uint8(stor0.field_248) = 0
    return 1
}

function disableSecureMode() {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not uint8(stor0.field_248):
        if not stor1:
            require ext_code.size(0x3231231231231231231231231231231231231233)
            call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
        else:
            require ext_code.size(stor1)
            call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Cosigner: access denied');
            return 0
    uint8(stor0.field_248) = 1
    return 1
}

function recover(address arg1, address arg2) {
    if stor1:
        require ext_code.size(stor1)
        call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 2
    else:
        if not stor1:
            require ext_code.size(0x3231231231231231231231231231231231231233)
            call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 2
        else:
            require ext_code.size(stor1)
            call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Cosigner: access denied');
        return 0
    if contractOwner != arg1:
        emit Error('Must recover from owner');
        return 0
    contractOwner = arg2
    emit 0x595ee9ff: arg2
    return 1
}

function actOnBehalf(bytes arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = address(this.address)
    signer = erecover(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 20], arg2, None), arg3 << 248, arg4, arg5) 
    require erecover.result
    if not address(signer):
        emit Error('Invalid signature');
        return 0
    if arg2 <= lastNonce:
        emit Error('Invalid nonce');
        return 0
    if contractOwner != address(signer):
        emit Error('Access denied');
        return 0
    lastNonce = Mask(88, 0, arg2)
    call this.address with:
         gas gas_remaining wei
        args arg1[all]
    return ext_call.return_data[0]
}

function claimContractOwnership() {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not stor1:
        require ext_code.size(0x3231231231231231231231231231231231231233)
        call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    else:
        require ext_code.size(stor1)
        call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Cosigner: access denied');
        return 0
    require ext_code.size(this.address)
    call this.address.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4592cd1d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function confirmAndForward(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not stor1:
        require ext_code.size(0x3231231231231231231231231231231231231233)
        call 0x3231231231231231231231231231231231231233.confirm(bytes32 rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
             gas gas_remaining - 710 wei
            args arg4, address(this.address), arg5, arg6 << 248, arg7, arg8
    else:
        require ext_code.size(stor1)
        call stor1.confirm(bytes32 rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
             gas gas_remaining - 710 wei
            args arg4, address(this.address), arg5, arg6 << 248, arg7, arg8
    require ext_call.success
    require ext_code.size(this.address)
    call this.address.0xd7f31eb9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not stor1:
        require ext_code.size(0x3231231231231231231231231231231231231233)
        call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    else:
        require ext_code.size(stor1)
        call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Cosigner: access denied');
        return 0
    require ext_code.size(this.address)
    call this.address.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x557f4bc9 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not stor1:
        require ext_code.size(0x3231231231231231231231231231231231231233)
        call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    else:
        require ext_code.size(stor1)
        call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Cosigner: access denied');
        return 0
    require ext_code.size(this.address)
    call this.address.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd613be0a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setCosignerAddress(address arg1) {
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not stor1:
        require ext_code.size(0x3231231231231231231231231231231231231233)
        call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    else:
        require ext_code.size(stor1)
        call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Cosigner: access denied');
        return 0
    if arg1:
        require ext_code.size(arg1)
        call arg1.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 2
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Invalid cosigner');
            return 0
    stor1 = arg1
    emit 0xa8d60633: arg1
    return 1
}

function forwardOnBehalf(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 212 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 180] = address(this.address)
    signer = erecover(sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 20], arg4, None), arg5 << 248, arg6, arg7) 
    require erecover.result
    if not address(signer):
        emit Error('Invalid signature');
        return 0
    if arg4 <= lastNonce:
        emit Error('Invalid nonce');
        return 0
    if contractOwner != address(signer):
        emit Error('Access denied');
        return 0
    lastNonce = Mask(88, 0, arg4)
    require ext_code.size(this.address)
    call this.address.0xd7f31eb9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function confirmAndForwardOnBehalf(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, uint256[2] arg5, uint8[2] arg6, bytes32[2] arg7, bytes32[2] arg8) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 64] = call.data[132 len 64]
    mem[ceil32(arg3.length) + 420] = this.address
    mem[ceil32(arg3.length) + 452] = call.data[132]
    mem[ceil32(arg3.length) + 484] = uint8(call.data[196])
    mem[ceil32(arg3.length) + 516] = call.data[260]
    mem[ceil32(arg3.length) + 548] = call.data[324]
    if not stor1:
        require ext_code.size(0x3231231231231231231231231231231231231233)
        call 0x3231231231231231231231231231231231231233.confirm(bytes32 rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
             gas gas_remaining - 710 wei
            args arg4, address(this.address), call.data[132], call.data[196] << 248, call.data[260], call.data[324]
    else:
        require ext_code.size(stor1)
        call stor1.confirm(bytes32 rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
             gas gas_remaining - 710 wei
            args arg4, address(this.address), call.data[132], call.data[196] << 248, call.data[260], call.data[324]
    require ext_call.success
    mem[ceil32(arg3.length) + 436 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 468 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 436] = address(this.address)
    mem[arg3.length + ceil32(arg3.length) + 456] = call.data[164]
    signer = erecover(sha3(arg1, arg2, mem[ceil32(arg3.length) + 436 len 16], call.data[132], mem[ceil32(arg3.length) + 484 len arg3.length + 4]), call.data[228] << 248, call.data[292], call.data[356]) 
    require erecover.result
    if not address(signer):
        emit Error('Invalid signature');
        return 0
    if call.data[164] <= lastNonce:
        emit Error('Invalid nonce');
        return 0
    if contractOwner != address(signer):
        emit Error('Access denied');
        return 0
    lastNonce = Mask(88, 0, call.data[164])
    require ext_code.size(this.address)
    call this.address.0xd7f31eb9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return ext_call.return_data[0]
}

function forward(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if contractOwner != msg.sender:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not uint8(stor0.field_248):
        mem[ceil32(arg3.length) + 128 len calldata.size] = call.data[0 len calldata.size]
        if not stor1:
            require ext_code.size(0x3231231231231231231231231231231231231233)
            call 0x3231231231231231231231231231231231231233.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
        else:
            require ext_code.size(stor1)
            call stor1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Cosigner: access denied');
            return 0
    require ext_code.size(this.address)
    call this.address.0xec556889 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(arg3.length) + 128] = 0xe04f31e900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xe04f31e9 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, 128, 0, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xe04f31e9 with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2, 128, 0, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return ext_call.return_data[0]
}



}
