contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 318]
}



// =====================  Runtime code  =====================


address stor0;
address sub_ee443cc7Address;
uint256 stor1;

function sub_ee443cc7(?) payable {
    return address(sub_ee443cc7Address)
}

function sub_9ab14af5(?) payable {
    if msg.sender == stor0:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function GetMoney() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function _fallback() payable {
    call address(sub_ee443cc7Address).0x9ec41faf with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args msg.sender
    require ext_call.success
}



}
