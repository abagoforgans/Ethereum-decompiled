contract main {




// =====================  Runtime code  =====================


address stor0;
address masterAddress;
uint256 deadline;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of address stor5;
uint256 sub_6a9852b1;
uint8 sub_88137bb7;
uint8 sub_869e3c50; offset 8

function deadline() {
    return deadline
}

function sub_6a9852b1(?) {
    return sub_6a9852b1
}

function sub_869e3c50(?) {
    return sub_869e3c50
}

function sub_88137bb7(?) {
    return sub_88137bb7
}

function masterAddress() {
    return masterAddress
}

function _fallback() payable {
    revert
}

function sub_41a89c0c(?) {
    require msg.sender == stor0
    require block.timestamp > deadline
    call msg.sender with:
       value uint8(sub_88137bb7 - sub_869e3c50) * sub_6a9852b1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function kick(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require block.timestamp > deadline
    require ext_code.size(stor5[address(arg1)])
    call stor5[address(arg1)].0xab2abfcc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[31 len 1]
    stor4[address(arg1)] = 0
    require sub_869e3c50 > 0
    sub_869e3c50 = uint8(sub_869e3c50 - 1)
}

function sub_cb61a9b0(?) {
    require stor4[address(msg.sender)]
    require not stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 1
    require ext_code.size(stor5[address(msg.sender)])
    call stor5[address(msg.sender)].0xab2abfcc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[31 len 1] > 0
    call msg.sender with:
       value sub_6a9852b1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6209b82d(?) payable {
    require calldata.size - 4 >= 96
    require block.timestamp < deadline
    require not stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 1
    sub_869e3c50 = uint8(sub_869e3c50 + 1)
    require sub_869e3c50 <= sub_88137bb7
    require ext_code.size(masterAddress)
    call masterAddress.0xc9ffe7bd with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5[address(msg.sender)] = address(ext_call.return_data[0])
}



}
