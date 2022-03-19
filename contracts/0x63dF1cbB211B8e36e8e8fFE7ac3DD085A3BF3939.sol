contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 100
    stor4 = 3
    stor0 = 1
    stor5 = tx.origin or Mask(96, 160, stor5)
    return code.data[96 len 3267]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function kill() payable {
    selfdestruct(stor5)
}

function _fallback() payable {
    revert 
}

function sub_503f2203(?) payable {
    stor1[tx.origin] = 0
    stor0--
    call tx.origin with:
       value stor1[tx.origin] wei
         gas 0 wei
    return 1
}

function sub_92640037(?) payable {
    if stor1[tx.origin]:
        stor1[tx.origin] += msg.value
    else:
        stor1[tx.origin] = msg.value
        stor0++
    return 1
}

function sub_6303cfdc(?) payable {
    stor2[arg1[all]][arg2][arg3][tx.origin].field_0 = 1
    stor2[arg1[all]][arg2][arg3][tx.origin].field_256 = arg3
    stor2[arg1[all]][arg2][arg3][tx.origin][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[arg1[all]][arg2][arg3][tx.origin].field_768 = arg2
    stor2[arg1[all]][arg2][arg3][tx.origin].field_1024 = tx.origin or Mask(96, 160, stor2[arg1[all]][arg2][arg3][tx.origin].field_1024)
    stor2[arg1[all]][arg2][arg3][tx.origin].field_1280 = 0
    stor2[arg1[all]][arg2][arg3][tx.origin].field_1536 = 0
    stor2[arg1[all]][arg2][arg3][tx.origin].field_1792 = 0
    stor2[arg1[all]][arg2][arg3][tx.origin].field_2048 = 0
    emit 0x1356eb81: Array(len=arg1.length, data=arg1[all]), arg2, sha3(arg1[all], arg2, arg3, tx.origin)
    return sha3(arg1[all], arg2, arg3, tx.origin)
}

function sub_91571387(?) payable {
    if stor1[tx.origin] < stor3:
        return 0
    mem[96 len arg2.length] = arg2[all]
    if stor2[arg1][9][sha3(arg2[all])].field_0:
        stor2[arg1][9][sha3(arg2[all])].field_512++
        stor2[arg1][10][sha3(arg2[all])].field_0++
        if not stor2[arg1][10][sha3(arg2[all])].field_0 <= stor2[arg1][10][sha3(arg2[all])].field_0 + 1:
            idx = stor2[arg1][10][sha3(arg2[all])].field_0 + 1
            while stor2[arg1][10][sha3(arg2[all])].field_0 > idx:
                stor2[arg1][10][sha3(arg2[all])][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor2[arg1][10][sha3(arg2[all])][stor2[arg1][10][sha3(arg2[all])].field_0].field_0 = tx.origin or Mask(96, 160, stor2[arg1][10][sha3(arg2[all])][stor2[arg1][10][sha3(arg2[all])].field_0].field_0)
        stor2[arg1].field_1280++
        if stor2[arg1][9][sha3(arg2[all])].field_512 > stor2[arg1].field_2048:
            stor2[arg1].field_2048 = stor2[arg1][9][sha3(arg2[all])].field_512
            stor2[arg1].field_1792 = sha3(arg2[all])
        if stor2[arg1].field_1280 >= stor4:
            if stor2[arg1].field_0:
                stor2[arg1].field_0 = 0
                mem[228] = stor2[arg1][9][stor2[arg1].field_1792][1].field_0
                idx = 228
                s = 0
                while stor2[arg1][9][stor2[arg1].field_1792][1].length + 228 > idx + 32:
                    mem[idx + 32] = stor2[arg1][9][stor2[arg1].field_1792][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor2[arg1].field_1024.0x7c5f5908 with:
                     gas gas_remaining - 25050 wei
                    args stor2[arg1].field_256, arg1, Array(len=stor2[arg1][9][stor2[arg1].field_1792][1].length, data=mem[228 len stor2[arg1][9][stor2[arg1].field_1792][1].length + (floor32(stor2[arg1][9][stor2[arg1].field_1792][1].length - 1) + -stor2[arg1][9][stor2[arg1].field_1792][1].length + 32 % 32)])
                require ext_call.success
                idx = 0
                while idx < stor2[arg1][10][stor2[arg1].field_1792].field_0:
                    require idx < stor2[arg1][10][stor2[arg1].field_1792].field_0
                    call stor2[arg1][10][stor2[arg1].field_1792][idx].field_0 with:
                       value stor2[arg1].field_768 / stor2[arg1][9][stor2[arg1].field_1792].field_512 wei
                         gas 0 wei
                    mem[0] = stor2[arg1].field_1792
                    mem[32] = sha3(arg1, 2) + 10
                    idx = idx + 1
                    continue 
    else:
        stor2[arg1][9][sha3(arg2[all])].field_0 = 1
        stor2[arg1][9][sha3(arg2[all])][1][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor2[arg1][9][sha3(arg2[all])].field_512 = 1
        stor2[arg1][10][sha3(arg2[all])].field_0++
        if not stor2[arg1][10][sha3(arg2[all])].field_0 <= stor2[arg1][10][sha3(arg2[all])].field_0 + 1:
            idx = stor2[arg1][10][sha3(arg2[all])].field_0 + 1
            while stor2[arg1][10][sha3(arg2[all])].field_0 > idx:
                stor2[arg1][10][sha3(arg2[all])][idx].field_0 = 0
                idx = idx + 1
                continue 
        stor2[arg1][10][sha3(arg2[all])][stor2[arg1][10][sha3(arg2[all])].field_0].field_0 = tx.origin or Mask(96, 160, stor2[arg1][10][sha3(arg2[all])][stor2[arg1][10][sha3(arg2[all])].field_0].field_0)
        stor2[arg1].field_1536++
        stor2[arg1].field_1280++
        if stor2[arg1][9][sha3(arg2[all])].field_512 > stor2[arg1].field_2048:
            stor2[arg1].field_2048 = stor2[arg1][9][sha3(arg2[all])].field_512
            stor2[arg1].field_1792 = sha3(arg2[all])
        if stor2[arg1].field_1280 >= stor4:
            if stor2[arg1].field_0:
                stor2[arg1].field_0 = 0
                mem[ceil32(arg2.length) + 356] = stor2[arg1][9][stor2[arg1].field_1792][1].field_0
                idx = ceil32(arg2.length) + 356
                s = 0
                while ceil32(arg2.length) + stor2[arg1][9][stor2[arg1].field_1792][1].length + 356 > idx + 32:
                    mem[idx + 32] = stor2[arg1][9][stor2[arg1].field_1792][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor2[arg1].field_1024.0x7c5f5908 with:
                     gas gas_remaining - 25050 wei
                    args stor2[arg1].field_256, arg1, Array(len=stor2[arg1][9][stor2[arg1].field_1792][1].length, data=mem[ceil32(arg2.length) + 356 len stor2[arg1][9][stor2[arg1].field_1792][1].length + (floor32(stor2[arg1][9][stor2[arg1].field_1792][1].length - 1) + -stor2[arg1][9][stor2[arg1].field_1792][1].length + 32 % 32)])
                require ext_call.success
                idx = 0
                while idx < stor2[arg1][10][stor2[arg1].field_1792].field_0:
                    require idx < stor2[arg1][10][stor2[arg1].field_1792].field_0
                    call stor2[arg1][10][stor2[arg1].field_1792][idx].field_0 with:
                       value stor2[arg1].field_768 / stor2[arg1][9][stor2[arg1].field_1792].field_512 wei
                         gas 0 wei
                    mem[0] = stor2[arg1].field_1792
                    mem[32] = sha3(arg1, 2) + 10
                    idx = idx + 1
                    continue 
    return 1
}



}
