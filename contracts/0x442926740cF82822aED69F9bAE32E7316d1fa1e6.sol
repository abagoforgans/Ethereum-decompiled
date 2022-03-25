contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xda4a4626d3e16e094de3225a751aab7128e96526
    return code.data[81 len 1181]
}



// =====================  Runtime code  =====================


const mainDAO = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413


address trusteeAddress;

function trustee() {
    return trusteeAddress
}

function _fallback() payable {
    revert 
}

function trusteeWithdraw() {
    require ext_code.size(0xbb9bc244d798123fde783fcc1c72d3bb8c189413)
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0xbb9bc244d798123fde783fcc1c72d3bb8c189413)
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    call trusteeAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdraw() {
    require ext_code.size(0xbb9bc244d798123fde783fcc1c72d3bb8c189413)
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(0xbb9bc244d798123fde783fcc1c72d3bb8c189413)
    call 0xbb9bc244d798123fde783fcc1c72d3bb8c189413.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
