contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 sub_0bdebf70;
address stor3;
address stor4;
address stor5;
uint256 stor6;
mapping of struct stor7;

function sub_0bdebf70(?) {
    return sub_0bdebf70
}

function sub_f89ec9ca(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6++
    if stor6 < 3:
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_06912e63(?) {
    return stor0, stor1
}

function sub_6e8ba0b2(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    return stor4
}

function sub_d1293495(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    return stor5
}

function sub_7944eea8(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(arg1)].field_512:
        return 0
    return 1
}

function sub_3e7e5c35(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor5 = arg1
}

function sub_b9fcb1f2(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6 = 0
    stor4 = arg1
}

function sub_0b06cd60(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6 = 0
    sub_0bdebf70 = arg1
}

function sub_c81c03e6(?) {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6 = 0
    stor0 = arg1
    stor1 = arg2
}

function sub_c7b0be4e(?) {
    require calldata.size - 4 >= 32
    if not stor7[address(arg1)].field_512:
        return 0
    return address(arg1), stor7[address(arg1)].field_256, stor7[address(arg1)].field_0
}

function sub_1d4926f4(?) payable {
    if stor7[address(msg.sender)].field_512:
        revert with 0, 'Permissions are exist.'
    if msg.value < sub_0bdebf70:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe4170706c7945786368616e6765417574682056616c7565206973206c657373207468616e206d696e696d756d206c696d6974,
                    mem[215 len 13]
    stor7[address(msg.sender)].field_0 = block.timestamp
    stor7[address(msg.sender)].field_256 = msg.value
    stor7[address(msg.sender)].field_512 = msg.sender
    require stor1
    call stor4 with:
       value (stor1 * msg.value) - (stor0 * msg.value) / stor1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        call stor5 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x4be2a3d1: msg.sender, msg.value, block.timestamp
}



}
