contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 tokenBalances;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function tokenBalances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokenBalances[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sumWeightOfMultiToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.changeableTokenCount() with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = mem[126 len 2]
    s = 0
    while idx > 0:
        mem[mem[64] + 4] = idx - 1
        require ext_code.size(arg1)
        call arg1.tokens(uint256 arg1) with:
             gas gas_remaining wei
            args (idx - 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        mem[mem[64] + 4] = mem[_19 + 12 len 20]
        require ext_code.size(arg1)
        call arg1.weights(address arg1) with:
             gas gas_remaining wei
            args address(_20)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx - 1
        s = s + mem[_23]
        continue 
    return s
}

function buyOne(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    balances[msg.sender] += msg.value
    mem[ceil32(arg4.length) + 132] = this.address
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        call arg2.mem[ceil32(arg4.length) + ceil32(return_data.size) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + ceil32(return_data.size) + 132 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 128] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg4.length % 32) + 160 len arg4.length % 32]
        call arg2.mem[ceil32(arg4.length) + ceil32(return_data.size) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + ceil32(return_data.size) + 132 len floor32(arg4.length) + 28]
    require ext_call.success
    require arg3 <= balances[msg.sender]
    balances[msg.sender] -= arg3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] <= ext_call.return_data[0]
    require ext_call.return_data[0] - 0, ext_call.return_data[4 len 28] + tokenBalances[msg.sender][address(arg1)] >= tokenBalances[msg.sender][address(arg1)]
    tokenBalances[msg.sender][address(arg1)] = ext_call.return_data[0] - 0, ext_call.return_data[4 len 28] + tokenBalances[msg.sender][address(arg1)]
}

function sub_410ac840(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
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
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
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
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 224 >= 192 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        require calldata.size > cd[100] + cd[s] + 67
        require cd[(cd[100] + cd[s] + 36)] <= test266151307()
        _81 = mem[64]
        require mem[64] + ceil32(cd[(cd[100] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[100] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[s] + 36)]) + 32
        mem[_81] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 68 <= calldata.size
        mem[_81 + 32 len cd[(cd[100] + cd[s] + 36)]] = call.data[cd[100] + cd[s] + 68 len cd[(cd[100] + cd[s] + 36)]]
        mem[cd[(cd[100] + cd[s] + 36)] + _81 + 32] = 0
        mem[t] = _81
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.value + balances[msg.sender] >= balances[msg.sender]
    mem[0] = msg.sender
    mem[32] = 0
    balances[msg.sender] += msg.value
    _96 = mem[96]
    idx = 0
    while idx < _96:
        require idx < mem[96]
        _98 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _100 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _102 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _104 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
        mem[mem[64]] = 0x18c1fc6800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_98)
        mem[mem[64] + 36] = address(_100)
        mem[mem[64] + 68] = _102
        mem[mem[64] + 100] = 128
        _106 = mem[_104]
        mem[mem[64] + 132] = mem[_104]
        s = 0
        while s < _106:
            mem[s + mem[64] + 164] = mem[s + _104 + 32]
            _96 = mem[96]
            s = s + 32
            continue 
        if ceil32(_106) > _106:
            mem[mem[64] + _106 + 164] = 0
        require ext_code.size(this.address)
        call this.address.0x18c1fc68 with:
             gas gas_remaining wei
            args address(_98), address(_100), _102, 128, mem[mem[64] + 132 len ceil32(_106) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[96]
        idx = idx + 1
        continue 
}

function withdraw(address arg1, uint256 arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if arg2 <= 0:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _42 = mem[_40]
            mem[mem[64] + 36] = cd[((32 * idx) + arg4 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), cd[((32 * idx) + arg4 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require cd[((32 * idx) + arg4 + 36)] <= _42
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_56] == _42 - cd[((32 * idx) + arg4 + 36)]
            require cd[((32 * idx) + arg4 + 36)] <= tokenBalances[msg.sender][address(cd[((32 * idx) + arg3 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg3 + 36)])
            mem[32] = sha3(msg.sender, 1)
            tokenBalances[msg.sender][address(cd[((32 * idx) + arg3 + 36)])] -= cd[((32 * idx) + arg4 + 36)]
            s = _42
            s = cd[((32 * idx) + arg4 + 36)]
            s = address(cd[((32 * idx) + arg3 + 36)])
            idx = idx + 1
            continue 
    else:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg2 <= balances[msg.sender]
        mem[0] = msg.sender
        mem[32] = 0
        balances[msg.sender] -= arg2
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _43 = mem[_41]
            mem[mem[64] + 36] = cd[((32 * idx) + arg4 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), cd[((32 * idx) + arg4 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require cd[((32 * idx) + arg4 + 36)] <= _43
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_57] == _43 - cd[((32 * idx) + arg4 + 36)]
            require cd[((32 * idx) + arg4 + 36)] <= tokenBalances[msg.sender][address(cd[((32 * idx) + arg3 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg3 + 36)])
            mem[32] = sha3(msg.sender, 1)
            tokenBalances[msg.sender][address(cd[((32 * idx) + arg3 + 36)])] -= cd[((32 * idx) + arg4 + 36)]
            s = _43
            s = cd[((32 * idx) + arg4 + 36)]
            s = address(cd[((32 * idx) + arg3 + 36)])
            idx = idx + 1
            continue 
}

function deposit(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if msg.value <= 0:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _41 = mem[_39]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + arg3 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require cd[((32 * idx) + arg3 + 36)] + _41 >= _41
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_55] == cd[((32 * idx) + arg3 + 36)] + _41
            require cd[((32 * idx) + arg3 + 36)] + tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] >= tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(address(arg1), 1)
            tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
            s = _41
            s = cd[((32 * idx) + arg3 + 36)]
            s = address(cd[((32 * idx) + arg2 + 36)])
            idx = idx + 1
            continue 
    else:
        require msg.value + balances[address(arg1)] >= balances[address(arg1)]
        mem[0] = arg1
        mem[32] = 0
        balances[address(arg1)] += msg.value
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _42 = mem[_40]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + arg3 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require cd[((32 * idx) + arg3 + 36)] + _42 >= _42
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            call address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_56] == cd[((32 * idx) + arg3 + 36)] + _42
            require cd[((32 * idx) + arg3 + 36)] + tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] >= tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(address(arg1), 1)
            tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
            s = _42
            s = cd[((32 * idx) + arg3 + 36)]
            s = address(cd[((32 * idx) + arg2 + 36)])
            idx = idx + 1
            continue 
}



}
