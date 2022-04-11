contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1097]




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;

function _fallback() payable {
    revert
}

function sub_547ef043(?) {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768, stor0[arg1].field_1024
}

function sub_798766a2(?) {
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           bool(stor0[arg1].field_1184)
}

function sub_59d17459(?) {
    require bool(stor0[arg1].field_1184) != 1
    stor0[arg1].field_0 = arg2
    stor0[arg1].field_256 = arg3
    stor0[arg1].field_512 = arg4
    stor0[arg1].field_768 = arg5
    stor0[arg1].field_1024 = msg.sender
    stor0[arg1].field_1184 = 1
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor1.length].field_0 = arg1
    return 1
}

function sub_de6cb14c(?) {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor1.length) + 160] = 32
    mem[(32 * stor1.length) + 192] = stor1.length
    if Mask(251, 0, stor1.length):
        mem[(32 * stor1.length) + 224] = mem[160]
        mem[(32 * stor1.length) + 256 len floor32((32 * stor1.length) - 1)] = mem[192 len floor32((32 * stor1.length) - 1)]
    return Array(len=stor1.length, data=mem[(32 * stor1.length) + 224 len 32 * stor1.length])
}



}
