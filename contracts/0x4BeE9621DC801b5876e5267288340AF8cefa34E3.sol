contract main {


// =======================  Init code  ======================


uint8 stor1;
address stor1; offset 8

function _fallback() {
    address(stor1.field_8) = msg.sender
    uint8(stor1.field_0) = 0
    return code.data[133 len 2695]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint8 stor1;
address owner; offset 8

function owner() {
    return owner
}

function _fallback() {
    revert
}

function lock() {
    require msg.sender == owner
    stor1 = 1
}

function activate() {
    require msg.sender == owner
    stor1 = 0
}

function sub_02358701(?) {
    require msg.sender == owner
    require stor1 <= 1
    require not stor1
    stor0[address(arg1)].field_768 = 0
}

function sub_df46816a(?) {
    require msg.sender == owner
    require stor1 <= 1
    require not stor1
    stor0[address(arg1)].field_768 = 1
}

function subscriptions(address arg1) {
    require stor0[arg1].field_768 <= 1
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768
}

function sub_22d4a175(?) {
    require msg.sender == owner
    require arg3 >= 0
    require arg2 >= 0
    stor0[address(arg1)].field_0 = arg2
    stor0[address(arg1)].field_256 = block.timestamp
    stor0[address(arg1)].field_512 = arg3
    stor0[address(arg1)].field_768 = 0
    stor0[address(arg1)].field_1024 = 0
}

function sub_607254f1(?) {
    require stor1 <= 1
    require not stor1
    require stor0[address(msg.sender)].field_0 >= arg1
    require stor1 <= 1
    require not stor1
    require stor0[address(msg.sender)].field_768 <= 1
    require not stor0[address(msg.sender)].field_768
    require stor0[address(msg.sender)].field_256 <= block.timestamp
    stor0[address(msg.sender)].field_256 = block.timestamp + stor0[address(msg.sender)].field_512
    call msg.sender with:
       value stor0[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d6932d6c(?) {
    require stor1 <= 1
    require not stor1
    require stor0[address(msg.sender)].field_0 == arg1
    require stor1 <= 1
    require not stor1
    require stor0[address(msg.sender)].field_768 <= 1
    require not stor0[address(msg.sender)].field_768
    require stor0[address(msg.sender)].field_256 <= block.timestamp
    stor0[address(msg.sender)].field_256 = block.timestamp + stor0[address(msg.sender)].field_512
    call msg.sender with:
       value stor0[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
