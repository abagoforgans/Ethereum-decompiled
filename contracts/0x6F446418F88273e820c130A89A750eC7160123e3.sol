contract main {




// =====================  Runtime code  =====================


address coordinatorAddress;
uint256 sub_3a57042f;
mapping of struct sub_fc609c9c;
array of uint256 stor4;
mapping of struct stor5;

function coordinator() {
    return coordinatorAddress
}

function sub_3a57042f(?) {
    return sub_3a57042f
}

function sub_fc609c9c(?) {
    return sub_fc609c9c[address(arg1)]
}

function kill() {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e0000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e0000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(ext_call.return_data[12 len 20])
}

function _fallback() payable {
    revert
}

function sub_5946f473(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_3a57042f = arg1
    emit 0x290a33a6: arg1
}

function setCoordinator(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    coordinatorAddress = arg1
}

function sub_f5a8d884(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.sender == stor5[arg2].field_256
    emit 0x53a89e8e: arg2, arg3, arg1
}

function sub_58ef20fe(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.sender == stor5[arg2].field_256
    require 1 <= sub_fc609c9c[msg.sender]
    sub_fc609c9c[msg.sender]--
    stor5[arg2].field_0 = 0
    stor5[arg2].field_256 = 0
    emit 0xf9e89b2f: msg.sender, arg2, arg1
}

function withdraw(address arg1, uint256 arg2) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e0000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_df6492e0(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'subscription'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa1c5c871 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 >= sub_3a57042f
    require not stor5[arg1].field_0
    require sub_fc609c9c[msg.sender] + 1 >= sub_fc609c9c[msg.sender]
    sub_fc609c9c[msg.sender]++
    stor4[msg.sender]++
    stor4[msg.sender][stor4[msg.sender]] = arg1
    stor5[arg1].field_0 = arg1
    stor5[arg1].field_256 = msg.sender
    stor5[arg1].field_416 = arg3
    stor5[arg1].field_448 = Mask(64, 192, msg.sender) >> 192
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 0x746f6b656e0000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdf645c4e: arg1, msg.sender, Mask(32, 224, arg3), ext_call.return_data[0], arg4
}



}
