contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    stor3 = 10^13
    stor4 = 25 * 10^11
    stor5 = 100000
    stor6 = 0xb7bd5cd91aaba1d521d208854c236818d1c71c88
    require not msg.value
    stor0[stor6] = 200000
    stor2 += 200000
    return code.data[265 len 3926]
}



// =====================  Runtime code  =====================


const name = 'PonziCoinLite'

const decimals = 3

const symbol = 'SECL'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
bool stor3;
uint256 stor3;
uint256 stor3; offset 1
uint256 buyPrice;
bool stor4;
uint256 stor4;
uint256 stor4; offset 1
uint256 sellPrice;
uint256 tierBudget;
address founderAddress;

function totalSupply() {
    return totalSupply
}

function sellPrice() {
    return sellPrice
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tierBudget() {
    return tierBudget
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function fund() payable {
    require buyPrice
    if msg.value / buyPrice <= tierBudget:
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        emit Issuance((msg.value / buyPrice), msg.sender);
        totalSupply += msg.value / buyPrice
        tierBudget -= msg.value / buyPrice
        if tierBudget <= 0:
            tierBudget = 100000
            bool(stor3.field_0) = 0
            uint255(stor3.field_1) = uint255(stor3.field_0)
            bool(stor4.field_0) = 0
            uint255(stor4.field_1) = uint255(stor4.field_0)
        if msg.value > msg.value / buyPrice * buyPrice:
            call msg.sender with:
               value msg.value - (msg.value / buyPrice * buyPrice) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        balanceOf[address(msg.sender)] += tierBudget
        emit Issuance(tierBudget, msg.sender);
        totalSupply += tierBudget
        tierBudget = 0
        if tierBudget <= 0:
            tierBudget = 100000
            bool(stor3.field_0) = 0
            uint255(stor3.field_1) = uint255(stor3.field_0)
            bool(stor4.field_0) = 0
            uint255(stor4.field_1) = uint255(stor4.field_0)
        if msg.value > tierBudget * buyPrice:
            call msg.sender with:
               value msg.value - (tierBudget * buyPrice) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    return 1
}



}
