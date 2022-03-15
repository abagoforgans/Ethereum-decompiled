contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1377]




// =====================  Runtime code  =====================


mapping of struct sub_39bfc4a1;
array of struct stor1;

function sub_39bfc4a1(?) payable {
    return uint64(sub_39bfc4a1[address(msg.sender)][arg1].field_0)
}

function _fallback() payable {
  stop
}

function sub_0a936fe5(?) payable {
    if stor1[address(msg.sender)].field_0:
        mem[160] = stor1[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * stor1[address(msg.sender)].field_0) + 128 > idx:
            mem[idx + 32] = stor1[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1[address(msg.sender)].field_0, data=mem[160 len 32 * stor1[address(msg.sender)].field_0])
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
    while idx < stor1[address(msg.sender)].field_0:
        require idx < stor[sha3(mem[0 len 64])]
        mem[0] = sha3(mem[0 len 64])
        if stor[sha3(mem[0]) + idx] == arg1:
            require idx < stor1[address(msg.sender)].field_0
            stor1[address(msg.sender)][idx].field_0 = 0
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        continue 
}

function sendMessage(address arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    if uint64(sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_0) != 0:
    mem[ceil32(arg2.length) + 128] = block.timestamp
    sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_0 = Mask(192, 0, sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_64)
    sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_39bfc4a1[address(arg1)][sha3(arg2[all])].field_256 + 31 / 32 > idx:
            sub_39bfc4a1[address(arg1)][sha3(arg2[all])][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        emit 0xa9e319c3: sha3(arg2[all]), arg1
        require var12001 < stor1[address(arg1)].field_0
        if stor[sha3(var14002) + var14001]:
            # nil
        else:
            require var14003 < stor1[address(arg1)].field_0
            stor1[address(arg1)][var14003].field_0 = sha3(arg2[all])
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
        require var15001 < stor1[address(arg1)].field_0
        if stor[sha3(var17002) + var17001]:
            # nil
        else:
            require var17003 < stor1[address(arg1)].field_0
            stor1[address(arg1)][var17003].field_0 = sha3(arg2[all])
}



}
