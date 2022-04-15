contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function sweep(address arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.sweeperOf(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    delegate address(ext_call.return_data[0]) with:
       funct call.data[0 len 4]
         gas gas_remaining - 710 wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return bool(delegate.return_data[0])
}



// =====================  Runtime code  =====================




}
