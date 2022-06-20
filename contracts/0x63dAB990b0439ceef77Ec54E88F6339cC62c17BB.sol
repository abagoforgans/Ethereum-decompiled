contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d384994(?)
#  - sub_87ecf05a(?)
#  - sub_9dea1277(?)
#
mapping of struct keys;
array of struct stor1;
uint256 lastNonce;
mapping of uint8 stor3;
array of uint256 stor46452447091904402179064915610943486851964334237479579849843444756053929853548;

function getKeyPurpose(bytes32 arg1) {
    return keys[arg1].field_0
}

function getKey(bytes32 arg1) {
    return keys[arg1].field_0, keys[arg1].field_256, keys[arg1].field_512
}

function sub_23f74052(?) {
    return bool(keys[arg1].field_512)
}

function sub_37c7c2c8(?) {
    return bool(stor3[address(arg1)])
}

function lastNonce() {
    return lastNonce
}

function keys(bytes32 arg1) {
    return keys[arg1].field_0, keys[arg1].field_256, keys[arg1].field_512
}

function _fallback() payable {
  stop
}

function keyHasPurpose(bytes32 arg1, uint256 arg2) {
    return (arg2 == keys[arg1].field_0)
}

function init(bytes32 arg1) {
    keys[arg1].field_512 = arg1
    keys[arg1].field_0 = 1
    keys[arg1].field_256 = 1
    stor1[1].field_0++
    stor66B3[stor1[1].field_0] = arg1
    emit KeyAdded(keys[arg1].field_512, keys[arg1].field_0, keys[arg1].field_256);
}

function sub_f0ab5f84(?) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (ext_call.return_data[0] > 0)
    return ext_call.return_data[0] >= arg2
}

function addKey(bytes32 arg1, uint256 arg2, uint256 arg3) {
    if keys[msg.sender].field_0 != 1:
        if msg.sender != this.address:
            revert with 0, 'Sender not permissioned'
    if arg1 == keys[arg1].field_512:
        revert with 0, 'Key already added'
    keys[arg1].field_512 = arg1
    keys[arg1].field_0 = arg2
    keys[arg1].field_256 = arg3
    stor1[arg2].field_0++
    stor1[arg2][stor1[arg2].field_0].field_0 = arg1
    emit KeyAdded(keys[arg1].field_512, keys[arg1].field_0, keys[arg1].field_256);
    return 1
}

function sub_70586bb3(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
    require arg9 <= 2
    return sha3(arg1, arg2, arg3, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 128 len arg4.length % 32]), arg5, arg6, arg7, arg8, uint8(arg9) << 24, 0)
}

function getKeysByPurpose(uint256 arg1) {
    if not stor1[arg1].field_0:
        mem[(32 * stor1[arg1].field_0) + 128] = 32
        mem[(32 * stor1[arg1].field_0) + 160] = stor1[arg1].field_0
        mem[(32 * stor1[arg1].field_0) + 192 len floor32(stor1[arg1].field_0)] = mem[128 len floor32(stor1[arg1].field_0)]
        return memory
          from (32 * stor1[arg1].field_0) + 128
           len (96 * stor1[arg1].field_0) + 64
    mem[128] = stor1[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor1[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor1[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[arg1].field_0) + 192 len floor32(stor1[arg1].field_0)] = mem[128 len floor32(stor1[arg1].field_0)]
    return Array(len=stor1[arg1].field_0, data=mem[128 len floor32(stor1[arg1].field_0)], mem[(32 * stor1[arg1].field_0) + floor32(stor1[arg1].field_0) + 192 len (32 * stor1[arg1].field_0) - floor32(stor1[arg1].field_0)]), 
}

function sub_7fbc22ba(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + 180] = address(arg2)
    mem[ceil32(arg3.length) + 128] = 40
    mem[ceil32(arg3.length) + 200] = 60
    if arg3.length != 65:
        return not arg2
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            return not arg2
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, Mask(96, 64, arg2) >> 64, mem[ceil32(arg3.length) + 232 len 8])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg2 == address(signer))
}

function removeKey(bytes32 arg1, uint256 arg2) {
    if keys[msg.sender].field_0 != 1:
        if msg.sender != this.address:
            revert with 0, 'Sender not permissioned'
    if 1 == keys[arg1].field_0:
        if stor1[1].field_0 <= 1:
            revert with 0, 'Can not remove management key'
    if arg2 != keys[arg1].field_0:
        revert with 0, 'Invalid key'
    emit KeyRemoved(keys[arg1].field_512, keys[arg1].field_0, keys[arg1].field_256);
    keys[arg1].field_0 = 0
    keys[arg1].field_256 = 0
    keys[arg1].field_512 = 0
    mem[0] = arg2
    idx = 0
    while idx < stor1[arg2].field_0:
        require idx < stor1[arg2].field_0
        if stor1[arg2][idx].field_0 == arg1:
            require stor1[arg2].field_0 - 1 < stor1[arg2].field_0
            require idx < stor1[arg2].field_0
            stor1[arg2][idx].field_0 = stor1[arg2][stor1[arg2].field_0].field_0
            require stor1[arg2].field_0 - 1 < stor1[arg2].field_0
            stor1[arg2][stor1[arg2].field_0].field_0 = 0
            stor1[arg2].field_0--
            if stor1[arg2].field_0 > stor1[arg2].field_0 - 1:
                mem[0] = sha3(arg2, 1)
                s = stor1[arg2].field_0 + sha3(mem[0]) - 1
                while sha3(sha3(arg2, 1)) + stor1[arg2].field_0 > s:
                    stor[s] = 0
                    mem[0] = arg2
                    mem[32] = 1
                    s = s + 1
                    continue 
        mem[0] = arg2
        mem[32] = 1
        idx = idx + 1
        continue 
    return 1
}

function sub_caa3782b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if keys[msg.sender].field_0 != 1:
        if msg.sender != this.address:
            revert with 0, 'Sender not permissioned'
    if arg1.length != arg2.length:
        revert with 0, 'Unequal argument set lengths'
    if arg1.length != arg3.length:
        revert with 0, 'Unequal argument set lengths'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require idx < arg3.length
        if keys[msg.sender].field_0 != 1:
            if msg.sender != this.address:
                revert with 0, 'Sender not permissioned'
        if mem[(32 * idx) + 128] == keys[mem[(32 * idx) + 128]].field_512:
            revert with 0, 'Key already added'
        keys[mem[(32 * idx) + 128]].field_512 = mem[(32 * idx) + 128]
        keys[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 160]
        keys[mem[(32 * idx) + 128]].field_256 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        stor1[mem[(32 * idx) + (32 * arg1.length) + 160]].field_0++
        stor1[mem[(32 * idx) + (32 * arg1.length) + 160]][stor1[mem[(32 * idx) + (32 * arg1.length) + 160]].field_0].field_0 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 0
        emit KeyAdded(keys[mem[(32 * idx) + 128]].field_512, keys[mem[(32 * idx) + 128]].field_0, keys[mem[(32 * idx) + 128]].field_256);
        idx = idx + 1
        continue 
    emit 0x60adf38c: arg1.length
    return 1
}

function sub_724854b0(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg10.length
    mem[ceil32(arg4.length) + 160 len arg10.length] = arg10[all]
    mem[ceil32(arg4.length) + ceil32(arg10.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + ceil32(arg10.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[-(arg4.length % 32) + floor32(arg4.length) + 160 len arg4.length % 32]
    _49 = sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + ceil32(arg10.length) + floor32(arg4.length) + 160 len arg4.length % 32])
    require arg9 <= 2
    mem[ceil32(arg4.length) + ceil32(arg10.length) + 192] = address(arg1)
    mem[ceil32(arg4.length) + ceil32(arg10.length) + 212] = address(arg2)
    mem[ceil32(arg4.length) + ceil32(arg10.length) + 232] = arg3
    mem[ceil32(arg4.length) + ceil32(arg10.length) + 160] = 252
    if arg10.length != 65:
        return 0
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256) + 27) != 28:
            return 0
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2, arg3, _49, arg5, arg6, arg7, arg8, uint8(arg9) << 24, 0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg4.length) + 160], mem[ceil32(arg4.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_a30c8c75(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg9.length
    mem[ceil32(arg3.length) + 160 len arg9.length] = arg9[all]
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    _53 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 160 len arg3.length % 32])
    require arg8 <= 2
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 192] = address(this.address)
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 212] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 232] = arg2
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 160] = 252
    if arg9.length != 65:
        return bool(uint256(keys.field_512))
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27) != 28:
            return bool(uint256(keys.field_512))
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, _53, arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return bool(keys[address(signer)].field_512)
}

function sub_6d633064(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg9.length
    mem[ceil32(arg3.length) + 160 len arg9.length] = arg9[all]
    if arg4 != lastNonce:
        revert with 0, 'Invalid nonce'
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    _271 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 160 len arg3.length % 32])
    require arg8 <= 2
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 192] = address(this.address)
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 212] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 232] = arg2
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 160] = 252
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 444 len 224] = this.address, arg1, arg2, _271, arg4, arg5, arg6, arg7, uint8(arg8) << 24
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 668 len 28] = 0
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 536] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(this.address, arg1, arg2, _271, arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0)) >> 224
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 596 len 4] = 0
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 568 len 28] = Mask(224, 0, sha3(this.address, arg1, arg2, _271, arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0))
    if arg9.length != 65:
        if not uint256(keys.field_512):
            revert with 0, 'Invalid signature'
        mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1.mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + ceil32(arg9.length) + 540 len arg3.length - 4]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg9.length) + 536] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg9.length) + -(arg3.length % 32) + 568 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + ceil32(arg9.length) + 540 len floor32(arg3.length) + 28]
        mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + -(arg3.length % 32) + 568 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        require arg8 <= 2
        emit 0x30c13bf5: sha3(this.address, arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 536 len arg3.length % 32]), arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0), lastNonce, bool(ext_call.success)
        lastNonce++
        require gas_remaining <= gas_remaining
        if not arg6:
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg6)
            call arg6.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        return sha3(this.address, arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 536 len arg3.length % 32]), arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0)
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27) != 28:
            if not uint256(keys.field_512):
                revert with 0, 'Invalid signature'
            mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                call arg1.mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg9.length) + 540 len arg3.length - 4]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg9.length) + 536] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg9.length) + -(arg3.length % 32) + 568 len arg3.length % 32]
                call arg1.mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len 4] with:
                   value arg2 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg9.length) + 540 len floor32(arg3.length) + 28]
            mem[ceil32(arg3.length) + ceil32(arg9.length) + 536 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + -(arg3.length % 32) + 568 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            require arg8 <= 2
            emit 0x30c13bf5: sha3(this.address, arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 536 len arg3.length % 32]), arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0), lastNonce, bool(ext_call.success)
            lastNonce++
            require gas_remaining <= gas_remaining
            if not arg6:
                call msg.sender with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(arg6)
                call arg6.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            return sha3(this.address, arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 536 len arg3.length % 32]), arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0)
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 568] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, _271, arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0))
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 600] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27)
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 632] = mem[ceil32(arg3.length) + 160]
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 664] = mem[ceil32(arg3.length) + 192]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, _271, arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not keys[address(signer)].field_512:
        revert with 0, 'Invalid signature'
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 568 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + ceil32(arg9.length) + 568 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg9.length) + 572 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg9.length) + 568] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg9.length) + -(arg3.length % 32) + 600 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + ceil32(arg9.length) + 568 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg9.length) + 572 len floor32(arg3.length) + 28]
    mem[ceil32(arg3.length) + ceil32(arg9.length) + 568 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + -(arg3.length % 32) + 600 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    require arg8 <= 2
    emit 0x30c13bf5: sha3(this.address, arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 568 len arg3.length % 32]), arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0), lastNonce, bool(ext_call.success)
    lastNonce++
    require gas_remaining <= gas_remaining
    if not arg6:
        call msg.sender with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg6)
        call arg6.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return sha3(this.address, arg1, arg2, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg9.length) + floor32(arg3.length) + 568 len arg3.length % 32]), arg4, arg5, arg6, arg7, uint8(arg8) << 24, 0)
}



}
