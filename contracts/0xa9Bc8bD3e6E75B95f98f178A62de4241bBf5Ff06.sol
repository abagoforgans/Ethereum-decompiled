contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 1
    stor1 = 100
    stor2 = 500000
    stor3 = msg.sender
    require not msg.value
    return code.data[76 len 2330]
}



// =====================  Runtime code  =====================


const name = 'Net Neutrality'

const getBlock = block.number

const decimals = 0

const symbol = 'NNT'


uint256 totalSupply;
uint256 stor1;
uint256 sub_56604b10;
address owner;
mapping of uint256 stor4;
mapping of uint8 stor5;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function sub_56604b10(?) {
    return sub_56604b10
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setCutoff(uint256 arg1) {
    require owner == msg.sender
    sub_56604b10 = arg1
}

function Simoleon() {
    stor5[address(msg.sender)] = 1
    stor4[address(msg.sender)] = 1000 * stor1
    totalSupply = 1000 * stor1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if block.number >= sub_56604b10:
        return stor4[address(arg1)]
    if stor5[address(arg1)]:
        return stor4[address(arg1)]
    return (stor4[address(arg1)] + stor1)
}

function balance() {
    if block.number >= sub_56604b10:
        return stor4[address(msg.sender)]
    if stor5[address(msg.sender)]:
        return stor4[address(msg.sender)]
    return (stor4[address(msg.sender)] + stor1)
}

function transfer(address arg1, uint256 arg2) {
    if block.number < sub_56604b10:
        if not stor5[address(msg.sender)]:
            stor5[address(msg.sender)] = 1
            stor4[address(msg.sender)] = stor1
            totalSupply += stor1
    if stor4[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if block.number < sub_56604b10:
        if not stor5[address(arg1)]:
            stor5[address(arg1)] = 1
            stor4[address(arg1)] = stor1
            totalSupply += stor1
    if stor4[address(arg1)] + arg2 <= stor4[address(arg1)]:
        return 0
    stor4[address(msg.sender)] -= arg2
    stor4[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.number < sub_56604b10:
        if not stor5[address(arg1)]:
            stor5[address(arg1)] = 1
            stor4[address(arg1)] = stor1
            totalSupply += stor1
    if stor4[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if block.number < sub_56604b10:
        if not stor5[address(arg2)]:
            stor5[address(arg2)] = 1
            stor4[address(arg2)] = stor1
            totalSupply += stor1
    if stor4[address(arg2)] + arg3 <= stor4[address(arg2)]:
        return 0
    stor4[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    stor4[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
