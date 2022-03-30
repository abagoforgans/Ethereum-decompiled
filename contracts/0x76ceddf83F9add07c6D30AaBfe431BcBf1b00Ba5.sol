contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() {
    stor2 = 0
    return code.data[38 len 877]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor2;

function _fallback() payable {
    revert
}

function sub_48d46d97(?) {
    stor0[stor2][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor2].field_0 = block.timestamp
    stor2++
}

function getData(uint256 arg1) {
    mem[160] = stor0[arg1][1].field_0
    idx = 160
    s = 0
    while stor0[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][1].length) + 192] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][1].length) + 160] = 64
    mem[ceil32(stor0[arg1][1].length) + 224] = stor0[arg1][1].length
    if stor0[arg1][1].length:
        mem[ceil32(stor0[arg1][1].length) + 256] = mem[160]
        mem[ceil32(stor0[arg1][1].length) + 288 len floor32(stor0[arg1][1].length - 1)] = mem[192 len floor32(stor0[arg1][1].length - 1)]
    return Array(len=stor0[arg1][1].length, data=mem[ceil32(stor0[arg1][1].length) + 256 len stor0[arg1][1].length]), 
           stor0[arg1].field_0
}



}
