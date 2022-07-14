contract main {




// =====================  Runtime code  =====================


#
#  - getStatus(address arg1)
#  - sub_ea248649(?)
#
address adminAddress;
address owner;
address baseAddr;
address stor3;

function baseAddr() payable {
    return baseAddr
}

function owner() payable {
    return owner
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    adminAddress = arg1
}

function setContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    baseAddr = arg1
    stor3 = arg1
}

function sub_ffb845bb(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.membership(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8a88fb12(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    staticcall stor3.0x4113b61b with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_13eb44f1(?) payable {
    require calldata.size - 4 >= 64
    mem[320 len 224] = code.data[9581 len 224]
    require ext_code.size(stor3)
    staticcall stor3.0xaaf96581 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 4294967294:
        return code.data[9581 len 224]
    require ext_code.size(stor3)
    staticcall stor3.0xa3d250f5 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return code.data[9581 len 224]
    require ext_code.size(stor3)
    staticcall stor3.0xaaf96581 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = arg1
    require ext_code.size(stor3)
    staticcall stor3.spread() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while uint8(idx) < uint8(ext_call.return_data[0]):
        mem[612] = ext_call.return_data[0] - 1
        mem[644] = uint8(idx)
        require ext_code.size(stor3)
        staticcall stor3.0xc235b5b with:
                gas gas_remaining wei
               args address(arg1), arg2, ext_call.return_data[0] - 1, uint8(idx)
        mem[544 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[32]:
            require uint8(idx + 1) < 7
            mem[(32 * uint8(idx + 1)) + 320] = address(ext_call.return_data[0])
            s = 0
            while uint8(s) < uint8(ext_call.return_data[0]):
                mem[612] = ext_call.return_data[64]
                mem[644] = uint8(s)
                require ext_code.size(stor3)
                staticcall stor3.0xc235b5b with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], uint8(s)
                mem[544 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[32]:
                    require uint8(s + (2 * idx) + 3) < 7
                    mem[(32 * uint8(s + (2 * idx) + 3)) + 320] = address(ext_call.return_data[0])
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    return memory
      from 320
       len 224
}

function sub_97be8862(?) payable {
    require calldata.size - 4 >= 96
    mem[320 len 224] = code.data[9581 len 224]
    require ext_code.size(stor3)
    staticcall stor3.0xaaf96581 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        return code.data[9581 len 224]
    require ext_code.size(stor3)
    staticcall stor3.0xc235b5b with:
            gas gas_remaining wei
           args address(arg1), arg2, arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[32]:
        require ext_code.size(stor3)
        staticcall stor3.0xaaf96581 with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != arg3 + 1:
            return code.data[9581 len 224]
    mem[320] = arg1
    require ext_code.size(stor3)
    staticcall stor3.spread() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while uint8(idx) < uint8(ext_call.return_data[0]):
        mem[612] = arg3
        mem[644] = uint8(idx)
        require ext_code.size(stor3)
        staticcall stor3.0xc235b5b with:
                gas gas_remaining wei
               args address(arg1), arg2, arg3, uint8(idx)
        mem[544 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[32]:
            require uint8(idx + 1) < 7
            mem[(32 * uint8(idx + 1)) + 320] = address(ext_call.return_data[0])
            s = 0
            while uint8(s) < uint8(ext_call.return_data[0]):
                mem[612] = ext_call.return_data[64]
                mem[644] = uint8(s)
                require ext_code.size(stor3)
                staticcall stor3.0xc235b5b with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], uint8(s)
                mem[544 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[32]:
                    require uint8(s + (2 * idx) + 3) < 7
                    mem[(32 * uint8(s + (2 * idx) + 3)) + 320] = address(ext_call.return_data[0])
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    return memory
      from 320
       len 224
}



}
