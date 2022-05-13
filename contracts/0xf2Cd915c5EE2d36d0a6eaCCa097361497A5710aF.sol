contract main {




// =====================  Runtime code  =====================


const name = 'ExampleToken'

const sub_1d255df1(?) = 100000000 * 10^18

const decimals = 18

const sub_65bc900e(?) = 250000000 * 10^18

const symbol = 'EXT'

const OWNER_TOKENS = 650000000 * 10^18

const EXP_18 = 18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 version;
uint256 _totalSupply;

function totalSupply() {
    return totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_6959b0d7(?) {
    require arg1
    require arg2
    require arg3
    require arg1 != arg2
    require arg1 != arg3
    require arg2 != arg3
    _totalSupply = 1000000000 * 10^18
    balanceOf[address(arg1)] = 650000000 * 10^18
    emit Transfer(650000000 * 10^18, 0, arg1);
    emit 0xfe7f7178: 650000000 * 10^18, arg1
    balanceOf[address(arg2)] = 250000000 * 10^18
    emit Transfer(250000000 * 10^18, 0, arg2);
    emit 0xfe7f7178: 250000000 * 10^18, arg2
    balanceOf[address(arg3)] = 100000000 * 10^18
    emit Transfer(100000000 * 10^18, 0, arg3);
    emit 0xfe7f7178: 100000000 * 10^18, arg3
}



}
