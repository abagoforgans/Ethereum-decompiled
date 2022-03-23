contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[288 len 32]
    return code.data[68 len 220]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function sub_bc38c332(?) payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function _fallback() payable {
    call stor1.0x8261192e with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args address(msg.sender), 0
    require ext_call.success
}



}
