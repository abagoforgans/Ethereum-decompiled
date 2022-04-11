contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)] = code.data[3957 len 32]
    stor3 = code.data[3957 len 32]
    return code.data[203 len 3754]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;

function _supply() {
    return totalSupply
}

function totalSupply() {
    return totalSupply
}

function sellPrice() {
    return sellPrice
}

function buyPrice() {
    return buyPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addCoins(uint256 arg1) {
    require msg.sender == stor0
    totalSupply += arg1
    stor1[stor0] += arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function buy(uint256 arg1) payable {
    require buyPrice
    require stor1[stor0] >= msg.value / buyPrice
    stor1[address(msg.sender)] += msg.value / buyPrice
    stor1[stor0] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), stor0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)] >= arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(msg.sender)] -= arg2
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require stor1[address(msg.sender)] >= arg1
    stor1[stor0] += arg1
    stor1[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, stor0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor1[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    stor1[address(arg1)] -= arg3
    stor1[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
