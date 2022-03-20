contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 100 * 10^18
    stor2 = 0xb7c4b016e044b09980ebfc4966af8b2995ca237c
    return code.data[87 len 618]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 sub_adc3aea8;
address coldWalletAddress;
uint256 stor2;

function coldWallet() payable {
    return address(coldWalletAddress)
}

function owner() payable {
    return address(owner)
}

function sub_adc3aea8(?) payable {
    return sub_adc3aea8
}

function kill() payable {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function sub_a8d0cfff(?) payable {
    require address(owner) == msg.sender
    sub_adc3aea8 = arg1
}

function setColdWallet(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function rebalance() payable {
    require address(owner) == msg.sender
    if eth.balance(this.address) > sub_adc3aea8:
        call address(coldWalletAddress) with:
           value eth.balance(this.address) - sub_adc3aea8 wei
             gas 0 wei
}

function send(uint256 arg1, address arg2) payable {
    require address(owner) == msg.sender
    if eth.balance(this.address) > sub_adc3aea8:
        call address(coldWalletAddress) with:
           value eth.balance(this.address) - sub_adc3aea8 wei
             gas 0 wei
    if arg1 <= sub_adc3aea8:
        call arg2 with:
           value arg1 wei
             gas 0 wei
}



}
