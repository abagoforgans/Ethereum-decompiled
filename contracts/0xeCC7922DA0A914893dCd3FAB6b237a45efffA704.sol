contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() {
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'GRX ICO 1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'GRX1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 1
    return code.data[447 len 3320]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 stor3;
mapping of struct orders;
mapping of uint256 sub_0858830b;

function name() {
    return name[0 len name.length]
}

function sub_0858830b(?) {
    return sub_0858830b[arg1]
}

function saleIsOpen() {
    return bool(stor3)
}

function getName() {
    return name[0 len name.length]
}

function isSaleOpen() {
    return bool(stor3)
}

function orders(address arg1, uint256 arg2) {
    return orders[arg1][arg2].field_0, orders[arg1][arg2].field_256
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function openSale(bool arg1) {
    require msg.sender == owner
    stor3 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function order(address arg1, uint256 arg2) {
    return arg2, orders[address(arg1)][arg2].field_256, orders[address(arg1)][arg2].field_0
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdrawn(arg2, arg1);
}

function placeOrder(address arg1, uint256 arg2) payable {
    require stor3
    call owner with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_0858830b[address(arg1)]++
    orders[address(arg1)][stor5[address(arg1)]].field_0 = arg2
    orders[address(arg1)][stor5[address(arg1)]].field_256 = block.timestamp
    emit Withdrawn(arg2, owner);
    emit 0x7c1ffd06: sub_0858830b[address(arg1)], arg2, block.timestamp, arg1
}

function _fallback() payable {
    require stor3
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_0858830b[address(msg.sender)]++
    orders[address(msg.sender)][stor5[address(msg.sender)]].field_0 = msg.value
    orders[address(msg.sender)][stor5[address(msg.sender)]].field_256 = block.timestamp
    emit Withdrawn(msg.value, owner);
    emit 0x7c1ffd06: sub_0858830b[address(msg.sender)], msg.value, block.timestamp, msg.sender
}



}
