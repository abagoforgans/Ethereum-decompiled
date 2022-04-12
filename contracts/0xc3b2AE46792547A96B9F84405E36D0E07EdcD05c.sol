contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 9331]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address cosignerAddress;
address proxyAddress;
uint256 lastNonce;

function isCosignerSet() {
    return bool(cosignerAddress)
}

function lastNonce() {
    return lastNonce
}

function cosigner() {
    return cosignerAddress
}

function granted(address arg1) {
    return bool(stor0[arg1])
}

function alwaysRequireCosignature() {
    return bool(uint8(stor1.field_160))
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert
}

function constructor(address arg1, address arg2) {
    if proxyAddress:
        emit Error('Already constructed');
    else:
        stor0[address(msg.sender)] = 1
        proxyAddress = arg1
        cosignerAddress = arg2
}

function enableSecureMode() {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if uint8(stor1.field_160):
        if cosignerAddress:
            require ext_code.size(cosignerAddress)
            call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
            require ext_call.success
            if not ext_call.return_data[0]:
                emit Error('Cosigner: access denied');
                return 0
    Mask(96, 0, stor1.field_160) = 1
    return 1
}

function disableSecureMode() {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if uint8(stor1.field_160):
        if cosignerAddress:
            require ext_code.size(cosignerAddress)
            call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
            require ext_call.success
            if not ext_call.return_data[0]:
                emit Error('Cosigner: access denied');
                return 0
    Mask(96, 0, stor1.field_160) = 0
    return 1
}

function grantAccess(address arg1) {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if cosignerAddress:
        require ext_code.size(cosignerAddress)
        call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Cosigner: access denied');
            return 0
    if stor0[address(arg1)]:
        emit Error('Already has access');
        return 0
    stor0[address(arg1)] = 1
    emit GrantAccess(arg1);
    return 1
}

function recover(address arg1, address arg2) {
    if not cosignerAddress:
        emit Error('Cosigner not set');
        return 0
    require ext_code.size(cosignerAddress)
    call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args sha3(call.data[0 len calldata.size]), 2
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error('Cosigner: access denied');
        return 0
    if not stor0[address(arg1)]:
        emit Error('Has no access');
        return 0
    stor0[address(arg1)] = 0
    emit RevokeAccess(arg1);
    if stor0[address(arg2)]:
        emit Error('Already has access');
        revert
    stor0[address(arg2)] = 1
    emit GrantAccess(arg2);
    return 1
}

function revokeAccess(address arg1) {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if cosignerAddress:
        require ext_code.size(cosignerAddress)
        call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 1
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Cosigner: access denied');
            return 0
    if arg1 == msg.sender:
        emit Error('Cannot revoke oneself');
        return 0
    if not stor0[address(arg1)]:
        emit Error('Has no access');
        return 0
    stor0[address(arg1)] = 0
    emit RevokeAccess(arg1);
    return 1
}

function setCosignerAddress(address arg1) {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if cosignerAddress:
        require ext_code.size(cosignerAddress)
        call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sha3(call.data[0 len calldata.size]), 2
        require ext_call.success
        if not ext_call.return_data[0]:
            emit Error('Cosigner: access denied');
            return 0
        if cosignerAddress:
            require ext_code.size(arg1)
            call arg1.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 2
            require ext_call.success
            if not ext_call.return_data[0]:
                emit Error('Invalid cosigner');
                return 0
    cosignerAddress = arg1
    emit 0xa8d60633: arg1
    return 1
}

function claimContractOwnership() {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not cosignerAddress:
        if ext_code.size(proxyAddress):
            call proxyAddress.0x4592cd1d with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                return bool(ext_call.return_data[0])
    else:
        if ext_code.size(cosignerAddress):
            call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
            if ext_call.success:
                if not ext_call.return_data[0]:
                    emit Error('Cosigner: access denied');
                    return 0
                if ext_code.size(proxyAddress):
                    call proxyAddress.0x4592cd1d with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
    revert
}

function changeContractOwnership(address arg1) {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not cosignerAddress:
        if ext_code.size(proxyAddress):
            call proxyAddress.0x557f4bc9 with:
                 gas gas_remaining - 710 wei
                args arg1
            if ext_call.success:
                return bool(ext_call.return_data[0])
    else:
        if ext_code.size(cosignerAddress):
            call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
            if ext_call.success:
                if not ext_call.return_data[0]:
                    emit Error('Cosigner: access denied');
                    return 0
                if ext_code.size(proxyAddress):
                    call proxyAddress.0x557f4bc9 with:
                         gas gas_remaining - 710 wei
                        args arg1
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
    revert
}

function forceChangeContractOwnership(address arg1) {
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not cosignerAddress:
        if ext_code.size(proxyAddress):
            call proxyAddress.0xd613be0a with:
                 gas gas_remaining - 710 wei
                args arg1
            if ext_call.success:
                return bool(ext_call.return_data[0])
    else:
        if ext_code.size(cosignerAddress):
            call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args sha3(call.data[0 len calldata.size]), 1
            if ext_call.success:
                if not ext_call.return_data[0]:
                    emit Error('Cosigner: access denied');
                    return 0
                if ext_code.size(proxyAddress):
                    call proxyAddress.0xd613be0a with:
                         gas gas_remaining - 710 wei
                        args arg1
                    if ext_call.success:
                        return bool(ext_call.return_data[0])
    revert
}

function actOnBehalf(bytes arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = address(this.address)
    signer = erecover(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 20], arg2, None), arg3 << 248, arg4, arg5) 
    require erecover.result
    if not address(signer):
        emit Error('Invalid signature');
        return 0
    if arg2 <= lastNonce:
        emit Error('Invalid nonce');
        return 0
    if not stor0[address(signer)]:
        emit Error('Access denied');
        return 0
    lastNonce = arg2
    call this.address with:
         gas gas_remaining wei
        args arg1[all]
    return ext_call.return_data[0]
}

function confirmAndForward(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    mem[128 len arg3.length] = arg3[all]
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    mem[ceil32(arg3.length) + 260] = arg7
    mem[ceil32(arg3.length) + 292] = arg8
    require ext_code.size(cosignerAddress)
    call cosignerAddress.confirm(bytes32 rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
         gas gas_remaining - 710 wei
        args arg4, address(this.address), arg5, arg6 << 248, arg7, arg8
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(arg3.length) + 128] = 0xd7f31eb900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = 96
    mem[ceil32(arg3.length) + 228] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 260] = mem[128]
        mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    require ext_code.size(this.address)
    call this.address.0xd7f31eb9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
    require ext_call.success
    return ext_call.return_data[0]
}

function init(address arg1, bool arg2) {
    if stor0[address(msg.sender)]:
        if lastNonce:
            emit Error('Already initiated');
        else:
            lastNonce++
            if not stor0[address(msg.sender)]:
                emit Error('Has no access');
                require arg2
                uint8(stor1.field_160) = 1
                revert
            stor0[address(msg.sender)] = 0
            emit RevokeAccess(msg.sender);
            if stor0[address(arg1)]:
                emit Error('Already has access');
                revert
            stor0[address(arg1)] = 1
            emit GrantAccess(arg1);
            if arg2:
                uint8(stor1.field_160) = 1
    else:
        if msg.sender != this.address:
            emit Error('Access denied');
        else:
            if lastNonce:
                emit Error('Already initiated');
            else:
                lastNonce++
                if not stor0[address(msg.sender)]:
                    emit Error('Has no access');
                    require arg2
                    uint8(stor1.field_160) = 1
                    revert
                stor0[address(msg.sender)] = 0
                emit RevokeAccess(msg.sender);
                if stor0[address(arg1)]:
                    emit Error('Already has access');
                    revert
                stor0[address(arg1)] = 1
                emit GrantAccess(arg1);
                if arg2:
                    uint8(stor1.field_160) = 1
}

function forwardOnBehalf(address arg1, uint256 arg2, bytes arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 180] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 180] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + arg3.length + 180] = address(this.address)
    mem[ceil32(arg3.length) + arg3.length + 200] = arg4
    signer = erecover(sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len (arg3.length % 32) + 20], arg4, None), arg5 << 248, arg6, arg7) 
    mem[ceil32(arg3.length) + 128] = signer
    require erecover.result
    if not address(signer):
        emit Error('Invalid signature');
        return 0
    if arg4 <= lastNonce:
        emit Error('Invalid nonce');
        return 0
    if not stor0[address(signer)]:
        emit Error('Access denied');
        return 0
    lastNonce = arg4
    mem[ceil32(arg3.length) + 160] = 0xd7f31eb900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 164] = arg1
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 228] = 96
    mem[ceil32(arg3.length) + 260] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    if not arg3.length % 32:
        if ext_code.size(this.address):
            call this.address.0xd7f31eb9 with:
                 gas gas_remaining - 710 wei
                args mem[ceil32(arg3.length) + 164 len arg3.length + 16], this.address, arg4, mem[ceil32(arg3.length) + arg3.length + 232 len 60]
            if ext_call.success:
                return ext_call.return_data[0]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        if ext_code.size(this.address):
            call this.address.0xd7f31eb9 with:
                 gas gas_remaining - 710 wei
                args mem[ceil32(arg3.length) + 164 len arg3.length + 16], this.address, arg4, mem[ceil32(arg3.length) + arg3.length + 232 len -(arg3.length % 32) + 92]
            if ext_call.success:
                return ext_call.return_data[0]
    revert
}

function confirmAndForwardOnBehalf(address arg1, uint256 arg2, bytes arg3, bytes32 arg4, uint256[2] arg5, uint8[2] arg6, bytes32[2] arg7, bytes32[2] arg8) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 64] = call.data[132 len 64]
    mem[ceil32(arg3.length) + 192 len 64] = call.data[196 len 64]
    mem[ceil32(arg3.length) + 256 len 64] = call.data[260 len 64]
    mem[ceil32(arg3.length) + 320 len 64] = call.data[324 len 64]
    mem[ceil32(arg3.length) + 420] = this.address
    mem[ceil32(arg3.length) + 452] = call.data[132]
    mem[ceil32(arg3.length) + 484] = uint8(call.data[196])
    mem[ceil32(arg3.length) + 516] = call.data[260]
    mem[ceil32(arg3.length) + 548] = call.data[324]
    require ext_code.size(cosignerAddress)
    call cosignerAddress.confirm(bytes32 rg1, address rg2, uint256 rg3, uint8 rg4, bytes32 rg5, bytes32 rg6) with:
         gas gas_remaining - 710 wei
        args arg4, address(this.address), call.data[132], call.data[196] << 248, call.data[260], call.data[324]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(arg3.length) + 436 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 436] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 436] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg3.length) + arg3.length + 436] = address(this.address)
    mem[ceil32(arg3.length) + arg3.length + 456] = call.data[164]
    signer = erecover(sha3(arg1, arg2, mem[ceil32(arg3.length) + 436 len 16], call.data[132], mem[ceil32(arg3.length) + 484 len arg3.length + 4]), call.data[228] << 248, call.data[292], call.data[356]) 
    mem[ceil32(arg3.length) + 384] = signer
    require erecover.result
    if not address(signer):
        emit Error('Invalid signature');
        return 0
    if call.data[164] <= lastNonce:
        emit Error('Invalid nonce');
        return 0
    if not stor0[address(signer)]:
        emit Error('Access denied');
        return 0
    lastNonce = call.data[164]
    mem[ceil32(arg3.length) + 416] = 0xd7f31eb900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 420] = arg1
    mem[ceil32(arg3.length) + 452] = arg2
    mem[ceil32(arg3.length) + 484] = 96
    mem[ceil32(arg3.length) + 516] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(this.address):
                call this.address.0xd7f31eb9 with:
                     gas gas_remaining - 710 wei
                    args mem[ceil32(arg3.length) + 420 len arg3.length + 16], this.address, call.data[164], mem[ceil32(arg3.length) + arg3.length + 488 len 60]
                if ext_call.success:
                    return ext_call.return_data[0]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 548] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 580 len arg3.length % 32]
            if ext_code.size(this.address):
                call this.address.0xd7f31eb9 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2, Array(len=arg3.length, data=call.data[324], mem[ceil32(arg3.length) + 580 len floor32(arg3.length)])
                if ext_call.success:
                    return ext_call.return_data[0]
    else:
        mem[ceil32(arg3.length) + 548] = mem[128]
        mem[ceil32(arg3.length) + 580 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            if ext_code.size(this.address):
                call this.address.0xd7f31eb9 with:
                     gas gas_remaining - 710 wei
                    args mem[ceil32(arg3.length) + 420 len arg3.length + 16], this.address, call.data[164], mem[ceil32(arg3.length) + arg3.length + 488 len 60]
                if ext_call.success:
                    return ext_call.return_data[0]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 548] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 580 len arg3.length % 32]
            if ext_code.size(this.address):
                call this.address.0xd7f31eb9 with:
                     gas gas_remaining - 710 wei
                    args mem[ceil32(arg3.length) + 420 len arg3.length + 16], this.address, call.data[164], mem[ceil32(arg3.length) + arg3.length + 488 len -(arg3.length % 32) + 92]
                if ext_call.success:
                    return ext_call.return_data[0]
    revert
}

function forward(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not stor0[address(msg.sender)]:
        if msg.sender != this.address:
            emit Error('Access denied');
            return 0
    if not uint8(stor1.field_160):
        mem[ceil32(arg3.length) + 128] = 0xe04f31e900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = arg1
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 228] = 0
        mem[ceil32(arg3.length) + 196] = 128
        mem[ceil32(arg3.length) + 260] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                if ext_code.size(proxyAddress):
                    call proxyAddress.0xe04f31e9 with:
                         gas gas_remaining - 710 wei
                        args 0, 0, arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                    if ext_call.success:
                        return ext_call.return_data[0]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                if ext_code.size(proxyAddress):
                    call proxyAddress.0xe04f31e9 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]
                    if ext_call.success:
                        return ext_call.return_data[0]
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                if ext_code.size(proxyAddress):
                    call proxyAddress.0xe04f31e9 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                    if ext_call.success:
                        return ext_call.return_data[0]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                if ext_code.size(proxyAddress):
                    call proxyAddress.0xe04f31e9 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2, 128, 0, arg3.length, mem[128], mem[ceil32(arg3.length) + 324 len floor32(arg3.length)]
                    if ext_call.success:
                        return ext_call.return_data[0]
    else:
        if not cosignerAddress:
            mem[ceil32(arg3.length) + 128] = 0xe04f31e900000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = arg1
            mem[ceil32(arg3.length) + 164] = arg2
            mem[ceil32(arg3.length) + 228] = 0
            mem[ceil32(arg3.length) + 196] = 128
            mem[ceil32(arg3.length) + 260] = arg3.length
            if not arg3.length:
                if not arg3.length % 32:
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xe04f31e9 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xe04f31e9 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]
                        if ext_call.success:
                            return ext_call.return_data[0]
            else:
                mem[ceil32(arg3.length) + 292] = mem[128]
                mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if not arg3.length % 32:
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xe04f31e9 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                        if ext_call.success:
                            return ext_call.return_data[0]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                    if ext_code.size(proxyAddress):
                        call proxyAddress.0xe04f31e9 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), arg2, 128, 0, arg3.length, mem[128], mem[ceil32(arg3.length) + 324 len floor32(arg3.length)]
                        if ext_call.success:
                            return ext_call.return_data[0]
        else:
            mem[ceil32(arg3.length) + 128 len calldata.size] = call.data[0 len calldata.size]
            if ext_code.size(cosignerAddress):
                call cosignerAddress.consumeOperation(bytes32 rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args sha3(call.data[0 len calldata.size]), 1
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        emit Error('Cosigner: access denied');
                        return 0
                    mem[ceil32(arg3.length) + 128] = 0xe04f31e900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 132] = arg1
                    mem[ceil32(arg3.length) + 164] = arg2
                    mem[ceil32(arg3.length) + 228] = 0
                    mem[ceil32(arg3.length) + 196] = 128
                    mem[ceil32(arg3.length) + 260] = arg3.length
                    if not arg3.length:
                        if not arg3.length % 32:
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0xe04f31e9 with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                                if ext_call.success:
                                    return ext_call.return_data[0]
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0xe04f31e9 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32]
                                if ext_call.success:
                                    return ext_call.return_data[0]
                    else:
                        mem[ceil32(arg3.length) + 292] = mem[128]
                        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if not arg3.length % 32:
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0xe04f31e9 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2, 128, 0, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
                                if ext_call.success:
                                    return ext_call.return_data[0]
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                            if ext_code.size(proxyAddress):
                                call proxyAddress.0xe04f31e9 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), arg2, 128, 0, arg3.length, mem[128], mem[ceil32(arg3.length) + 324 len floor32(arg3.length)]
                                if ext_call.success:
                                    return ext_call.return_data[0]
    revert
}



}
