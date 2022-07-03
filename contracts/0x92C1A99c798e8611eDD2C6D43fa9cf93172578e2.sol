contract main {




// =====================  Runtime code  =====================


#
#  - sub_ff720f0f(?)
#
mapping of address locks;

function locks(address arg1) payable {
    require calldata.size - 4 >= 32
    return locks[arg1]
}

function _fallback() payable {
    revert
}

function sub_064bf386(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + ('cd', 132).length + 36 <= calldata.size
    require msg.sender == locks[address(cd[4])]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[100] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[132] = cd[((32 * idx) + cd[68] + 36)]
        mem[164] = Mask(32, 224, cd[((32 * idx) + cd[100] + 36)])
        mem[196] = address(cd[4])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).registerScheme(address arg1, bytes32 arg2, bytes4 arg3, address arg4) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)], Mask(32, 224, cd[((32 * idx) + cd[100] + 36)]), address(cd[4])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).metaData(string arg1, address arg2) with:
         gas gas_remaining wei
        args Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length]), address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).unregisterScheme(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    locks[address(cd[4])] = 0
    emit InitialSchemesSet(address(cd[4]));
}

function sub_571084bd(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require ('cd', 68).length == ('cd', 36).length
    require ('cd', 100).length == ('cd', 36).length
    require ('cd', 36).length > 0
    require msg.sender == locks[address(cd[4])]
    idx = 0
    while idx < ('cd', 36).length:
        require address(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        if cd[((32 * idx) + cd[68] + 36)] > 0:
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 68).length
            require idx < ('cd', 36).length
            mem[100] = cd[((32 * idx) + cd[68] + 36)]
            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[164] = address(cd[4])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mintTokens(uint256 arg1, address arg2, address arg3) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[68] + 36)], address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require idx < ('cd', 100).length
        if cd[((32 * idx) + cd[100] + 36)] > 0:
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 100).length
            require idx < ('cd', 36).length
            mem[100] = cd[((32 * idx) + cd[100] + 36)]
            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[164] = address(cd[4])
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[100] + 36)], address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}
