contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1135]




// =====================  Runtime code  =====================


uint256 sub_9a743b8d;
array of struct sub_0291dbda;

function sub_0291dbda(?) payable {
    return sub_0291dbda[arg1][0 len sub_0291dbda[arg1].length].field_0
}

function sub_061b7640(?) payable {
    return sub_9a743b8d
}

function sub_70e84f9e(?) payable {
    mem[192] = sub_0291dbda[arg1].field_0
    idx = 192
    s = 0
    while sub_0291dbda[arg1].length + 192 > idx + 32:
        mem[idx + 32] = sub_0291dbda[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_0291dbda[arg1].length, data=mem[192 len sub_0291dbda[arg1].length + (floor32(sub_0291dbda[arg1].length - 1) + -sub_0291dbda[arg1].length + 32 % 32)]), 
           sub_0291dbda[arg1].field_256
}

function sub_9a743b8d(?) payable {
    return sub_9a743b8d
}

function sub_d9a5b16e(?) payable {
    mem[160] = sub_0291dbda[arg1].field_0
    idx = 160
    s = 0
    while sub_0291dbda[arg1].length + 160 > idx + 32:
        mem[idx + 32] = sub_0291dbda[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_0291dbda[arg1].length, data=mem[160 len sub_0291dbda[arg1].length]), sub_0291dbda[arg1].field_256
}

function _fallback() payable {
  stop
}

function sub_2e2e584a(?) payable {
    sub_9a743b8d++
    sub_0291dbda[stor0][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_0291dbda[stor0].field_256 = block.timestamp
    return sub_9a743b8d
}



}
