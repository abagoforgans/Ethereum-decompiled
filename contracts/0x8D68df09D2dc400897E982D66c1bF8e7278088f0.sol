contract main {




// =====================  Runtime code  =====================


mapping of address sub_79ab6eba;
mapping of address sub_f0fddc94;
address stor2;

function sub_79ab6eba(?) {
    require calldata.size - 4 >= 32
    return sub_79ab6eba[arg1]
}

function sub_f0fddc94(?) {
    require calldata.size - 4 >= 32
    return sub_f0fddc94[arg1]
}

function _fallback() payable {
    revert
}

function sub_ac814490(?) {
    require calldata.size - 4 >= 96
    if not arg1:
        if sub_79ab6eba[arg2] != msg.sender:
            revert with 0, 'Part is not owned by requester'
        sub_79ab6eba[arg2] = arg3
        emit 0x6a67eae6: arg2, arg3
    else:
        if arg1 == 1:
            if sub_f0fddc94[arg2] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Product is not owned by requester'
            sub_f0fddc94[arg2] = arg3
            emit 0xe2d5b74e: arg2, arg3
            require ext_code.size(stor2)
            call stor2.0x6e730329 with:
                 gas gas_remaining wei
                args arg2
            mem[288 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            idx = 0
            while idx < 6:
                mem[0] = mem[(32 * idx) + 288]
                mem[32] = 0
                sub_79ab6eba[mem[(32 * idx) + 288]] = arg3
                emit 0x6a67eae6: mem[(32 * idx) + 288], arg3
                idx = idx + 1
                continue 
    return 0
}

function sub_7db5a2bc(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        mem[96] = 0x8c431b9f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0x8c431b9f with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 128
        require uint32(arg2), mem[132 len 28] <= 4294967296
        require uint32(arg2), mem[132 len 28] + 32 <= return_data.size
        require mem[uint32(arg2), mem[132 len 28] + 96] <= 4294967296 and uint32(arg2), mem[132 len 28] + mem[uint32(arg2), mem[132 len 28] + 96] + 32 <= return_data.size
        require mem[160] <= 4294967296
        require mem[160] + 32 <= return_data.size
        require mem[mem[160] + 96] <= 4294967296 and mem[160] + mem[mem[160] + 96] + 32 <= return_data.size
        require mem[192] <= 4294967296
        require mem[192] + 32 <= return_data.size
        require mem[mem[192] + 96] <= 4294967296 and mem[192] + mem[mem[192] + 96] + 32 <= return_data.size
        if sub_79ab6eba[arg2]:
            revert with 0, 'Part was already registered'
        if Mask(160, 32, arg2) >> 32 != msg.sender:
            revert with 0, 'Part was not made by requester'
        sub_79ab6eba[arg2] = msg.sender
        emit 0x6a67eae6: arg2, msg.sender
    else:
        if arg1 == 1:
            mem[96] = 0x7905439100000000000000000000000000000000000000000000000000000000
            mem[100] = arg2
            require ext_code.size(stor2)
            staticcall stor2.0x79054391 with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 128
            require uint32(arg2), mem[132 len 28] <= 4294967296
            require uint32(arg2), mem[132 len 28] + 32 <= return_data.size
            require mem[uint32(arg2), mem[132 len 28] + 96] <= 4294967296 and uint32(arg2), mem[132 len 28] + mem[uint32(arg2), mem[132 len 28] + 96] + 32 <= return_data.size
            require mem[160] <= 4294967296
            require mem[160] + 32 <= return_data.size
            require mem[mem[160] + 96] <= 4294967296 and mem[160] + mem[mem[160] + 96] + 32 <= return_data.size
            require mem[192] <= 4294967296
            require mem[192] + 32 <= return_data.size
            require mem[mem[192] + 96] <= 4294967296 and mem[192] + mem[mem[192] + 96] + 32 <= return_data.size
            if sub_f0fddc94[arg2]:
                revert with 0, 'Product was already registered'
            if Mask(160, 32, arg2) >> 32 != msg.sender:
                revert with 0, 'Product was not made by requester'
            sub_f0fddc94[arg2] = msg.sender
            emit 0xe2d5b74e: arg2, msg.sender
    return 0
}



}
