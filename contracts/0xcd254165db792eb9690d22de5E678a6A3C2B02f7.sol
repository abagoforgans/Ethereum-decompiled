contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;

function _fallback() payable {
    stor0 = 0
    stor1 = 20 * 10^6
    stor2 = 20 * 10^6 * stor1
    require not msg.value
    stor4[address(msg.sender)] = 1
    stor3[address(msg.sender)] = 10^6 * stor1
    stor0 = stor3[address(msg.sender)]
    return code.data[285 len 3511]
}



// =====================  Runtime code  =====================


const name = 'International Data Group'

const decimals = 4

const symbol = 'IDG'


uint256 totalSupply;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
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

function balanceOf(address arg1) {
    if totalSupply >= stor2:
        return stor3[address(arg1)]
    if stor4[address(arg1)]:
        return stor3[address(arg1)]
    return (stor3[address(arg1)] + stor1)
}

function balance() {
    if totalSupply >= stor2:
        return stor3[address(msg.sender)]
    if stor4[address(msg.sender)]:
        return stor3[address(msg.sender)]
    return (stor3[address(msg.sender)] + stor1)
}

function transfer(address arg1, uint256 arg2) {
    if totalSupply < stor2:
        if not stor4[address(msg.sender)]:
            stor4[address(msg.sender)] = 1
            stor3[address(msg.sender)] = stor1
            totalSupply += stor1
    if stor3[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if totalSupply < stor2:
        if not stor4[address(arg1)]:
            stor4[address(arg1)] = 1
            stor3[address(arg1)] = stor1
            totalSupply += stor1
    if stor3[address(arg1)] + arg2 <= stor3[address(arg1)]:
        return 0
    stor3[address(msg.sender)] -= arg2
    stor3[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if totalSupply < stor2:
        if not stor4[address(arg1)]:
            stor4[address(arg1)] = 1
            stor3[address(arg1)] = stor1
            totalSupply += stor1
    if stor3[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if totalSupply < stor2:
        if not stor4[address(arg2)]:
            stor4[address(arg2)] = 1
            stor3[address(arg2)] = stor1
            totalSupply += stor1
    if stor3[address(arg2)] + arg3 <= stor3[address(arg2)]:
        return 0
    stor3[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    stor3[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
