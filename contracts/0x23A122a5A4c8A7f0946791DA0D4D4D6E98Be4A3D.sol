contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 0
    require not msg.value
    return code.data[82 len 4259]
}



// =====================  Runtime code  =====================


const platform = 0x709a0a8deb88a2d19dab2492f669ef26fd176f

const isPlatform = (msg.sender == 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f)

const sub_a2fc633e(?) = 0x3baa300530b7104b8fd4ee82ea155d26476de164


uint8 stor0;
address sub_2fb793e7Address; offset 8
address sub_c36dbf08Address;
address sub_91ae4f2fAddress;
address sub_4bd67a4aAddress;

function sub_2fb793e7(?) {
    return sub_2fb793e7Address
}

function sub_4bd67a4a(?) {
    return sub_4bd67a4aAddress
}

function stopped() {
    return bool(stor0)
}

function sub_91ae4f2f(?) {
    return sub_91ae4f2fAddress
}

function sub_c36dbf08(?) {
    return sub_c36dbf08Address
}

function _fallback() payable {
    revert
}

function emergencyStop() {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    stor0 = 1
}

function sub_0f8e4757(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    sub_c36dbf08Address = arg1
}

function sub_466543eb(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    sub_4bd67a4aAddress = arg1
}

function sub_62aee1ea(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    sub_91ae4f2fAddress = arg1
}

function sub_afe80e85(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    sub_2fb793e7Address = arg1
}

function sub_714adf68(?) {
    require ext_code.size(sub_c36dbf08Address)
    call sub_c36dbf08Address.0xa035b1fe with:
         gas gas_remaining wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_987a4a0b(?) {
    require ext_code.size(sub_4bd67a4aAddress)
    call sub_4bd67a4aAddress.0xa035b1fe with:
         gas gas_remaining wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_a1781abf(?) {
    require ext_code.size(sub_91ae4f2fAddress)
    call sub_91ae4f2fAddress.0xa035b1fe with:
         gas gas_remaining wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_b634078e(?) {
    require ext_code.size(sub_2fb793e7Address)
    call sub_2fb793e7Address.0xa035b1fe with:
         gas gas_remaining wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_89ba6589(?) payable {
    require not stor0
    require sub_91ae4f2fAddress
    require ext_code.size(sub_91ae4f2fAddress)
    call sub_91ae4f2fAddress.createContract() with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 3
    return address(ext_call.return_data[0])
}

function sub_9d7e2977(?) payable {
    require not stor0
    require sub_2fb793e7Address
    require ext_code.size(sub_2fb793e7Address)
    call sub_2fb793e7Address.createContract() with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 1
    return address(ext_call.return_data[0])
}

function sub_c4fd65a2(?) payable {
    require not stor0
    require sub_4bd67a4aAddress
    require ext_code.size(sub_4bd67a4aAddress)
    call sub_4bd67a4aAddress.createContract() with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 4
    return address(ext_call.return_data[0])
}

function sub_d3d9cae4(?) payable {
    require not stor0
    require sub_c36dbf08Address
    require ext_code.size(sub_c36dbf08Address)
    call sub_c36dbf08Address.createContract() with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 2
    return address(ext_call.return_data[0])
}

function sub_014c423a(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    require not stor0
    require sub_c36dbf08Address
    require ext_code.size(sub_c36dbf08Address)
    call sub_c36dbf08Address.0x5520e9ad with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 2
    return address(ext_call.return_data[0])
}

function sub_3e179d26(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    require not stor0
    require sub_91ae4f2fAddress
    require ext_code.size(sub_91ae4f2fAddress)
    call sub_91ae4f2fAddress.0x5520e9ad with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 3
    return address(ext_call.return_data[0])
}

function sub_61c01c3b(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    require not stor0
    require sub_2fb793e7Address
    require ext_code.size(sub_2fb793e7Address)
    call sub_2fb793e7Address.0x5520e9ad with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 1
    return address(ext_call.return_data[0])
}

function sub_9d26821f(?) {
    require 0x78000000000000000000000000709a0a8deb88a2d19dab2492f669ef26fd176f == msg.sender
    require not stor0
    require sub_4bd67a4aAddress
    require ext_code.size(sub_4bd67a4aAddress)
    call sub_4bd67a4aAddress.0x5520e9ad with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(0x3baa300530b7104b8fd4ee82ea155d26476de164)
    call 0x3baa300530b7104b8fd4ee82ea155d26476de164.0x51992fcb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    require ext_call.success
    emit 0xe63da987: address(ext_call.return_data[0]), msg.sender, 4
    return address(ext_call.return_data[0])
}



}
