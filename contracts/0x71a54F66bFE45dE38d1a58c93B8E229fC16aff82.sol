contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 556]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_d1e57e9c;

function sub_d1e57e9c(?) {
    return sub_d1e57e9c[arg1 << 248].field_0, sub_d1e57e9c[arg1 << 248].field_256, sub_d1e57e9c[arg1 << 248].field_512
}

function kill() {
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function get() {
    mem[288] = mem[315 len 5]
    return Array(len=5, data=mem[288]), stor0
}

function sub_951ea498(?) {
    if stor0 == msg.sender:
        sub_d1e57e9c[arg1 << 248].field_0 = arg2 or Mask(248, 8, sub_d1e57e9c[arg1 << 248].field_0)
}

function sub_14078d3e(?) {
    if stor0 == msg.sender:
        sub_d1e57e9c[arg1 << 248].field_0 = 0
        sub_d1e57e9c[arg1 << 248].field_256 = arg2
        sub_d1e57e9c[arg1 << 248].field_512 = 1000 * block.timestamp or Mask(192, 64, sub_d1e57e9c[arg1 << 248].field_512)
}



}
