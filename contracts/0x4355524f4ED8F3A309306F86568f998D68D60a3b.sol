contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -600] = code.data[808 len -600]
    mem[64] = -504
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[208 len 600]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 get;

function get() payable {
    return get[0 len get.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function set(string arg1) payable {
    get[] = Array(len=arg1.length, data=arg1[all])
}



}
