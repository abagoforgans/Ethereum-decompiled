contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = 0xb7c4b016e044b09980ebfc4966af8b2995ca237c
    stor2 = code.data[597 len 32]
    return code.data[94 len 503]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address hotWalletAddress;
uint256 stor1;
uint256 sub_01bc7742;

function sub_01bc7742(?) payable {
    return sub_01bc7742
}

function hotWallet() payable {
    return address(hotWalletAddress)
}

function owner() payable {
    return address(owner)
}

function kill() payable {
    require address(owner) == msg.sender
    selfdestruct(address(owner))
}

function sub_be170c29(?) payable {
    require address(owner) == msg.sender
    sub_01bc7742 = arg1
}

function _fallback() payable {
    call address(hotWalletAddress) with:
       value msg.value wei
         gas 0 wei
}

function setHotWallet(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_66698774(?) payable {
    require address(owner) == msg.sender
    call address(hotWalletAddress) with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
