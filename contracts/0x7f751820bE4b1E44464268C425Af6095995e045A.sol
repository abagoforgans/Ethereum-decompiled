contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 1871]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_15853113;
mapping of struct sub_39bfc4a1;

function sub_15853113(?) payable {
    require arg2 < sub_15853113[arg1].field_0
    return sub_15853113[arg1][arg2].field_0
}

function sub_39bfc4a1(?) payable {
    return uint64(sub_39bfc4a1[address(msg.sender)][arg1].field_0)
}

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function sub_0a936fe5(?) payable {
    if sub_15853113[address(msg.sender)].field_0:
        mem[160] = sub_15853113[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * sub_15853113[address(msg.sender)].field_0) + 128 > idx:
            mem[idx + 32] = sub_15853113[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_15853113[address(msg.sender)].field_0, data=mem[160 len 32 * sub_15853113[address(msg.sender)].field_0])
}

function sub_6939cd97(?) payable {
    if sub_39bfc4a1[address(msg.sender)][arg1].field_256:
        mem[160] = sub_39bfc4a1[address(msg.sender)][arg1][1].field_0
        idx = 160
        s = 0
        while sub_39bfc4a1[address(msg.sender)][arg1].field_256 + 128 > idx:
            mem[idx + 32] = sub_39bfc4a1[address(msg.sender)][arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_39bfc4a1[address(msg.sender)][arg1].field_256, data=mem[160 len sub_39bfc4a1[address(msg.sender)][arg1].field_256]), 
}

function sub_c36948b5(?) payable {
    if not sub_39bfc4a1[arg1][arg2].field_256:
        return uint64(sub_39bfc4a1[arg1][arg2].field_0), 64, sub_39bfc4a1[arg1][arg2].field_256
    mem[192] = sub_39bfc4a1[arg1][arg2][1].field_0
    idx = 192
    s = 0
    while sub_39bfc4a1[arg1][arg2].field_256 + 192 > idx + 32:
        mem[idx + 32] = sub_39bfc4a1[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return uint64(sub_39bfc4a1[arg1][arg2].field_0), 
           Array(len=sub_39bfc4a1[arg1][arg2].field_256, data=mem[192 len sub_39bfc4a1[arg1][arg2].field_256 + (floor32(sub_39bfc4a1[arg1][arg2].field_256 - 1) + -sub_39bfc4a1[arg1][arg2].field_256 + 32 % 32)])
}

function sub_fe1e3eca(?) payable {
    uint64(sub_39bfc4a1[address(msg.sender)][arg1].field_0) = 0
    sub_39bfc4a1[address(msg.sender)][arg1].field_256 = 0
    idx = 0
    while sub_39bfc4a1[address(msg.sender)][arg1].field_256 + 31 / 32 > idx:
        sub_39bfc4a1[address(msg.sender)][arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    while idx < sub_15853113[address(msg.sender)].field_0:
        require idx < stor[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64])
        if stor[sha3(mem[0]) + idx] == arg1:
            require idx < sub_15853113[address(msg.sender)].field_0
            sub_15853113[address(msg.sender)][idx].field_0 = 0
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        continue 
}

function sendMessage(address arg1, string arg2) payable {
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    while idx < sub_15853113[address(arg1)].field_0:
        require idx < stor[sha3(mem[0 len 64])]
        if stor[sha3(sha3(mem[0 len 64])) + idx] == sha3(arg2[all]):
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 1
    idx = 0
    while idx < sub_15853113[address(arg1)].field_0:
        require idx < stor[sha3(mem[0 len 64])]
        if stor[sha3(sha3(mem[0 len 64])) + idx]:
            mem[0] = arg1
            mem[32] = 1
            idx = idx + 1
            continue 
        if idx == sub_15853113[address(arg1)].field_0:
            sub_15853113[address(arg1)].field_0++
            if not sub_15853113[address(arg1)].field_0 <= sub_15853113[address(arg1)].field_0 + 1:
                mem[0] = sha3(address(arg1), 1)
                s = sub_15853113[address(arg1)].field_0 + sha3(mem[0]) + 1
                while sha3(sha3(address(arg1), 1)) + sub_15853113[address(arg1)].field_0 > s:
                    stor[s] = 0
                    mem[0] = arg1
                    mem[32] = 1
                    s = s + 1
                    continue 
        require idx < sub_15853113[address(arg1)].field_0
        sub_15853113[address(arg1)][idx].field_0 = sha3(arg2[all])
        mem[ceil32(arg2.length) + 128] = block.timestamp
        sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_0 = Mask(192, 0, sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_64)
        sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 = arg2.length
        mem[0] = sha3(sha3(arg2[all]), sha3(address(arg1), 2)) + 1
        if not arg2.length:
            idx = sha3(mem[0])
            while sha3(sha3(sha3(arg2[all]), sha3(address(arg1), 2)) + 1) + (sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 + 31 / 32) > idx:
                stor[idx] = 0
                mem[0] = arg1
                mem[32] = 1
                idx = idx + 1
                continue 
        else:
            s = sha3(mem[0])
            idx = 128
            while arg2.length + 128 > idx:
                stor[s] = mem[idx]
                mem[0] = arg1
                mem[32] = 1
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(mem[0]) + (Mask(251, 0, arg2.length + 31) >> 5)
            while sha3(sha3(sha3(arg2[all]), sha3(address(arg1), 2)) + 1) + (sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 + 31 / 32) > idx:
                stor[idx] = 0
                mem[0] = arg1
                mem[32] = 1
                idx = idx + 1
                continue 
        emit 0xa9e319c3: sha3(arg2[all]), arg1
    if idx == sub_15853113[address(arg1)].field_0:
        sub_15853113[address(arg1)].field_0++
        if not sub_15853113[address(arg1)].field_0 <= sub_15853113[address(arg1)].field_0 + 1:
            s = sub_15853113[address(arg1)].field_0 + 1
            while sub_15853113[address(arg1)].field_0 > s:
                sub_15853113[address(arg1)][s].field_0 = 0
                s = s + 1
                continue 
    require idx < sub_15853113[address(arg1)].field_0
    sub_15853113[address(arg1)][idx].field_0 = sha3(arg2[all])
    mem[ceil32(arg2.length) + 128] = block.timestamp
    sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_0 = Mask(192, 0, sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_64)
    sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 + 31 / 32 > idx:
            sub_39bfc4a1[address(arg1)][sha3(arg2[all])][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            sub_39bfc4a1[address(arg1)][sha3(arg2[all])][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 + 31 / 32 > idx:
            sub_39bfc4a1[address(arg1)][sha3(arg2[all])][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xa9e319c3: sha3(arg2[all]), arg1
}



}
