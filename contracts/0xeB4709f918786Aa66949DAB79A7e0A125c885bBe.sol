contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor1 = 0xb38880e1d4133f3fa753e55e743162d5d7c8246e
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0xb38880e1d4133f3fa753e55e743162d5d7c8246e
    return code.data[95 len 324]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    call stor2.0xefcceaa5 with:
         gas gas_remaining - 25050 wei
        args msg.value
    require ext_call.success
    require ext_call.return_data[0] >= msg.value
    call stor1 with:
       funct Mask(32, 224, sha3('PublicBet(address,bool)')) >> 224
       value msg.value wei
         gas gas_remaining - 34050 wei
        args msg.sender, 1
}



}
