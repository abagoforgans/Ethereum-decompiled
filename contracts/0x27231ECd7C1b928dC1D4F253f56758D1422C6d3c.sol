contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
bool stor1; offset 256
uint8 stor1;
uint8 stor1; offset 8
address stor1;
address stor1; offset 16
uint256 stor1; offset 16
uint128 stor2; offset 160
address stor2;
uint256 stor2;
uint256 stor3;
address mConfigAddress;
address mNewConfigAddress;
address tokenAddress;

function isLock() {
    return bool(uint8(stor0.field_160))
}

function mConfig() {
    return mConfigAddress
}

function mNewConfig() {
    return mNewConfigAddress
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function mWinner() {
    return uint8(stor1.field_0), uint8(stor1.field_0), address(stor1.field_16)
}

function isNotContract(address arg1) {
    if ext_code.size(arg1) > 0:
        revert with 0, 'address must is not contract'
    return 1
}

function updateConfig(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this functin'
    mNewConfigAddress = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this functin'
    if arg1:
        owner = arg1
}

function stringToBytes32(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    if 0 == arg1.length:
        return 0
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function bytesToUint(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        idx = idx + 1
        s = (mem[idx + 128 len 1] * 2^(8 * arg1.length + -idx - 1)) + s
        continue 
    return (Mask(8, 248, _13) >> 248 * 2^(8 * _9 + -arg1.length - 1) * arg1.length)
}

function updateLock(bool arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this functin'
    if arg1 == bool(uint8(stor0.field_160)):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' updateLock new status == old status'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function transferToOwner() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only owner can call this functin'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'address must is not contract'
    if msg.sender != tx.origin:
        revert with 0, 'msg.sender must equipt tx.origin'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit transferToOwnerEvent(eth.balance(this.address));
}

function slice(bytes arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3
    if arg3:
        mem[ceil32(arg1.length) + 160 len 32 * arg3] = code.data[7556 len 32 * arg3]
    idx = 0
    while idx < arg3:
        require idx + arg2 < arg1.length
        require idx < arg3
        mem[ceil32(arg1.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('param', 'arg2')), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('param', 'arg2')), 32))), 0) - 256
        idx = idx + 1
        continue 
    return Array(len=arg3, data=mem[ceil32(arg1.length) + 160 len arg3])
}

function getGameInfo() {
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0x472b6efa with:
         gas gas_remaining wei
        args uint8(stor1.field_8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0x235b1eb7 with:
         gas gas_remaining wei
        args uint8(stor1.field_8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0x235b1eb7 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0x98d5fdca with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor3, 
           ext_call.return_data[0],
           eth.balance(this.address),
           uint8(stor1.field_0),
           uint8(stor1.field_8),
           address(stor1.field_0),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    require tokenAddress == arg3
    if arg1 != tx.origin:
        revert with 0, 'token from must equal tx.origin'
    if ext_code.size(arg1) > 0:
        revert with 0, 'address must is not contract'
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0x98d5fdca with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        revert with 0, 'value is error'
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = this.address
    mem[ceil32(arg4.length) + 196] = arg2
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(arg4.length) + 128] = arg4.length - 1
    if arg4.length - 1:
        mem[ceil32(arg4.length) + 160 len 32 * arg4.length - 1] = code.data[7556 len 32 * arg4.length - 1]
    idx = 0
    while idx < arg4.length - 1:
        require idx < arg4.length
        require idx < mem[ceil32(arg4.length) + 128]
        mem[ceil32(arg4.length) + idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[ceil32(arg4.length) + floor32(arg4.length + 30) + 160] = 1
    mem[ceil32(arg4.length) + floor32(arg4.length + 30) + 192] = code.data[7556 len 32]
    idx = 0
    while idx < 1:
        require idx + arg4.length - 1 < arg4.length
        require idx < 1
        mem[ceil32(arg4.length) + floor32(arg4.length + 30) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 127, ('var', 0), ('cd', ('add', 4, ('param', 'arg4')))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 127, ('var', 0), ('cd', ('add', 4, ('param', 'arg4')))), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 1:
        require idx < 1
        idx = idx + 1
        s = (mem[idx + ceil32(arg4.length) + floor32(arg4.length + 30) + 192 len 1] * 2^(8 * -idx)) + s
        continue 
    if uint8(stor0.field_160):
        revert with 0, 'contract current is lock status'
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0x472b6efa with:
         gas gas_remaining wei
        args uint8(stor1.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mConfigAddress)
    call mConfigAddress.0xb737ed1b with:
         gas gas_remaining wei
        args sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2.field_0) = sha3(msg.sender, sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)), sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100)
    if mem[ceil32(arg4.length) + 128] != 0:
        if mConfigAddress:
            require ext_code.size(mConfigAddress)
            call mConfigAddress.0xba9d407a with:
                 gas gas_remaining wei
                args mem[ceil32(arg4.length) + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(mConfigAddress)
                call mConfigAddress.0x6c03cd49 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.value * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if not address(stor1.field_16):
            uint8(stor1.field_0) = uint8(mem[ceil32(arg4.length) + floor32(arg4.length + 30) + 193 len 1] * 2^-8)
            uint8(stor1.field_8) = 0
            Mask(240, 0, stor1.field_16) = Mask(240, 0, msg.sender)
        else:
            if ext_call.return_data[0] >= sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100:
                uint8(stor1.field_8) = uint8(uint8(stor1.field_8) + 1)
            else:
                uint8(stor1.field_0) = uint8(mem[ceil32(arg4.length) + floor32(arg4.length + 30) + 193 len 1] * 2^-8)
                uint8(stor1.field_8) = 1
                Mask(240, 0, stor1.field_16) = Mask(240, 0, msg.sender)
                stor1.field_256 % 1 = 0
        require ext_code.size(mConfigAddress)
        call mConfigAddress.0x235b1eb7 with:
             gas gas_remaining wei
            args uint8(stor1.field_8)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mConfigAddress)
        call mConfigAddress.0x98d5fdca with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit pkEvent(address(stor1.field_0), msg.sender, mem[ceil32(arg4.length) + 160], ext_call.return_data[0], ext_call.return_data[0], sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100, sha3(msg.sender, sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)), sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100) % 100, msg.sender == address(stor1.field_16), ext_call.return_data[0]);
    else:
        if mConfigAddress:
            require ext_code.size(mConfigAddress)
            call mConfigAddress.0xba9d407a with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]):
                require ext_code.size(mConfigAddress)
                call mConfigAddress.0x6c03cd49 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.value * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if not address(stor1.field_16):
            uint8(stor1.field_0) = uint8(mem[ceil32(arg4.length) + floor32(arg4.length + 30) + 193 len 1] * 2^-8)
            uint8(stor1.field_8) = 0
            Mask(240, 0, stor1.field_16) = Mask(240, 0, msg.sender)
        else:
            if ext_call.return_data[0] >= sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100:
                uint8(stor1.field_8) = uint8(uint8(stor1.field_8) + 1)
            else:
                uint8(stor1.field_0) = uint8(mem[ceil32(arg4.length) + floor32(arg4.length + 30) + 193 len 1] * 2^-8)
                uint8(stor1.field_8) = 1
                Mask(240, 0, stor1.field_16) = Mask(240, 0, msg.sender)
                stor1.field_256 % 1 = 0
        require ext_code.size(mConfigAddress)
        call mConfigAddress.0x235b1eb7 with:
             gas gas_remaining wei
            args uint8(stor1.field_8)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mConfigAddress)
        call mConfigAddress.0x98d5fdca with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit pkEvent(address(stor1.field_0), msg.sender, 0, ext_call.return_data[0], ext_call.return_data[0], sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100, sha3(msg.sender, sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)), sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100) % 100, msg.sender == address(stor1.field_16), ext_call.return_data[0]);
    if address(stor1.field_16):
        if sha3(msg.sender, sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)), sha3(msg.sender, Mask(96, 0, stor2.field_160), address(stor2.field_0)) % 100) % 100 < ext_call.return_data[0]:
            if not address(stor1.field_16):
                revert with 0, 'Winner.addr is null'
            require ext_code.size(mConfigAddress)
            call mConfigAddress.0xb42c6b4f with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, uint8(ext_call.return_data[0]) * eth.balance(this.address) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor1.field_0), eth.balance(this.address) - (uint8(ext_call.return_data[0]) * eth.balance(this.address) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mConfigAddress)
            call mConfigAddress.0x98d5fdca with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit gameOverEvent(stor3, address(stor1.field_0), ext_call.return_data[0], eth.balance(this.address) - (uint8(ext_call.return_data[0]) * eth.balance(this.address) / 100));
            stor3++
            uint8(stor1.field_0) = 0
            uint8(stor1.field_8) = 1
            address(stor1.field_16) = 0
            stor1.field_256 % 1 = 0
            if mNewConfigAddress:
                if mConfigAddress != mNewConfigAddress:
                    mConfigAddress = mNewConfigAddress
}



}
