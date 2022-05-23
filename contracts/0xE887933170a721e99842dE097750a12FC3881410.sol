contract main {




// =====================  Runtime code  =====================


const name = 'Yoyo Ark Coin'

const decimals = 18

const standard = 'ERC20'

const symbol = 'YAC'


address owner;
uint256 registrationTime;
uint8 stor2;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
array of uint256 frozenTokens;
uint256 unlockat;

function totalSupply() {
    return totalSupply
}

function registrationTime() {
    return registrationTime
}

function registered() {
    return bool(stor2)
}

function unlockat() {
    return unlockat
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function frozenTokens(address arg1, uint256 arg2) {
    require arg2 < 3
    return frozenTokens[arg1][arg2]
}

function _fallback() {
    revert
}

function freeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
    frozenTokens[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initRegister() {
    balanceOf[msg.sender] = 960000000 * 10^18
    stor2 = 1
    registrationTime = block.timestamp
    unlockat = block.timestamp + (4320 * 24 * 3600)
    require msg.sender == owner
    stor6[address(msg.sender)] = 1
    frozenTokens[address(msg.sender)] = 40000 * 10^18 * 3600
}

function transfer(address arg1, uint256 arg2) {
    if not stor2:
        return 0
    if arg2 <= 0:
        return 0
    if stor6[address(msg.sender)]:
        if block.timestamp >= unlockat:
            stor6[address(msg.sender)] = 0
        else:
            if balanceOf[address(msg.sender)] - arg2 < frozenTokens[address(msg.sender)]:
                return 0
    if arg2 > balanceOf[msg.sender]:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor2:
        return 0
    if arg3 <= 0:
        return 0
    if stor6[address(arg1)]:
        if block.timestamp >= unlockat:
            stor6[address(arg1)] = 0
        else:
            if balanceOf[address(arg1)] - arg3 < frozenTokens[address(arg1)]:
                return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
