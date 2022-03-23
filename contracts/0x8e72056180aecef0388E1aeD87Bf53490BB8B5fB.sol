contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x8197a236bd44b2173ce44b09d1c417cba150ad25
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[72 len 165]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function Kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function execute() payable {
    call stor1.0x5b6b431d with:
         gas gas_remaining - 25050 wei
        args 1234
}



}
