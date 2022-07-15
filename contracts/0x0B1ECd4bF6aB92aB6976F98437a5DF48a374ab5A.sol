contract main {




// =====================  Runtime code  =====================


address sub_e1c6c96fAddress;
address sub_220f89d4Address;

function sub_220f89d4(?) {
    return sub_220f89d4Address
}

function sub_e1c6c96f(?) {
    return sub_e1c6c96fAddress
}

function _fallback() payable {
    revert
}

function sub_85a0e59d(?) payable {
    create contract with 0 wei
                    code: code.data[989 len 17301], address(arg1), address(arg2), msg.sender, sub_e1c6c96fAddress, sub_220f89d4Address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6603f0ae: address(create.new_address)
    return address(create.new_address)
}



}
