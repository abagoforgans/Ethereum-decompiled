contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 1
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = code.data[674 len 32]
    return code.data[143 len 531]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor3;

function _fallback() payable {
  stop
}

function sub_35bc88b1(?) payable {
    if msg.sender == stor1:
        call arg1 with:
           value arg2 wei
             gas 0 wei
    stor3 = gas_remaining
}

function sub_ebb17bc0(?) payable {
    if msg.sender == stor1:
        call stor0.sendMoney() with:
           value arg1 wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    stor3 = gas_remaining
}



}
