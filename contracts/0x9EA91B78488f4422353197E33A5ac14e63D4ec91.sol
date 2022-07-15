contract main {




// =====================  Runtime code  =====================


address sub_dda25d28Address;
uint256 sub_48884000;
address adminWalletAddress;
address sub_f90ef4acAddress;

function adminWallet() {
    return adminWalletAddress
}

function sub_48884000(?) {
    return sub_48884000
}

function sub_dda25d28(?) {
    return sub_dda25d28Address
}

function sub_f90ef4ac(?) {
    return sub_f90ef4acAddress
}

function setAdminWallet(address arg1) {
    require msg.sender == adminWalletAddress
    adminWalletAddress = arg1
}

function setOperatorWallet(address arg1) {
    require msg.sender == adminWalletAddress
    sub_f90ef4acAddress = arg1
}

function sub_50b380dd(?) {
    if sub_f90ef4acAddress != msg.sender:
        require msg.sender == adminWalletAddress
    sub_48884000 = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == sub_dda25d28Address
    emit 0x8504ba62: address(arg1), arg2
}

function _fallback() payable {
    require msg.value > 0
    require msg.value
    require sub_48884000 * msg.value / msg.value == sub_48884000
    emit 0x8504ba62: msg.sender, sub_48884000 * msg.value
}

function sendEther(address arg1, uint256 arg2) {
    require msg.sender == adminWalletAddress
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_9ef2a72e(?) {
    if sub_f90ef4acAddress != msg.sender:
        require msg.sender == adminWalletAddress
    require ext_code.size(sub_dda25d28Address)
    call sub_dda25d28Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_7438584f(?) {
    s = 0
    idx = 0
    while idx < arg1:
        mem[96 len 693] = code.data[1516 len 693]
        mem[789] = this.address
        mem[821] = sub_dda25d28Address
        create contract with 0 wei
                        code: code.data[1516 len 693], address(this.address), sub_dda25d28Address
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = address(create.new_address)
        emit 0x6eb1ceff: address(create.new_address)
        s = create.new_address
        idx = idx + 1
        continue 
}



}
