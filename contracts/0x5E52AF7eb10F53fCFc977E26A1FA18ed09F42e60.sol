contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[536 len 32]
    return code.data[69 len 467]
}



// =====================  Runtime code  =====================


address owner;
address tokenContractAddress;

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function balance() payable {
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sweep() payable {
    require owner == msg.sender
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args owner, ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0, ext_call.return_data[0]
    return 1, ext_call.return_data[0]
}



}
