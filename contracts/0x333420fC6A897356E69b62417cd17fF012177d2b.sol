contract main {




// =====================  Runtime code  =====================


mapping of uint8 states;
mapping of uint256 withdrawn;
mapping of uint256 sub_553721c5;

function withdrawn(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return withdrawn[arg1]
}

function sub_553721c5(?) payable {
    require calldata.size - 4 >= 64
    return sub_553721c5[arg1][arg2]
}

function states(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require states[arg1] < 3
    return states[arg1]
}

function _fallback() payable {
    revert
}

function sub_7e881aab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320 <= test266151307() and (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320 >= 288
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 320
    t = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require states[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]] <= 2
    if states[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]]:
        revert with 0, 'INVALID_STATE'
    if uint64(('cd', 4).length) << 96 != msg.sender:
        revert with 0, 'INVALID_CREATOR'
    if cd[(cd[4] + ('cd', 4)[3] + 4)] < 2:
        revert with 0, 'INVALID_CHANNEL'
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > 25:
        revert with 0, 'INVALID_CHANNEL'
    if ('cd', 4)[2] < block.timestamp:
        revert with 0, 'INVALID_CHANNEL'
    if ('cd', 4)[2] > block.timestamp + (8760 * 24 * 3600):
        revert with 0, 'INVALID_CHANNEL'
    states[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]] = 1
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ('cd', 4)[1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        require ext_call.return_data[0]
    emit 0x13c5d350: sha3(address(this.address), ('cd', 4).length << 192, address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]]), ('cd', 4)[4])
}

function sub_ef3600be(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320 <= test266151307() and (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320 >= 288
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 320
    t = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require states[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]] <= 2
    if states[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]] != 1:
        revert with 0, 'INVALID_STATE'
    if block.timestamp <= ('cd', 4)[2]:
        revert with 0, 'NOT_EXPIRED'
    if uint64(('cd', 4).length) << 96 != msg.sender:
        revert with 0, 'INVALID_CREATOR'
    require withdrawn[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]] <= ('cd', 4)[1]
    states[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]] = 2
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ('cd', 4)[1] - withdrawn[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        require ext_call.return_data[0]
    emit 0x220fe94f: (('cd', 4)[1] - withdrawn[address(this.address)][('cd', 4).length << 192][address(('cd', 4)[0])][('cd', 4)[1]][('cd', 4)[2]][Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]])][('cd', 4)[4]]), sha3(address(this.address), ('cd', 4).length << 192, address(('cd', 4)[0]), ('cd', 4)[1], ('cd', 4)[2], Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 608 len 32 * cd[(cd[4] + ('cd', 4)[3] + 4)]]), ('cd', 4)[4])
}

function sub_ed66d857(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    mem[96] = address(('cd', 4).length)
    mem[128] = address(('cd', 4)[0])
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320 <= test266151307() and (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320 >= 288
    mem[288] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = 288
    mem[256] = ('cd', 4)[4]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * ('cd', 68).length) + 352 <= test266151307() and (32 * ('cd', 68).length) + 352 >= 320
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + (32 * ('cd', 68).length) + 352
    mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320] = ('cd', 68).length
    require cd[68] + (96 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 352
    while idx < ('cd', 68).length:
        require s + 31 < calldata.size
        _240 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require s + 96 <= calldata.size
        u = 0
        v = s
        w = _240
        while u < 3:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _240
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    _241 = mem[64]
    require mem[64] + (32 * ('cd', 100).length) + 32 <= test266151307() and mem[64] + (32 * ('cd', 100).length) + 32 >= mem[64]
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 32
    mem[_241] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = _241 + 32
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _320 = mem[128]
    _321 = mem[160]
    _322 = mem[192]
    _323 = mem[224]
    _324 = mem[256]
    _325 = mem[64]
    mem[mem[64] + 32] = this.address
    mem[mem[64] + 64] = mem[108 len 20]
    mem[mem[64] + 96] = address(_320)
    mem[mem[64] + 128] = _321
    mem[mem[64] + 160] = _322
    mem[mem[64] + 192] = 224
    _326 = mem[_323]
    mem[mem[64] + 256] = mem[_323]
    idx = 0
    s = _323 + 32
    t = mem[64] + 288
    while idx < _326:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 224] = _324
    _397 = mem[64]
    mem[mem[64]] = (32 * _326) + 256
    mem[64] = mem[64] + (32 * _326) + 288
    _399 = sha3(mem[_397 + 32 len mem[_397]])
    mem[0] = sha3(mem[_397 + 32 len mem[_397]])
    mem[32] = 0
    require states[mem[0]] <= 2
    if states[mem[0]] != 1:
        revert with 0, 'INVALID_STATE'
    if block.timestamp > mem[192]:
        revert with 0, 'EXPIRED'
    mem[_325 + (32 * _326) + 320] = _399
    mem[_325 + (32 * _326) + 352] = cd[36]
    mem[_325 + (32 * _326) + 288] = 64
    mem[64] = _325 + (32 * _326) + 384
    if mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320] != mem[mem[224]]:
        revert with 0, 'NOT_SIGNED_BY_VALIDATORS'
    idx = 0
    s = 0
    while idx < mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320]:
        require idx < mem[mem[224]]
        require idx < mem[(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 320]
        if mem[(32 * idx) + mem[224] + 44 len 20] != 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if 3 * s < 2 * mem[mem[224]]:
        revert with 0, 'NOT_SIGNED_BY_VALIDATORS'
    mem[_325 + (32 * _326) + 416] = msg.sender
    mem[_325 + (32 * _326) + 448] = cd[132]
    mem[_325 + (32 * _326) + 384] = 64
    mem[64] = _325 + (32 * _326) + 480
    _515 = mem[_241]
    idx = 0
    s = 0
    while idx < _515:
        require idx < mem[_241]
        require idx < mem[_241]
        if s + sha3(mem[_325 + (32 * _326) + 416 len mem[_325 + (32 * _326) + 384]]) >= mem[(32 * idx) + _241 + 32]:
            mem[mem[64] + 32] = mem[(32 * idx) + _241 + 32]
            mem[mem[64] + 64] = s + sha3(mem[_325 + (32 * _326) + 416 len mem[_325 + (32 * _326) + 384]])
            _538 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _515 = mem[_241]
            idx = idx + 1
            s = sha3(mem[_538 + 32 len mem[_538]])
            continue 
        _525 = mem[(32 * idx) + _241 + 32]
        mem[mem[64] + 32] = s + sha3(mem[_325 + (32 * _326) + 416 len mem[_325 + (32 * _326) + 384]])
        mem[mem[64] + 64] = _525
        _541 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _515 = mem[_241]
        idx = idx + 1
        s = sha3(mem[_541 + 32 len mem[_541]])
        continue 
    if s != cd[36]:
        revert with 0, 'BALANCELEAF_NOT_FOUND'
    require sub_553721c5[_399][address(msg.sender)] <= cd[132]
    sub_553721c5[_399][address(msg.sender)] = cd[132]
    require withdrawn[_399] + cd[132] - sub_553721c5[_399][address(msg.sender)] >= withdrawn[_399]
    withdrawn[_399] = withdrawn[_399] + cd[132] - sub_553721c5[_399][address(msg.sender)]
    if withdrawn[_399] > mem[160]:
        revert with 0, 'WITHDRAWING_MORE_THAN_CHANNEL'
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, cd[132] - sub_553721c5[_399][address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        require ext_call.return_data[0]
    emit 0xa37d093e: (cd[132] - sub_553721c5[_399][address(msg.sender)]), _399
}



}
