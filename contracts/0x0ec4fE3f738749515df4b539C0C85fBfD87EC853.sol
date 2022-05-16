contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
array of struct sub_adaa650b;
mapping of uint256 stor3;

function owner() {
    return owner
}

function sub_adaa650b(?) {
    require msg.sender == owner
    require arg1 < stor1
    require arg1 >= 1
    mem[128] = sub_adaa650b[arg1][2].field_0
    idx = 128
    s = 0
    while sub_adaa650b[arg1][2].length + 96 > idx:
        mem[idx + 32] = sub_adaa650b[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_adaa650b[arg1].field_0, 
           sub_adaa650b[arg1].field_256,
           Array(len=sub_adaa650b[arg1][2].length, data=mem[128 len sub_adaa650b[arg1][2].length])
}

function _fallback() payable {
    revert
}

function sub_db5753ac(?) {
    require msg.sender == owner
    return (stor1 - 1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_e12688f4(?) {
    require msg.sender == owner
    require not stor3[arg1]
    stor1++
    stor3[arg1] = stor1
    sub_adaa650b[stor1].field_0 = arg1
    sub_adaa650b[stor1].field_256 = arg2
    sub_adaa650b[stor1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    return stor1
}

function sub_f3818c29(?) {
    require stor3[arg1] < stor1
    require stor3[arg1] >= 1
    mem[128] = sub_adaa650b[stor3[arg1]][2].field_0
    idx = 128
    s = 0
    while sub_adaa650b[stor3[arg1]][2].length + 96 > idx:
        mem[idx + 32] = sub_adaa650b[stor3[arg1]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor3[arg1], 
           sub_adaa650b[stor3[arg1]].field_256,
           Array(len=sub_adaa650b[stor3[arg1]][2].length, data=mem[128 len sub_adaa650b[stor3[arg1]][2].length])
}



}
