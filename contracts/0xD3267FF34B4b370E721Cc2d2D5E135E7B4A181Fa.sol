contract main {




// =====================  Runtime code  =====================


address _managerAddress;
address stor1;
address sub_c5d7f22eAddress;
address sub_3098557aAddress;

function sub_3098557a(?) {
    return sub_3098557aAddress
}

function sub_c5d7f22e(?) {
    return sub_c5d7f22eAddress
}

function _manager() {
    return _managerAddress
}

function _fallback() payable {
    revert
}

function withdrawTokens() {
    require sub_3098557aAddress
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    staticcall stor1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3098557aAddress)
        call sub_3098557aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require ext_call.return_data[0]
        require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3098557aAddress)
        call sub_3098557aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^6 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x23f40518: msg.sender, ext_call.return_data[0]
    return ext_call.return_data[0]
}

function recoverTokens() {
    require sub_3098557aAddress
    require ext_code.size(sub_c5d7f22eAddress)
    staticcall sub_c5d7f22eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(sub_c5d7f22eAddress)
    staticcall sub_c5d7f22eAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(sub_c5d7f22eAddress)
        call sub_c5d7f22eAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3098557aAddress)
        call sub_3098557aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x1b47a558: msg.sender, ext_call.return_data[0], 0
        emit 0x23f40518: msg.sender, 0
        return 0
    require ext_call.return_data[0]
    require 10^6 * ext_call.return_data[0] / ext_call.return_data[0] == 10^6
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(sub_c5d7f22eAddress)
    call sub_c5d7f22eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3098557aAddress)
    call sub_3098557aAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^6 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1b47a558: msg.sender, ext_call.return_data[0], 10^6 * ext_call.return_data[0]
    emit 0x23f40518: msg.sender, 10^6 * ext_call.return_data[0]
    return (10^6 * ext_call.return_data[0])
}



}
