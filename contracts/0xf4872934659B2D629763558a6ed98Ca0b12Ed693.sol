contract main {




// =====================  Runtime code  =====================


address owner;
address landContractAddress;

function landContract() {
    return landContractAddress
}

function owner() {
    return owner
}

function remove() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_b74f7ded(?) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    landContractAddress = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer to null address is not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_69620ff6(?) {
    mem[100] = arg1
    require ext_code.size(landContractAddress)
    call landContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(landContractAddress)
        call landContractAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            require ext_code.size(landContractAddress)
            call landContractAddress.0x6352211e with:
                 gas gas_remaining wei
                args 0
            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == arg1:
                require 0 < ext_call.return_data[0]
                mem[128] = 0
        mem[(32 * ext_call.return_data[0]) + 128] = 32
        mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    else:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[2687 len 32 * ext_call.return_data[0]]
        require ext_code.size(landContractAddress)
        call landContractAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 >= ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 128] = 32
            mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = code.data[2687 len floor32(ext_call.return_data[0])]
        else:
            require ext_code.size(landContractAddress)
            call landContractAddress.0x6352211e with:
                 gas gas_remaining wei
                args 0
            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != arg1:
                mem[(32 * ext_call.return_data[0]) + 128] = 32
                mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = code.data[2687 len floor32(ext_call.return_data[0])]
            else:
                require 0 < ext_call.return_data[0]
                mem[128] = 0
                mem[(32 * ext_call.return_data[0]) + 128] = 32
                mem[(32 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
                mem[(32 * ext_call.return_data[0]) + 192 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    return memory
      from (32 * ext_call.return_data[0]) + 128
       len (96 * ext_call.return_data[0]) + 64
}



}
