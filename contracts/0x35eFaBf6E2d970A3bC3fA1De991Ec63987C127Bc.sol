contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
address stor5;
address stor6;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[1710 len 3546]
    require create.new_address
    stor3 = address(create.new_address)
    stor4 = code.data[5268 len 20]
    stor5 = code.data[5300 len 20]
    stor6 = code.data[5332 len 20]
    return code.data[220 len 1490]
}



// =====================  Runtime code  =====================


address owner;
address sub_0af600d6Address;
address sub_ee36e31bAddress;
address tokenAddress;
address sub_0169d68aAddress;
address sub_dffd4cc9Address;
address sub_b8d4286eAddress;

function sub_0169d68a(?) {
    return sub_0169d68aAddress
}

function sub_0af600d6(?) {
    return sub_0af600d6Address
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function sub_b8d4286e(?) {
    return sub_b8d4286eAddress
}

function sub_dffd4cc9(?) {
    return sub_dffd4cc9Address
}

function sub_ee36e31b(?) {
    return sub_ee36e31bAddress
}

function destroy(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function sub_5bfac7da(?) {
    require owner == msg.sender
    sub_ee36e31bAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function sub_55870233(?) {
    require tokenAddress == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x79f32945: arg2, arg1
    return 0
}

function sub_3d8b7692(?) {
    require owner == msg.sender
    if sub_0af600d6Address:
        require ext_code.size(sub_0af600d6Address)
        call sub_0af600d6Address.0xb84693f9 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    sub_0af600d6Address = arg1
}

function _fallback() payable {
    require ext_code.size(sub_0af600d6Address)
    call sub_0af600d6Address.buyTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    call sub_0169d68aAddress with:
       value 16 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    call sub_dffd4cc9Address with:
       value 16 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    call sub_b8d4286eAddress with:
       value 16 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
}



}
