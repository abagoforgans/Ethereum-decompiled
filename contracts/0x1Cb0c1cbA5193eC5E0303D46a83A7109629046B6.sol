contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x55d1554b08a5311c5c0a0b6464162192f9d2f884
    return code.data[57 len 623]
}



// =====================  Runtime code  =====================


const mainDAO = 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479


address trusteeAddress;

function trustee() payable {
    return trusteeAddress
}

function _fallback() payable {
  stop
}

function trusteeWithdraw() payable {
    call 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479.0x18160ddd with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    call trusteeAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function withdraw() payable {
    call 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call 0x5d2b2e6fcbe3b11d26b525e085ff818dae332479.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 0 wei
    require ext_call.success
}



}
