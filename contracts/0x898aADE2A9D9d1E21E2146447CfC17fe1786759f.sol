contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[1739 len 20]
    stor1 = msg.sender
    return code.data[97 len 1630]
}



// =====================  Runtime code  =====================


address sub_a498742bAddress;
address owner;

function owner() {
    return owner
}

function sub_a498742b(?) {
    return sub_a498742bAddress
}

function destory() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_6a6843c8(?) {
    require owner == msg.sender
    sub_a498742bAddress = arg1
}

function sub_62b94153(?) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_6adcf145(?) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x724ae9d0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_3f73f100(?) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd1a5f765 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function check(address arg1, uint256 arg2) {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd1a5f765 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(sub_a498742bAddress)
        call sub_a498742bAddress.0x6c41a473 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x724ae9d0 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] >= arg2:
            return 0
    return 1
}

function back() {
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd1a5f765 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x10de4436 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function sub_7d64ff9a(?) {
    require sub_a498742bAddress == msg.sender
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(sub_a498742bAddress)
    call sub_a498742bAddress.0x6c41a473 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd1a5f765 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0]:
        if ext_code.size(sub_a498742bAddress):
            call sub_a498742bAddress.0x6c41a473 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x76d5db39 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), arg2
                    if ext_call.success:
    else:
        if ext_code.size(sub_a498742bAddress):
            call sub_a498742bAddress.0x6c41a473 with:
                 gas gas_remaining - 710 wei
                args this.address
            if ext_call.success:
                if ext_code.size(address(ext_call.return_data[0])):
                    call address(ext_call.return_data[0]).0x724ae9d0 with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        require ext_call.return_data[0] < arg2
                        if ext_code.size(sub_a498742bAddress):
                            call sub_a498742bAddress.0x6c41a473 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            if ext_call.success:
                                if ext_code.size(address(ext_call.return_data[0])):
                                    call address(ext_call.return_data[0]).0x76d5db39 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), arg2
                                    if ext_call.success:
    revert
}



}
