contract main {




// =====================  Runtime code  =====================


uint256 version;
address stor1;
address stor2;

function version() {
    return version
}

function _fallback() payable {
    revert
}

function sub_868b16d9(?) {
    require ext_code.size(stor1)
    call stor1.0x17444626 with:
         gas gas_remaining wei
        args address(cd[228]), address(cd[100]), cd[196]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[2141 len 15701], version, address(cd[4]), address(cd[36]), cd[68], address(cd[100]), address(cd[228]), cd[132], cd[164], address(ext_call.return_data[0]), stor2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setCrowdsale(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70480275 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 260).length:
        require address(cd[((32 * idx) + cd[260] + 36)])
        require idx < ('cd', 260).length
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x3bcdb164 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[260] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < ('cd', 260).length
        mem[96] = 0x3bcdb16400000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[260] + 36)])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3bcdb164 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[260] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70480275 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2348238c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8bad0c0a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd0934d61 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x70480275 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x2348238c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x8bad0c0a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xd0934d61 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x50c0bc8e: address(create.new_address), address(ext_call.return_data[0]), address(cd[36])
    return address(create.new_address)
}



}
