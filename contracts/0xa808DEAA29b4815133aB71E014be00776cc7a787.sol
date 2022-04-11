contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
address stor1;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 1
    stor4.length.field_8 = 'O' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 7
    stor5.length.field_200 = 67729391193405583
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    return code.data[535 len 4006]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address exchangerAddress;
address eAddress;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 currentSupply;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function exchanger() {
    return exchangerAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function currentSupply() {
    return currentSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function e() {
    return eAddress
}

function _fallback() {
    revert
}

function pauseExchange() {
    Mask(96, 0, stor1.field_160) = 1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function startExchange() {
    eAddress = exchangerAddress
    Mask(96, 0, stor1.field_160) = 1
}

function changeExchanger(address arg1) {
    require msg.sender == owner
    exchangerAddress = arg1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require currentSupply + arg2 >= currentSupply
    balanceOf[address(arg1)] += arg2
    currentSupply += arg2
    emit Mint(address(arg1), arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require currentSupply + arg2 >= currentSupply
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    if uint8(stor1.field_160):
        if arg1 == exchangerAddress:
            require ext_code.size(eAddress)
            call eAddress.0x6b8357ac with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
    return 1
}



}
