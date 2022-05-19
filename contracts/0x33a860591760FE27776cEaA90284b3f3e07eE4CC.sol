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

function withdraw(address arg1, uint256 arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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
            require cd[((32 * idx) + arg4 + 36)] <= tokenBalances[address(msg.sender)][address(cd[((32 * idx) + arg3 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg3 + 36)])
            mem[32] = sha3(address(msg.sender), 1)
            tokenBalances[address(msg.sender)][address(cd[((32 * idx) + arg3 + 36)])] -= cd[((32 * idx) + arg4 + 36)]
            s = _43
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
        require arg2 <= balances[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 0
        balances[address(msg.sender)] -= arg2
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
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _44 = mem[_42]
            mem[mem[64] + 36] = cd[((32 * idx) + arg4 + 36)]
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), cd[((32 * idx) + arg4 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require cd[((32 * idx) + arg4 + 36)] <= _44
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
            call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_58] == _44 - cd[((32 * idx) + arg4 + 36)]
            require cd[((32 * idx) + arg4 + 36)] <= tokenBalances[address(msg.sender)][address(cd[((32 * idx) + arg3 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg3 + 36)])
            mem[32] = sha3(address(msg.sender), 1)
            tokenBalances[address(msg.sender)][address(cd[((32 * idx) + arg3 + 36)])] -= cd[((32 * idx) + arg4 + 36)]
            s = _44
            s = cd[((32 * idx) + arg4 + 36)]
            s = address(cd[((32 * idx) + arg3 + 36)])
            idx = idx + 1
            continue 
}

function deposit(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
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
            require _41 + cd[((32 * idx) + arg3 + 36)] >= _41
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
            require mem[_55] == _41 + cd[((32 * idx) + arg3 + 36)]
            require tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] >= tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(address(arg1), 1)
            tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
            s = _41
            s = cd[((32 * idx) + arg3 + 36)]
            s = address(cd[((32 * idx) + arg2 + 36)])
            idx = idx + 1
            continue 
    else:
        require balances[address(arg1)] + msg.value >= balances[address(arg1)]
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
            require _42 + cd[((32 * idx) + arg3 + 36)] >= _42
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
            require mem[_56] == _42 + cd[((32 * idx) + arg3 + 36)]
            require tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] + cd[((32 * idx) + arg3 + 36)] >= tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])]
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = sha3(address(arg1), 1)
            tokenBalances[address(arg1)][address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
            s = _42
            s = cd[((32 * idx) + arg3 + 36)]
            s = address(cd[((32 * idx) + arg2 + 36)])
            idx = idx + 1
            continue 
}

function sub_410ac840(?) payable {
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
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 <= test266151307() and (32 * ('cd', 100).length) + 224 >= 192
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    while idx < ('cd', 100).length:
        require cd[100] + cd[s] + 67 < calldata.size
        require cd[(cd[100] + cd[s] + 36)] <= test266151307()
        _197 = mem[64]
        require mem[64] + ceil32(cd[(cd[100] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[100] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[100] + cd[s] + 36)]) + 32
        mem[_197] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 68 <= calldata.size
        mem[_197 + 32 len cd[(cd[100] + cd[s] + 36)]] = call.data[cd[100] + cd[s] + 68 len cd[(cd[100] + cd[s] + 36)]]
        mem[_197 + cd[(cd[100] + cd[s] + 36)] + 32] = 0
        mem[t] = _197
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 0
    balances[address(msg.sender)] += msg.value
    _241 = mem[96]
    s = 0
    s = 0
    idx = 0
    while idx < _241:
        require idx < mem[96]
        _243 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_243))
        call address(_243).0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _247 = mem[_246]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _249 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _251 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        _253 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
        _254 = mem[64]
        _255 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]]
        s = 0
        while s < _255:
            mem[_254 + s] = mem[_253 + s + 32]
            _241 = mem[96]
            s = s + 32
            continue 
        if not _255 % 32:
            call address(_249).mem[mem[64] len 4] with:
               value _251 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _255 + _254 + -mem[64] - 4]
            require ext_call.success
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] <= balances[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 0
            balances[address(msg.sender)] -= mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_243))
            call address(_243).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_300]
            require _247 <= mem[_300]
            require tokenBalances[address(msg.sender)][address(_243)] + mem[_300] - _247 >= tokenBalances[address(msg.sender)][address(_243)]
            mem[0] = address(_243)
            mem[32] = sha3(address(msg.sender), 1)
            tokenBalances[address(msg.sender)][address(_243)] = tokenBalances[address(msg.sender)][address(_243)] + _302 - _247
        else:
            mem[floor32(_255) + _254] = mem[floor32(_255) + _254 + -(_255 % 32) + 32 len _255 % 32]
            call address(_249).mem[mem[64] len 4] with:
               value _251 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(_255) + _254 + -mem[64] + 28]
            require ext_call.success
            require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            require mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] <= balances[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 0
            balances[address(msg.sender)] -= mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_243))
            call address(_243).0x70a08231 with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_301]
            require _247 <= mem[_301]
            require tokenBalances[address(msg.sender)][address(_243)] + mem[_301] - _247 >= tokenBalances[address(msg.sender)][address(_243)]
            mem[0] = address(_243)
            mem[32] = sha3(address(msg.sender), 1)
            tokenBalances[address(msg.sender)][address(_243)] = tokenBalances[address(msg.sender)][address(_243)] + _303 - _247
        _241 = mem[96]
        s = _247
        s = _243
        idx = idx + 1
        continue 
}



}
