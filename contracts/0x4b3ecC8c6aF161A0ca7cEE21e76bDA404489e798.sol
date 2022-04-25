contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'Vara' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'VAR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 100 * 10^6
    require not msg.value
    stor4 = 10^stor2 * stor3
    stor5 = 0x86f8001374eeca3530158334198637654b81f702
    stor6[0x86f8001374eeca3530158334198637654b81f702] = 10^stor2 * stor3
    return code.data[439 len 1195]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
address owner;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
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

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp > 420744 * 24 * 3600
    require block.timestamp < 422160 * 24 * 3600
    require balanceOf[stor5] >= 750 * msg.value
    require balanceOf[address(msg.sender)] < (750 * msg.value) + balanceOf[address(msg.sender)]
    balanceOf[stor5] += -750 * msg.value
    balanceOf[msg.sender] += 750 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
