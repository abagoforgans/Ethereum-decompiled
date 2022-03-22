contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    mem[96 len -473] = code.data[834 len -473]
    mem[64] = -377
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[361 len 473]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 providerName;
array of uint256 description;

function providerName() payable {
    return providerName[0 len providerName.length]
}

function description() payable {
    return description[0 len description.length]
}

function owner() payable {
    return owner
}

function kill() payable {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}



}
