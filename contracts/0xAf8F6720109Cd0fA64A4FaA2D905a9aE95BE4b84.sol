contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 10736]




// =====================  Runtime code  =====================


address crowdsaleAddress;

function crowdsale() {
    return crowdsaleAddress
}

function _fallback() payable {
    revert
}

function createCrowdsale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    create contract with 0 wei
                    code: code.data[574 len 10119], arg1, arg2, arg3, arg4
    require create.new_address
    crowdsaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).whitelist() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}



}
