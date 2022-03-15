contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1726]




// =====================  Runtime code  =====================


array of struct sub_39bfc4a1;
array of struct sub_15853113;
uint256 t;

function hash() payable {
    return t
}

function sub_15853113(?) payable {
    require arg2 < sub_15853113[arg1].field_0
    return sub_15853113[arg1][arg2].field_0
}

function sub_39bfc4a1(?) payable {
    return uint64(sub_39bfc4a1[address(msg.sender)][arg1].field_0)
}

function t() payable {
    return t
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
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    t = sha3(arg2[all])
    sub_39bfc4a1.length = block.timestamp or Mask(192, 64, sub_39bfc4a1.length)
    sub_15853113.length = arg2.length
    if not arg2.length:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        while (sub_15853113.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = 128
        while arg2.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg2.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (sub_15853113.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    uint64(sub_39bfc4a1[address(arg1)][stor2].field_0) = uint64(sub_39bfc4a1.length)
    sub_39bfc4a1[address(arg1)][stor2].field_256 = sub_15853113.length
    if not sub_15853113.length:
        idx = 0
        while sub_39bfc4a1[address(arg1)][stor2].field_256 + 31 / 32 > idx:
            sub_39bfc4a1[address(arg1)][stor2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while sub_15853113.length + 31 / 32 > idx:
            sub_39bfc4a1[address(arg1)][stor2][s + 1].field_0 = sub_15853113[idx].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = sub_15853113.length + 31 / 32
        while sub_39bfc4a1[address(arg1)][stor2].field_256 + 31 / 32 > idx:
            sub_39bfc4a1[address(arg1)][stor2][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xa9e319c3: t, arg1
    require sub_15853113[address(arg1)].field_0 < sub_15853113[address(arg1)].field_0
    sub_15853113[address(arg1)][sub_15853113[address(arg1)].field_0].field_0 = t
}



}
