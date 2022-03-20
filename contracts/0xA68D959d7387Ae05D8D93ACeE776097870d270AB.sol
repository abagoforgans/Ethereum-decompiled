contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 167]




// =====================  Runtime code  =====================


address senderAddress;
uint256 stor0;

function sender() payable {
    return address(senderAddress)
}

function setSender(address arg1) payable {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    call address(senderAddress) with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
