contract main {




// =====================  Runtime code  =====================


address owner_;
array of uint256 stor1;
address stor2;
address stor3;
array of uint256 sub_a00d8bf1;
array of address stor5;

function sub_a00d8bf1(?) {
    return sub_a00d8bf1[address(arg1)][0 len sub_a00d8bf1[address(arg1)].length]
}

function owner_() {
    return owner_
}

function _fallback() payable {
  stop
}

function sub_10068b70(?) {
    require calldata.size - 4 >= 32
    if owner_ != msg.sender:
        revert with 0, 'Sorry admins only'
    if arg1:
        stor2 = arg1
}

function sub_d62ec53f(?) {
    require calldata.size - 4 >= 32
    if owner_ != msg.sender:
        revert with 0, 'Sorry admins only'
    if arg1:
        stor3 = arg1
}

function sub_65950554(?) {
    require calldata.size - 4 >= 32
    if owner_ != msg.sender:
        revert with 0, 'Sorry admins only'
    if arg1:
        address(stor1.length) = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner_ != msg.sender:
        revert with 0, 'Sorry admins only'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner_ != msg.sender:
        revert with 0, 'Sorry admins only'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bf542efa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if msg.value:
        revert with 0, 'Value must be zero.'
    if ('cd', 4).length != 34:
        revert with 0, 'TRX address invalid.'
    require ext_code.size(address(stor1.length))
    call address(stor1.length).getUIDByAddress(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Sender is not CCBank user.'
    sub_a00d8bf1[msg.sender] = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_a00d8bf1[msg.sender][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_a00d8bf1[msg.sender].length + 31 / 32 > idx:
        sub_a00d8bf1[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    stor5.length++
    address(stor5[stor5.length]) = msg.sender
    uint256(stor[sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)][]) = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
    emit 0xb7648688: msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length]), 1
}

function sub_749625e2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if msg.value:
        revert with 0, 'Value must be zero.'
    if ('cd', 4).length != 34:
        revert with 0, 'TRX address invalid.'
    mem[96] = 0x66f07f8a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor2)
    call stor2.0x66f07f8a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 256
    _8 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    _15 = mem[320]
    require mem[320] <= test266151307()
    require return_data.size + 96 > mem[320] + 127
    _16 = mem[mem[320] + 96]
    require mem[mem[320] + 96] <= test266151307()
    require (32 * mem[mem[320] + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _16
    require _15 + (32 * _16) + 32 <= return_data.size
    idx = 0
    s = _15 + 128
    t = ceil32(return_data.size) + 128
    while idx < _16:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _8 < 1:
        revert with 0, 'Sender is not CCBank user.'
    mem[32] = 4
    mem[0] = sha3(msg.sender, 4)
    sub_a00d8bf1[msg.sender] = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_a00d8bf1[msg.sender][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_a00d8bf1[msg.sender].length + 31 / 32 > idx:
        sub_a00d8bf1[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 64
    mem[_167] = msg.sender
    _168 = mem[64]
    mem[64] = mem[64] + ceil32(('cd', 4).length) + 32
    mem[_168] = ('cd', 4).length
    mem[_168 + 32 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[_167 + 32] = _168
    stor5.length++
    address(stor5[stor5.length]) = msg.sender
    mem[0] = (2 * stor5.length) + sha3(5) + 1
    uint256(stor[sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)][]) = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
    _203 = mem[64]
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = ('cd', 4).length
    mem[mem[64] + 128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + mem[64] + 128] = 0
    mem[mem[64] + 64] = 2
    emit 0xb7648688: mem[mem[64] len _203 + ceil32(('cd', 4).length) + -mem[64] + 128]
}

function sub_a0df8d26(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if msg.value:
        revert with 0, 'Value must be zero.'
    if ('cd', 4).length != 34:
        revert with 0, 'TRX address invalid.'
    mem[96] = 0x66f07f8a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor2)
    call stor2.0x66f07f8a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 256
    _8 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    _15 = mem[320]
    require mem[320] <= test266151307()
    require return_data.size + 96 > mem[320] + 127
    _16 = mem[mem[320] + 96]
    require mem[mem[320] + 96] <= test266151307()
    require (32 * mem[mem[320] + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[320] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[320] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _16
    require _15 + (32 * _16) + 32 <= return_data.size
    idx = 0
    s = _15 + 128
    t = ceil32(return_data.size) + 128
    while idx < _16:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _8 < 1:
        revert with 0, 'Sender is not CCBank user.'
    mem[32] = 4
    mem[0] = sha3(msg.sender, 4)
    sub_a00d8bf1[msg.sender] = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_a00d8bf1[msg.sender][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_a00d8bf1[msg.sender].length + 31 / 32 > idx:
        sub_a00d8bf1[msg.sender][idx] = 0
        idx = idx + 1
        continue 
    _167 = mem[64]
    mem[64] = mem[64] + 64
    mem[_167] = msg.sender
    _168 = mem[64]
    mem[64] = mem[64] + ceil32(('cd', 4).length) + 32
    mem[_168] = ('cd', 4).length
    mem[_168 + 32 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[_167 + 32] = _168
    stor5.length++
    address(stor5[stor5.length]) = msg.sender
    mem[0] = (2 * stor5.length) + sha3(5) + 1
    uint256(stor[sha3((2 * stor5.length) + ('name', 'stor5', 5) + 1)][]) = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
    _203 = mem[64]
    mem[mem[64]] = msg.sender
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = ('cd', 4).length
    mem[mem[64] + 128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + mem[64] + 128] = 0
    mem[mem[64] + 64] = 3
    emit 0xb7648688: mem[mem[64] len _203 + ceil32(('cd', 4).length) + -mem[64] + 128]
}

function sub_0bc9dad6(?) {
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = stor5.length
        mem[64] = (64 * stor5.length) + 160
        idx = 0
        while idx < stor5.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor5[idx])
            require idx < stor5.length
            mem[0] = 5
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'stor5', 5) + 1].length) + 32
            mem[_40] = stor[(2 * idx) + ('name', 'stor5', 5) + 1].length
            mem[0] = (2 * idx) + sha3(5) + 1
            mem[_40 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor5', 5) + 1)])
            s = _40 + 32
            t = sha3(mem[0])
            while _40 + stor[(2 * s) + ('name', 'stor5', 5) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require s < mem[(32 * stor5.length) + 128]
            mem[(32 * stor5.length) + (32 * s) + 160] = _40
            s = s + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 64
        _41 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _41:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_36 + 32] = (32 * _41) + 96
        _73 = mem[(32 * stor5.length) + 128]
        mem[_36 + (32 * _41) + 96] = mem[(32 * stor5.length) + 128]
        idx = 0
        s = (32 * stor5.length) + 160
        t = _36 + (32 * _41) + (32 * _73) + 128
        u = _36 + (32 * _41) + 128
        while idx < _73:
            mem[u] = t + -_36 + -(32 * _41) - 128
            _91 = mem[s]
            _95 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _95:
                mem[v + t + 32] = mem[v + _91 + 32]
                v = v + 32
                continue 
            if ceil32(_95) > _95:
                mem[t + _95 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_95) + 32
            u = u + 32
            continue 
    else:
        mem[128 len 32 * stor5.length] = code.data[5301 len 32 * stor5.length]
        mem[(32 * stor5.length) + 128] = stor5.length
        mem[64] = (64 * stor5.length) + 160
        mem[(32 * stor5.length) + 160] = 96
        s = (32 * stor5.length) + 160
        idx = stor5.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor5.length:
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor5[idx])
            require idx < stor5.length
            mem[0] = 5
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'stor5', 5) + 1].length) + 32
            mem[_75] = stor[(2 * idx) + ('name', 'stor5', 5) + 1].length
            mem[0] = (2 * idx) + sha3(5) + 1
            mem[_75 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'stor5', 5) + 1)])
            s = _75 + 32
            t = sha3(mem[0])
            while _75 + stor[(2 * s) + ('name', 'stor5', 5) + 1].length > s:
                mem[s + 32] = uint256(stor1[t])
                s = s + 32
                t = t + 1
                continue 
            require s < mem[(32 * stor5.length) + 128]
            mem[(32 * stor5.length) + (32 * s) + 160] = _75
            s = s + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 64
        _76 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _76:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_70 + 32] = (32 * _76) + 96
        _96 = mem[(32 * stor5.length) + 128]
        mem[_70 + (32 * _76) + 96] = mem[(32 * stor5.length) + 128]
        idx = 0
        s = (32 * stor5.length) + 160
        t = _70 + (32 * _76) + (32 * _96) + 128
        u = _70 + (32 * _76) + 128
        while idx < _96:
            mem[u] = t + -_70 + -(32 * _76) - 128
            _103 = mem[s]
            _105 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _105:
                mem[v + t + 32] = mem[v + _103 + 32]
                v = v + 32
                continue 
            if ceil32(_105) > _105:
                mem[t + _105 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_105) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
