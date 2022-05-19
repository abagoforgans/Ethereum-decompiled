contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;

function _fallback() payable {
  stop
}

function sub_3f3cc993(?) {
    require msg.sender == stor6
    stor6 = arg1
}

function sub_429700e7(?) {
    require msg.sender == stor5
    stor5 = arg1
}

function sub_60e4e45f(?) {
    require msg.sender == stor7
    stor7 = arg1
}

function sub_654d78cf(?) {
    require msg.sender == stor8
    stor8 = arg1
}

function sub_8ac9a0d7(?) {
    require msg.sender == stor9
    stor9 = arg1
}

function changeWallet2(address arg1) {
    require msg.sender == stor1
    stor1 = arg1
}

function changeWallet5(address arg1) {
    require msg.sender == stor4
    stor4 = arg1
}

function changeWallet4(address arg1) {
    require msg.sender == stor3
    stor3 = arg1
}

function changeWallet3(address arg1) {
    require msg.sender == stor2
    stor2 = arg1
}

function changeWallet1(address arg1) {
    require msg.sender == address(stor0.field_8)
    address(stor0.field_8) = arg1
}

function divide() {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    call address(stor0.field_8) with:
       value 7 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value 7 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call stor2 with:
       value 7 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call stor3 with:
       value 7 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    call stor4 with:
       value eth.balance(this.address) / 50 wei
         gas 2300 * is_zero(value) wei
    call stor5 with:
       value eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    call stor6 with:
       value 2 * eth.balance(this.address) / 25 wei
         gas 2300 * is_zero(value) wei
    call stor7 with:
       value 309 * eth.balance(this.address) / 1000 wei
         gas 2300 * is_zero(value) wei
    call stor8 with:
       value eth.balance(this.address) / 200 wei
         gas 2300 * is_zero(value) wei
    call stor9 with:
       value eth.balance(this.address) - (4 * 7 * eth.balance(this.address) / 100) - (eth.balance(this.address) / 50) - (eth.balance(this.address) / 10) - (2 * eth.balance(this.address) / 25) - (309 * eth.balance(this.address) / 1000) - (eth.balance(this.address) / 200) wei
         gas 2300 * is_zero(value) wei
    uint8(stor0.field_0) = 0
}



}
