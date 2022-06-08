contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_5c58eec5;

function sub_5c58eec5(?) {
    mem[128] = sub_5c58eec5[arg1].field_0
    idx = 128
    s = 0
    while sub_5c58eec5[arg1].length + 96 > idx:
        mem[idx + 32] = sub_5c58eec5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_5c58eec5[arg1].length, data=mem[128 len sub_5c58eec5[arg1].length]), 
           sub_5c58eec5[arg1].field_256,
           sub_5c58eec5[arg1].field_512
}

function owner() {
    return owner
}

function sub_c0c45242(?) {
    return sub_5c58eec5[arg1][0 len sub_5c58eec5[arg1].length].field_0
}

function _fallback() payable {
    revert
}

function sub_9637a58e(?) {
    require msg.sender == owner
    sub_5c58eec5[arg2][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_5c58eec5[arg2].field_256 = block.timestamp
    sub_5c58eec5[arg2].field_512 = arg2
}



}
