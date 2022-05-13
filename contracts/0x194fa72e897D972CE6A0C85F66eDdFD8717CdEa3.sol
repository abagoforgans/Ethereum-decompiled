contract main {




// =====================  Runtime code  =====================


address owner;
array of struct countries;
address sub_06d4ef64Address;
array of struct prizes;
uint8 stor4;
uint8 stor4; offset 8
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function sub_06d4ef64(?) {
    return sub_06d4ef64Address
}

function countries(uint256 arg1) {
    require arg1 < countries.length
    mem[128] = countries[arg1].field_0
    idx = 128
    s = 0
    while countries[arg1].length + 96 > idx:
        mem[idx + 32] = countries[(4 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=countries[arg1].length, data=mem[128 len countries[arg1].length]), 
           countries[arg1].field_256,
           countries[arg1].field_512,
           countries[arg1].field_768
}

function sub_79a208d5(?) {
    return bool(uint8(stor4.field_8))
}

function owner() {
    return owner
}

function sub_a1ad554d(?) {
    return bool(uint8(stor4.field_0))
}

function sub_b8073c21(?) {
    return countries.length
}

function prizes(uint256 arg1) {
    require arg1 < prizes.length
    return prizes[arg1].field_0, prizes[arg1].field_256
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenOwnership() {
    require owner == msg.sender
    require ext_code.size(sub_06d4ef64Address)
    call sub_06d4ef64Address.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require uint8(stor4.field_8)
    require ext_code.size(sub_06d4ef64Address)
    call sub_06d4ef64Address.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value == ext_call.return_data[0]
    s = 0
    s = 0
    idx = 0
    while idx < prizes.length:
        mem[0] = 3
        call prizes[idx].field_0 with:
           value prizes[idx].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = prizes[idx].field_0
        mem[128] = prizes[idx].field_256
        emit 0x5d6c418c: prizes[idx].field_0, prizes[idx].field_256
        s = prizes[idx].field_256
        s = prizes[idx].field_0
        idx = idx + 1
        continue 
}

function sub_b056fbc9(?) payable {
    require uint8(stor4.field_8)
    require ext_code.size(sub_06d4ef64Address)
    call sub_06d4ef64Address.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value == ext_call.return_data[0]
    s = 0
    s = 0
    idx = 0
    while idx < prizes.length:
        mem[0] = 3
        call prizes[idx].field_0 with:
           value prizes[idx].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = prizes[idx].field_0
        mem[128] = prizes[idx].field_256
        emit 0x5d6c418c: prizes[idx].field_0, prizes[idx].field_256
        s = prizes[idx].field_256
        s = prizes[idx].field_0
        idx = idx + 1
        continue 
}

function sub_cf00716f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require arg1.length == countries.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < countries.length
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xf9f7ddc300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = _15
        require ext_code.size(countries[idx].field_512)
        call countries[idx].field_512.0xf9f7ddc3 with:
             gas gas_remaining wei
            args _15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        require idx < countries.length
        mem[0] = 1
        countries[idx].field_256 = mem[(32 * idx) + 128]
        s = countries[idx].field_512
        idx = idx + 1
        continue 
}

function sub_8fb57ef1(?) {
    require owner == msg.sender
    require arg1 < countries.length
    require ext_code.size(countries[arg1].field_512)
    call countries[arg1].field_512.transferTokenOwnership(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < countries.length
    sub_06d4ef64Address = countries[arg1].field_768
    require ext_code.size(countries[arg1].field_768)
    call countries[arg1].field_768.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor4.field_0) = 1
    require arg1 < countries.length
    mem[192] = countries[arg1].field_0
    idx = 192
    s = 0
    while countries[arg1].length + 192 > idx + 32:
        mem[idx + 32] = countries[(4 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x7207119d: Array(len=countries[arg1].length, data=mem[192 len countries[arg1].length + (floor32(countries[arg1].length - 1) + -countries[arg1].length + 32 % 32)]), countries[arg1].field_768
}

function sub_5fba5548(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require uint8(stor4.field_0)
    require 0 < arg1.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        require ext_code.size(sub_06d4ef64Address)
        call sub_06d4ef64Address.0x70a08231 with:
             gas gas_remaining wei
            args address(mem[(32 * idx) + 128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        _26 = mem[64]
        mem[64] = mem[64] + 64
        mem[_26] = mem[(32 * idx) + 140 len 20]
        mem[_26 + 32] = ext_call.return_data[0]
        prizes.length++
        mem[0] = 3
        prizes[prizes.length].field_0 = address(_21)
        storC257[stor3.length] = ext_call.return_data[0]
        require ext_code.size(sub_06d4ef64Address)
        call sub_06d4ef64Address.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64]] = ext_call.return_data[0]
        mem[mem[64] + 32] = address(_21)
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        emit 0x58ff4bb1: ext_call.return_data[0], address(_21), ext_call.return_data[0], ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    uint8(stor4.field_8) = 1
}

function sub_739775e8(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + 128 len 6674] = code.data[4434 len 6674]
    mem[ceil32(arg1.length) + 6898 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: code.data[4434 len 6674], Array(len=arg2, data=arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 6898] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 6930 len arg1.length % 32]
        create contract with 0 wei
                        code: code.data[4434 len 6674], Array(len=arg2, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 6898 len floor32(arg1.length) + -ceil32(arg1.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    countries.length++
    countries[countries.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = address(create.new_address)
    storB10E[stor1.length] = address(ext_call.return_data[0])
}



}
