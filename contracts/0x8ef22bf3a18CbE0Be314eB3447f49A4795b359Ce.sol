contract main {




// =====================  Runtime code  =====================


address owner;
array of struct offers;
address sub_7873ebe8Address;
address tokenContractAddress;
mapping of uint256 sub_760ede5d;

function tokenContract() {
    return tokenContractAddress
}

function sub_760ede5d(?) {
    require sub_760ede5d[address(arg1)] < offers.length
    return bool(offers[stor4[address(arg1)]].field_0), 
           bool(offers[stor4[address(arg1)]].field_8),
           offers[stor4[address(arg1)]].field_256,
           offers[stor4[address(arg1)]].field_512,
           offers[stor4[address(arg1)]].field_768,
           offers[stor4[address(arg1)]].field_1024,
           offers[stor4[address(arg1)]].field_1280
}

function sub_7873ebe8(?) {
    return sub_7873ebe8Address
}

function offers(uint256 arg1) {
    require arg1 < offers.length
    return bool(offers[arg1].field_0), 
           bool(offers[arg1].field_8),
           offers[arg1].field_256,
           offers[arg1].field_512,
           offers[arg1].field_768,
           offers[arg1].field_1024,
           offers[arg1].field_1280
}

function owner() {
    return owner
}

function destruct() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_771b5e3c(?) {
    require msg.sender == owner
    emit 0xc1f474ca: sub_7873ebe8Address, arg1
    sub_7873ebe8Address = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSeller(address arg1) {
    require sub_760ede5d[address(arg1)] < offers.length
    if offers[stor4[address(arg1)]].field_0:
        return not bool(offers[stor4[address(arg1)]].field_0)
    require sub_760ede5d[address(arg1)] < offers.length
    return (offers[stor4[address(arg1)]].field_768 > 0)
}

function cancelOffer() {
    require sub_760ede5d[address(msg.sender)] < offers.length
    require not offers[stor4[address(msg.sender)]].field_0
    require sub_760ede5d[address(msg.sender)] < offers.length
    require offers[stor4[address(msg.sender)]].field_768 > 0
    require sub_760ede5d[address(msg.sender)] < offers.length
    offers[stor4[address(msg.sender)]].field_0 = 1
    require sub_760ede5d[address(msg.sender)] < offers.length
    offers[stor4[address(msg.sender)]].field_1280 = block.timestamp
    emit 0x46214106: msg.sender
}

function sub_accb6d48(?) {
    require sub_760ede5d[address(msg.sender)] < offers.length
    if not offers[stor4[address(msg.sender)]].field_0:
        require sub_760ede5d[address(msg.sender)] < offers.length
        require offers[stor4[address(msg.sender)]].field_768 <= 0
    require ext_code.size(sub_7873ebe8Address)
    call sub_7873ebe8Address.0x13cdb68 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    offers.length++
    offers[offers.length].field_0 = 0
    offers[offers.length].field_8 = Mask(248, 0, arg1)
    offers[offers.length].field_256 = arg2
    offers[offers.length].field_512 = msg.sender
    offers[offers.length].field_768 = block.timestamp
    offers[offers.length].field_1024 = 0
    offers[offers.length].field_1280 = 0
    sub_760ede5d[address(msg.sender)] = offers.length - 1
    emit 0xb1918541: msg.sender, arg1, arg2
}

function buy(address arg1) payable {
    require sub_760ede5d[address(msg.sender)] < offers.length
    require not offers[stor4[address(msg.sender)]].field_0
    require sub_760ede5d[address(msg.sender)] < offers.length
    require offers[stor4[address(msg.sender)]].field_768 > 0
    require sub_760ede5d[address(arg1)] < offers.length
    require sub_760ede5d[address(arg1)] < offers.length
    if offers[stor4[address(arg1)]].field_8:
        require msg.value >= offers[stor4[address(arg1)]].field_256
    else:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= offers[stor4[address(arg1)]].field_256
        require sub_760ede5d[address(arg1)] < offers.length
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= offers[stor4[address(arg1)]].field_256
    require ext_code.size(sub_7873ebe8Address)
    call sub_7873ebe8Address.0x1d484c1e with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_760ede5d[address(arg1)] < offers.length
    require sub_760ede5d[address(arg1)] < offers.length
    if offers[stor4[address(arg1)]].field_8:
        call offers[stor4[address(arg1)]].field_512 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, offers[stor4[address(arg1)]].field_512, offers[stor4[address(arg1)]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require sub_760ede5d[address(arg1)] < offers.length
    offers[stor4[address(arg1)]].field_0 = 1
    offers[stor4[address(arg1)]].field_1024 = block.timestamp
    emit Buy(address(arg1), bool(offers[stor4[address(arg1)]].field_8), msg.value);
}

function sub_d9142fc3(?) {
    idx = 0
    s = 0
    while idx < offers.length:
        mem[0] = 1
        if offers[idx].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        mem[(32 * s) + 128] = s
        mem[(64 * s) + 160] = s
        mem[(98 * s) + 192] = s
        mem[(131 * s) + 224] = s
        t = 0
        idx = 0
        while idx < offers.length:
            mem[0] = 1
            if offers[idx].field_0:
                t = t
                idx = idx + 1
                continue 
            require t < s
            mem[(32 * t) + 128] = idx
            require idx < offers.length
            require t < mem[(32 * s) + 128]
            mem[(32 * t) + (32 * s) + 160] = bool(offers[idx].field_8)
            require idx < offers.length
            require t < mem[(64 * s) + 160]
            mem[(32 * t) + (64 * s) + 192] = offers[idx].field_256
            require idx < offers.length
            require t < mem[(98 * s) + 192]
            mem[(32 * t) + (98 * s) + 224] = offers[idx].field_512
            require idx < offers.length
            mem[0] = 1
            require t < mem[(131 * s) + 224]
            mem[(32 * t) + (131 * s) + 256] = offers[idx].field_768
            t = t + 1
            idx = idx + 1
            continue 
        mem[(164 * s) + 256] = 160
        mem[(164 * s) + 416] = s
        mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
        mem[(164 * s) + 288] = (32 * s) + 192
        mem[(197 * s) + 448] = mem[(32 * s) + 128]
        mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
        mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
        mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
        mem[(164 * s) + 352] = (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
        mem[(32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
        mem[(32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
        mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
        mem[(32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
        _219 = mem[(131 * s) + 224]
        mem[(32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
        return memory
          from (164 * s) + 256
           len (32 * _219) + (32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
    mem[128 len 32 * s] = code.data[7760 len 32 * s]
    mem[(32 * s) + 128] = s
    mem[(32 * s) + 160 len 32 * s] = code.data[7760 len 32 * s]
    mem[(64 * s) + 160] = s
    mem[(64 * s) + 192 len 32 * s] = code.data[7760 len 32 * s]
    mem[(98 * s) + 192] = s
    mem[(98 * s) + 224 len 32 * s] = code.data[7760 len 32 * s]
    mem[(131 * s) + 224] = s
    mem[(131 * s) + 256 len 32 * s] = code.data[7760 len 32 * s]
    t = 0
    idx = 0
    while idx < offers.length:
        mem[0] = 1
        if offers[idx].field_0:
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 128] = idx
        require idx < offers.length
        require t < mem[(32 * s) + 128]
        mem[(32 * t) + (32 * s) + 160] = bool(offers[idx].field_8)
        require idx < offers.length
        require t < mem[(64 * s) + 160]
        mem[(32 * t) + (64 * s) + 192] = offers[idx].field_256
        require idx < offers.length
        require t < mem[(98 * s) + 192]
        mem[(32 * t) + (98 * s) + 224] = offers[idx].field_512
        require idx < offers.length
        mem[0] = 1
        require t < mem[(131 * s) + 224]
        mem[(32 * t) + (131 * s) + 256] = offers[idx].field_768
        t = t + 1
        idx = idx + 1
        continue 
    mem[(164 * s) + 256] = 160
    mem[(164 * s) + 416] = s
    mem[(164 * s) + 448 len floor32(s)] = mem[128 len floor32(s)]
    mem[(164 * s) + 288] = (32 * s) + 192
    mem[(197 * s) + 448] = mem[(32 * s) + 128]
    mem[(197 * s) + 480 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
    mem[(164 * s) + 320] = (32 * mem[(32 * s) + 128]) + (32 * s) + 224
    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 480] = mem[(64 * s) + 160]
    mem[(32 * mem[(32 * s) + 128]) + (197 * s) + 512 len floor32(mem[(64 * s) + 160])] = mem[(64 * s) + 192 len floor32(mem[(64 * s) + 160])]
    mem[(164 * s) + 352] = (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (32 * s) + 256
    mem[(32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 512] = mem[(98 * s) + 192]
    mem[(32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544 len floor32(mem[(98 * s) + 192])] = mem[(98 * s) + 224 len floor32(mem[(98 * s) + 192])]
    mem[(164 * s) + 384] = (32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (32 * s) + 288
    mem[(32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 544] = mem[(131 * s) + 224]
    _222 = mem[(131 * s) + 224]
    mem[(32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (197 * s) + 576 len floor32(mem[(131 * s) + 224])] = mem[(131 * s) + 256 len floor32(mem[(131 * s) + 224])]
    return memory
      from (164 * s) + 256
       len (32 * _222) + (32 * mem[(98 * s) + 192]) + (32 * mem[(64 * s) + 160]) + (32 * mem[(32 * s) + 128]) + (33 * s) + 320
}



}
