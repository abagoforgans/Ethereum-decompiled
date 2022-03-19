contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[863 len 32]
    return code.data[135 len 728]
}



// =====================  Runtime code  =====================


address stor0;
address proxyAddress;
uint256 stor1;

function getProxy() payable {
    require msg.sender == stor0
    return address(proxyAddress)
}

function kill() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function updateProxy(address arg1) payable {
    require msg.sender == stor0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function _fallback() payable {
    require msg.value
    call address(proxyAddress) with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}



}
