contract main {




// =====================  Runtime code  =====================


const sub_02360b20(?) = 18

const sub_c039708b(?) = 1000000000000000000 * 10^18


address priceFeedAddress;

function priceFeed() {
    return priceFeedAddress
}

function _fallback() payable {
    revert
}

function read() {
    require ext_code.size(priceFeedAddress)
    call priceFeedAddress.0x57de26a4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (1000000000000000000 * 10^18 / ext_call.return_data[0])
}



}
