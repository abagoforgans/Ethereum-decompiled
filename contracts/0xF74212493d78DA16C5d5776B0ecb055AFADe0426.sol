contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 686]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
  stop
}

function unregister(bytes32 arg1) payable {
    if not stor0[arg1].field_512:
        return 0
    if stor0[arg1].field_0 != msg.sender:
        return 0
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    idx = 0
    while stor0[arg1].field_256 + 31 / 32 > idx:
        stor0[arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    stor0[arg1].field_512 = 0
    return 1
}

function domain(bytes32 arg1) payable {
    if not stor0[arg1].field_256:
        return stor0[arg1].field_0, 96, stor0[arg1].field_512, stor0[arg1].field_256
    mem[224] = stor0[arg1][1].field_0
    idx = 224
    s = 0
    while stor0[arg1].field_256 + 224 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1].field_256, data=mem[224 len stor0[arg1].field_256 + (floor32(stor0[arg1].field_256 - 1) + -stor0[arg1].field_256 + 32 % 32)]),
           stor0[arg1].field_512
}

function register(bytes32 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if stor0[arg1].field_512:
        return 0
    mem[ceil32(arg2.length) + 128] = msg.sender
    stor0[arg1].field_0 = stor0[arg1].field_160
    stor0[arg1].field_256 = arg2.length
    if not arg2.length:
        idx = 0
        while stor0[arg1].field_256 + 31 / 32 > idx:
            stor0[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            stor0[arg1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor0[arg1].field_256 + 31 / 32 > idx:
            stor0[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor0[arg1].field_512 = 1
    return 1
}



}
