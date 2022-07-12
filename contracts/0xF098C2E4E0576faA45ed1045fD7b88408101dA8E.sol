contract main {




// =====================  Runtime code  =====================


address sub_801f1c7fAddress;
array of uint256 stor1;
array of uint256 exchanges;
mapping of uint256 sub_805265e5;
mapping of uint256 sub_2c26398e;
uint8 closed;

function exchanges(uint256 arg1) payable {
    return exchanges[arg1][0 len exchanges[arg1].length]
}

function sub_2c26398e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    return sub_2c26398e[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]][address(arg2)]
}

function closed() payable {
    return bool(closed)
}

function sub_801f1c7f(?) payable {
    return sub_801f1c7fAddress
}

function sub_805265e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    return sub_805265e5[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]
}

function _fallback() payable {
    revert
}

function setClosed(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor1.length)
    closed = uint8(arg1)
    return 1
}

function addExchange(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    exchanges.length++
    exchanges[exchanges.length][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function withdraw() payable {
    if not closed:
        revert with 0, 'Is underway.'
    if address(stor1.length) != msg.sender:
        revert with 0, 'Invalid sender.'
    require ext_code.size(sub_801f1c7fAddress)
    staticcall sub_801f1c7fAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The balance is empty.'
    require ext_code.size(sub_801f1c7fAddress)
    call sub_801f1c7fAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdrawal(ext_call.return_data[0], msg.sender);
    return 1
}

function vote(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if closed:
        revert with 0, 'Closed.'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[64] = arg1.length + ceil32(arg1.length) + 160
    _131 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    idx = 0
    while idx < exchanges.length:
        _249 = mem[64]
        mem[0] = sha3(2) + idx
        mem[mem[64] + 32] = exchanges[idx]
        s = mem[64] + 32
        t = sha3(sha3(2) + s)
        while _249 + exchanges[s].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        _395 = mem[64]
        mem[mem[64]] = _249 + exchanges[s].length - mem[64]
        mem[64] = _249 + exchanges[s].length + 32
        if sha3(mem[_395 + 32 len mem[_395]]) != _131:
            s = s + 1
            continue 
        require ext_code.size(sub_801f1c7fAddress)
        staticcall sub_801f1c7fAddress.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_801f1c7fAddress)
        staticcall sub_801f1c7fAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10 * 10^18:
            revert with 0, 'Invalid FDS.'
        require ext_call.return_data[0] % 10 * 10^18 <= ext_call.return_data[0]
        require (ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18) / 10 * 10^18) + sub_805265e5[_131] >= sub_805265e5[_131]
        sub_805265e5[_131] += ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18) / 10 * 10^18
        require (ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18) / 10 * 10^18) + sub_2c26398e[_131][msg.sender] >= sub_2c26398e[_131][msg.sender]
        mem[0] = msg.sender
        mem[32] = sha3(_131, 4)
        sub_2c26398e[_131][msg.sender] += ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18) / 10 * 10^18
        mem[_249 + exchanges[s].length + 36] = msg.sender
        mem[_249 + exchanges[s].length + 68] = this.address
        mem[_249 + exchanges[s].length + 100] = ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18)
        require ext_code.size(sub_801f1c7fAddress)
        call sub_801f1c7fAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18)
        mem[_249 + exchanges[s].length + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if ext_call.return_data[0] < ext_call.return_data[0]:
            _431 = mem[96]
            t = 128
            u = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            emit 0xbc4acc4b: ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18) / 10 * 10^18, ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18), msg.sender, sha3(mem[mem[64] len _249 + exchanges[s].length + _431 + -mem[64] + 32])
        else:
            _433 = mem[96]
            t = 128
            u = mem[64]
            idx = mem[96]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = 256^(-(mem[96] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[96])] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            emit 0xbc4acc4b: ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18) / 10 * 10^18, ext_call.return_data[0] - (ext_call.return_data[0] % 10 * 10^18), msg.sender, sha3(mem[mem[64] len _249 + exchanges[s].length + _433 + -mem[64] + 32])
        return 1
    revert with 0, 'Invalid exchange.'
}



}
