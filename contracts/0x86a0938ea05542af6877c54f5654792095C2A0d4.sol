contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -557] = code.data[765 len -557]
    mem[64] = -461
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[208 len 557]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 userName;
mapping of struct services;

function services(address arg1) payable {
    return services[arg1].field_0, services[arg1].field_256, services[arg1].field_512
}

function userName() payable {
    return userName[0 len userName.length]
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

function registerToProvider(address arg1) payable {
    require owner == msg.sender
    services[address(arg1)].field_0 = 1
    services[address(arg1)].field_256 = block.timestamp
    services[address(arg1)].field_512 = 0
}



}
