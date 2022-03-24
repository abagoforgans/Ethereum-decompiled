contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[106 len 1452]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
address confirmedAddress;
uint256 stor2;

function confirmed() payable {
    return address(confirmedAddress)
}

function destroy() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function dummy() payable {
  stop
}

function _fallback() payable {
  stop
}

function disable() payable {
    if stor0 != msg.sender:
        return 0
    address(stor1) = 0
    address(confirmedAddress) = stor0
    return 1
}

function sendAll() payable {
    call address(confirmedAddress) with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function sub_6634c5a2(?) payable {
    call address(confirmedAddress) with:
       value eth.balance(this.address) / 3 wei
         gas 0 wei
    require ext_call.success
}

function confirm() payable {
    if address(stor1) != msg.sender:
        return 0
    address(stor1) = 0
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    return 1
}

function enable(address arg1) payable {
    if stor0 != msg.sender:
        return 0
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    address(confirmedAddress) = stor0
    return 1
}



}
