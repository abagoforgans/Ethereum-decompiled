contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;

function _fallback() {
    stor0 = code.data[1139 len 32]
    stor1[address(msg.sender)] = 1
    return code.data[96 len 1043]
}



// =====================  Runtime code  =====================


uint256 price;
mapping of uint8 stor1;

function price() {
    return price
}

function kill() {
    require bool(stor1[address(msg.sender)]) == 1
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function change_price(uint256 arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    price = arg1
}

function add_owner(address arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    stor1[address(arg1)] = 1
}

function remove_owner(address arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    stor1[address(arg1)] = 0
}

function sub_d60f8f4d(?) payable {
    require msg.value >= price
    emit 0x43245712: msg.sender, Array(len=arg1.length, data=arg1[all])
}

function withdraw(address arg1) payable {
    require bool(stor1[address(msg.sender)]) == 1
    require bool(stor1[address(arg1)]) == 1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
