contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_48d0214bAddress;
address sub_a26a66eeAddress;
address adminAddress;
address sub_022d8ac1Address;
uint256 sub_451f0f23;
uint256 sub_74fcbb28;
uint8 sub_4f8fea3b;
uint8 sub_34cb7ab3; offset 8
uint256 stor8; offset 8
uint256 sub_404d5217;
uint256 sub_21f45851;

function sub_022d8ac1(?) payable {
    return sub_022d8ac1Address
}

function sub_21f45851(?) payable {
    return sub_21f45851
}

function sub_34cb7ab3(?) payable {
    return bool(sub_34cb7ab3)
}

function sub_404d5217(?) payable {
    return sub_404d5217
}

function sub_451f0f23(?) payable {
    return sub_451f0f23
}

function sub_48d0214b(?) payable {
    return sub_48d0214bAddress
}

function sub_4f8fea3b(?) payable {
    return bool(sub_4f8fea3b)
}

function sub_74fcbb28(?) payable {
    return sub_74fcbb28
}

function sub_a26a66ee(?) payable {
    return sub_a26a66eeAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_5ef5bbe5(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    stor0 = arg1
}

function sub_706f88bc(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    sub_a26a66eeAddress = arg1
}

function sub_a186fe1c(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    sub_48d0214bAddress = arg1
}

function sub_ea66c52b(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    sub_022d8ac1Address = arg1
}

function changeadmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    adminAddress = arg1
}

function sub_19804d84(?) payable {
    require msg.sender == adminAddress
    if not sub_34cb7ab3:
        stor8 = 1
    else:
        if bool(sub_34cb7ab3) == 1:
            stor8 = 0
}

function sub_fcddc1e0(?) payable {
    require msg.sender == adminAddress
    if not sub_4f8fea3b:
        sub_4f8fea3b = 1
    else:
        if bool(sub_4f8fea3b) == 1:
            sub_4f8fea3b = 0
}

function sub_a7b2819c(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require arg2 > arg1
    require arg1
    require arg2
    sub_404d5217 = arg1
    sub_21f45851 = arg2
}

function sub_cbddebdb(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require arg2 > arg1
    require sub_451f0f23
    require sub_74fcbb28
    sub_451f0f23 = arg1
    sub_74fcbb28 = arg2
}

function sub_69c1faef(?) payable {
    require calldata.size - 4 >= 32
    require not sub_4f8fea3b
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_a26a66eeAddress, 10^6 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x700af5ef: 10^6 * arg1, msg.sender, Array(len=3, data='FSC')
    return 10^6 * arg1, msg.sender, 'FSC'
}

function sub_f788acfc(?) payable {
    require calldata.size - 4 >= 32
    require not sub_4f8fea3b
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_48d0214bAddress, 10^6 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x2ffbfac4: 10^6 * arg1, msg.sender, Array(len=3, data='FSG')
    return 10^6 * arg1, msg.sender, 'FSG'
}

function payout(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == sub_022d8ac1Address
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args sub_a26a66eeAddress, address(arg2), (10^6 * arg1) - (10000 * arg1 * arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x323851f1: sub_a26a66eeAddress, address(arg2), (10^6 * arg1) - (10000 * arg1 * arg3)
    return sub_a26a66eeAddress, address(arg2), (10^6 * arg1) - (10000 * arg1 * arg3)
}



}
