contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10^16
    return code.data[52 len 1087]
}



// =====================  Runtime code  =====================


const name = Array(len=6, data=mem[224])

const decimals = 8

const _totalSupply = 10^16

const symbol = Array(len=4, data=mem[224])


mapping of uint256 myBalance;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function getMyBalance() {
    return myBalance[address(msg.sender)]
}

function balanceOf(address arg1) {
    return myBalance[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function mint(uint256 arg1) {
    myBalance[address(msg.sender)] += arg1
    totalSupply += arg1
}

function approve(address arg1, uint256 arg2) {
    if myBalance[address(msg.sender)] < arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if myBalance[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    myBalance[address(msg.sender)] -= arg2
    myBalance[arg1] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if myBalance[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    myBalance[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    myBalance[address(arg2)] += arg3
    return 1
}



}
