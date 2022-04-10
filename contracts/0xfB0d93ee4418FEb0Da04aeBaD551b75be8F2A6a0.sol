contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = code.data[2726 len 20]
    stor1 = code.data[2758 len 20]
    stor2 = block.timestamp + (168 * 24 * 3600)
    return code.data[245 len 2469]
}



// =====================  Runtime code  =====================


const name = 'TYH'

const decimals = 18

const symbol = 'TYH'

const TOKEN_SUPPLY_LIMIT = 1875000 * 10^18

const PRICE = 303


address tokenManagerAddress;
address beneficiaryAddress;
uint256 deadline;
uint8 stor3;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function tokenManager() {
    return tokenManagerAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function closeCrowdsale() {
    require msg.sender == tokenManagerAddress
    require block.timestamp >= deadline
    stor3 = 1
}

function burnTokens(address arg1) {
    require msg.sender == tokenManagerAddress
    require stor3
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    totalSupply -= balanceOf[address(arg1)]
    emit Burn(balanceOf[address(arg1)], arg1);
}

function withdrawEther() {
    require msg.sender == tokenManagerAddress
    if eth.balance(this.address) > 0:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTokens(address arg1) payable {
    require not stor3
    require msg.value
    require totalSupply + (303 * msg.value) <= 1875000 * 10^18
    balanceOf[address(arg1)] += 303 * msg.value
    totalSupply += 303 * msg.value
    emit Buy((303 * msg.value), arg1);
}

function _fallback() payable {
    require not stor3
    require msg.value
    require totalSupply + (303 * msg.value) <= 1875000 * 10^18
    balanceOf[address(msg.sender)] += 303 * msg.value
    totalSupply += 303 * msg.value
    emit Buy((303 * msg.value), msg.sender);
}



}
