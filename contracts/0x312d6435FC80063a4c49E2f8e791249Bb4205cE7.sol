contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
uint256 sub_af0bc6c3;
uint256 sub_44382236;
uint256 sub_ebf60579;
uint256 sub_9f499fe3;
mapping of struct sub_bb3cc56f;
mapping of struct sub_fddfb9d0;
mapping of uint256 sub_c9673d79;
mapping of uint256 sub_c723be6b;
uint256 sub_0ce9da07;

function sub_0ce9da07(?) {
    return sub_0ce9da07
}

function sub_44382236(?) {
    return sub_44382236
}

function owner() {
    return owner
}

function sub_9f499fe3(?) {
    return sub_9f499fe3
}

function sub_af0bc6c3(?) {
    return sub_af0bc6c3
}

function sub_bb3cc56f(?) {
    return sub_bb3cc56f[arg1].field_0, bool(uint8(sub_bb3cc56f[arg1].field_256)), address(sub_bb3cc56f[arg1].field_264)
}

function sub_c723be6b(?) {
    return sub_c723be6b[arg1]
}

function sub_c9673d79(?) {
    return sub_c9673d79[arg1]
}

function pendingOwner() {
    return address(stor1.length)
}

function sub_ebf60579(?) {
    return sub_ebf60579
}

function sub_fddfb9d0(?) {
    return sub_fddfb9d0[arg1].field_0, 
           sub_fddfb9d0[arg1].field_256,
           sub_fddfb9d0[arg1].field_512,
           sub_fddfb9d0[arg1].field_768,
           bool(uint8(sub_fddfb9d0[arg1].field_1024)),
           address(sub_fddfb9d0[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function sub_7a909801(?) {
    require owner == msg.sender
    sub_ebf60579 = arg1
}

function sub_995df0fc(?) {
    require owner == msg.sender
    sub_af0bc6c3 = arg1
}

function sub_f3955aea(?) {
    require owner == msg.sender
    sub_44382236 = arg1
}

function sub_293e40c0(?) {
    require owner == msg.sender
    require arg1 < 10^18
    sub_9f499fe3 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    address(stor1.length) = arg1
}

function sub_83b7e2a9(?) {
    require owner == msg.sender
    require arg2 <= 10^18
    sub_c9673d79[address(arg1)] = arg2
}

function claimOwnership() {
    require address(stor1.length) == msg.sender
    emit OwnershipTransferred(owner, address(stor1.length));
    owner = address(stor1.length)
    address(stor1.length) = 0
}

function withdrawProceeds() {
    require owner == msg.sender
    require sub_0ce9da07 > 0
    sub_0ce9da07 = 0
    call owner with:
       value sub_0ce9da07 wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdrawal(owner, sub_0ce9da07);
}

function sub_e881c101(?) {
    require owner == msg.sender
    if arg3:
        require arg2 <= 10^18
    sub_bb3cc56f[arg1].field_0 = arg2
    uint8(sub_bb3cc56f[arg1].field_256) = uint8(arg3)
    address(sub_bb3cc56f[arg1].field_264) = arg4
    Mask(88, 0, sub_bb3cc56f[arg1].field_424) = Mask(88, 168, arg3) >> 168
}

function withdrawRewards() {
    require not uint8(stor1.length.field_160)
    uint8(stor1.length.field_160) = 1
    require sub_c723be6b[address(msg.sender)] > 0
    sub_c723be6b[address(msg.sender)] = 0
    call msg.sender with:
       value sub_c723be6b[address(msg.sender)] wei
         gas gas_remaining wei
    require ext_call.success
    emit RewardWithdrawal(msg.sender, sub_c723be6b[address(msg.sender)]);
    uint8(stor1.length.field_160) = 0
}

function sub_736b8a5b(?) {
    if not uint8(sub_bb3cc56f[arg1].field_256):
        if sub_bb3cc56f[arg1].field_0 <= sub_44382236:
            return (sub_44382236 - sub_bb3cc56f[arg1].field_0)
    else:
        if sub_bb3cc56f[arg1].field_0 <= 10^18:
            if not sub_44382236:
                return 0
            if (10^18 * sub_44382236) - (sub_bb3cc56f[arg1].field_0 * sub_44382236) / sub_44382236 == -sub_bb3cc56f[arg1].field_0 + 10^18:
                return ((10^18 * sub_44382236) - (sub_bb3cc56f[arg1].field_0 * sub_44382236) / 10^18)
    revert
}

function sub_c92ef1c3(?) {
    if not uint8(sub_bb3cc56f[arg1].field_256):
        if sub_bb3cc56f[arg1].field_0 <= sub_af0bc6c3:
            return (sub_af0bc6c3 - sub_bb3cc56f[arg1].field_0)
    else:
        if sub_bb3cc56f[arg1].field_0 <= 10^18:
            if not sub_af0bc6c3:
                return 0
            if (10^18 * sub_af0bc6c3) - (sub_bb3cc56f[arg1].field_0 * sub_af0bc6c3) / sub_af0bc6c3 == -sub_bb3cc56f[arg1].field_0 + 10^18:
                return ((10^18 * sub_af0bc6c3) - (sub_bb3cc56f[arg1].field_0 * sub_af0bc6c3) / 10^18)
    revert
}

function sub_9c17a168(?) payable {
    require msg.value + sub_0ce9da07 >= sub_0ce9da07
    sub_0ce9da07 += msg.value
    emit 0x1033a3c9: address(msg.sender), msg.value, address(sub_fddfb9d0[address(msg.sender)].field_1024), sub_fddfb9d0[address(msg.sender)].field_512
    if sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] > 0:
        if not msg.value:
            require sub_c723be6b[address(stor7[address(msg.sender)].field_1024)] >= sub_c723be6b[address(stor7[address(msg.sender)].field_1024)]
            require 0 <= sub_0ce9da07
            emit Reward(sub_fddfb9d0[address(msg.sender)].field_512, msg.sender, 0, address(sub_fddfb9d0[address(msg.sender)].field_1032));
        else:
            require sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] * msg.value / msg.value == sub_c9673d79[address(stor7[address(msg.sender)].field_1024)]
            require (sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] * msg.value / 10^18) + sub_c723be6b[address(stor7[address(msg.sender)].field_1024)] >= sub_c723be6b[address(stor7[address(msg.sender)].field_1024)]
            sub_c723be6b[address(stor7[address(msg.sender)].field_1024)] += sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] * msg.value / 10^18
            require sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] * msg.value / 10^18 <= sub_0ce9da07
            sub_0ce9da07 -= sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] * msg.value / 10^18
            emit Reward(sub_fddfb9d0[address(msg.sender)].field_512, msg.sender, sub_c9673d79[address(stor7[address(msg.sender)].field_1024)] * msg.value / 10^18, address(sub_fddfb9d0[address(msg.sender)].field_1032));
    sub_fddfb9d0[address(msg.sender)].field_0 = 0
    sub_fddfb9d0[address(msg.sender)].field_256 = 0
    sub_fddfb9d0[address(msg.sender)].field_512 = 0
    sub_fddfb9d0[address(msg.sender)].field_768 = 0
    Mask(168, 0, sub_fddfb9d0[address(msg.sender)].field_1024) = 0
}

function sub_67cea53f(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg2.length == arg1.length
    require arg1.length == arg3.length
    require arg1.length == arg4.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < mem[96]
        _32 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < mem[(32 * arg1.length) + 128]
        _34 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _36 = mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require uint8(idx) < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _38 = mem[(32 * uint8(idx)) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require owner == msg.sender
        if not mem[(32 * uint8(idx)) + (32 * arg2.length) + (32 * arg1.length) + 192]:
            _39 = mem[64]
            mem[64] = mem[64] + 96
            mem[_39] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            mem[_39 + 32] = bool(_36)
            mem[_39 + 64] = address(_38)
        else:
            require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= 10^18
            _44 = mem[64]
            mem[64] = mem[64] + 96
            mem[_44] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
            mem[_44 + 32] = bool(_36)
            mem[_44 + 64] = address(_38)
        mem[0] = _32
        mem[32] = 6
        sub_bb3cc56f[_32].field_0 = _34
        uint8(sub_bb3cc56f[_32].field_256) = uint8(bool(_36))
        address(sub_bb3cc56f[_32].field_264) = address(_38)
        Mask(88, 0, sub_bb3cc56f[_32].field_424) = Mask(88, 168, bool(_36)) >> 168
        idx = idx + 1
        continue 
}

function register(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _55 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    _56 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 6)
    mem[ceil32(arg1.length) + 128] = sub_bb3cc56f[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    if not uint8(stor1[_56].field_0):
        require mem[ceil32(arg1.length) + 128] <= sub_ebf60579
        require ext_code.size(msg.sender)
        call msg.sender.fundingThreshold() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= sub_ebf60579 - mem[ceil32(arg1.length) + 128]
    else:
        require mem[ceil32(arg1.length) + 128] <= 10^18
        if not sub_ebf60579:
            require ext_code.size(msg.sender)
            call msg.sender.fundingThreshold() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
        else:
            require (10^18 * sub_ebf60579) - (mem[ceil32(arg1.length) + 128] * sub_ebf60579) / sub_ebf60579 == -mem[ceil32(arg1.length) + 128] + 10^18
            require ext_code.size(msg.sender)
            call msg.sender.fundingThreshold() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= (10^18 * sub_ebf60579) - (mem[ceil32(arg1.length) + 128] * sub_ebf60579) / 10^18
    sub_fddfb9d0[address(msg.sender)].field_0 = sub_ebf60579
    sub_fddfb9d0[address(msg.sender)].field_256 = sub_9f499fe3
    sub_fddfb9d0[address(msg.sender)].field_512 = _55
    sub_fddfb9d0[address(msg.sender)].field_768 = stor[_56]
    uint8(sub_fddfb9d0[address(msg.sender)].field_1024) = uint8(bool(uint8(stor1[_56].field_0)))
    address(sub_fddfb9d0[address(msg.sender)].field_1032) = address(stor1[_56].field_8)
    Mask(88, 0, sub_fddfb9d0[address(msg.sender)].field_1192) = Mask(88, 168, bool(uint8(stor1[_56].field_0))) >> 168
    sub_bb3cc56f[_55].field_0 = 0
    Mask(168, 0, sub_bb3cc56f[_55].field_256) = 0
}

function sub_8a8d3d70(?) {
    require ext_code.size(msg.sender)
    call msg.sender.amountRaised() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 >= sub_fddfb9d0[address(msg.sender)].field_0:
            if not uint8(sub_fddfb9d0[address(msg.sender)].field_1024):
                if sub_fddfb9d0[address(msg.sender)].field_768 <= 0:
                    return -sub_fddfb9d0[address(msg.sender)].field_768
            else:
                if sub_fddfb9d0[address(msg.sender)].field_768 <= 10^18:
                    return 0
        else:
            if not uint8(sub_fddfb9d0[address(msg.sender)].field_1024):
                if sub_fddfb9d0[address(msg.sender)].field_768 <= sub_fddfb9d0[address(msg.sender)].field_0:
                    return (sub_fddfb9d0[address(msg.sender)].field_0 - sub_fddfb9d0[address(msg.sender)].field_768)
            else:
                if sub_fddfb9d0[address(msg.sender)].field_768 <= 10^18:
                    if not sub_fddfb9d0[address(msg.sender)].field_0:
                        return 0
                    if (10^18 * sub_fddfb9d0[address(msg.sender)].field_0) - (sub_fddfb9d0[address(msg.sender)].field_768 * sub_fddfb9d0[address(msg.sender)].field_0) / sub_fddfb9d0[address(msg.sender)].field_0 == -sub_fddfb9d0[address(msg.sender)].field_768 + 10^18:
                        return ((10^18 * sub_fddfb9d0[address(msg.sender)].field_0) - (sub_fddfb9d0[address(msg.sender)].field_768 * sub_fddfb9d0[address(msg.sender)].field_0) / 10^18)
    else:
        if sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / ext_call.return_data[0] == sub_fddfb9d0[address(msg.sender)].field_256:
            if sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18 >= sub_fddfb9d0[address(msg.sender)].field_0:
                if not uint8(sub_fddfb9d0[address(msg.sender)].field_1024):
                    if sub_fddfb9d0[address(msg.sender)].field_768 <= sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18:
                        return ((sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18) - sub_fddfb9d0[address(msg.sender)].field_768)
                else:
                    if sub_fddfb9d0[address(msg.sender)].field_768 <= 10^18:
                        if not sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18:
                            return 0
                        if (10^18 * sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18) - (sub_fddfb9d0[address(msg.sender)].field_768 * sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18) / sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18 == -sub_fddfb9d0[address(msg.sender)].field_768 + 10^18:
                            return ((10^18 * sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18) - (sub_fddfb9d0[address(msg.sender)].field_768 * sub_fddfb9d0[address(msg.sender)].field_256 * ext_call.return_data[0] / 10^18) / 10^18)
            else:
                if not uint8(sub_fddfb9d0[address(msg.sender)].field_1024):
                    if sub_fddfb9d0[address(msg.sender)].field_768 <= sub_fddfb9d0[address(msg.sender)].field_0:
                        return (sub_fddfb9d0[address(msg.sender)].field_0 - sub_fddfb9d0[address(msg.sender)].field_768)
                else:
                    if sub_fddfb9d0[address(msg.sender)].field_768 <= 10^18:
                        if not sub_fddfb9d0[address(msg.sender)].field_0:
                            return 0
                        if (10^18 * sub_fddfb9d0[address(msg.sender)].field_0) - (sub_fddfb9d0[address(msg.sender)].field_768 * sub_fddfb9d0[address(msg.sender)].field_0) / sub_fddfb9d0[address(msg.sender)].field_0 == -sub_fddfb9d0[address(msg.sender)].field_768 + 10^18:
                            return ((10^18 * sub_fddfb9d0[address(msg.sender)].field_0) - (sub_fddfb9d0[address(msg.sender)].field_768 * sub_fddfb9d0[address(msg.sender)].field_0) / 10^18)
    revert
}

function sub_281c0fcb(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    _57 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    _59 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 6)
    mem[ceil32(arg1.length) + 128] = sub_bb3cc56f[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    if not uint8(stor1[_59].field_0):
        require mem[ceil32(arg1.length) + 128] <= sub_af0bc6c3
        require sub_af0bc6c3 - mem[ceil32(arg1.length) + 128] == msg.value
        require sub_af0bc6c3 - mem[ceil32(arg1.length) + 128] + sub_0ce9da07 >= sub_0ce9da07
        sub_0ce9da07 = sub_af0bc6c3 - mem[ceil32(arg1.length) + 128] + sub_0ce9da07
        emit 0x1033a3c9: msg.sender, sub_af0bc6c3 - mem[ceil32(arg1.length) + 128], address(sub_bb3cc56f[_57].field_256), _57
        if sub_c9673d79[address(stor6[_57].field_256)] > 0:
            if not sub_af0bc6c3 - mem[ceil32(arg1.length) + 128]:
                require sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                require 0 <= sub_0ce9da07
                emit Reward(_57, msg.sender, 0, address(sub_bb3cc56f[_57].field_264));
            else:
                require (sub_af0bc6c3 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / sub_af0bc6c3 - mem[ceil32(arg1.length) + 128] == sub_c9673d79[address(stor6[_57].field_256)]
                require ((sub_af0bc6c3 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18) + sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                sub_c723be6b[address(stor6[_57].field_256)] += (sub_af0bc6c3 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18
                require (sub_af0bc6c3 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18 <= sub_0ce9da07
                sub_0ce9da07 -= (sub_af0bc6c3 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18
                emit Reward(_57, msg.sender, (sub_af0bc6c3 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18, address(sub_bb3cc56f[_57].field_264));
    else:
        require mem[ceil32(arg1.length) + 128] <= 10^18
        if not sub_af0bc6c3:
            require 0 == msg.value
            require sub_0ce9da07 >= sub_0ce9da07
            emit 0x1033a3c9: msg.sender, 0, address(sub_bb3cc56f[_57].field_256), _57
            if sub_c9673d79[address(stor6[_57].field_256)] > 0:
                require sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                require 0 <= sub_0ce9da07
                emit Reward(_57, msg.sender, 0, address(sub_bb3cc56f[_57].field_264));
        else:
            require (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / sub_af0bc6c3 == -mem[ceil32(arg1.length) + 128] + 10^18
            require (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 == msg.value
            require ((10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18) + sub_0ce9da07 >= sub_0ce9da07
            sub_0ce9da07 += (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18
            emit 0x1033a3c9: msg.sender, (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18, address(sub_bb3cc56f[_57].field_256), _57
            if sub_c9673d79[address(stor6[_57].field_256)] > 0:
                if not (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18:
                    require sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                    require 0 <= sub_0ce9da07
                    emit Reward(_57, msg.sender, 0, address(sub_bb3cc56f[_57].field_264));
                else:
                    require sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 / (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 == sub_c9673d79[address(stor6[_57].field_256)]
                    require (sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 / 10^18) + sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                    sub_c723be6b[address(stor6[_57].field_256)] += sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 / 10^18
                    require sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 / 10^18 <= sub_0ce9da07
                    sub_0ce9da07 -= sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 / 10^18
                    emit Reward(_57, msg.sender, sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_af0bc6c3) - (mem[ceil32(arg1.length) + 128] * sub_af0bc6c3) / 10^18 / 10^18, address(sub_bb3cc56f[_57].field_264));
    sub_bb3cc56f[_57].field_0 = 0
    Mask(168, 0, sub_bb3cc56f[_57].field_256) = 0
}

function sub_cb253b0f(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    _57 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    _59 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 6)
    mem[ceil32(arg1.length) + 128] = sub_bb3cc56f[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    if not uint8(stor1[_59].field_0):
        require mem[ceil32(arg1.length) + 128] <= sub_44382236
        require sub_44382236 - mem[ceil32(arg1.length) + 128] == msg.value
        require sub_44382236 - mem[ceil32(arg1.length) + 128] + sub_0ce9da07 >= sub_0ce9da07
        sub_0ce9da07 = sub_44382236 - mem[ceil32(arg1.length) + 128] + sub_0ce9da07
        emit 0x1033a3c9: msg.sender, sub_44382236 - mem[ceil32(arg1.length) + 128], address(sub_bb3cc56f[_57].field_256), _57
        if sub_c9673d79[address(stor6[_57].field_256)] > 0:
            if not sub_44382236 - mem[ceil32(arg1.length) + 128]:
                require sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                require 0 <= sub_0ce9da07
                emit Reward(_57, msg.sender, 0, address(sub_bb3cc56f[_57].field_264));
            else:
                require (sub_44382236 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / sub_44382236 - mem[ceil32(arg1.length) + 128] == sub_c9673d79[address(stor6[_57].field_256)]
                require ((sub_44382236 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18) + sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                sub_c723be6b[address(stor6[_57].field_256)] += (sub_44382236 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18
                require (sub_44382236 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18 <= sub_0ce9da07
                sub_0ce9da07 -= (sub_44382236 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18
                emit Reward(_57, msg.sender, (sub_44382236 * sub_c9673d79[address(stor6[_57].field_256)]) - (mem[ceil32(arg1.length) + 128] * sub_c9673d79[address(stor6[_57].field_256)]) / 10^18, address(sub_bb3cc56f[_57].field_264));
    else:
        require mem[ceil32(arg1.length) + 128] <= 10^18
        if not sub_44382236:
            require 0 == msg.value
            require sub_0ce9da07 >= sub_0ce9da07
            emit 0x1033a3c9: msg.sender, 0, address(sub_bb3cc56f[_57].field_256), _57
            if sub_c9673d79[address(stor6[_57].field_256)] > 0:
                require sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                require 0 <= sub_0ce9da07
                emit Reward(_57, msg.sender, 0, address(sub_bb3cc56f[_57].field_264));
        else:
            require (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / sub_44382236 == -mem[ceil32(arg1.length) + 128] + 10^18
            require (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 == msg.value
            require ((10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18) + sub_0ce9da07 >= sub_0ce9da07
            sub_0ce9da07 += (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18
            emit 0x1033a3c9: msg.sender, (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18, address(sub_bb3cc56f[_57].field_256), _57
            if sub_c9673d79[address(stor6[_57].field_256)] > 0:
                if not (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18:
                    require sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                    require 0 <= sub_0ce9da07
                    emit Reward(_57, msg.sender, 0, address(sub_bb3cc56f[_57].field_264));
                else:
                    require sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 / (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 == sub_c9673d79[address(stor6[_57].field_256)]
                    require (sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 / 10^18) + sub_c723be6b[address(stor6[_57].field_256)] >= sub_c723be6b[address(stor6[_57].field_256)]
                    sub_c723be6b[address(stor6[_57].field_256)] += sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 / 10^18
                    require sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 / 10^18 <= sub_0ce9da07
                    sub_0ce9da07 -= sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 / 10^18
                    emit Reward(_57, msg.sender, sub_c9673d79[address(stor6[_57].field_256)] * (10^18 * sub_44382236) - (mem[ceil32(arg1.length) + 128] * sub_44382236) / 10^18 / 10^18, address(sub_bb3cc56f[_57].field_264));
    sub_bb3cc56f[_57].field_0 = 0
    Mask(168, 0, sub_bb3cc56f[_57].field_256) = 0
}



}
