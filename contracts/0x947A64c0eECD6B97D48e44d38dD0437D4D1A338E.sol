contract main {




// =====================  Runtime code  =====================


#
#  - sub_3285ccf6(?)
#
address owner;
mapping of uint8 stor1;
array of address sub_ce23f3ce;
uint8 stor3;
address sub_ca0b2934Address; offset 8
address sub_b74f23c3Address;
address sub_2308e5c9Address;
address sub_15ce0345Address;
address sub_ffb330c7Address;
address sub_c1d3eb46Address;
address sub_4ac9ce5aAddress;
address sub_fa8cc3b0Address;
address sub_a3dc14e7Address;
address sub_ba0b9c51Address;
address sub_12e2a54dAddress;
address sub_50d125b7Address;
address sub_0c5b1384Address;
address sub_17a3e135Address;
address sub_f2bde683Address;
address sub_16e6ee47Address;
address sub_57527881Address;
uint32 stor20; offset 160
address sub_5d3b58cdAddress;
mapping of struct stor21;
mapping of struct stor22;
mapping of struct stor23;
mapping of uint256 stor24;
uint256 stor27;
uint256 stor28;

function sub_0c5b1384(?) {
    return sub_0c5b1384Address
}

function sub_12e2a54d(?) {
    return sub_12e2a54dAddress
}

function sub_15ce0345(?) {
    return sub_15ce0345Address
}

function sub_16e6ee47(?) {
    return sub_16e6ee47Address
}

function sub_17a3e135(?) {
    return sub_17a3e135Address
}

function sub_2308e5c9(?) {
    return sub_2308e5c9Address
}

function sub_4ac9ce5a(?) {
    return sub_4ac9ce5aAddress
}

function sub_50d125b7(?) {
    return sub_50d125b7Address
}

function getNumControllers() {
    return sub_ce23f3ce.length
}

function sub_57527881(?) {
    return sub_57527881Address
}

function sub_5d3b58cd(?) {
    return sub_5d3b58cdAddress
}

function owner() {
    return owner
}

function sub_a3dc14e7(?) {
    return sub_a3dc14e7Address
}

function sub_b74f23c3(?) {
    return sub_b74f23c3Address
}

function sub_ba0b9c51(?) {
    return sub_ba0b9c51Address
}

function sub_c1d3eb46(?) {
    return sub_c1d3eb46Address
}

function sub_ca0b2934(?) {
    return sub_ca0b2934Address
}

function sub_ce23f3ce(?) {
    require arg1 < sub_ce23f3ce.length
    return address(sub_ce23f3ce[arg1])
}

function sub_f2bde683(?) {
    return sub_f2bde683Address
}

function sub_fa8cc3b0(?) {
    return sub_fa8cc3b0Address
}

function sub_ffb330c7(?) {
    return sub_ffb330c7Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_a7f4565f(?) {
    require msg.sender == owner
    stor20 = arg1
}

function sub_e70153cb(?) {
    require msg.sender == owner
    stor27 = arg1
}

function sub_545b1e98(?) {
    if bool(stor1[msg.sender]) == 1:
        return True
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_04f863af(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_ba0b9c51Address = arg1
    sub_a3dc14e7Address = arg1
}

function sub_301e2c5d(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_5d3b58cdAddress = arg1
    sub_57527881Address = arg1
}

function sub_500328c6(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_15ce0345Address = arg1
    sub_2308e5c9Address = arg1
}

function sub_556efd2c(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_50d125b7Address = arg1
    sub_12e2a54dAddress = arg1
}

function sub_5853bae9(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_17a3e135Address = arg1
    sub_0c5b1384Address = arg1
}

function sub_801bfb73(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_c1d3eb46Address = arg1
    sub_ffb330c7Address = arg1
}

function sub_c36deec0(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_b74f23c3Address = arg1
    sub_ca0b2934Address = arg1
}

function sub_eab43d69(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_fa8cc3b0Address = arg1
    sub_4ac9ce5aAddress = arg1
}

function sub_ee48660e(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_16e6ee47Address = arg1
    sub_f2bde683Address = arg1
}

function sub_3a510500(?) {
    require ext_code.size(sub_a3dc14e7Address)
    call sub_a3dc14e7Address.0xa543f072 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[28 len 2]
}

function sub_be580955(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    idx = 0
    while idx < sub_ce23f3ce.length:
        mem[0] = address(sub_ce23f3ce[idx])
        mem[32] = 1
        stor1[address(stor2[idx])] = 0
        idx = idx + 1
        continue 
    sub_ce23f3ce.length = 0
    idx = 0
    while sub_ce23f3ce.length > idx:
        uint256(sub_ce23f3ce[idx]) = 0
        idx = idx + 1
        continue 
}

function setEnabled(bool arg1, bool arg2) {
    require msg.sender == owner
    if arg2:
        if bool(stor1[msg.sender]) != 1:
            if owner != msg.sender:
                revert with 0, 'User doesn't have control'
        if not stor3:
            revert with 0, 'User doesn't have control'
        idx = 0
        while idx < sub_ce23f3ce.length:
            mem[0] = address(sub_ce23f3ce[idx])
            mem[32] = 1
            stor1[address(stor2[idx])] = 0
            idx = idx + 1
            continue 
        sub_ce23f3ce.length = 0
        idx = 0
        while sub_ce23f3ce.length > idx:
            uint256(sub_ce23f3ce[idx]) = 0
            idx = idx + 1
            continue 
    stor3 = uint8(arg1)
}

function setController(address arg1, bool arg2) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    stor1[address(arg1)] = uint8(arg2)
    if not arg2:
        idx = 0
        while uint32(idx) < sub_ce23f3ce.length:
            mem[0] = 2
            if address(sub_ce23f3ce[uint32(idx)]) != arg1:
                idx = idx + 1
                continue 
            require sub_ce23f3ce.length - 1 < sub_ce23f3ce.length
            require uint32(idx) < sub_ce23f3ce.length
            address(sub_ce23f3ce[uint32(idx)]) = address(sub_ce23f3ce[sub_ce23f3ce.length])
            require sub_ce23f3ce.length - 1 < sub_ce23f3ce.length
            address(sub_ce23f3ce[sub_ce23f3ce.length]) = 0
            sub_ce23f3ce.length--
            if sub_ce23f3ce.length > sub_ce23f3ce.length - 1:
                idx = sub_ce23f3ce.length + sha3(2) - 1
                while sha3(2) + sub_ce23f3ce.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
    else:
        sub_ce23f3ce.length++
        address(sub_ce23f3ce[sub_ce23f3ce.length]) = arg1
}

function sub_bbc2fe63(?) {
    require ext_code.size(sub_a3dc14e7Address)
    call sub_a3dc14e7Address.0xa543f072 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        return Mask(200, 56, arg1) >> 56, 
               uint8(uint8(arg1) - 1),
               uint8(uint8(arg1) - (Mask(1, 48, arg1) >> 48)),
               uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
               arg1 % 16777216
    if 1 == arg2:
        return Mask(200, 56, arg1) >> 56, 
               uint8(uint8(arg1) - 1),
               uint8((arg1 % 128) + 1),
               uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
               arg1 % 16777216
    if 2 == arg2:
        return Mask(200, 56, arg1) >> 56, 
               uint8(arg1),
               uint8(uint8(arg1) + 1),
               uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
               arg1 % 16777216
    if 3 == arg2:
        return Mask(200, 56, arg1) >> 56, 
               uint8(uint8(arg1) + 1),
               uint8(uint8(arg1) + -(Mask(1, 48, arg1) >> 48) + 1),
               uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
               arg1 % 16777216
    if 4 == arg2:
        return Mask(200, 56, arg1) >> 56, 
               uint8(uint8(arg1) + 1),
               uint8(uint8(arg1) - (Mask(1, 48, arg1) >> 48)),
               uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
               arg1 % 16777216
    if arg2 != 5:
        return Mask(200, 56, arg1) >> 56, 
               uint8(arg1),
               uint8(arg1),
               uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
               arg1 % 16777216
    return Mask(200, 56, arg1) >> 56, 
           uint8(arg1),
           uint8(uint8(arg1) - 1),
           uint16(ext_call.return_data[0] / 2^uint8((16 * uint8(arg2)) + 80)),
           arg1 % 16777216
}

function sub_2ca15986(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    require arg1.length == arg2.length
    require arg1.length == arg4.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        stor21[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        require idx < arg1.length
        stor22[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < arg4.length
        require idx < arg1.length
        stor23[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require idx < arg5.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 24
        stor24[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        idx = idx + 1
        continue 
}

function sub_36b74a1f(?) payable {
    if not stor3:
        revert with 0, 'Contract not enabled'
    if stor21[arg2 << 240].field_44 % 16 > 0:
        if owner != msg.sender:
            revert with 0, 'Only Admin can build this'
    else:
        require ext_code.size(sub_4ac9ce5aAddress)
        call sub_4ac9ce5aAddress.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'User does not own plot'
    require ext_code.size(sub_a3dc14e7Address)
    call sub_a3dc14e7Address.0xa543f072 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor21[arg2 << 240].field_0 <= 0:
        revert with 0, 'No build rules'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No plot desc'
    if not uint8(uint8(stor21[arg2 << 240].field_8) and 2^(ext_call.return_data[0] % 16)):
        revert with 0, 'Not allowed on this terrain'
    if not uint8(uint8(stor21[arg2 << 240].field_0) and 2^(uint8(ext_call.return_data[0]) / 16)):
        revert with 0, 'Not allowed on this biome'
    if uint8(stor21[arg2 << 240].field_16):
        if uint8(uint8(stor21[arg2 << 240].field_16) and ext_call.return_data[22 len 1]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not next to mandatory adjacent terrain'
    require ext_code.size(sub_a3dc14e7Address)
    call sub_a3dc14e7Address.0xa543f072 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[28 len 2] > 0:
        if stor21[ext_call.return_data[28 len 2]].field_24 % 16 != 1:
            revert with 0, 'Can't build on current producer'
    s = 0
    s = 0
    idx = 0
    while uint8(idx) < 4:
        if uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64)):
            if 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024:
                if uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64)) < 16000:
                    if stor22[arg2 << 240].field_0 / 2^uint8((4 * idx) + 40) % 16 <= 0:
                        mem[96] = 0x9eea5f6600000000000000000000000000000000000000000000000000000000
                        mem[100] = uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                        mem[132] = msg.sender
                        mem[164] = 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024
                        require ext_code.size(sub_57527881Address)
                        call sub_57527881Address.burn(uint256 arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64) << 240, msg.sender, 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[100] = msg.sender
                        mem[132] = uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                        require ext_code.size(sub_57527881Address)
                        call sub_57527881Address.balanceOf(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024:
                            revert with 0, 'Not enough input resource'
                    s = 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024
                    s = uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                    idx = idx + 1
                    continue 
                if stor22[arg2 << 240].field_0 / 2^uint8((4 * idx) + 40) % 16 <= 0:
                    mem[96] = 0x9eea5f6600000000000000000000000000000000000000000000000000000000
                    mem[100] = uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                    mem[132] = msg.sender
                    mem[164] = 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024 / 10^6
                    require ext_code.size(sub_57527881Address)
                    call sub_57527881Address.burn(uint256 arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64) << 240, msg.sender, 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024 / 10^6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[100] = msg.sender
                    mem[132] = uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                    require ext_code.size(sub_57527881Address)
                    call sub_57527881Address.balanceOf(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024 / 10^6:
                        revert with 0, 'Not enough input resource'
                s = 10^(Mask(6, 10, stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80)) >> 10) * stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 80) % 1024 / 10^6
                s = uint16(stor22[arg2 << 240].field_0 / 2^uint8((32 * idx) + 64))
                idx = idx + 1
                continue 
        if uint8(stor22[arg2 << 240].field_16) <= 0:
            require ext_code.size(sub_12e2a54dAddress)
            call sub_12e2a54dAddress.0x56de6bed with:
                 gas gas_remaining wei
                args arg1, arg2 << 240, uint8(stor23[arg2 << 240].field_56)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_2308e5c9Address)
            call sub_2308e5c9Address.0xf4cd0c53 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1, 5 * 10^13 * 10^stor21[arg2 << 240].field_33 % 8 * stor21[arg2 << 240].field_28 % 32, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_57527881Address)
            call sub_57527881Address.mint(uint256 arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor28, msg.sender, msg.value / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xa70d6430: msg.sender, arg1, arg2
        require ext_code.size(sub_f2bde683Address)
        call sub_f2bde683Address.0x7ebad90f with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3dc14e7Address)
        call sub_a3dc14e7Address.0xf0040eaa with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(16, 112, ext_call.return_data[0]) >> 112 <= 0:
            revert with 0, 'No scientist on region for recipe that needs one'
        require ext_code.size(sub_ca0b2934Address)
        call sub_ca0b2934Address.0x1249b37e with:
             gas gas_remaining wei
            args (Mask(16, 112, ext_call.return_data[0]) << 128)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 0
        t = 0
        idx = 0
        while uint8(idx) < 3:
            if uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 24)) != uint8(stor22[arg2 << 240].field_16):
                s = s
                t = uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 24))
                idx = idx + 1
                continue 
            if uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 32)) != uint8(stor22[arg2 << 240].field_24):
                s = uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 32))
                t = uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 24))
                idx = idx + 1
                continue 
            require ext_code.size(sub_12e2a54dAddress)
            call sub_12e2a54dAddress.0x56de6bed with:
                 gas gas_remaining wei
                args arg1, arg2 << 240, uint8(stor23[arg2 << 240].field_56)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_2308e5c9Address)
            call sub_2308e5c9Address.0xf4cd0c53 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1, 5 * 10^13 * 10^stor21[arg2 << 240].field_33 % 8 * stor21[arg2 << 240].field_28 % 32, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_57527881Address)
            call sub_57527881Address.mint(uint256 arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor28, msg.sender, msg.value / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xa70d6430: msg.sender, arg1, arg2
        revert with 0, 'No Scientist has Knowledge to build this recipe'
    if uint8(stor22[arg2 << 240].field_16) <= 0:
        require ext_code.size(sub_12e2a54dAddress)
        call sub_12e2a54dAddress.0x56de6bed with:
             gas gas_remaining wei
            args arg1, arg2 << 240, uint8(stor23[arg2 << 240].field_56)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_2308e5c9Address)
        call sub_2308e5c9Address.0xf4cd0c53 with:
           value msg.value wei
             gas gas_remaining wei
            args arg1, 5 * 10^13 * 10^stor21[arg2 << 240].field_33 % 8 * stor21[arg2 << 240].field_28 % 32, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_57527881Address)
        call sub_57527881Address.mint(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args stor28, msg.sender, msg.value / 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xa70d6430: msg.sender, arg1, arg2
    require ext_code.size(sub_f2bde683Address)
    call sub_f2bde683Address.0x7ebad90f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3dc14e7Address)
    call sub_a3dc14e7Address.0xf0040eaa with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(16, 112, ext_call.return_data[0]) >> 112 <= 0:
        revert with 0, 'No scientist on region for recipe that needs one'
    require ext_code.size(sub_ca0b2934Address)
    call sub_ca0b2934Address.0x1249b37e with:
         gas gas_remaining wei
        args (Mask(16, 112, ext_call.return_data[0]) << 128)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    t = 0
    idx = 0
    while uint8(idx) < 3:
        if uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 24)) != uint8(stor22[arg2 << 240].field_16):
            s = s
            t = uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 24))
            idx = idx + 1
            continue 
        if uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 32)) != uint8(stor22[arg2 << 240].field_24):
            s = uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 32))
            t = uint8(ext_call.return_data[0] / 2^uint8((24 * idx) + 24))
            idx = idx + 1
            continue 
        require ext_code.size(sub_12e2a54dAddress)
        call sub_12e2a54dAddress.0x56de6bed with:
             gas gas_remaining wei
            args arg1, arg2 << 240, uint8(stor23[arg2 << 240].field_56)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_2308e5c9Address)
        call sub_2308e5c9Address.0xf4cd0c53 with:
           value msg.value wei
             gas gas_remaining wei
            args arg1, 5 * 10^13 * 10^stor21[arg2 << 240].field_33 % 8 * stor21[arg2 << 240].field_28 % 32, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_57527881Address)
        call sub_57527881Address.mint(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args stor28, msg.sender, msg.value / 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xa70d6430: msg.sender, arg1, arg2
    revert with 0, 'No Scientist has Knowledge to build this recipe'
}



}
