contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 4771]
}



// =====================  Runtime code  =====================


address adminAddress;
address sub_6ffddcd8Address;
address sub_e6239da3Address;
address sub_f2217d91Address;
address sub_89997a96Address;
array of address sub_d53370b3;
array of address sub_a8bfd465;

function sub_6ffddcd8(?) {
    return sub_6ffddcd8Address
}

function sub_89997a96(?) {
    return sub_89997a96Address
}

function sub_a8bfd465(?) {
    require arg1 < sub_a8bfd465.length
    return address(sub_a8bfd465[arg1])
}

function sub_d53370b3(?) {
    require arg1 < sub_d53370b3.length
    return address(sub_d53370b3[arg1])
}

function sub_e6239da3(?) {
    return sub_e6239da3Address
}

function sub_f2217d91(?) {
    return sub_f2217d91Address
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert 
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit LogUpdateAdmin(arg1);
}

function sub_b65f1f8f(?) {
    require adminAddress == msg.sender
    require arg1 < sub_d53370b3.length
    address(sub_d53370b3[arg1]) = arg2
    emit 0xe4fb0470: arg1, arg2
}

function sub_455ad37f(?) {
    require adminAddress == msg.sender
    sub_6ffddcd8Address = arg1
    emit code.data[4696 len 32]: Array(len=16, data='mobilityTokenLib'), address(arg1)
}

function sub_7b169afb(?) {
    require adminAddress == msg.sender
    sub_e6239da3Address = arg1
    emit code.data[4696 len 32]: Array(len=16, data='ChargingPolesLib'), address(arg1)
}

function sub_c515aabc(?) {
    require adminAddress == msg.sender
    sub_89997a96Address = arg1
    emit code.data[4696 len 32]: Array(len=16, data='feeManagementLib'), address(arg1)
}

function setDateTimeLib(address arg1) {
    require adminAddress == msg.sender
    sub_f2217d91Address = arg1
    emit code.data[4696 len 32]: Array(len=11, data='dateTimeLib'), address(arg1)
}

function sub_7d6a0c16(?) {
    require adminAddress == msg.sender
    require arg1 < sub_a8bfd465.length
    address(sub_a8bfd465[arg1]) = arg2
    emit code.data[4696 len 32]: Array(len=24, data='chargingPriceProviderLib'), address(arg2)
}

function forward(address arg1, bytes arg2, uint256 arg3) payable {
    require adminAddress == msg.sender
    call arg1 with:
       funct call.data[0 len 4]
       value arg3 wei
         gas gas_remaining - 34050 wei
        args call.data[4 len calldata.size - 4]
    require ext_call.success
}

function sub_51755334(?) {
    require adminAddress == msg.sender
    create contract with 0 wei
                    code: code.data[4604 len 92]
    require create.new_address
    sub_6ffddcd8Address = address(create.new_address)
    sub_e6239da3Address = address(create.new_address)
    sub_f2217d91Address = address(create.new_address)
    sub_89997a96Address = address(create.new_address)
    emit 0x61b5ac35: block.timestamp
}

function sub_97bcb0fa(?) {
    require adminAddress == msg.sender
    sub_d53370b3.length++
    if not sub_d53370b3.length <= sub_d53370b3.length + 1:
        idx = sub_d53370b3.length + 1
        while sub_d53370b3.length > idx:
            uint256(sub_d53370b3[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_d53370b3[sub_d53370b3.length]) = arg1
    emit 0xe4fb0470: sub_d53370b3.length, arg1
    return sub_d53370b3.length
}

function sub_58514790(?) {
    require adminAddress == msg.sender
    require arg1 < sub_d53370b3.length
    require ext_code.size(address(sub_d53370b3[arg1]))
    call address(sub_d53370b3[arg1]).updateContract(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require adminAddress == msg.sender
    require arg1 < sub_d53370b3.length
    address(sub_d53370b3[arg1]) = arg2
    emit 0xe4fb0470: arg1, arg2
}

function sub_d2ee7b59(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_6ffddcd8Address)
    call sub_6ffddcd8Address.updateContract(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require adminAddress == msg.sender
    sub_6ffddcd8Address = arg1
    emit code.data[4696 len 32]: 0xe3db17b800000000000000000000000000000000000000000000000000000000, address(arg1), 16, 'mobilityTokenLib'
}

function sub_d6f6aa7a(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_89997a96Address)
    call sub_89997a96Address.updateContract(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require adminAddress == msg.sender
    sub_89997a96Address = arg1
    emit code.data[4696 len 32]: 0xe3db17b800000000000000000000000000000000000000000000000000000000, address(arg1), 16, 'feeManagementLib'
}

function sub_da25a1ae(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_e6239da3Address)
    call sub_e6239da3Address.updateContract(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require adminAddress == msg.sender
    sub_e6239da3Address = arg1
    emit code.data[4696 len 32]: 0xe3db17b800000000000000000000000000000000000000000000000000000000, address(arg1), 16, 'ChargingPolesLib'
}

function sub_242575b2(?) {
    require adminAddress == msg.sender
    sub_a8bfd465.length++
    if not sub_a8bfd465.length <= sub_a8bfd465.length + 1:
        idx = sub_a8bfd465.length + 1
        while sub_a8bfd465.length > idx:
            uint256(sub_a8bfd465[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_a8bfd465[sub_a8bfd465.length]) = arg1
    emit code.data[4696 len 32]: Array(len=17, data='priceProviderLibs'), address(arg1)
    return sub_a8bfd465.length
}

function sub_75d26cb0(?) {
    require adminAddress == msg.sender
    require arg1 < sub_a8bfd465.length
    require ext_code.size(address(sub_a8bfd465[arg1]))
    call address(sub_a8bfd465[arg1]).updateContract(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require adminAddress == msg.sender
    require arg1 < sub_a8bfd465.length
    address(sub_a8bfd465[arg1]) = arg2
    emit code.data[4696 len 32]: 0xe3db17b800000000000000000000000000000000000000000000000000000000, address(arg2), 24, 'chargingPriceProviderLib'
}

function sub_9959f7c5(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_6ffddcd8Address)
    call sub_6ffddcd8Address.0x9959f7c5 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_e6239da3Address)
    call sub_e6239da3Address.0x9959f7c5 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_89997a96Address)
    call sub_89997a96Address.0x9959f7c5 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    idx = 0
    while idx < sub_d53370b3.length:
        mem[0] = 5
        mem[96] = 0x9959f7c500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(address(sub_d53370b3[idx]))
        call address(sub_d53370b3[idx]).0x9959f7c5 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_a8bfd465.length:
        mem[0] = 6
        mem[96] = 0x9959f7c500000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(address(sub_a8bfd465[idx]))
        call address(sub_a8bfd465[idx]).0x9959f7c5 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        idx = idx + 1
        continue 
}



}
