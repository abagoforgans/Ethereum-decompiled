contract main {




// =====================  Runtime code  =====================


address owner;
uint256 ratio;
address sub_edaf1a0dAddress;
address stor3;
address sub_5faf5107Address;
address stor5;

function sub_5faf5107(?) payable {
    return sub_5faf5107Address
}

function ratio() payable {
    return ratio
}

function owner() payable {
    return owner
}

function sub_edaf1a0d(?) payable {
    return sub_edaf1a0dAddress
}

function destroy() payable {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_8f34c362(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor3 = arg1
}

function sub_dcee4dfb(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5 = arg1
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    ratio = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3679bf61(?) payable {
    require ext_code.size(sub_edaf1a0dAddress)
    staticcall sub_edaf1a0dAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No allowance set'
    require ratio > 0
    require ratio
    require ext_code.size(sub_edaf1a0dAddress)
    staticcall sub_edaf1a0dAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x50557365722068617320696e73756666696369656e7420616d6f756e74206f66205645,
                    mem[199 len 29]
    require ext_code.size(sub_5faf5107Address)
    staticcall sub_5faf5107Address.0x70a08231 with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] / ratio:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x5445786368616e67652068617320696e73756666696369656e7420616d6f756e74206f66204243,
                    mem[203 len 25]
    require ext_code.size(sub_edaf1a0dAddress)
    call sub_edaf1a0dAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_5faf5107Address)
    call sub_5faf5107Address.0x23b872dd with:
         gas gas_remaining wei
        args stor5, msg.sender, ext_call.return_data[0] / ratio
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7481cb33(?) payable {
    require ext_code.size(sub_5faf5107Address)
    staticcall sub_5faf5107Address.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No allowance set'
    if not ext_call.return_data[0]:
        require ext_code.size(sub_5faf5107Address)
        staticcall sub_5faf5107Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x50557365722068617320696e73756666696369656e7420616d6f756e74206f66204243,
                        mem[199 len 29]
        require ext_code.size(sub_edaf1a0dAddress)
        staticcall sub_edaf1a0dAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe45786368616e67652068617320696e73756666696369656e7420616d6f756e74206f66205645,
                        mem[203 len 25]
        require ext_code.size(sub_5faf5107Address)
        call sub_5faf5107Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_edaf1a0dAddress)
        call sub_edaf1a0dAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor3, msg.sender, 0
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * ratio / ext_call.return_data[0] == ratio
        require ext_code.size(sub_5faf5107Address)
        staticcall sub_5faf5107Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x50557365722068617320696e73756666696369656e7420616d6f756e74206f66204243,
                        mem[199 len 29]
        require ext_code.size(sub_edaf1a0dAddress)
        staticcall sub_edaf1a0dAddress.0x70a08231 with:
                gas gas_remaining wei
               args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] * ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe45786368616e67652068617320696e73756666696369656e7420616d6f756e74206f66205645,
                        mem[203 len 25]
        require ext_code.size(sub_5faf5107Address)
        call sub_5faf5107Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor5, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_edaf1a0dAddress)
        call sub_edaf1a0dAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor3, msg.sender, ext_call.return_data[0] * ratio
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
