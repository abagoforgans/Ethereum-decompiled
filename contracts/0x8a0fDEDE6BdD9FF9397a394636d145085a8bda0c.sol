contract main {




// =====================  Runtime code  =====================


const name = '7Star Exchange Kangaroo Token'

const decimals = 18

const symbol = 'KT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;

function totalSupply() {
    return totalSupply
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
    allowance[address(msg.sender)][address(arg1)] = 10^18 * arg2
    emit Approval((10^18 * arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < 10^18 * arg2:
        return 0
    if 10^18 * arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg2
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < 10^18 * arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < 10^18 * arg3:
        return 0
    if 10^18 * arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += 10^18 * arg3
    balanceOf[address(arg1)] += -1 * 10^18 * arg3
    allowance[address(arg1)][address(msg.sender)] += -1 * 10^18 * arg3
    emit Transfer((10^18 * arg3), arg1, arg2);
    return 1
}



}
