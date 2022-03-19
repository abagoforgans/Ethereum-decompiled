contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -474] = code.data[835 len -474]
    mem[64] = -378
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[361 len 474]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 ask;
array of uint256 reply;

function ask() payable {
    return ask[0 len ask.length]
}

function reply() payable {
    return reply[0 len reply.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
