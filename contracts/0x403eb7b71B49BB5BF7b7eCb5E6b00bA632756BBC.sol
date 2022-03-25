contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    mem[96 len -1435] = code.data[1829 len -1435]
    mem[64] = -1339
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = mem[96]
    stor2 = mem[128]
    stor3 = mem[160]
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[394 len 1435]
}



// =====================  Runtime code  =====================


address owner;
address sub_33259941Address;
address sub_e1a01e67Address;
uint256 sub_e9949ed2;
array of uint256 sub_f1fe2ea0;

function sub_33259941(?) payable {
    return sub_33259941Address
}

function owner() payable {
    return owner
}

function sub_e1a01e67(?) payable {
    return sub_e1a01e67Address
}

function sub_e9949ed2(?) payable {
    return sub_e9949ed2
}

function sub_f1fe2ea0(?) payable {
    return sub_f1fe2ea0[0 len sub_f1fe2ea0.length]
}

function sub_93980360(?) payable {
    if owner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_12fe1d58(?) payable {
    if msg.sender == owner:
        sub_e9949ed2 = arg1
        sub_f1fe2ea0[] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 288] = mem[ceil32(arg2.length) + 318 len 2]
    return Array(len=2, data=mem[ceil32(arg2.length) + 288])
}



}
