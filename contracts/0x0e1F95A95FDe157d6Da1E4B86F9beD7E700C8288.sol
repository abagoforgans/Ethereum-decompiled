contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xda4a4626d3e16e094de3225a751aab7128e96526
    return code.data[57 len 623]
}



// =====================  Runtime code  =====================


const mainDAO = 0x4deb0033bb26bc534b197e61d19e0733e5679784


address trusteeAddress;

function trustee() payable {
    return trusteeAddress
}

function _fallback() payable {
  stop
}

function trusteeWithdraw() payable {
    call 0x4deb0033bb26bc534b197e61d19e0733e5679784.0x18160ddd with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call 0x4deb0033bb26bc534b197e61d19e0733e5679784.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    call trusteeAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function withdraw() payable {
    call 0x4deb0033bb26bc534b197e61d19e0733e5679784.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call 0x4deb0033bb26bc534b197e61d19e0733e5679784.0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 0 wei
    require ext_call.success
}



}
