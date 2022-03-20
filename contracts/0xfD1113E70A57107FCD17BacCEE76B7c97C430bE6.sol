contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 425]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address headAddress;
uint256 stor1;
mapping of struct nodes;

function nodes(address arg1) payable {
    return nodes[arg1].field_0, nodes[arg1].field_256
}

function owner() payable {
    return address(owner)
}

function head() payable {
    return address(headAddress)
}

function kill() payable {
    require address(owner) == msg.sender
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function add(address arg1) payable {
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    nodes[address(arg1)].field_0 = arg1 or Mask(96, 160, nodes[address(arg1)].field_0)
    nodes[address(arg1)].field_256 = address(headAddress)
}



}
