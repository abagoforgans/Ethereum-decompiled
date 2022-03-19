contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[227 len 32]
    return code.data[66 len 161]
}



// =====================  Runtime code  =====================


address sub_07efbf2eAddress;
address sub_ea9b05f5Address;

function sub_07efbf2e(?) payable {
    return sub_07efbf2eAddress
}

function sub_ea9b05f5(?) payable {
    return sub_ea9b05f5Address
}

function _fallback() payable {
  stop
}

function request() payable {
    if sub_07efbf2eAddress == msg.sender:
        call sub_07efbf2eAddress with:
           value eth.balance(this.address) wei
             gas 0 wei
}



}
