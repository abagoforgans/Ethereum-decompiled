contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint32 stor2; offset 160
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[6380 len 20]
    address(stor2.field_0) = code.data[6412 len 20]
    uint32(stor2.field_160) = code.data[6460 len 4]
    return code.data[186 len 6182]
}



// =====================  Runtime code  =====================


const sub_f1a640f8(?) = 3

const MAX_PRICE = 100000


address owner;
address veTokenAddress;
uint32 maxDuration; offset 160
address sub_47080940Address;
mapping of struct sub_7ecd5677;
array of struct sub_3bb7d3e0;
mapping of struct sub_ce31cb9a;
array of struct sub_08f00caf;

function sub_08f00caf(?) {
    require arg2 < sub_08f00caf[arg1].field_0
    return sub_08f00caf[arg1][arg2].field_0
}

function veToken() {
    return veTokenAddress
}

function sub_3bb7d3e0(?) {
    require arg2 < sub_3bb7d3e0[arg1].field_0
    return sub_3bb7d3e0[arg1][arg2].field_0
}

function sub_47080940(?) {
    return sub_47080940Address
}

function maxDuration() {
    return maxDuration
}

function sub_7ecd5677(?) {
    return sub_7ecd5677[arg1].field_0, 
           uint32(sub_7ecd5677[arg1].field_256),
           address(sub_7ecd5677[arg1].field_256),
           uint32(sub_7ecd5677[arg1].field_256),
           uint64(sub_7ecd5677[arg1].field_512)
}

function owner() {
    return owner
}

function sub_ce31cb9a(?) {
    return sub_ce31cb9a[arg1].field_0, 
           sub_ce31cb9a[arg1].field_256,
           address(sub_ce31cb9a[arg1].field_512),
           uint32(sub_ce31cb9a[arg1].field_512),
           uint32(sub_ce31cb9a[arg1].field_704),
           uint64(sub_ce31cb9a[arg1].field_768)
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_14))
        call address(_14).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _14
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function setMaxDuration(uint32 arg1) {
    require owner == msg.sender
    maxDuration = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_9605a8de(?) {
    require address(sub_ce31cb9a[arg1].field_512) == msg.sender
    hash = sha256hash(sub_ce31cb9a[arg1].field_0, uint32(sub_ce31cb9a[arg1].field_672), uint32(sub_ce31cb9a[arg1].field_704)) 
    require sha256hash.result
    require 0 < sub_08f00caf[hash].field_0
    idx = 0
    while sub_08f00caf[hash][idx].field_0 != arg1:
        require idx + 1 < sub_08f00caf[hash].field_0
        mem[0] = sha3(hash, 6)
        idx = idx + 1
        continue 
    require sub_08f00caf[hash].field_0 - 1 < sub_08f00caf[hash].field_0
    require None + 2 < sub_08f00caf[hash].field_0
    sub_08f00caf[hash][None].field_512 = sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0
    sub_08f00caf[hash].field_0--
    if not sub_08f00caf[hash].field_0 <= sub_08f00caf[hash].field_0 - 1:
        idx = sub_08f00caf[hash].field_0 - 1
        while sub_08f00caf[hash].field_0 > idx:
            sub_08f00caf[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_ce31cb9a[arg1].field_0 = 0
    sub_ce31cb9a[arg1].field_256 = 0
    Mask(224, 0, sub_ce31cb9a[arg1].field_512) = 0
    uint64(sub_ce31cb9a[arg1].field_768) = 0
    call msg.sender with:
       value sub_ce31cb9a[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x4e33e8b1: arg1
}

function sub_3b253fba(?) {
    require address(sub_7ecd5677[arg1].field_288) == msg.sender
    hash = sha256hash(sub_7ecd5677[arg1].field_0, uint32(sub_7ecd5677[arg1].field_256), uint32(sub_7ecd5677[arg1].field_448)) 
    require sha256hash.result
    require 0 < sub_3bb7d3e0[hash].field_0
    idx = 0
    while sub_3bb7d3e0[hash][idx].field_0 != arg1:
        require idx + 1 < sub_3bb7d3e0[hash].field_0
        mem[0] = sha3(hash, 4)
        idx = idx + 1
        continue 
    require sub_3bb7d3e0[hash].field_0 - 1 < sub_3bb7d3e0[hash].field_0
    require None + 2 < sub_3bb7d3e0[hash].field_0
    sub_3bb7d3e0[hash][None].field_512 = sub_3bb7d3e0[hash][sub_3bb7d3e0[hash].field_0].field_0
    sub_3bb7d3e0[hash].field_0--
    if not sub_3bb7d3e0[hash].field_0 <= sub_3bb7d3e0[hash].field_0 - 1:
        idx = sub_3bb7d3e0[hash].field_0 - 1
        while sub_3bb7d3e0[hash].field_0 > idx:
            sub_3bb7d3e0[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_7ecd5677[arg1].field_0 = 0
    Mask(224, 0, sub_7ecd5677[arg1].field_256) = 0
    uint64(sub_7ecd5677[arg1].field_512) = 0
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sub_7ecd5677[arg1].field_0
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x971dfaac: arg1
}

function sub_8306ec25(?) payable {
    require arg2 <= 100000
    require arg3 <= maxDuration
    if arg4:
        require arg4 > block.timestamp
    require ext_code.size(sub_47080940Address)
    call sub_47080940Address.0xded1e438 with:
         gas gas_remaining - 710 wei
        args arg1, msg.value
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(address(this.address), uint64(msg.sender), msg.value, arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    emit 0x2316b5e4: arg1, 0, arg2 << 224, arg3 << 224, arg4, hash, msg.sender
    hash = sha256hash(arg1, arg2, arg3) 
    s = 0
    s = 0
    idx = 0
    while idx < sub_3bb7d3e0[hash].field_0:
        mem[0] = sub_3bb7d3e0[hash][idx].field_0
        mem[32] = 3
        if uint64(sub_7ecd5677[stor4[hash][idx].field_0].field_512):
            if uint64(sub_7ecd5677[stor4[hash][idx].field_0].field_512) <= block.timestamp:
                s = sha3(sub_3bb7d3e0[hash][idx].field_0, 3)
                s = sub_3bb7d3e0[hash][idx].field_0
                idx = idx + 1
                continue 
        hash = sha256hash(sub_3bb7d3e0[hash][idx].field_0, hash) 
        require sha256hash.result
        emit 0xdc1c861c: hash, sub_3bb7d3e0[hash][idx].field_0, hash, sub_7ecd5677[stor4[hash][idx].field_0].field_0, msg.value, uint32(sub_7ecd5677[stor4[hash][idx].field_0].field_256), uint32(sub_7ecd5677[stor4[hash][idx].field_0].field_256), address(sub_7ecd5677[stor4[hash][idx].field_0].field_288), msg.sender
        require ext_code.size(veTokenAddress)
        call veTokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sub_47080940Address, sub_7ecd5677[stor4[hash][idx].field_0].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_47080940Address)
        call sub_47080940Address.0x1ff2676f with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args 0, 0, uint32(sub_7ecd5677[stor4[hash][idx].field_0].field_256), msg.sender, sub_7ecd5677[stor4[hash][idx].field_0].field_0, uint32(sub_7ecd5677[stor4[hash][idx].field_0].field_256), uint32(sub_7ecd5677[stor4[hash][idx].field_0].field_256)
        require ext_call.success
        require sub_3bb7d3e0[hash].field_0 - 1 < sub_3bb7d3e0[hash].field_0
        require idx < sub_3bb7d3e0[hash].field_0
        sub_3bb7d3e0[hash][idx].field_0 = sub_3bb7d3e0[hash][sub_3bb7d3e0[hash].field_0].field_0
        sub_3bb7d3e0[hash].field_0--
        if not sub_3bb7d3e0[hash].field_0 <= sub_3bb7d3e0[hash].field_0 - 1:
            s = sub_3bb7d3e0[hash].field_0 + sha3(sha3(hash, 4)) - 1
            while sha3(sha3(hash, 4)) + sub_3bb7d3e0[hash].field_0 > s:
                stor[s] = 0
                s = s + 1
                continue 
        sub_7ecd5677[stor4[hash][idx].field_0].field_0 = 0
        Mask(224, 0, sub_7ecd5677[stor4[hash][idx].field_0].field_256) = 0
        uint64(sub_7ecd5677[stor4[hash][idx].field_0].field_512) = 0
    require not address(sub_ce31cb9a[hash].field_512)
    sub_08f00caf[hash].field_0++
    if not sub_08f00caf[hash].field_0 <= sub_08f00caf[hash].field_0 + 1:
        idx = sub_08f00caf[hash].field_0 + 1
        while sub_08f00caf[hash].field_0 > idx:
            sub_08f00caf[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0 = hash
    sub_ce31cb9a[hash].field_0 = arg1
    sub_ce31cb9a[hash].field_256 = msg.value
    address(sub_ce31cb9a[hash].field_512) = msg.sender
    uint32(sub_ce31cb9a[hash].field_672) = arg2
    uint32(sub_ce31cb9a[hash].field_704) = arg3
    uint64(sub_ce31cb9a[hash].field_768) = arg4
}

function sub_39891ff1(?) {
    require arg2 <= 100000
    require arg3 <= maxDuration
    if arg4:
        require arg4 > block.timestamp
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    hash = sha256hash(address(this.address), uint64(msg.sender), msg.value, arg1, arg2, arg3, arg4, arg5) 
    require sha256hash.result
    emit 0x5fc59a1f: arg1, arg2 << 224, arg3 << 224, arg4, hash, msg.sender
    hash = sha256hash(arg1, arg2, arg3) 
    s = 0
    s = 0
    idx = 0
    while idx < sub_08f00caf[hash].field_0:
        require sub_08f00caf[hash].field_0 - 1 < sub_08f00caf[hash].field_0
        mem[0] = sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0
        mem[32] = 5
        if uint64(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_768):
            if uint64(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_768) <= block.timestamp:
                s = sha3(sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0, 5)
                s = sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0
                idx = idx + 1
                continue 
        hash = sha256hash(hash, sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0) 
        require sha256hash.result
        emit 0xdc1c861c: hash, hash, sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0, sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_0, sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_256, uint32(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_672), uint32(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_512), msg.sender, address(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_512)
        require ext_code.size(veTokenAddress)
        call veTokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args sub_47080940Address, sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_47080940Address)
        call sub_47080940Address.0x1ff2676f with:
           value sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_256 wei
             gas gas_remaining - 9710 wei
            args 0, 0, uint32(msg.sender), address(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_512), sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_0, uint32(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_672), uint32(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_512)
        require ext_call.success
        require sub_08f00caf[hash].field_0 - 1 < sub_08f00caf[hash].field_0
        require idx < sub_08f00caf[hash].field_0
        sub_08f00caf[hash][idx].field_0 = sub_08f00caf[hash][sub_08f00caf[hash].field_0].field_0
        sub_08f00caf[hash].field_0--
        if not sub_08f00caf[hash].field_0 <= sub_08f00caf[hash].field_0 - 1:
            idx = sub_08f00caf[hash].field_0 + sha3(sha3(hash, 6)) - 1
            while sha3(sha3(hash, 6)) + sub_08f00caf[hash].field_0 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_0 = 0
        sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_256 = 0
        Mask(224, 0, sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_512) = 0
        uint64(sub_ce31cb9a[stor6[hash][stor6[hash].field_0].field_0].field_768) = 0
    require not address(sub_7ecd5677[hash].field_288)
    sub_3bb7d3e0[hash].field_0++
    if not sub_3bb7d3e0[hash].field_0 <= sub_3bb7d3e0[hash].field_0 + 1:
        idx = sub_3bb7d3e0[hash].field_0 + 1
        while sub_3bb7d3e0[hash].field_0 > idx:
            sub_3bb7d3e0[hash][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3bb7d3e0[hash][sub_3bb7d3e0[hash].field_0].field_0 = hash
    sub_7ecd5677[hash].field_0 = arg1
    uint32(sub_7ecd5677[hash].field_256) = arg2
    address(sub_7ecd5677[hash].field_288) = msg.sender
    uint32(sub_7ecd5677[hash].field_448) = arg3
    uint64(sub_7ecd5677[hash].field_512) = arg4
}



}
