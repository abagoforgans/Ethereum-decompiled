contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor3 = 18
    stor5 = stor4
    require not msg.value
    mem[96 len -2712] = code.data[3080 len -2712]
    mem[64] = -2616
    stor0 = mem[108 len 20]
    stor4 = mem[128] * 10^stor3
    stor6[address(msg.sender)] = mem[128] * 10^stor3
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[368 len 2712]
}



// =====================  Runtime code  =====================


const RATE = 500


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 supplyLeftAtOrigin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function supplyLeftAtOrigin() {
    return supplyLeftAtOrigin
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function _fallback() payable {
    require supplyLeftAtOrigin > 10^6 * 10^decimals
    require msg.value > 0
    if msg.value:
        require msg.value
        require 500 * msg.value / msg.value == 500
    require (500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 500 * msg.value
    require 500 * msg.value <= supplyLeftAtOrigin
    supplyLeftAtOrigin += -500 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require supplyLeftAtOrigin > 10^6 * 10^decimals
    require msg.value > 0
    if msg.value:
        require msg.value
        require 500 * msg.value / msg.value == 500
    require (500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 500 * msg.value
    require 500 * msg.value <= supplyLeftAtOrigin
    supplyLeftAtOrigin += -500 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
