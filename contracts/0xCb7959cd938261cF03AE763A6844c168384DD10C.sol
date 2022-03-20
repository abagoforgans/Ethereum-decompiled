contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 590]




// =====================  Runtime code  =====================


mapping of uint256 alias;
mapping of address addr;

function getAddr(bytes32 arg1) payable {
    return address(addr[arg1])
}

function getAlias(address arg1) payable {
    return alias[address(arg1)]
}

function _fallback() payable {
  stop
}

function sub_dce9a3fb(?) payable {
    require not address(addr[arg1])
    require arg1
    alias[address(msg.sender)] = arg1
    uint256(addr[arg1]) = msg.sender or Mask(96, 160, uint256(addr[arg1]))
}



}
