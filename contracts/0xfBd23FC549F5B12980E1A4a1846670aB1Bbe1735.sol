contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of struct stor2;

function _fallback() {
    stor0 = 10^15 * code.data[2534 len 32]
    stor1 = msg.sender
    stor2[stor1].field_8 = 0
    stor2[stor1].field_0 = 2
    return code.data[351 len 2183]
}



// =====================  Runtime code  =====================


#
#  - donate()
#
uint256 donation;
uint32 sub_5ff4a1f7; offset 160
address stor1;
mapping of struct balance;

function getBalance() {
    return balance[address(msg.sender)].field_256
}

function sub_5ff4a1f7(?) {
    require msg.sender == stor1
    return sub_5ff4a1f7
}

function donation() {
    return donation
}

function getStage() {
    require balance[address(msg.sender)].field_0 <= 2
    return balance[address(msg.sender)].field_0
}

function _fallback() payable {
    revert
}

function withdraw() {
    require balance[address(msg.sender)].field_256 > 0
    balance[address(msg.sender)].field_256 = 0
    call msg.sender with:
       value balance[address(msg.sender)].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function invite(address arg1) {
    require arg1
    require arg1 != msg.sender
    require balance[address(msg.sender)].field_0 <= 2
    require balance[address(msg.sender)].field_0 == 2
    require balance[address(arg1)].field_0 <= 2
    require not balance[address(arg1)].field_0
    balance[address(arg1)].field_8 = msg.sender
    balance[address(arg1)].field_0 = 1
}



}
