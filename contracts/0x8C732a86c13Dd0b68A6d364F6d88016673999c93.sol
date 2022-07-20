contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 11
    stor2.length.field_8 = 'ValuesShare' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 2
    stor3.length.field_8 = 'AC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 39000000 * 10^18
    stor0 = msg.sender
    stor1[address(msg.sender)] = 39000000 * 10^18
    return code.data[395 len 1965]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
mapping of uint256 balance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function getbalance(address arg1) {
    return balance[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function burn(uint256 arg1) {
    require balance[address(msg.sender)] > arg1
    require arg1 >= 0
    require balance[address(msg.sender)] >= arg1
    balance[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function release(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 0
    require balance[address(msg.sender)] <= -arg1 - 1
    balance[stor0] = arg1 + balance[address(msg.sender)]
    require totalSupply <= -arg1 - 1
    totalSupply += arg1
    emit Release(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balance[address(msg.sender)] >= arg2
    require balance[address(msg.sender)] >= arg2
    balance[address(msg.sender)] -= arg2
    require balance[address(arg1)] <= -arg2 - 1
    balance[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
