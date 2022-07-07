contract main {




// =====================  Runtime code  =====================


const sub_80c60de9(?) = not ext_code.size(address(sha3(0, address(this.address), msg.sender, sha3(code.data[4378 len 1256]))))

const sub_bb36e10e(?) = address(sha3(0, address(this.address), msg.sender, sha3(code.data[4378 len 1256])))


function _fallback() payable {
    revert
}

function sub_67e3cb94(?) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, address(arg1), sha3(code.data[4378 len 1256])))
}

function sub_569e0d29(?) payable {
    require calldata.size - 4 >= 32
    return not ext_code.size(address(sha3(0, this.address, address(arg1), sha3(code.data[4378 len 1256]))))
}

function deployWallet() payable {
    create2 contract with 0 wei
                    salt: msg.sender
                    code: code.data[4378 len 1256]
    require ext_code.size(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xca3d1598 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deployed(address(create2.new_address), msg.sender);
    return address(create2.new_address)
}

function sub_ef0a9a4e(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0xd23e2f482005a90fc2b8dcdd58affc05d5776cb7)
    staticcall 0xd23e2f482005a90fc2b8dcdd58affc05d5776cb7.0xcb8d406f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[348 len 0] = None
    signer = erecover(sha3(mem[348 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, msg.sender, arg2, block.gasprice, arg1)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    create2 contract with 0 wei
                    salt: signer
                    code: code.data[4378 len 1256]
    require ext_code.size(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xc8f05381 with:
         gas gas_remaining wei
        args address(signer), msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deployed(address(create2.new_address), address(signer));
    return address(create2.new_address)
}

function sub_f0300e9c(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(0xd23e2f482005a90fc2b8dcdd58affc05d5776cb7)
    staticcall 0xd23e2f482005a90fc2b8dcdd58affc05d5776cb7.0xcb8d406f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[400 len 0] = None
    signer = erecover(sha3(mem[400 len 4], Mask(192, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, msg.sender, arg2, arg3, block.gasprice, arg1, arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    create2 contract with 0 wei
                    salt: signer
                    code: code.data[4378 len 1256]
    require ext_code.size(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xc8f05381 with:
         gas gas_remaining wei
        args address(signer), msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xf0fcc6bb with:
         gas gas_remaining wei
        args address(arg3), arg4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Deployed(address(create2.new_address), address(signer));
    return address(create2.new_address)
}



}
