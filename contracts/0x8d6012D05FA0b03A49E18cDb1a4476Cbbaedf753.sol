contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x2eff027cccb465e81700acd89727998c06e08d01
    stor2 = code.data[1475 len 32]
    return code.data[167 len 1308]
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
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function sub_be170c29(?) payable {
    require msg.sender == address(owner)
    sub_01bc7742 = arg1
}

function _fallback() payable {
    call address(hotWalletAddress) with:
       value msg.value wei
         gas 0 wei
}

function setHotWallet(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_66698774(?) payable {
    require msg.sender == address(owner)
    call address(hotWalletAddress) with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
