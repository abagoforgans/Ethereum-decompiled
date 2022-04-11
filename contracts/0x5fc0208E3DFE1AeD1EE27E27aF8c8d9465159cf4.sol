contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor6;
address stor7;

function _fallback() payable {
    stor3 = 0
    stor7 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor1 = 112 * 10^6
    stor6 = stor7
    stor4 = msg.sender
    stor2 = 10^18
    stor0 = stor2 / 1000
    return code.data[335 len 1666]
}



// =====================  Runtime code  =====================


uint256 minPrice;
uint256 sold;
uint256 stor2;
uint256 sub_5e5de579;
address stor4;
mapping of uint256 balance;
address stor6;

function sub_5e5de579(?) {
    return sub_5e5de579
}

function getSold() {
    return sold
}

function getMinPrice() {
    return minPrice
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function killContract() {
    if stor4 != msg.sender:
    selfdestruct(stor4)
}

function setMinPrice(uint256 arg1) {
    if stor4 == msg.sender:
        minPrice = arg1
}

function _fallback() payable {
    sub_5e5de579 = 1
    if msg.value < minPrice:
        sub_5e5de579 = 2
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_5e5de579 = 3
        revert
    if not sold:
        sub_5e5de579 = 2
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_5e5de579 = 3
        revert
    sub_5e5de579 = 4
    require stor2
    sub_5e5de579 = 5
    if sold < 14000 * msg.value / stor2:
        sub_5e5de579 = 6
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_5e5de579 = 7
        revert
    sub_5e5de579 = 8
    sold -= 14000 * msg.value / stor2
    sub_5e5de579 = 9
    require ext_code.size(stor6)
    call stor6.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor4, msg.sender, 14000 * msg.value / stor2
    require ext_call.success
    if not ext_call.return_data[0]:
        sub_5e5de579 = 10
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_5e5de579 = 11
        revert
    sub_5e5de579 = 12
    balance[address(msg.sender)] = 14000 * msg.value / stor2
    sub_5e5de579 = 13
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_5e5de579 = 14
}



}
