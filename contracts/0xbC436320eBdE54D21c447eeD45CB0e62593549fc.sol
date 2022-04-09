contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0x1111111111111111111111111111111111111111
    stor3 = 10^15
    require not msg.value
    stor0 = code.data[2034 len 20]
    stor1 = code.data[2066 len 20]
    return code.data[295 len 1727]
}



// =====================  Runtime code  =====================


address sub_441b4974Address;
address founderAddress;
address allocationAddress;
uint256 price;
mapping of uint256 balanceOf;

function sub_441b4974(?) {
    return sub_441b4974Address
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function price() {
    return price
}

function allocationAddress() {
    return allocationAddress
}

function getPrice() {
    require ext_code.size(sub_441b4974Address)
    call sub_441b4974Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args allocationAddress
    require ext_call.success
    if ext_call.return_data[0] >= 0:
        price = 2 * 10^15
        if ext_call.return_data[0] >= 1000000 * 10^18:
            price = 17 * 10^14
            if ext_call.return_data[0] >= 2000000 * 10^18:
                price = 12 * 10^14
                if ext_call.return_data[0] >= 3000000 * 10^18:
                    price = 10^15
    return 1
}

function _fallback() payable {
    require ext_code.size(sub_441b4974Address)
    call sub_441b4974Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args allocationAddress
    require ext_call.success
    if ext_call.return_data[0] >= 0:
        price = 2 * 10^15
        if ext_call.return_data[0] >= 1000000 * 10^18:
            price = 17 * 10^14
            if ext_call.return_data[0] >= 2000000 * 10^18:
                price = 12 * 10^14
                if ext_call.return_data[0] >= 3000000 * 10^18:
                    price = 10^15
    require price > 0
    require price
    require msg.value == (price * msg.value / price) + (msg.value % price)
    call founderAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(founderAddress, msg.value, 0);
    require ext_code.size(sub_441b4974Address)
    call sub_441b4974Address.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / price
    require ext_call.success
}



}
