contract main {


// =======================  Init code  ======================


uint256 stor4;

function _fallback() payable {
    stor4 = 10^15
    require not msg.value
    return code.data[42 len 2237]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint256 stor4;

function name() {
    return name[0 len name.length].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function getEther() {
    require msg.sender == stor1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require stor4
    require balanceOf[address(this.address)] >= msg.value / stor4
    balanceOf[address(this.address)] -= msg.value / stor4
    balanceOf[address(msg.sender)] += msg.value / stor4
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}

function MyToken() {
    balanceOf[address(this.address)] = 10^9
    stor1 = msg.sender
    bool(name.length) = 0
    name.length.field_1 = 8
    name.length.field_8 = 'TestTest' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 6
    symbol.length.field_8 = 'Lalala' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
