contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 657]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 ipfsHash;

function owner() payable {
    return address(owner)
}

function ipfsHash() payable {
    return ipfsHash[0 len ipfsHash.length]
}

function _fallback() payable {
  stop
}

function publish(string arg1) payable {
    require msg.sender == address(owner)
    ipfsHash[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}



}
