contract main {


// =======================  Init code  ======================


address stor3;
uint128 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint16 stor9;
uint256 stor10;
uint256 stor14;
uint256 stor15;

function _fallback() {
    stor3 = msg.sender
    address(stor4.field_0) = msg.sender
    Mask(96, 0, stor4.field_160) = 0
    stor7 = 0
    stor9 = 0
    stor14 = 0
    stor5 = 720 * 24 * 3600
    stor6 = stor5 / 30
    stor15 = block.timestamp
    stor8 = block.timestamp + stor5
    mem[96] = 1000
    mem[128] = 1389
    mem[160] = 1931
    mem[192] = 2683
    mem[224] = 3728
    mem[256] = 5179
    mem[288] = 7197
    mem[320] = 10000
    mem[352] = 13895
    mem[384] = 19307
    mem[416] = 26827
    mem[448] = 37276
    mem[480] = 51795
    mem[512] = 71969
    mem[544] = 100000
    mem[576] = 138950
    mem[608] = 193070
    mem[640] = 268270
    mem[672] = 372759
    mem[704] = 517947
    mem[736] = 719686
    mem[768] = 10^6
    mem[800] = 1389495
    mem[832] = 1930698
    mem[864] = 2682696
    mem[896] = 3727594
    mem[928] = 5179475
    mem[960] = 7196857
    mem[992] = 10 * 10^6
    mem[1024] = 13894955
    mem[1056] = 19306980
    s = 0
    idx = 96
    while 1088 > idx:
        stor10 = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and stor10
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 124
    s = 10
    while idx:
        uint256(stor[s]) = !(test266151307() * 256^idx) and uint256(stor[s])
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = (Mask(252, 2, None - 119) + 131 / 32 * Mask(254, 0, None - 119) >> 2) + 10
    while 14 > idx:
        uint32(stor[idx]) = 0
        idx = idx + 1
        continue 
    return code.data[1035 len 5933]
}



// =====================  Runtime code  =====================


const name = 'Hot Potato Coin'

const decimals = 18

const symbol = 'HPO'

const getNow = block.timestamp


mapping of uint256 stor0;
mapping of uint256 stor1;
mapping of uint16 stor2;
address stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
uint256 sub_bddfbd3e;
uint256 stor6;
uint256 totalSupply;
uint256 deadline;
uint16 currentCycle;
array of uint32 stor10;
uint256 sub_5aa1f52a;
uint256 stor15;

function totalSupply() {
    return totalSupply
}

function sub_5aa1f52a(?) {
    return sub_5aa1f52a
}

function getDeadline() {
    return deadline
}

function sub_bddfbd3e(?) {
    return sub_bddfbd3e
}

function getCurrentCycle() {
    return currentCycle
}

function _fallback() payable {
    revert
}

function setTestNow(uint256 arg1) {
    stor15 = arg1
}

function sub_5c386712(?) {
    require stor6
    return (deadline - block.timestamp % stor6)
}

function sub_e554d234(?) {
    if stor3 != msg.sender:
        return 0
    return address(stor4.field_0)
}

function sub_642e823d(?) {
    if stor3 != msg.sender:
        return 1
    return bool(uint8(stor4.field_160))
}

function getContractBalance() {
    if stor3 != msg.sender:
        return 0
    return eth.balance(this.address)
}

function approve(address arg1, uint256 arg2) {
    stor0[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, address(arg1), arg2);
    return 1
}

function sub_2df6ad54(?) {
    if msg.sender == stor3:
        if not uint8(stor4.field_160):
            Mask(96, 0, stor4.field_160) = 1
            address(stor4.field_0) = arg1
}

function withdrawEther(uint256 arg1) payable {
    if msg.sender == stor3:
        call address(stor4.field_0) with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function balanceOf(address arg1) {
    if stor2[address(arg1)] == currentCycle:
        if block.timestamp <= deadline:
            return stor1[address(arg1)]
        else:
            return 0
    else:
        return 0
}

function myBalance() {
    if stor2[address(msg.sender)] == currentCycle:
        if block.timestamp <= deadline:
            return stor1[address(msg.sender)]
        else:
            return 0
    else:
        return 0
}

function withdrawAllEther() payable {
    if msg.sender == stor3:
        call address(stor4.field_0) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_710c8cba(?) {
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(msg.sender)] != currentCycle:
        stor1[address(msg.sender)] = 0
        stor2[address(msg.sender)] = currentCycle
}

function allowance(address arg1, address arg2) {
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(arg2)] != currentCycle:
        stor1[address(arg2)] = 0
        stor2[address(arg2)] = currentCycle
    return stor0[address(arg1)][address(arg2)]
}

function getPrice() {
    require stor6
    require sub_bddfbd3e - deadline + block.timestamp / stor6 % 30 < 32
    require stor6
    require sub_bddfbd3e - deadline + block.timestamp + stor6 / stor6 % 30 < 32
    return 10^9 * stor10[uint8(stor5 - stor8 + block.timestamp / stor6 % 30)], 
           10^9 * stor10[uint8(stor5 - stor8 + block.timestamp + stor6 / stor6 % 30)]
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(msg.sender)] != currentCycle:
        stor1[address(msg.sender)] = 0
        stor2[address(msg.sender)] = currentCycle
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(arg1)] != currentCycle:
        stor1[address(arg1)] = 0
        stor2[address(arg1)] = currentCycle
    if stor1[address(msg.sender)] < arg2:
        return 0
    stor1[address(msg.sender)] -= arg2
    stor1[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}

function buy() payable {
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(msg.sender)] != currentCycle:
        stor1[address(msg.sender)] = 0
        stor2[address(msg.sender)] = currentCycle
    require stor6
    require sub_bddfbd3e - deadline + block.timestamp / stor6 % 30 < 32
    require stor10[uint8(stor5 - stor8 + block.timestamp / stor6 % 30)]
    stor1[address(msg.sender)] += 10^9 * msg.value / stor10[uint8(stor5 - stor8 + block.timestamp / stor6 % 30)]
    totalSupply += 10^9 * msg.value / stor10[uint8(stor5 - stor8 + block.timestamp / stor6 % 30)]
    sub_5aa1f52a += msg.value
    return 10^9 * msg.value / stor10[uint8(stor5 - stor8 + block.timestamp / stor6 % 30)], 
           stor10[uint8(stor5 - stor8 + block.timestamp / stor6 % 30)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(arg1)] != currentCycle:
        stor1[address(arg1)] = 0
        stor2[address(arg1)] = currentCycle
    if block.timestamp > deadline:
        totalSupply = 0
        deadline = block.timestamp + sub_bddfbd3e
        currentCycle = uint16(currentCycle + 1)
    if stor2[address(arg2)] != currentCycle:
        stor1[address(arg2)] = 0
        stor2[address(arg2)] = currentCycle
    if stor1[address(arg1)] < arg3:
        return 0
    if stor0[address(arg1)][address(msg.sender)] < arg3:
        return 0
    stor1[address(arg2)] += arg3
    stor1[address(arg1)] -= arg3
    stor0[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(address(arg1), address(arg2), arg3);
    return 1
}



}
