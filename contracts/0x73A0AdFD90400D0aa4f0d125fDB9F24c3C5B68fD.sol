contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 2654]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct stor1;

function _fallback() payable {
    revert
}

function dumpCube(bytes arg1, bytes32 arg2) {
    if stor1[arg2].field_0:
        return 0
    stor1[arg2].field_0 = 1
    stor1[arg2].field_8 = 0
    stor1[arg2].field_256 = arg2
    stor1[arg2].field_512 = msg.sender
    stor1[arg2][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    return 1
}

function softDelete(bytes32 arg1) {
    idx = 480
    s = 0
    while stor1[arg1][3].length + 448 > idx:
        mem[idx + 32] = stor1[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require msg.sender == stor1[arg1].field_512
    stor1[arg1].field_8 = 1
    return 1
}

function softUndelete(bytes32 arg1) {
    idx = 480
    s = 0
    while stor1[arg1][3].length + 448 > idx:
        mem[idx + 32] = stor1[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require msg.sender == stor1[arg1].field_512
    stor1[arg1].field_8 = 0
    return 1
}

function forceEmpty(bytes32 arg1) {
    require stor0 == msg.sender
    stor1[arg1].field_0 = 0
    stor1[arg1].field_256 = 0
    stor1[arg1].field_512 = 0
    stor1[arg1].field_768 = 0
    if 31 < stor1[arg1][3].length:
        idx = 0
        while stor1[arg1][3].length + 31 / 32 > idx:
            stor1[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}

function readCube(bytes32 arg1) {
    mem[544] = stor1[arg1][3].field_0
    idx = 544
    s = 0
    while stor1[arg1][3].length + 512 > idx:
        mem[idx + 32] = stor1[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor1[arg1].field_0:
        return ''
    if stor1[arg1].field_8:
        return ''
    return Array(len=stor1[arg1][3].length, data=mem[544 len stor1[arg1][3].length])
}

function empty(bytes32 arg1) {
    idx = 480
    s = 0
    while stor1[arg1][3].length + 448 > idx:
        mem[idx + 32] = stor1[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require msg.sender == stor1[arg1].field_512
    stor1[arg1].field_0 = 0
    stor1[arg1].field_256 = 0
    stor1[arg1].field_512 = 0
    stor1[arg1].field_768 = 0
    if 31 < stor1[arg1][3].length:
        idx = 0
        while stor1[arg1][3].length + 31 / 32 > idx:
            stor1[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}



}
