contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[54 len 887]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
mapping of address stor2;
mapping of uint8 stor3;
mapping of uint256 sub_1c3b6aa5;
mapping of struct sub_ab7237a7;

function sub_1c3b6aa5(?) {
    return sub_1c3b6aa5[arg1]
}

function sub_ab7237a7(?) {
    return sub_ab7237a7[arg1].field_0, sub_ab7237a7[arg1].field_256, sub_ab7237a7[arg1].field_512
}

function sub_31ffe612(?) payable {
    require msg.value <= 0
    if stor3[address(msg.sender)]:
        require sub_1c3b6aa5[address(msg.sender)] > 0
        call msg.sender with:
           value sub_1c3b6aa5[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
}

function sub_dcb2b9ca(?) payable {
    require stor3[address(msg.sender)]
    require msg.value <= 0
    if block.timestamp >= sub_ab7237a7[address(msg.sender)].field_512:
        sub_1c3b6aa5[address(msg.sender)] += sub_ab7237a7[address(msg.sender)].field_0
        sub_ab7237a7[address(msg.sender)].field_256 = block.timestamp
        sub_ab7237a7[address(msg.sender)].field_512 = block.timestamp + 60
}

function _fallback() payable {
    require msg.value >= 10^15
    call stor1 with:
       value 10^14 wei
         gas 0 wei
    call msg.sender with:
       value msg.value - 10^15 wei
         gas 2300 * is_zero(value) wei
    stor3[address(msg.sender)] = 1
    stor0++
    stor2[stor0] = msg.sender
    sub_ab7237a7[address(msg.sender)].field_0 = 10^14
    sub_ab7237a7[address(msg.sender)].field_256 = block.timestamp
    sub_ab7237a7[address(msg.sender)].field_512 = block.timestamp + 3600
}



}
