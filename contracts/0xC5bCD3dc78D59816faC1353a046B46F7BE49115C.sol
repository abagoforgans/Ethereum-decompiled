contract main {




// =====================  Runtime code  =====================


mapping of address proxies;

function proxies(address arg1) {
    require calldata.size - 4 >= 32
    return proxies[arg1]
}

function _fallback() payable {
    revert
}

function build() {
    if proxies[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'multiple-proxy-per-user-not-allowed'
    create contract with 0 wei
                    code: code.data[1169 len 1957]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address), msg.sender, msg.sender);
    proxies[address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}



}
