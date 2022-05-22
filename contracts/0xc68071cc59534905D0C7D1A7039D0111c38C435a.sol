contract main {




// =====================  Runtime code  =====================


address sub_5daa962eAddress;
address registrarAddress;
address registrarOwner;
array of struct sub_5dabf591;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function registrarOwner() {
    return registrarOwner
}

function registrar() {
    return registrarAddress
}

function sub_5daa962e(?) {
    return sub_5daa962eAddress
}

function sub_5dabf591(?) {
    require arg1 < sub_5dabf591.length
    return sub_5dabf591[arg1].field_256
}

function sub_bd465666(?) {
    return sub_5dabf591.length
}

function sub_f4e624c5(?) {
    require arg1 < sub_5dabf591.length
    return sub_5dabf591[arg1].field_0
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == registrarOwner
    registrarOwner = arg1
}

function sub_3a70bf08(?) {
    require arg1 < sub_5dabf591.length
    if not sub_5dabf591[arg1].field_0:
        return 0
    return 1
}

function withdraw() {
    require msg.sender == registrarOwner
    call registrarOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startAuction(bytes32 arg1) payable {
    if msg.value < 1327841 * 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Eth to bid on domain.'
    require ext_code.size(registrarAddress)
    call registrarAddress.0xede8acdb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5dabf591.length++
    sub_5dabf591[sub_5dabf591.length].field_0 = arg1
    storC257[stor3.length] = msg.value
    emit 0xf2f74362: arg1, msg.value
}

function sub_ad198e59(?) {
    require msg.sender == registrarOwner
    require arg1 < sub_5dabf591.length
    if not sub_5dabf591[arg1].field_0:
        revert with 0, 'Bid already retrieved.'
    require arg1 < sub_5dabf591.length
    call registrarOwner with:
       value sub_5dabf591[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < sub_5dabf591.length
    sub_5dabf591[arg1].field_0 = 0
    sub_5dabf591[arg1].field_256 = 0
    emit 0xf5fe8b3e: sub_5dabf591[arg1].field_0, sub_5dabf591[arg1].field_256
    return sub_5dabf591[arg1].field_0, sub_5dabf591[arg1].field_256
}



}
