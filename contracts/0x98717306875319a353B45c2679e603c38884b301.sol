contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor2 = 0x6d7e96df6e0893de21de580635291f0543a54998
    require not msg.value
    create contract with 0 wei
                    code: code.data[1470 len 5162]
    require create.new_address
    stor0 = address(create.new_address)
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor2, 300000 * 10^18
    require ext_call.success
    require stor1 + 300000 * 10^18 >= stor1
    stor1 += 300000 * 10^18
    return code.data[585 len 885]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 distributed;
address stor2;

function distributed() {
    return distributed
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    require msg.sender
    if msg.value > 10^18:
        require msg.value <= 10^18
    else:
        require msg.value >= 10^16
    require distributed < 1000000 * 10^18
    if msg.value:
        require msg.value
        require 100 * msg.value / msg.value == 100
    require distributed + (100 * msg.value) >= distributed
    distributed += 100 * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 100 * msg.value
    require ext_call.success
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
