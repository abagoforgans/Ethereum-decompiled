contract main {




// =====================  Runtime code  =====================


mapping of address proxies;

function proxies(address arg1) {
    return proxies[arg1]
}

function _fallback() payable {
    revert
}

function sub_05049c7f(?) {
    create contract with 0 wei
                    code: code.data[777 len 5593], address(arg1), address(arg2), msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    proxies[address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}



}
