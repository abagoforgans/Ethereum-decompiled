contract main {




// =====================  Runtime code  =====================


const getCurrentBalance = eth.balance(this.address)


uint8 stor0;
uint32 restarTime; offset 8
uint32 stor0; offset 40
uint256 votePrice;
array of struct stor2;
array of struct stor3;
address stor4;

function getVotePrice() {
    return votePrice
}

function getVotingStatus() {
    return bool(uint8(stor0.field_0))
}

function getRestarTime() {
    return restarTime
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require stor4 == msg.sender
    stor4 = arg1
}

function stopVoting() {
    require stor4 == msg.sender
    uint8(stor0.field_0) = 0
}

function startVoting() {
    require stor4 == msg.sender
    uint8(stor0.field_0) = 1
}

function changevotePrice(uint256 arg1) {
    require stor4 == msg.sender
    votePrice = arg1
}

function changeRestarTime(uint32 arg1) {
    require stor4 == msg.sender
    restarTime = arg1
}

function withdrawAmount(uint256 arg1) {
    require stor4 == msg.sender
    call stor4 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() {
    require stor4 == msg.sender
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clear() {
    require stor4 == msg.sender
    stor2.length = 0
    idx = 0
    while stor2.length > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3.length = 0
    idx = 0
    while stor3.length > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint32(stor0.field_40) = uint32(block.timestamp + restarTime)
    uint8(stor0.field_0) = 1
}

function voteResultPublish(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor4 == msg.sender
    require uint8(stor0.field_0)
    uint8(stor0.field_0) = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Won(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_24));
        idx = idx + 1
        continue 
}

function getVoteResult() {
    require stor4 == msg.sender
    require uint32(stor0.field_40) <= block.timestamp
    if stor2.length:
        mem[128] = address(stor2.field_0)
        idx = 128
        s = 0
        while (32 * stor2.length) + 96 > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor3.length:
        mem[(32 * stor2.length) + 160] = uint256(stor3.field_0)
        idx = (32 * stor2.length) + 160
        s = 0
        while (32 * stor2.length) + (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor2.length) + (32 * stor3.length) + 256 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    mem[(64 * stor2.length) + (32 * stor3.length) + 256] = stor3.length
    mem[(64 * stor2.length) + (32 * stor3.length) + 288 len floor32(stor3.length)] = mem[(32 * stor2.length) + 160 len floor32(stor3.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + (32 * stor3.length) + floor32(stor2.length) + 256 len (32 * stor2.length) + (32 * stor3.length) + -floor32(stor2.length) + 32]), 
           (32 * stor2.length) + 96
}

function vote(uint256 arg1) payable {
    mem[64] = 96
    require uint8(stor0.field_0)
    require msg.value >= votePrice
    require ext_code.size(msg.sender) <= 0
    require msg.sender
    idx = 0
    s = 0
    while idx < stor2.length:
        _22 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        _23 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _25 = mem[_23]
        u = _23 + 32
        v = _22 + 52
        t = mem[_23]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_22 + floor32(mem[_23]) + 52] = mem[_23 + -(mem[_23] % 32) + floor32(mem[_23]) + 64 len mem[_23] % 32] or Mask(8 * -(mem[_23] % 32) + 32, -(8 * -(mem[_23] % 32) + 32) + 256, mem[_22 + floor32(mem[_23]) + 52])
        _46 = sha3(mem[_22 + 52 len _25])
        require idx < stor2.length
        mem[0] = 2
        mem[_22 + 84] = stor2[idx].field_0
        mem[_22 + 52] = 20
        mem[64] = _22 + 104
        u = _22 + 84
        v = _22 + 104
        t = 20
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_22 + 104] = mem[_22 + 96 len 20] or Mask(96, 160, mem[_22 + 104])
        if sha3(mem[_22 + 104 len 20]) != _46:
            u = _22 + 85
            v = _22 + 104
            continue 
        u = _22 + 85
        v = _22 + 105
        continue 
    require not s
    stor2.length++
    stor2[stor2.length].field_0 = msg.sender
    stor3.length++
    stor3[stor3.length].field_0 = arg1
}



}
