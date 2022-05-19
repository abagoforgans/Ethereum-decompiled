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
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
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
    require arg3 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] <= ext_call.return_data[0]
    require tokenBalances[address(msg.sender)][address(arg1)] + ext_call.return_data[0] - 0, ext_call.return_data[4 len 28] >= tokenBalances[address(msg.sender)][address(arg1)]
    tokenBalances[address(msg.sender)][address(arg1)] = tokenBalances[address(msg.sender)][address(arg1)] + ext_call.return_data[0] - 0, ext_call.return_data[4 len 28]
}

function withdraw(address arg1, uint256 arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
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



}
