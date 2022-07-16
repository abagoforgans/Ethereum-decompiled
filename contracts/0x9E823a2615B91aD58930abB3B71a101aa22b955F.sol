contract main {




// =====================  Runtime code  =====================


#
#  - sub_4facad20(?)
#
address owner;
mapping of uint8 stor1;
uint8 stor2;
address sub_9b9a7a1eAddress; offset 8
address sub_dc0bfe8cAddress;
address sub_82589038Address;
address sub_e5b9af61Address;
address sub_dfdf8f8fAddress;
address sub_9059b25fAddress;
address tokenAddress;
address converterAddress;
array of address sub_d31f1a3e;

function sub_146fdace(?) {
    return bool(stor2)
}

function sub_82589038(?) {
    return sub_82589038Address
}

function owner() {
    return owner
}

function sub_9059b25f(?) {
    return sub_9059b25fAddress
}

function sub_9b9a7a1e(?) {
    return sub_9b9a7a1eAddress
}

function converter() {
    return converterAddress
}

function sub_d31f1a3e(?) {
    require arg1 < sub_d31f1a3e.length
    return sub_d31f1a3e[arg1]
}

function sub_dc0bfe8c(?) {
    return sub_dc0bfe8cAddress
}

function sub_dfdf8f8f(?) {
    return sub_dfdf8f8fAddress
}

function sub_e5b9af61(?) {
    return sub_e5b9af61Address
}

function token() {
    return tokenAddress
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
  stop
}

function setActive(bool arg1) {
    require msg.sender == owner
    stor2 = uint8(arg1)
}

function setManager(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    emit ManagerSet(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    owner = arg1
    stor1[address(arg1)] = 1
    stor1[msg.sender] = 0
}

function sub_54f0d301(?) {
    require stor1[msg.sender]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_498bc288(?) {
    require msg.sender == owner
    sub_9b9a7a1eAddress = arg1
    sub_dc0bfe8cAddress = arg2
    sub_82589038Address = arg3
    sub_e5b9af61Address = arg4
    sub_dfdf8f8fAddress = arg5
    tokenAddress = arg6
    sub_9059b25fAddress = arg7
}

function sub_31b8c450(?) {
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_dc0bfe8cAddress)
    call sub_dc0bfe8cAddress.0x9f533ddf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[96] + ext_call.return_data[0] <= block.timestamp
}

function sub_4e3cc412(?) {
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getProductData(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[32] <= 0:
        return arg2
    require arg2 + ext_call.return_data[64] >= ext_call.return_data[64]
    if arg2 + ext_call.return_data[64] <= ext_call.return_data[32]:
        return arg2
    if not arg3:
        return 0
    require ext_call.return_data[32] >= ext_call.return_data[64]
    return (ext_call.return_data[32] - ext_call.return_data[64])
}

function sub_bbd69acc(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    converterAddress = arg1
    sub_d31f1a3e.length = arg2.length
    if not arg2.length:
        idx = 0
        while sub_d31f1a3e.length > idx:
            sub_d31f1a3e[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            sub_d31f1a3e[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_d31f1a3e.length > idx:
            sub_d31f1a3e[idx] = 0
            idx = idx + 1
            continue 
}

function sub_f870c0f0(?) {
    require stor2
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getPurchase(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 4
    require ext_call.return_data[0] == 1
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x8ff2e007 with:
         gas gas_remaining wei
        args arg1, arg2, 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4bd1401c: arg2, msg.sender, arg1
}

function sub_8a7d7c59(?) {
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getPurchase(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] <= 4
    if ext_call.return_data[0] == 4:
        return True
    require ext_call.return_data[0] <= 4
    if ext_call.return_data[0] != 1:
        return (ext_call.return_data[0] == 1)
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_dc0bfe8cAddress)
    call sub_dc0bfe8cAddress.0x9f533ddf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[96] + ext_call.return_data[0] <= block.timestamp
}

function sub_95a05144(?) {
    require stor2
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_dc0bfe8cAddress)
    call sub_dc0bfe8cAddress.0x9f533ddf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getPurchase(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 4
    require ext_call.return_data[0] == 1
    require msg.sender == address(ext_call.return_data[0])
    require ext_call.return_data[96] + ext_call.return_data[0] > block.timestamp
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x8ff2e007 with:
         gas gas_remaining wei
        args arg1, arg2, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1179ed22: arg2, address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1
}

function sub_be1b6fc6(?) payable {
    require stor2
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getPurchase(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 4
    require ext_call.return_data[0] == 1
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_dc0bfe8cAddress)
    call sub_dc0bfe8cAddress.0x9f533ddf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[96] + ext_call.return_data[0] > block.timestamp
    require ext_code.size(sub_dfdf8f8fAddress)
    call sub_dfdf8f8fAddress.0xde2d8603 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value == ext_call.return_data[0]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x8ff2e007 with:
         gas gas_remaining wei
        args arg1, arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_dfdf8f8fAddress)
    call sub_dfdf8f8fAddress.0x8fca0516 with:
         gas gas_remaining wei
        args arg1, arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[64] + ext_call.return_data[32] >= ext_call.return_data[32]
    require msg.value >= 0
    call ext_call.return_data[12 len 20] with:
       value msg.value + ext_call.return_data[64] + ext_call.return_data[32] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa0d6bb99: arg2, msg.sender, arg1
}

function sub_7018c1ab(?) {
    require stor2
    require arg3 >= 0
    require arg3 <= 100
    require ext_code.size(sub_dc0bfe8cAddress)
    call sub_dc0bfe8cAddress.0xb25b6c92 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_dc0bfe8cAddress)
        call sub_dc0bfe8cAddress.0x504faab8 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getPurchase(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 4
    require ext_call.return_data[0] == 2
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x48cfbe08 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if arg3 > 0:
        require ext_call.return_data[64] >= arg3 * ext_call.return_data[64] / 100
        require ext_call.return_data[32] >= ext_call.return_data[32] * arg3 / 100
        require ext_code.size(sub_9b9a7a1eAddress)
        call sub_9b9a7a1eAddress.0xc3b95fc4 with:
             gas gas_remaining wei
            args 0, uint32(arg1), arg2, address(ext_call.return_data[0]), ext_call.return_data[32] - (ext_call.return_data[32] * arg3 / 100), ext_call.return_data[64] - (arg3 * ext_call.return_data[64] / 100), ext_call.return_data[96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require (arg3 * ext_call.return_data[64] / 100) + (ext_call.return_data[32] * arg3 / 100) >= ext_call.return_data[32] * arg3 / 100
        call address(ext_call.return_data[0]) with:
           value (arg3 * ext_call.return_data[64] / 100) + (ext_call.return_data[32] * arg3 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9b9a7a1eAddress)
    if arg3 < 100:
        call sub_9b9a7a1eAddress.0x8ff2e007 with:
             gas gas_remaining wei
            args arg1, arg2, 4
    else:
        call sub_9b9a7a1eAddress.0x8ff2e007 with:
             gas gas_remaining wei
            args arg1, arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf6bdf5cf: arg3, msg.sender, arg1, arg2
}

function sub_f02b6a1e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor2
    require arg1.length == arg2.length
    idx = 0
    s = 0
    t = 0
    u = 0
    u = 0
    u = 0
    u = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _75 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 128]
        require ext_code.size(sub_9b9a7a1eAddress)
        call sub_9b9a7a1eAddress.0x48cfbe08 with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _75
        mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require idx < arg1.length
        _88 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 128]
        require ext_code.size(sub_9b9a7a1eAddress)
        call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
             gas gas_remaining wei
            args _88
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == address(ext_call.return_data[0])
        require idx < arg1.length
        _94 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _96 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 128]
        require ext_code.size(sub_9b9a7a1eAddress)
        call sub_9b9a7a1eAddress.getPurchase(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_9b9a7a1eAddress)
        call sub_9b9a7a1eAddress.0x48cfbe08 with:
             gas gas_remaining wei
            args _94, _96
        mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] <= 4
        if ext_call.return_data[0] == 4:
            require idx < arg1.length
            _109 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _113 = mem[(32 * arg1.length) + (32 * idx) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x8ff2e00700000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = _109
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _113
            mem[(32 * arg2.length) + (32 * arg1.length) + 228] = 0
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x8ff2e007 with:
                 gas gas_remaining wei
                args _109, _113, 0
        else:
            require ext_call.return_data[0] <= 4
            require ext_call.return_data[0] == 1
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x48cfbe08 with:
                 gas gas_remaining wei
                args _94, _96
            mem[(32 * arg2.length) + (32 * arg1.length) + 160 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = _94
            require ext_code.size(sub_dc0bfe8cAddress)
            call sub_dc0bfe8cAddress.0x9f533ddf with:
                 gas gas_remaining wei
                args _94
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[96] + ext_call.return_data[0] <= block.timestamp
            require idx < arg1.length
            _126 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _128 = mem[(32 * arg1.length) + (32 * idx) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0x8ff2e00700000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = _126
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _128
            mem[(32 * arg2.length) + (32 * arg1.length) + 228] = 0
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x8ff2e007 with:
                 gas gas_remaining wei
                args _126, _128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_call.return_data[32] + s >= s
        require ext_call.return_data[64] + t >= t
        idx = idx + 1
        s = ext_call.return_data[32] + s
        t = ext_call.return_data[64] + t
        u = ext_call.return_data[96]
        u = ext_call.return_data[64]
        u = ext_call.return_data[32]
        u = ext_call.return_data[0]
        continue 
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0xf97fe04b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(ext_call.return_data[0]) with:
       value t wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_82589038Address)
    call sub_82589038Address.0xd78c29fb with:
       value s wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f3814b51(?) payable {
    require stor2
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getTotalProducts() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0xc86352f3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getProductPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.0x26fe72d2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg5 == ext_call.return_data[0]
    require ext_code.size(sub_9b9a7a1eAddress)
    call sub_9b9a7a1eAddress.getProductData(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[32] <= 0:
        require arg2 > 0
        if arg2:
            require arg2
            require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
        require ext_code.size(sub_9b9a7a1eAddress)
        call sub_9b9a7a1eAddress.0x5acbd415 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_e5b9af61Address)
            call sub_e5b9af61Address.0xd97c559d with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] * arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value >= ext_call.return_data[0] * arg2
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x4b1cf62b with:
                 gas gas_remaining wei
                args arg1, msg.sender, ext_call.return_data[0], arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_82589038Address)
            call sub_82589038Address.0x5d1ee909 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, ext_call.return_data[0] * arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * arg2 >= ext_call.return_data[0] + ext_call.return_data[32]
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0xe0588fd with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_82589038Address)
                call sub_82589038Address.0xd78c29fb with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xf97fe04b with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call ext_call.return_data[12 len 20] with:
                   value (ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32] wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xc3b95fc4 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], msg.sender, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32], block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0x8ff2e007 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_dc0bfe8cAddress)
                call sub_dc0bfe8cAddress.0xb25b6c92 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call ext_call.return_data[12 len 20] with:
                   value ext_call.return_data[32] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_dfdf8f8fAddress)
                call sub_dfdf8f8fAddress.0xcbad3562 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value - (ext_call.return_data[0] * arg2) > 0:
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] * arg2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x62b484ad: ext_call.return_data[0], Array(len=arg3.length, data=arg3[all]), ext_call.return_data[0], arg2, ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg1
        else:
            require ext_code.size(sub_9059b25fAddress)
            call sub_9059b25fAddress.',Nr.' with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * arg2:
                require ext_call.return_data[0] * arg2
                require ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 == ext_call.return_data[0]
            require arg2
            require ext_code.size(sub_e5b9af61Address)
            call sub_e5b9af61Address.0xd97c559d with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] * ext_call.return_data[0] * arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value >= ext_call.return_data[0] * ext_call.return_data[0] * arg2
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x4b1cf62b with:
                 gas gas_remaining wei
                args arg1, msg.sender, ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2, arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_82589038Address)
            call sub_82589038Address.0x5d1ee909 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, ext_call.return_data[0] * ext_call.return_data[0] * arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] * ext_call.return_data[0] * arg2 >= ext_call.return_data[0] + ext_call.return_data[32]
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0xe0588fd with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_82589038Address)
                call sub_82589038Address.0xd78c29fb with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xf97fe04b with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call ext_call.return_data[12 len 20] with:
                   value (ext_call.return_data[0] * ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32] wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xc3b95fc4 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], msg.sender, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32], block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0x8ff2e007 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_dc0bfe8cAddress)
                call sub_dc0bfe8cAddress.0xb25b6c92 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call ext_call.return_data[12 len 20] with:
                   value ext_call.return_data[32] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_dfdf8f8fAddress)
                call sub_dfdf8f8fAddress.0xcbad3562 with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value - (ext_call.return_data[0] * ext_call.return_data[0] * arg2) > 0:
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] * ext_call.return_data[0] * arg2) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x62b484ad: ext_call.return_data[0], Array(len=arg3.length, data=arg3[all]), ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2, arg2, ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg1
    else:
        require arg2 + ext_call.return_data[64] >= ext_call.return_data[64]
        if arg2 + ext_call.return_data[64] <= ext_call.return_data[32]:
            require arg2 > 0
            if arg2:
                require arg2
                require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x5acbd415 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_e5b9af61Address)
                call sub_e5b9af61Address.0xd97c559d with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value >= ext_call.return_data[0] * arg2
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0x4b1cf62b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, ext_call.return_data[0], arg2, Array(len=arg3.length, data=arg3[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_82589038Address)
                call sub_82589038Address.0x5d1ee909 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, ext_call.return_data[0] * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] * arg2 >= ext_call.return_data[0] + ext_call.return_data[32]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xe0588fd with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(sub_82589038Address)
                    call sub_82589038Address.0xd78c29fb with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xf97fe04b with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value (ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xc3b95fc4 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], msg.sender, ext_call.return_data[0], (ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32], block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0x8ff2e007 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dc0bfe8cAddress)
                    call sub_dc0bfe8cAddress.0xb25b6c92 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dfdf8f8fAddress)
                    call sub_dfdf8f8fAddress.0xcbad3562 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value - (ext_call.return_data[0] * arg2) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] * arg2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x62b484ad: ext_call.return_data[0], Array(len=arg3.length, data=arg3[all]), ext_call.return_data[0], arg2, ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg1
            else:
                require ext_code.size(sub_9059b25fAddress)
                call sub_9059b25fAddress.',Nr.' with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] * arg2:
                    require ext_call.return_data[0] * arg2
                    require ext_call.return_data[0] * ext_call.return_data[0] * arg2 / ext_call.return_data[0] * arg2 == ext_call.return_data[0]
                require arg2
                require ext_code.size(sub_e5b9af61Address)
                call sub_e5b9af61Address.0xd97c559d with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * ext_call.return_data[0] * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value >= ext_call.return_data[0] * ext_call.return_data[0] * arg2
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0x4b1cf62b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2, arg2, Array(len=arg3.length, data=arg3[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_82589038Address)
                call sub_82589038Address.0x5d1ee909 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, ext_call.return_data[0] * ext_call.return_data[0] * arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] * ext_call.return_data[0] * arg2 >= ext_call.return_data[0] + ext_call.return_data[32]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xe0588fd with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(sub_82589038Address)
                    call sub_82589038Address.0xd78c29fb with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xf97fe04b with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value (ext_call.return_data[0] * ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xc3b95fc4 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], msg.sender, ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * arg2) - ext_call.return_data[0] - ext_call.return_data[32], block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0x8ff2e007 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dc0bfe8cAddress)
                    call sub_dc0bfe8cAddress.0xb25b6c92 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dfdf8f8fAddress)
                    call sub_dfdf8f8fAddress.0xcbad3562 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value - (ext_call.return_data[0] * ext_call.return_data[0] * arg2) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] * ext_call.return_data[0] * arg2) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x62b484ad: ext_call.return_data[0], Array(len=arg3.length, data=arg3[all]), ext_call.return_data[0] * ext_call.return_data[0] * arg2 / arg2, arg2, ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg1
        else:
            require arg4
            require ext_call.return_data[32] >= ext_call.return_data[64]
            require ext_call.return_data[32] - ext_call.return_data[64] > 0
            if ext_call.return_data[32] - ext_call.return_data[64]:
                require ext_call.return_data[32] - ext_call.return_data[64]
                require (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[64] == ext_call.return_data[0]
            require ext_code.size(sub_9b9a7a1eAddress)
            call sub_9b9a7a1eAddress.0x5acbd415 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_e5b9af61Address)
                call sub_e5b9af61Address.0xd97c559d with:
                     gas gas_remaining wei
                    args msg.sender, (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value >= (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0])
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0x4b1cf62b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, ext_call.return_data[0], ext_call.return_data[32] - ext_call.return_data[64], Array(len=arg3.length, data=arg3[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_82589038Address)
                call sub_82589038Address.0x5d1ee909 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) >= ext_call.return_data[0] + ext_call.return_data[32]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xe0588fd with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(sub_82589038Address)
                    call sub_82589038Address.0xd78c29fb with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xf97fe04b with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) - ext_call.return_data[0] - ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xc3b95fc4 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], msg.sender, ext_call.return_data[0], (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) - ext_call.return_data[0] - ext_call.return_data[32], block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0x8ff2e007 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dc0bfe8cAddress)
                    call sub_dc0bfe8cAddress.0xb25b6c92 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dfdf8f8fAddress)
                    call sub_dfdf8f8fAddress.0xcbad3562 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value - (ext_call.return_data[32] * ext_call.return_data[0]) + (ext_call.return_data[64] * ext_call.return_data[0]) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[32] * ext_call.return_data[0]) + (ext_call.return_data[64] * ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x62b484ad: ext_call.return_data[0], Array(len=arg3.length, data=arg3[all]), ext_call.return_data[0], ext_call.return_data[32] - ext_call.return_data[64], ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg1
            else:
                require ext_code.size(sub_9059b25fAddress)
                call sub_9059b25fAddress.',Nr.' with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]):
                    require (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0])
                    require (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) / (ext_call.return_data[32] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0]) == ext_call.return_data[0]
                require ext_call.return_data[32] - ext_call.return_data[64]
                require ext_code.size(sub_e5b9af61Address)
                call sub_e5b9af61Address.0xd97c559d with:
                     gas gas_remaining wei
                    args msg.sender, (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value >= (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0])
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0x4b1cf62b with:
                     gas gas_remaining wei
                    args arg1, msg.sender, (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[64], ext_call.return_data[32] - ext_call.return_data[64], Array(len=arg3.length, data=arg3[all])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_82589038Address)
                call sub_82589038Address.0x5d1ee909 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg1, (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) >= ext_call.return_data[0] + ext_call.return_data[32]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.0xe0588fd with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(sub_82589038Address)
                    call sub_82589038Address.0xd78c29fb with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xf97fe04b with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) - ext_call.return_data[0] - ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0xc3b95fc4 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], msg.sender, ext_call.return_data[0], (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) - ext_call.return_data[0] - ext_call.return_data[32], block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9b9a7a1eAddress)
                    call sub_9b9a7a1eAddress.0x8ff2e007 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dc0bfe8cAddress)
                    call sub_dc0bfe8cAddress.0xb25b6c92 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call ext_call.return_data[12 len 20] with:
                       value ext_call.return_data[32] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_dfdf8f8fAddress)
                    call sub_dfdf8f8fAddress.0xcbad3562 with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if msg.value - (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9b9a7a1eAddress)
                call sub_9b9a7a1eAddress.getProductOwner(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x62b484ad: ext_call.return_data[0], Array(len=arg3.length, data=arg3[all]), (ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[64] * ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[32] - ext_call.return_data[64], ext_call.return_data[32] - ext_call.return_data[64], ext_call.return_data[0], msg.sender, address(ext_call.return_data[0]), arg1
}



}
