contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 sub_0ab852e0;
mapping of uint8 stor4;

function sub_0ab852e0(?) {
    return sub_0ab852e0
}

function sub_f8704355(?) {
    return bool(stor4[msg.sender])
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function sub_1aea6257(?) {
    if msg.sender == stor0:
        return True
    return bool(stor1[msg.sender])
}

function sub_083e2eae(?) {
    require 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f == msg.sender
    sub_0ab852e0 = 0
    return sub_0ab852e0
}

function setAdministrator(bytes32 arg1, bool arg2) {
    if stor0 != msg.sender:
        require stor1[msg.sender]
    stor1[arg1] = uint8(arg2)
}

function _fallback() payable {
    if eth.balance(this.address):
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_ca5dbdb8(?) {
    require ext_code.size(0x105631c6cddba84d12fa916f0045b1f97ec9c268)
    call 0x105631c6cddba84d12fa916f0045b1f97ec9c268.0xca5dbdb8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fa6006d4(?) {
    if stor4[msg.sender]:
        return 1
    require ext_code.size(0x105631c6cddba84d12fa916f0045b1f97ec9c268)
    call 0x105631c6cddba84d12fa916f0045b1f97ec9c268.0xca5dbdb8 with:
         gas gas_remaining wei
        args sha3(msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^17:
        return -1
    else:
        return 0
}

function register() {
    if not stor4[msg.sender]:
        require ext_code.size(0x105631c6cddba84d12fa916f0045b1f97ec9c268)
        call 0x105631c6cddba84d12fa916f0045b1f97ec9c268.0xca5dbdb8 with:
             gas gas_remaining wei
            args sha3(msg.sender)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10^17:
            stor4[msg.sender] = 1
            require ext_code.size(0x573aaaa81154cd24e96f0cb97fd86110b8f6767f)
            call 0x573aaaa81154cd24e96f0cb97fd86110b8f6767f.0xb9431a2a with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
