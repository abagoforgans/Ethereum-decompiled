contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1723 len 20]
    require ext_code.size(code.data[1723 len 20])
    call code.data[1723 len 20].0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 500201707171440 == ext_call.return_data[0]
    return code.data[212 len 1499]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
const contractVersion = 600201707171440


mapping of uint256 dividends;

function dividends(address arg1) {
    return dividends[arg1]
}

function withdrawDividend() {
    require dividends[address(msg.sender)]
    dividends[address(msg.sender)] = 0
    call msg.sender with:
       value dividends[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
