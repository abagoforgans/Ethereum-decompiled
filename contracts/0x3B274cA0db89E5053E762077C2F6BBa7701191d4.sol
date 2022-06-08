contract main {




// =====================  Runtime code  =====================


#
#  - sub_30d0129b(?)
#
address stor0;
uint256 stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == address(stor0)
    call address(stor0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0)
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function tokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if ext_code.size(arg2) <= 0:
        return 0
    call arg2 with:
       funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        return 0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allWETHbalances(address arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args address(_59)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_69]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * arg2.length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[14493 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(_62)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(32 * arg2.length) + 128]
        mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_71]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * arg2.length) + 160 len 32 * _65]
    var45001 = _65
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function deltaBalances(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = arg2
            require ext_code.size(arg1)
            call arg1.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = mem[_72]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * arg3.length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * arg3.length) + 160 len 32 * arg3.length] = code.data[14493 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(32 * arg3.length) + 128]
        mem[(32 * idx) + (32 * arg3.length) + 160] = mem[_73]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * arg3.length) + 160 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_0b03793c(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).filled(bytes32 arg1) with:
                 gas gas_remaining wei
                args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_69]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * ('cd', 36).length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = code.data[14493 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).filled(bytes32 arg1) with:
             gas gas_remaining wei
            args _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = mem[_71]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * ('cd', 36).length) + 160 len 32 * _65]
    var45001 = _65
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_6e4790df(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 128 <= test266151307() and (32 * ('cd', 100).length) + 128 >= 96
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
    mem[64] = (64 * ('cd', 100).length) + 160
    if not ('cd', 100).length:
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            mem[mem[64] + 68] = _59
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[36]), address(cd[68]), _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 100).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_72]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * ('cd', 100).length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = code.data[14493 len 32 * ('cd', 100).length]
    idx = 0
    while idx < ('cd', 100).length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        mem[mem[64] + 68] = _62
        require ext_code.size(address(cd[4]))
        call address(cd[4]).getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(32 * ('cd', 100).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_73]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * ('cd', 100).length) + 160 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_d229c48a(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).fills(bytes32 arg1) with:
                 gas gas_remaining wei
                args _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = bool(mem[_69])
            idx = idx + 1
            continue 
        _58 = mem[64]
        mem[mem[64]] = 32
        _64 = mem[(32 * ('cd', 36).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = mem[64] + 64
        while idx < _64:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _58 + (32 * _64) + -mem[64] + 64
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = code.data[14493 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).fills(bytes32 arg1) with:
             gas gas_remaining wei
            args _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = bool(mem[_71])
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _65 = mem[(32 * ('cd', 36).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + 128]
    idx = 0
    s = (32 * ('cd', 36).length) + 160
    t = mem[64] + 64
    while idx < _65:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _61 + (32 * _65) + -mem[64] + 64
}

function sub_ed0157d3(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 128 <= test266151307() and (32 * ('cd', 100).length) + 128 >= 96
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
    mem[64] = (64 * ('cd', 100).length) + 160
    if not ('cd', 100).length:
        s = 0
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            mem[mem[64] + 68] = _59
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getPayAmount(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[36]), address(cd[68]), _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _74 = mem[_72]
            require idx < mem[(32 * ('cd', 100).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_72]
            s = _74
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * ('cd', 100).length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = code.data[14493 len 32 * ('cd', 100).length]
    s = 0
    idx = 0
    while idx < ('cd', 100).length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        mem[mem[64] + 68] = _62
        require ext_code.size(address(cd[4]))
        call address(cd[4]).getPayAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _75 = mem[_73]
        require idx < mem[(32 * ('cd', 100).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_73]
        s = _75
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * ('cd', 100).length) + 160 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_f39d602e(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 128 <= test266151307() and (32 * ('cd', 100).length) + 128 >= 96
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
    mem[64] = (64 * ('cd', 100).length) + 160
    if not ('cd', 100).length:
        s = 0
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            mem[mem[64] + 68] = _59
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[36]), address(cd[68]), _59
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _72 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _74 = mem[_72]
            require idx < mem[(32 * ('cd', 100).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_72]
            s = _74
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * ('cd', 100).length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = code.data[14493 len 32 * ('cd', 100).length]
    s = 0
    idx = 0
    while idx < ('cd', 100).length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        mem[mem[64] + 68] = _62
        require ext_code.size(address(cd[4]))
        call address(cd[4]).getBuyAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), _62
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _75 = mem[_73]
        require idx < mem[(32 * ('cd', 100).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_73]
        s = _75
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * ('cd', 100).length) + 160 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_656e5fb7(?) {
    require calldata.size - 4 >= 128
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 128 <= test266151307() and (32 * ('cd', 100).length) + 128 >= 96
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 100).length) + 128] = ('cd', 100).length
    mem[64] = (64 * ('cd', 100).length) + 160
    if not ('cd', 100).length:
        s = 0
        s = 0
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _63 = mem[(32 * idx) + 128]
            mem[mem[64] + 36] = address(cd[68])
            mem[mem[64] + 68] = _63
            require ext_code.size(address(cd[4]))
            call address(cd[4]).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(cd[36]), address(cd[68]), _63
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _78 = mem[_76]
            _80 = mem[_76 + 32]
            require idx < mem[(32 * ('cd', 100).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_76]
            s = _80
            s = _78
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _68 = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
        mem[mem[64] + 64 len 32 * _68] = mem[(32 * ('cd', 100).length) + 160 len 32 * _68]
        return 32, mem[mem[64] + 32 len (32 * _68) + 32]
    mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 100).length] = code.data[14493 len 32 * ('cd', 100).length]
    s = 0
    s = 0
    idx = 0
    while idx < ('cd', 100).length:
        require idx < mem[96]
        _66 = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = address(cd[68])
        mem[mem[64] + 68] = _66
        require ext_code.size(address(cd[4]))
        call address(cd[4]).getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), _66
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _79 = mem[_77]
        _81 = mem[_77 + 32]
        require idx < mem[(32 * ('cd', 100).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 100).length) + 160] = mem[_77]
        s = _81
        s = _79
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _69 = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 100).length) + 128]
    mem[mem[64] + 64 len 32 * _69] = mem[(32 * ('cd', 100).length) + 160 len 32 * _69]
    return 32, mem[mem[64] + 32 len (32 * _69) + 32]
}

function sub_f2aa34c1(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    if not ('cd', 4).length:
        s = 0
        s = 0
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _99 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx < mem[96]
            _104 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(_99))
            call address(_99).0x70a08231 with:
                 gas gas_remaining wei
                args address(_104)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _118 = mem[_114]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_114]
            s = _118
            s = _99
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _108 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 64 len 32 * _108] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _108]
        return 32, mem[mem[64] + 32 len (32 * _108) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 4).length] = code.data[14493 len 32 * ('cd', 4).length]
    s = 0
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _102 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[96]
        _106 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(_102))
        call address(_102).0x70a08231 with:
             gas gas_remaining wei
            args address(_106)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_115]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_115]
        s = _119
        s = _102
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _109 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 64 len 32 * _109] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _109]
    return 32, mem[mem[64] + 32 len (32 * _109) + 32]
}

function sub_cb0bd008(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    if not ('cd', 4).length:
        s = 0
        s = 0
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _99 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            require idx < mem[96]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_99))
            call address(_99).0xdd62ed3e with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _118 = mem[_116]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_116]
            s = _118
            s = _99
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _108 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[mem[64] + 64 len 32 * _108] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _108]
        return 32, mem[mem[64] + 32 len (32 * _108) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 4).length] = code.data[14493 len 32 * ('cd', 4).length]
    s = 0
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _102 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = address(cd[68])
        require ext_code.size(address(_102))
        call address(_102).0xdd62ed3e with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_117]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = mem[_117]
        s = _119
        s = _102
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _109 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
    mem[mem[64] + 64 len 32 * _109] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192 len 32 * _109]
    return 32, mem[mem[64] + 32 len (32 * _109) + 32]
}

function multiDeltaBalances(address[] arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg1.length) + (32 * arg3.length) + 160 <= test266151307() and (32 * arg3.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = (32 * arg1.length) + 160
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + (32 * arg3.length) + 160] = arg3.length * arg1.length
    mem[64] = (32 * arg1.length) + (32 * arg3.length) + (32 * arg3.length * arg1.length) + 192
    if not arg3.length * arg1.length:
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _114 = mem[(32 * idx) + 128]
            _141 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < _141:
                require s < mem[(32 * arg1.length) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(_114))
                call address(_114).balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(arg2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _155 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require (s * mem[96]) + idx < mem[(32 * arg1.length) + (32 * arg3.length) + 160]
                mem[(32 * (s * mem[96]) + idx) + (32 * arg1.length) + (32 * arg3.length) + 192] = mem[_155]
                _141 = mem[(32 * arg1.length) + 128]
                s = s + 1
                continue 
            s = _114
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _121 = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
        mem[mem[64] + 64 len 32 * _121] = mem[(32 * arg1.length) + (32 * arg3.length) + 192 len 32 * _121]
        return 32, mem[mem[64] + 32 len (32 * _121) + 32]
    mem[(32 * arg1.length) + (32 * arg3.length) + 192 len 32 * arg3.length * arg1.length] = code.data[14493 len 32 * arg3.length * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _116 = mem[(32 * idx) + 128]
        _142 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < _142:
            require s < mem[(32 * arg1.length) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
            mem[mem[64] + 36] = arg2
            require ext_code.size(address(_116))
            call address(_116).balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require (s * mem[96]) + idx < mem[(32 * arg1.length) + (32 * arg3.length) + 160]
            mem[(32 * (s * mem[96]) + idx) + (32 * arg1.length) + (32 * arg3.length) + 192] = mem[_156]
            _142 = mem[(32 * arg1.length) + 128]
            s = s + 1
            continue 
        s = _116
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _124 = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg3.length) + 160]
    mem[mem[64] + 64 len 32 * _124] = mem[(32 * arg1.length) + (32 * arg3.length) + 192 len 32 * _124]
    return 32, mem[mem[64] + 32 len (32 * _124) + 32]
}

function walletBalances(address arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2.length > 0
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
            else:
                require idx < mem[96]
                _108 = mem[(32 * idx) + 128]
                if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[mem[64]] = Mask(32, 224, sha3('balanceOf(address)'))
                    mem[mem[64] + 4] = arg1
                    call address(_108) with:
                       funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                    else:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_108))
                        call address(_108).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _134 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_134]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _110 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _110] = mem[(32 * arg2.length) + 160 len 32 * _110]
        return 32, mem[mem[64] + 32 len (32 * _110) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[14493 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        if not mem[(32 * idx) + 140 len 20]:
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
        else:
            require idx < mem[96]
            _109 = mem[(32 * idx) + 128]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = 0
            else:
                mem[mem[64]] = Mask(32, 224, sha3('balanceOf(address)'))
                mem[mem[64] + 4] = arg1
                call address(_109) with:
                   funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                else:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(_109))
                    call address(_109).0x70a08231 with:
                         gas gas_remaining wei
                        args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_135]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _111 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _111] = mem[(32 * arg2.length) + 160 len 32 * _111]
    return 32, mem[mem[64] + 32 len (32 * _111) + 32]
}

function allBalances(address arg1, address arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg3.length) + 128] = 2 * arg3.length
    mem[64] = (98 * arg3.length) + 160
    if not uint255(arg3.length):
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = arg2
            require ext_code.size(arg1)
            call arg1.balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _140 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require 2 * idx < mem[(32 * arg3.length) + 128]
            mem[(64 * idx) + (32 * arg3.length) + 160] = mem[_140]
            require idx < mem[96]
            if not mem[(32 * idx) + 140 len 20]:
                require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = eth.balance(arg2)
            else:
                require idx < mem[96]
                _154 = mem[(32 * idx) + 128]
                if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                    require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 0
                else:
                    mem[mem[64]] = Mask(32, 224, sha3('balanceOf(address)'))
                    mem[mem[64] + 4] = arg2
                    call address(_154) with:
                       funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 0
                    else:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(_154))
                        call address(_154).0x70a08231 with:
                             gas gas_remaining wei
                            args address(arg2)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _174 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                        mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = mem[_174]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _132 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 64 len 32 * _132] = mem[(32 * arg3.length) + 160 len 32 * _132]
        return 32, mem[mem[64] + 32 len (32 * _132) + 32]
    mem[(32 * arg3.length) + 160 len 64 * arg3.length] = code.data[14493 len 64 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = arg2
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1, address arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require 2 * idx < mem[(32 * arg3.length) + 128]
        mem[(64 * idx) + (32 * arg3.length) + 160] = mem[_141]
        require idx < mem[96]
        if not mem[(32 * idx) + 140 len 20]:
            require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
            mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = eth.balance(arg2)
        else:
            require idx < mem[96]
            _155 = mem[(32 * idx) + 128]
            if ext_code.size(mem[(32 * idx) + 128]) <= 0:
                require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 0
            else:
                mem[mem[64]] = Mask(32, 224, sha3('balanceOf(address)'))
                mem[mem[64] + 4] = arg2
                call address(_155) with:
                   funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = 0
                else:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(_155))
                    call address(_155).0x70a08231 with:
                         gas gas_remaining wei
                        args address(arg2)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require (2 * idx) + 1 < mem[(32 * arg3.length) + 128]
                    mem[(32 * (2 * idx) + 1) + (32 * arg3.length) + 160] = mem[_175]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _133 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 64 len 32 * _133] = mem[(32 * arg3.length) + 160 len 32 * _133]
    return 32, mem[mem[64] + 32 len (32 * _133) + 32]
}

function sub_90d2bb81(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307() and (32 * ('cd', 100).length) + 224 >= 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100).length == ('cd', 68).length
    require ('cd', 68).length == ('cd', 36).length
    require ('cd', 36).length == ('cd', 4).length
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 100).length
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 256
    if not ('cd', 100).length:
        s = 0
        idx = 0
        while idx < ('cd', 100).length:
            require idx < mem[96]
            _236 = mem[(32 * idx) + 128]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            _245 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            _250 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
            mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
            mem[mem[64] + 36] = address(_245)
            mem[mem[64] + 68] = _250
            require ext_code.size(address(_236))
            call address(_236).getReturn(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_245), _250
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[_261]
            s = _236
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _249 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[mem[64] + 64 len 32 * _249] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _249]
        return 32, mem[mem[64] + 32 len (32 * _249) + 32]
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * ('cd', 100).length] = code.data[14493 len 32 * ('cd', 100).length]
    s = 0
    idx = 0
    while idx < ('cd', 100).length:
        require idx < mem[96]
        _239 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _247 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _253 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
        mem[mem[64] + 4] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        mem[mem[64] + 36] = address(_247)
        mem[mem[64] + 68] = _253
        require ext_code.size(address(_239))
        call address(_239).getReturn(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], address(_247), _253
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = mem[_262]
        s = _239
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _252 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
    mem[mem[64] + 64 len 32 * _252] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256 len 32 * _252]
    return 32, mem[mem[64] + 32 len (32 * _252) + 32]
}

function sub_0c109635(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307() and (32 * ('cd', 68).length) + 160 >= 128
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 2 * ('cd', 68).length * ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * 2 * ('cd', 68).length * ('cd', 36).length) + 192
    if not 2 * ('cd', 68).length * ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            _301 = mem[(32 * ('cd', 36).length) + 128]
            s = 0
            while s < _301:
                require s < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[96]
                _312 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 36).length) + 172 len 20]
                mem[mem[64] + 36] = address(_312)
                require ext_code.size(address(cd[4]))
                call address(cd[4]).balanceOf(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_312)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require (idx * 2 * ('cd', 68).length) + (2 * s) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[_319]
                require s < mem[(32 * ('cd', 36).length) + 128]
                require idx < mem[96]
                if not mem[(32 * s) + (32 * ('cd', 36).length) + 172 len 20]:
                    require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = eth.balance(mem[(32 * idx) + 128])
                else:
                    _335 = mem[(32 * idx) + 128]
                    require s < mem[(32 * ('cd', 36).length) + 128]
                    _341 = mem[(32 * s) + (32 * ('cd', 36).length) + 160]
                    if ext_code.size(mem[(32 * s) + (32 * ('cd', 36).length) + 160]) <= 0:
                        require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
                    else:
                        mem[mem[64]] = Mask(32, 224, sha3('balanceOf(address)'))
                        mem[mem[64] + 4] = address(_335)
                        call address(_341) with:
                           funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                             gas gas_remaining wei
                            args address(_335)
                        if not ext_call.success:
                            require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
                        else:
                            mem[mem[64] + 4] = address(_335)
                            require ext_code.size(address(_341))
                            call address(_341).0x70a08231 with:
                                 gas gas_remaining wei
                                args address(_335)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _361 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                            mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[_361]
                _301 = mem[(32 * ('cd', 36).length) + 128]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _241 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 64 len 32 * _241] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * _241]
        return 32, mem[mem[64] + 32 len (32 * _241) + 32]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * 2 * ('cd', 68).length * ('cd', 36).length] = code.data[14493 len 32 * 2 * ('cd', 68).length * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        _302 = mem[(32 * ('cd', 36).length) + 128]
        s = 0
        while s < _302:
            require s < mem[(32 * ('cd', 36).length) + 128]
            require idx < mem[96]
            _315 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 36).length) + 172 len 20]
            mem[mem[64] + 36] = address(_315)
            require ext_code.size(address(cd[4]))
            call address(cd[4]).balanceOf(address arg1, address arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(_315)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require (idx * 2 * ('cd', 68).length) + (2 * s) < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
            mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s)) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[_320]
            require s < mem[(32 * ('cd', 36).length) + 128]
            require idx < mem[96]
            if not mem[(32 * s) + (32 * ('cd', 36).length) + 172 len 20]:
                require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = eth.balance(mem[(32 * idx) + 128])
            else:
                _339 = mem[(32 * idx) + 128]
                require s < mem[(32 * ('cd', 36).length) + 128]
                _342 = mem[(32 * s) + (32 * ('cd', 36).length) + 160]
                if ext_code.size(mem[(32 * s) + (32 * ('cd', 36).length) + 160]) <= 0:
                    require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                    mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
                else:
                    mem[mem[64]] = Mask(32, 224, sha3('balanceOf(address)'))
                    mem[mem[64] + 4] = address(_339)
                    call address(_342) with:
                       funct Mask(32, 224, sha3('balanceOf(address)')) >> 224
                         gas gas_remaining wei
                        args address(_339)
                    if not ext_call.success:
                        require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
                    else:
                        mem[mem[64] + 4] = address(_339)
                        require ext_code.size(address(_342))
                        call address(_342).0x70a08231 with:
                             gas gas_remaining wei
                            args address(_339)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require (idx * 2 * ('cd', 68).length) + (2 * s) + 1 < mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
                        mem[(32 * (idx * 2 * ('cd', 68).length) + (2 * s) + 1) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = mem[_362]
            _302 = mem[(32 * ('cd', 36).length) + 128]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _244 = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 32] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160]
    mem[mem[64] + 64 len 32 * _244] = mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 len 32 * _244]
    return 32, mem[mem[64] + 32 len (32 * _244) + 32]
}

function sub_0aeb88b9(?) {
    require calldata.size - 4 >= 128
    mem[100] = arg3
    mem[132] = arg2
    require ext_code.size(arg1)
    call arg1.getOfferCount(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = arg2
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(arg1)
    call arg1.getBestOffer(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 <= ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = arg4
        mem[64] = (2 * ceil32(return_data.size)) + (32 * arg4) + 128
        if not arg4:
            idx = 0
            s = ext_call.return_data[0]
            while idx < arg4:
                require ext_code.size(arg1)
                call arg1.getOffer(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                stor3 = mem[_115 + 108 len 20]
                stor2 = mem[_115 + 64]
                stor1 = mem[_115 + 44 len 20]
                uint256(stor0) = mem[_115]
                _163 = mem[64]
                mem[64] = mem[64] + 128
                mem[_163] = uint256(stor0)
                mem[_163 + 32] = stor1
                mem[_163 + 64] = stor2
                mem[_163 + 96] = stor3
                require idx < mem[(2 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _163
                mem[mem[64] + 4] = s
                require ext_code.size(arg1)
                call arg1.getWorseOffer(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx + 1 < idx:
                    revert with 0, 'UINT256_OVERFLOW'
                idx = idx + 1
                s = mem[_177]
                continue 
            _105 = mem[64]
            mem[mem[64]] = 32
            _107 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 64
            while idx < _107:
                _193 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_193 + 44 len 20]
                mem[t + 64] = mem[_193 + 64]
                mem[t + 96] = mem[_193 + 108 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _105 + (128 * _107) + -mem[64] + 64
        mem[64] = (2 * ceil32(return_data.size)) + (32 * arg4) + 256
        mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 160] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 192] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 224] = 0
        mem[var78001] = (2 * ceil32(return_data.size)) + (32 * arg4) + 128
        s = var78001
        idx = var78002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 160] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 192] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * arg4) + 224] = 0
            mem[s + 32] = (2 * ceil32(return_data.size)) + (32 * arg4) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = ext_call.return_data[0]
        while idx < arg4:
            require ext_code.size(arg1)
            call arg1.getOffer(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            stor3 = mem[_255 + 108 len 20]
            stor2 = mem[_255 + 64]
            stor1 = mem[_255 + 44 len 20]
            uint256(stor0) = mem[_255]
            _277 = mem[64]
            mem[64] = mem[64] + 128
            mem[_277] = uint256(stor0)
            mem[_277 + 32] = stor1
            mem[_277 + 64] = stor2
            mem[_277 + 96] = stor3
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _277
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            call arg1.getWorseOffer(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx + 1 < idx:
                revert with 0, 'UINT256_OVERFLOW'
            idx = idx + 1
            s = mem[_285]
            continue 
        _249 = mem[64]
        mem[mem[64]] = 32
        _251 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 64
        while idx < _251:
            _293 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_293 + 44 len 20]
            mem[t + 64] = mem[_293 + 64]
            mem[t + 96] = mem[_293 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _249 + (128 * _251) + -mem[64] + 64
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        s = ext_call.return_data[0]
        while idx < ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.getOffer(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            stor3 = mem[_116 + 108 len 20]
            stor2 = mem[_116 + 64]
            stor1 = mem[_116 + 44 len 20]
            uint256(stor0) = mem[_116]
            _165 = mem[64]
            mem[64] = mem[64] + 128
            mem[_165] = uint256(stor0)
            mem[_165 + 32] = stor1
            mem[_165 + 64] = stor2
            mem[_165 + 96] = stor3
            require idx < mem[(2 * ceil32(return_data.size)) + 96]
            mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _165
            mem[mem[64] + 4] = s
            require ext_code.size(arg1)
            call arg1.getWorseOffer(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _178 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx + 1 < idx:
                revert with 0, 'UINT256_OVERFLOW'
            idx = idx + 1
            s = mem[_178]
            continue 
        _106 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 64
        while idx < _108:
            _194 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_194 + 44 len 20]
            mem[t + 64] = mem[_194 + 64]
            mem[t + 96] = mem[_194 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _106 + (128 * _108) + -mem[64] + 64
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 256
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224] = 0
    mem[var79001] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
    s = var79001
    idx = var79002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[s + 32] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = ext_call.return_data[0]
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.getOffer(uint256 arg1) with:
             gas gas_remaining wei
            args s
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _256 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        stor3 = mem[_256 + 108 len 20]
        stor2 = mem[_256 + 64]
        stor1 = mem[_256 + 44 len 20]
        uint256(stor0) = mem[_256]
        _279 = mem[64]
        mem[64] = mem[64] + 128
        mem[_279] = uint256(stor0)
        mem[_279 + 32] = stor1
        mem[_279 + 64] = stor2
        mem[_279 + 96] = stor3
        require idx < mem[(2 * ceil32(return_data.size)) + 96]
        mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _279
        mem[mem[64] + 4] = s
        require ext_code.size(arg1)
        call arg1.getWorseOffer(uint256 arg1) with:
             gas gas_remaining wei
            args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx + 1 < idx:
            revert with 0, 'UINT256_OVERFLOW'
        idx = idx + 1
        s = mem[_286]
        continue 
    _250 = mem[64]
    mem[mem[64]] = 32
    _252 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    while idx < _252:
        _294 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_294 + 44 len 20]
        mem[t + 64] = mem[_294 + 64]
        mem[t + 96] = mem[_294 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _250 + (128 * _252) + -mem[64] + 64
}



}
