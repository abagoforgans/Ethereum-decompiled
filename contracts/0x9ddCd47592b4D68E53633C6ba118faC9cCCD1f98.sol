contract main {




// =====================  Runtime code  =====================


address owner;
address sub_08294e44Address;
array of struct sub_415b52e2;
array of struct sub_3319c688;
mapping of uint256 sub_e0cc6bb2;
mapping of uint8 stor5;
mapping of uint256 sub_424c6041;
address sub_1d81333bAddress;
mapping of uint8 stor8;

function sub_08294e44(?) {
    return sub_08294e44Address
}

function sub_1d81333b(?) {
    return sub_1d81333bAddress
}

function forSale(uint256 arg1) {
    return bool(stor5[arg1])
}

function sub_3319c688(?) {
    require arg2 < sub_3319c688[arg1].field_0
    return sub_3319c688[arg1][arg2].field_0
}

function sub_415b52e2(?) {
    require arg2 < sub_415b52e2[arg1].field_0
    return sub_415b52e2[arg1][arg2].field_0
}

function sub_424c6041(?) {
    return sub_424c6041[arg1][arg2][arg3]
}

function isOpen(uint256 arg1) {
    return bool(uint8(stor8[arg1]))
}

function open(uint256 arg1) {
    return bool(uint8(stor8[arg1]))
}

function owner() {
    return owner
}

function sub_e0cc6bb2(?) {
    return sub_e0cc6bb2[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_6e76ca40(?) {
    require msg.sender == sub_1d81333bAddress
    sub_415b52e2[arg1].field_0++
    sub_415b52e2[arg1][sub_415b52e2[arg1].field_0].field_0 = arg5
    sub_424c6041[arg2][arg3][arg4] = arg5
}

function sub_89f0b550(?) {
    require arg1 > 0
    if not arg1:
        require 0 < arg1
        return 0
    require arg1
    require 10 * arg1 / arg1 == 10
    require 10 * arg1 / 10 / 100 < arg1
    return (10 * arg1 / 10 / 100)
}

function sub_119a80f1(?) {
    require msg.sender == sub_08294e44Address
    require uint8(stor8[arg2])
    sub_3319c688[arg2].field_0++
    sub_3319c688[arg2][sub_3319c688[arg2].field_0].field_0 = arg1
    require 1 <= sub_3319c688[arg2].field_0
    sub_e0cc6bb2[arg1] = sub_3319c688[arg2].field_0 - 1
    stor5[arg1] = 1
}

function sub_f1ea5cd3(?) {
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    uint256(stor8[arg1]) = not bool(uint8(stor8[arg1])) or Mask(248, 8, uint256(stor8[arg1]))
}

function sub_43c542ca(?) {
    if not sub_3319c688[arg1].field_0:
        mem[(32 * sub_3319c688[arg1].field_0) + 128] = 32
        mem[(32 * sub_3319c688[arg1].field_0) + 160] = sub_3319c688[arg1].field_0
        mem[(32 * sub_3319c688[arg1].field_0) + 192 len floor32(sub_3319c688[arg1].field_0)] = mem[128 len floor32(sub_3319c688[arg1].field_0)]
        return memory
          from (32 * sub_3319c688[arg1].field_0) + 128
           len (96 * sub_3319c688[arg1].field_0) + 64
    mem[128] = sub_3319c688[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_3319c688[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_3319c688[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_3319c688[arg1].field_0) + 192 len floor32(sub_3319c688[arg1].field_0)] = mem[128 len floor32(sub_3319c688[arg1].field_0)]
    return Array(len=sub_3319c688[arg1].field_0, data=mem[128 len floor32(sub_3319c688[arg1].field_0)], mem[(32 * sub_3319c688[arg1].field_0) + floor32(sub_3319c688[arg1].field_0) + 192 len (32 * sub_3319c688[arg1].field_0) - floor32(sub_3319c688[arg1].field_0)]), 
}

function sub_beaab453(?) {
    if not sub_415b52e2[arg1].field_0:
        mem[(32 * sub_415b52e2[arg1].field_0) + 128] = 32
        mem[(32 * sub_415b52e2[arg1].field_0) + 160] = sub_415b52e2[arg1].field_0
        mem[(32 * sub_415b52e2[arg1].field_0) + 192 len floor32(sub_415b52e2[arg1].field_0)] = mem[128 len floor32(sub_415b52e2[arg1].field_0)]
        return memory
          from (32 * sub_415b52e2[arg1].field_0) + 128
           len (96 * sub_415b52e2[arg1].field_0) + 64
    mem[128] = sub_415b52e2[arg1].field_0
    idx = 128
    s = 0
    while (32 * sub_415b52e2[arg1].field_0) + 96 > idx:
        mem[idx + 32] = sub_415b52e2[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_415b52e2[arg1].field_0) + 192 len floor32(sub_415b52e2[arg1].field_0)] = mem[128 len floor32(sub_415b52e2[arg1].field_0)]
    return Array(len=sub_415b52e2[arg1].field_0, data=mem[128 len floor32(sub_415b52e2[arg1].field_0)], mem[(32 * sub_415b52e2[arg1].field_0) + floor32(sub_415b52e2[arg1].field_0) + 192 len (32 * sub_415b52e2[arg1].field_0) - floor32(sub_415b52e2[arg1].field_0)]), 
}

function sub_03cd4f49(?) {
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0xbb19f507 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if bool(stor5[arg1]) == 1:
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x33f6832a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 <= sub_3319c688[ext_call.return_data[0]].field_0
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x33f6832a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_3319c688[ext_call.return_data[0]].field_0 - 1 < sub_3319c688[ext_call.return_data[0]].field_0
        sub_e0cc6bb2[stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]].field_0].field_0] = sub_e0cc6bb2[arg1]
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x33f6832a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_e0cc6bb2[arg1] < sub_3319c688[ext_call.return_data[0]].field_0
        sub_3319c688[ext_call.return_data[0]][stor4[arg1]].field_0 = sub_3319c688[ext_call.return_data[0]][sub_3319c688[ext_call.return_data[0]].field_0].field_0
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x33f6832a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_3319c688[ext_call.return_data[0]].field_0--
        if sub_3319c688[ext_call.return_data[0]].field_0 > sub_3319c688[ext_call.return_data[0]].field_0 - 1:
            idx = sub_3319c688[ext_call.return_data[0]].field_0 - 1
            while sub_3319c688[ext_call.return_data[0]].field_0 > idx:
                sub_3319c688[ext_call.return_data[0]][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor5[arg1] = 0
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x7f05ebf2 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_5c0b966f(?) payable {
    require msg.sender
    require this.address != msg.sender
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x4f558e79 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value > 0
    require msg.value <= eth.balance(this.address)
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0xef8998ae with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == msg.value
    require msg.value > 0
    if not msg.value:
        require 0 < msg.value
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x521eb273 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0xef8998ae with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 <= ext_call.return_data[0]
        call address(ext_call.return_data[0]) with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
    else:
        require msg.value
        require 10 * msg.value / msg.value == 10
        require 10 * msg.value / 10 / 100 < msg.value
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0x521eb273 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value 10 * msg.value / 10 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_08294e44Address)
        call sub_08294e44Address.0xef8998ae with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 10 * msg.value / 10 / 100 <= ext_call.return_data[0]
        call address(ext_call.return_data[0]) with:
           value ext_call.return_data[0] - (10 * msg.value / 10 / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x42842e0e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_415b52e2[arg1].field_0++
    sub_415b52e2[arg1][sub_415b52e2[arg1].field_0].field_0 = msg.value
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0xef8998ae with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x33f6832a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x8da0b3ee with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x50dc1722 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_424c6041[ext_call.return_data[0]][ext_call.return_data[0]][ext_call.return_data[0]] = ext_call.return_data[0]
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0xed9b079a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x33f6832a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= sub_3319c688[ext_call.return_data[0]].field_0
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x33f6832a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_3319c688[ext_call.return_data[0]].field_0 - 1 < sub_3319c688[ext_call.return_data[0]].field_0
    sub_e0cc6bb2[stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]].field_0].field_0] = sub_e0cc6bb2[arg1]
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x33f6832a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_e0cc6bb2[arg1] < sub_3319c688[ext_call.return_data[0]].field_0
    sub_3319c688[ext_call.return_data[0]][stor4[arg1]].field_0 = sub_3319c688[ext_call.return_data[0]][sub_3319c688[ext_call.return_data[0]].field_0].field_0
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x33f6832a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3319c688[ext_call.return_data[0]].field_0--
    if sub_3319c688[ext_call.return_data[0]].field_0 > sub_3319c688[ext_call.return_data[0]].field_0 - 1:
        idx = sub_3319c688[ext_call.return_data[0]].field_0 - 1
        while sub_3319c688[ext_call.return_data[0]].field_0 > idx:
            sub_3319c688[ext_call.return_data[0]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[arg1] = 0
    require ext_code.size(sub_08294e44Address)
    call sub_08294e44Address.0x7f05ebf2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_415b52e2[arg1].field_0++
    sub_415b52e2[arg1][sub_415b52e2[arg1].field_0].field_0 = msg.value
    emit Received(arg1, msg.value, msg.sender);
}



}
