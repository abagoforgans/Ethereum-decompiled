contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    stor4 = 5 * 10^15
    require not msg.value
    stor5[address(this.address)] = 10^9
    stor2 = 10^9
    bool(stor0.length) = 0
    stor0.length.field_1 = 7
    stor0.length.field_8 = 'RtBCoin' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'RtB' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = msg.sender
    return code.data[415 len 1144]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSuplay;
address owner;
uint256 stor4;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSuplay() {
    return totalSuplay
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require stor4
    require balanceOf[address(this.address)] >= msg.value / stor4
    balanceOf[address(msg.sender)] += msg.value / stor4
    balanceOf[this.address] -= msg.value / stor4
}



}
