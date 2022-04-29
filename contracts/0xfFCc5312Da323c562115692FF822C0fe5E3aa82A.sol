contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[7090 len 20]
    require code.data[7122 len 20]
    stor1 = code.data[7090 len 20]
    stor2 = code.data[7122 len 20]
    return code.data[185 len 6893]
}



// =====================  Runtime code  =====================


address owner;
address veTokenAddress;
address sub_47080940Address;
mapping of struct sub_7ecd5677;
mapping of struct sub_ce31cb9a;
array of struct stor5;
array of struct stor6;

function veToken() {
    return veTokenAddress
}

function sub_47080940(?) {
    return sub_47080940Address
}

function sub_495b7578(?) {
    return bool(address(sub_7ecd5677[arg1].field_0))
}

function sub_516fb308(?) {
    return bool(address(sub_ce31cb9a[arg1].field_0))
}

function sub_7ecd5677(?) {
    return address(sub_7ecd5677[arg1].field_0), 
           sub_7ecd5677[arg1].field_256,
           sub_7ecd5677[arg1].field_512,
           uint32(sub_7ecd5677[arg1].field_768),
           uint64(sub_7ecd5677[arg1].field_800)
}

function owner() {
    return owner
}

function sub_ce31cb9a(?) {
    return address(sub_ce31cb9a[arg1].field_0), 
           sub_ce31cb9a[arg1].field_256,
           sub_ce31cb9a[arg1].field_512,
           sub_ce31cb9a[arg1].field_768,
           uint32(sub_ce31cb9a[arg1].field_1024),
           uint64(sub_ce31cb9a[arg1].field_1024)
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _17
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ratio() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x71ca337d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function maxPrice() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xe38d6b5c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function minPrice() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xe45be8eb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function maxVeriAmount() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x9204b2bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function minVeriAmount() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xc3f843d7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function minDuration() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x56715761 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function maxDuration() {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x6db5c8fd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function checkRatio(uint256 arg1, uint256 arg2) {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xded1e438 with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_9605a8de(?) {
    if address(sub_ce31cb9a[arg1].field_0) != msg.sender:
        require owner == msg.sender
    hash = sha256hash(sub_ce31cb9a[arg1].field_256, sub_ce31cb9a[arg1].field_768, uint32(sub_ce31cb9a[arg1].field_1024)) 
    require sha256hash.result
    require 0 < stor5[hash].field_0
    idx = 0
    while stor5[hash][idx].field_0 != arg1:
        require idx + 1 < stor5[hash].field_0
        mem[0] = sha3(hash, 5)
        idx = idx + 1
        continue 
    require stor5[hash].field_0 - 1 < stor5[hash].field_0
    require None + 2 < stor5[hash].field_0
    stor5[hash][None].field_512 = stor5[hash][stor5[hash].field_0].field_0
    stor5[hash].field_0--
    if not stor5[hash].field_0 <= stor5[hash].field_0 - 1:
        idx = stor5[hash].field_0 - 1
        while stor5[hash].field_0 > idx:
            stor5[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(sub_ce31cb9a[arg1].field_0) = 0
    sub_ce31cb9a[arg1].field_256 = 0
    sub_ce31cb9a[arg1].field_512 = 0
    sub_ce31cb9a[arg1].field_768 = 0
    Mask(96, 0, sub_ce31cb9a[arg1].field_1024) = 0
    call address(sub_ce31cb9a[arg1].field_0) with:
       value sub_ce31cb9a[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x4e33e8b1: arg1
}

function sub_3b253fba(?) {
    if address(sub_7ecd5677[arg1].field_0) != msg.sender:
        require owner == msg.sender
    hash = sha256hash(sub_7ecd5677[arg1].field_256, sub_7ecd5677[arg1].field_512, uint32(sub_7ecd5677[arg1].field_768)) 
    require sha256hash.result
    require 0 < stor6[hash].field_0
    idx = 0
    while stor6[hash][idx].field_0 != arg1:
        require idx + 1 < stor6[hash].field_0
        mem[0] = sha3(hash, 6)
        idx = idx + 1
        continue 
    require stor6[hash].field_0 - 1 < stor6[hash].field_0
    require None + 2 < stor6[hash].field_0
    stor6[hash][None].field_512 = stor6[hash][stor6[hash].field_0].field_0
    stor6[hash].field_0--
    if not stor6[hash].field_0 <= stor6[hash].field_0 - 1:
        idx = stor6[hash].field_0 - 1
        while stor6[hash].field_0 > idx:
            stor6[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(sub_7ecd5677[arg1].field_0) = 0
    sub_7ecd5677[arg1].field_256 = 0
    sub_7ecd5677[arg1].field_512 = 0
    Mask(96, 0, sub_7ecd5677[arg1].field_768) = 0
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(sub_7ecd5677[arg1].field_0), sub_7ecd5677[arg1].field_256
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x971dfaac: arg1
}

function sub_105bf972(?) payable {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xe45be8eb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 >= ext_call.return_data[0]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xe38d6b5c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x56715761 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg3 >= ext_call.return_data[28 len 4]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x6db5c8fd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg3 <= ext_call.return_data[28 len 4]
    if arg4:
        require arg4 > block.timestamp
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xded1e438 with:
         gas gas_remaining - 710 wei
        args arg1, msg.value
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(address(this.address), 0, uint64(msg.value), arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    require not address(sub_ce31cb9a[hash].field_0)
    emit 0x3e58e8d0: arg1, 0, arg2, arg3 << 224, arg4, hash, msg.sender
    hash = sha256hash(arg1, arg2, arg3) 
    require sha256hash.result
    s = 0
    s = 0
    idx = 0
    while idx < stor6[hash].field_0:
        mem[0] = stor6[hash][idx].field_0
        mem[32] = 3
        if uint64(sub_7ecd5677[stor6[hash][idx].field_0].field_800):
            if uint64(sub_7ecd5677[stor6[hash][idx].field_0].field_800) <= block.timestamp:
                s = sha3(stor6[hash][idx].field_0, 3)
                s = stor6[hash][idx].field_0
                idx = idx + 1
                continue 
        require ext_code.size(veTokenAddress)
        call veTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args sub_47080940Address, sub_7ecd5677[stor6[hash][idx].field_0].field_256
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_47080940Address)
        call sub_47080940Address.0xafe98be1 with:
             gas gas_remaining - 710 wei
            args 0, uint32(sub_7ecd5677[stor6[hash][idx].field_0].field_256), msg.value, uint32(sub_7ecd5677[stor6[hash][idx].field_0].field_768), arg5
        require ext_call.success
        emit 0x3d646673: ext_call.return_data[0], 0, hash, sub_7ecd5677[stor6[hash][idx].field_0].field_256, msg.value, sub_7ecd5677[stor6[hash][idx].field_0].field_512, uint32(sub_7ecd5677[stor6[hash][idx].field_0].field_768), address(sub_7ecd5677[stor6[hash][idx].field_0].field_0), msg.sender
        require ext_code.size(sub_47080940Address)
        call sub_47080940Address.0xa56ac1e9 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args 0, 0, uint32(msg.sender), sub_7ecd5677[stor6[hash][idx].field_0].field_256, sub_7ecd5677[stor6[hash][idx].field_0].field_512, uint32(sub_7ecd5677[stor6[hash][idx].field_0].field_768), arg5
        require ext_call.success
        require 0 < stor6[hash].field_0
        s = 0
        while stor6[hash][s].field_0 != stor6[hash][idx].field_0:
            require s + 1 < stor6[hash].field_0
            mem[0] = sha3(hash, 6)
            s = s + 1
            continue 
        require stor6[hash].field_0 - 1 < stor6[hash].field_0
        require s < stor6[hash].field_0
        stor6[hash][s].field_0 = stor6[hash][stor6[hash].field_0].field_0
        stor6[hash].field_0--
        if not stor6[hash].field_0 <= stor6[hash].field_0 - 1:
            s = stor6[hash].field_0 + sha3(sha3(hash, 6)) - 1
            while sha3(sha3(hash, 6)) + stor6[hash].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
        address(sub_7ecd5677[stor6[hash][idx].field_0].field_0) = 0
        sub_7ecd5677[stor6[hash][idx].field_0].field_256 = 0
        sub_7ecd5677[stor6[hash][idx].field_0].field_512 = 0
        Mask(96, 0, sub_7ecd5677[stor6[hash][idx].field_0].field_768) = 0
    stor5[hash].field_0++
    if not stor5[hash].field_0 <= stor5[hash].field_0 + 1:
        idx = stor5[hash].field_0 + 1
        while stor5[hash].field_0 > idx:
            stor5[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[hash][stor5[hash].field_0].field_0 = hash
    address(sub_ce31cb9a[hash].field_0) = msg.sender
    sub_ce31cb9a[hash].field_256 = arg1
    sub_ce31cb9a[hash].field_512 = msg.value
    sub_ce31cb9a[hash].field_768 = arg2
    uint32(sub_ce31cb9a[hash].field_1024) = arg3
    uint64(sub_ce31cb9a[hash].field_1056) = arg4
}

function sub_c1049b24(?) {
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xc3f843d7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 >= ext_call.return_data[0]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x9204b2bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xe45be8eb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 >= ext_call.return_data[0]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xe38d6b5c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x56715761 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg3 >= ext_call.return_data[28 len 4]
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0x6db5c8fd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg3 <= ext_call.return_data[28 len 4]
    if arg4:
        require arg4 > block.timestamp
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(address(this.address), 0, 0, arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    require not address(sub_7ecd5677[hash].field_0)
    emit 0xc1069e7f: arg1, arg2, arg3 << 224, arg4, hash, msg.sender
    hash = sha256hash(arg1, arg2, arg3) 
    require sha256hash.result
    s = 0
    s = 0
    idx = 0
    while idx < stor5[hash].field_0:
        mem[0] = stor5[hash][idx].field_0
        mem[32] = 4
        if uint64(sub_ce31cb9a[stor5[hash][idx].field_0].field_1056):
            if uint64(sub_ce31cb9a[stor5[hash][idx].field_0].field_1056) <= block.timestamp:
                s = sha3(stor5[hash][idx].field_0, 4)
                s = stor5[hash][idx].field_0
                idx = idx + 1
                continue 
        require ext_code.size(veTokenAddress)
        call veTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args sub_47080940Address, sub_ce31cb9a[stor5[hash][idx].field_0].field_256
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_47080940Address)
        call sub_47080940Address.0xafe98be1 with:
             gas gas_remaining - 710 wei
            args 0, uint32(sub_ce31cb9a[stor5[hash][idx].field_0].field_256), sub_ce31cb9a[stor5[hash][idx].field_0].field_512, uint32(sub_ce31cb9a[stor5[hash][idx].field_0].field_1024), arg5
        require ext_call.success
        emit 0x3d646673: ext_call.return_data[0], 0, stor5[hash][idx].field_0, sub_ce31cb9a[stor5[hash][idx].field_0].field_256, sub_ce31cb9a[stor5[hash][idx].field_0].field_512, sub_ce31cb9a[stor5[hash][idx].field_0].field_768, uint32(sub_ce31cb9a[stor5[hash][idx].field_0].field_1024), msg.sender, address(sub_ce31cb9a[stor5[hash][idx].field_0].field_0)
        require ext_code.size(sub_47080940Address)
        call sub_47080940Address.0xa56ac1e9 with:
           value sub_ce31cb9a[stor5[hash][idx].field_0].field_512 wei
             gas gas_remaining - 9710 wei
            args 0, 0, uint32(sub_ce31cb9a[stor5[hash][idx].field_0].field_0), sub_ce31cb9a[stor5[hash][idx].field_0].field_256, sub_ce31cb9a[stor5[hash][idx].field_0].field_768, uint32(sub_ce31cb9a[stor5[hash][idx].field_0].field_1024), arg5
        require ext_call.success
        require 0 < stor5[hash].field_0
        s = 0
        while stor5[hash][s].field_0 != stor5[hash][idx].field_0:
            require s + 1 < stor5[hash].field_0
            mem[0] = sha3(hash, 5)
            s = s + 1
            continue 
        require stor5[hash].field_0 - 1 < stor5[hash].field_0
        require s < stor5[hash].field_0
        stor5[hash][s].field_0 = stor5[hash][stor5[hash].field_0].field_0
        stor5[hash].field_0--
        if not stor5[hash].field_0 <= stor5[hash].field_0 - 1:
            s = stor5[hash].field_0 + sha3(sha3(hash, 5)) - 1
            while sha3(sha3(hash, 5)) + stor5[hash].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
        address(sub_ce31cb9a[stor5[hash][idx].field_0].field_0) = 0
        sub_ce31cb9a[stor5[hash][idx].field_0].field_256 = 0
        sub_ce31cb9a[stor5[hash][idx].field_0].field_512 = 0
        sub_ce31cb9a[stor5[hash][idx].field_0].field_768 = 0
        Mask(96, 0, sub_ce31cb9a[stor5[hash][idx].field_0].field_1024) = 0
    stor6[hash].field_0++
    if not stor6[hash].field_0 <= stor6[hash].field_0 + 1:
        idx = stor6[hash].field_0 + 1
        while stor6[hash].field_0 > idx:
            stor6[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[hash][stor6[hash].field_0].field_0 = hash
    address(sub_7ecd5677[hash].field_0) = msg.sender
    sub_7ecd5677[hash].field_256 = arg1
    sub_7ecd5677[hash].field_512 = arg2
    uint32(sub_7ecd5677[hash].field_768) = arg3
    uint64(sub_7ecd5677[hash].field_800) = arg4
}



}
