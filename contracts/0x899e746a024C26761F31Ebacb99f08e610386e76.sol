contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    uint8(stor1.field_160) = 1
    stor2 = block.timestamp
    stor4 = 0
    stor5 = 853608 * 10^12
    stor6 = 110079510
    require not msg.value
    return code.data[129 len 1033]
}



// =====================  Runtime code  =====================


const sub_7c53ab85(?) = eth.balance(this.address)


address sub_b1c96056Address;
uint8 stor1; offset 160
address sub_be2bc53eAddress;
uint256 sub_2de2a846;
uint256 sub_9c84c5aa;
uint256 value;
uint256 startprice;
uint256 stor6;

function sub_2de2a846(?) {
    return sub_2de2a846
}

function get_age() {
    return sub_9c84c5aa
}

function get_value() {
    return value
}

function value() {
    return value
}

function owner() {
    return sub_b1c96056Address
}

function sub_9c84c5aa(?) {
    return sub_9c84c5aa
}

function startprice() {
    return startprice
}

function sub_b1c96056(?) {
    return sub_b1c96056Address
}

function sub_be2bc53e(?) {
    return sub_be2bc53eAddress
}

function _fallback() payable {
    revert 
}

function sub_e2b783f2(?) {
    require sub_be2bc53eAddress == msg.sender
    startprice = arg1
    stor6 = arg2
}

function sub_4d415704(?) {
    sub_9c84c5aa = block.timestamp - sub_2de2a846
    value = (block.timestamp * stor6) - (sub_2de2a846 * stor6) + startprice
}

function Purchase() payable {
    require value <= msg.value
    call msg.sender with:
       value msg.value - value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_b1c96056Address = msg.sender
    if bool(stor1) == 1:
        call sub_be2bc53eAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor1 = 0
}



}
