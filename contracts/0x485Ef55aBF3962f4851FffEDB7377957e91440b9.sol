contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[592 len 2546]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = 416772 * 3600
    stor3 = 2800
    require not msg.value
    stor0 = msg.sender
    return code.data[156 len 436]
}



// =====================  Runtime code  =====================


address stor0;
address tokenAddress;

function token() {
    return tokenAddress
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
}



}
