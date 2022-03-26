contract main {


// =======================  Init code  ======================


address stor0;
address stor0; offset 8
uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor5;
uint8 stor7;
mapping of uint256 stor11;

function _fallback() payable {
    mem[32] = 9
    require not msg.value
    mem[96 len -7285] = code.data[8224 len -7285]
    mem[64] = -7189
    address(stor0.field_8) = msg.sender
    stor1 = mem[96]
    stor2 = mem[159 len 1]
    mem[0] = 4
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3.length = (2 * mem[mem[192] + 96]) + 1
    s = 0
    idx = mem[192] + 128
    while mem[192] + mem[mem[192] + 96] + 128 > idx:
        stor3[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor3.length + 31 / 32 > Mask(251, 0, mem[mem[192] + 96] + 31) >> 5:
        stor3[Mask(251, 0, mem[mem[192] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[192] + 96] + 31) >> 5) + 1
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor5[address(msg.sender)] = stor1
    stor11[0][0] = 1
    stor11[1][0] = 0x100000000000000000000000000000000
    stor11[0][1] = 0x100000000000000000000000000000000
    stor11[0x100000000000000000000000000000000][1] = 1
    stor7 = 1
    stor5[address(stor0.field_0)] = stor1
    return code.data[939 len 7285]
}



// =====================  Runtime code  =====================


#
#  - sell(uint256 arg1, uint256 arg2, bool arg3)
#  - buy(uint256 arg1, uint256 arg2, bool arg3)
#
const version = Array(len=55, data='ITT 0.3.6
ERC20 0.2.3-o0ragman0o', Mask(184, 72, '
Math 0.0.1
Base 0.1.1
') >> 72, mem[320])

const contractBalance = eth.balance(this.address)


uint8 stor0;
address owner; offset 8
uint256 totalSupply;
uint8 decimalPlaces;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 trading;
mapping of uint256 etherBalanceOf;
mapping of uint256 node;
mapping of uint256 amount;
mapping of uint256 spread;

function name() {
    return name[0 len name.length]
}

function etherBalanceOf(address arg1) {
    return etherBalanceOf[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function getAmount(uint256 arg1, address arg2) {
    return amount[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function spread(bool arg1) {
    return spread[0][arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function decimalPlaces() {
    return decimalPlaces
}

function getNode(uint256 arg1, uint256 arg2) {
    return node[arg1][arg2][0], node[arg1][arg2][1]
}

function trading() {
    return bool(trading)
}

function _fallback() payable {
    revert 
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit ChangedOwner(msg.sender, arg1);
    return 1
}

function setTrading(bool arg1) {
    require owner == msg.sender
    require not stor0
    trading = uint8(arg1)
    emit Trading(1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    require balanceOf[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require not stor0
    require etherBalanceOf[address(msg.sender)] >= arg1
    etherBalanceOf[address(msg.sender)] -= arg1
    require not stor0
    stor0 = 1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    stor0 = 0
    return 1
}

function getPriceVolume(uint256 arg1) {
    mem[0] = 1
    mem[32] = sha3(0, sha3(arg1, 9))
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while idx:
        mem[96] = arg1
        mem[128] = address(idx)
        mem[0] = 1
        mem[32] = sha3(idx, sha3(arg1, 9))
        idx = node[arg1][idx][1]
        s = s + amount[arg1][address(idx)]
        continue 
    return s
}

function numOrdersOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = var10001
    mem[128] = address(arg1)
    mem[0] = 1
    mem[32] = sha3(var10001, 11)
    if amount[var10001][arg1] <= 0:
        var10001 = spread[var10001][1]
        var10002 = var10002
        continue 
    var10001 = spread[var10001][1]
    var10002 = var10002 + 1
    continue 
}

function getOpenOrdersOf(address arg1) {
    mem[96] = 0
    mem[64] = 160
    mem[128] = 0
    mem[160] = var11001
    mem[192] = address(arg1)
    mem[0] = 1
    mem[32] = sha3(var11001, 11)
    if amount[var11001][arg1] <= 0:
        var11001 = spread[var11001][1]
        var11002 = var11002
        continue 
    var11001 = spread[var11001][1]
    var11002 = var11002 + 1
    continue 
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sizeOf(uint256 arg1) {
    mem[0] = 1
    if arg1:
        mem[32] = sha3(0, sha3(arg1, 9))
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx:
            mem[0] = 1
            mem[32] = sha3(idx, sha3(arg1, 9))
            idx = node[arg1][idx][1]
            s = s + 1
            continue 
    else:
        mem[32] = sha3(0, 11)
        idx = stor[sha3(mem[0 len 64])]
        s = 0
        while idx:
            mem[0] = 1
            mem[32] = sha3(idx, 11)
            idx = spread[idx][1]
            s = s + 1
            continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function cancel(uint256 arg1) {
    require not stor0
    if amount[arg1][msg.sender]:
        if msg.sender:
            node[arg1][node[arg1][address(msg.sender)][1]][0] = node[arg1][address(msg.sender)][0]
            node[arg1][node[arg1][address(msg.sender)][0]][1] = node[arg1][address(msg.sender)][1]
            node[arg1][address(msg.sender)][0] = 0
            node[arg1][address(msg.sender)][1] = 0
        if not node[arg1][0][0]:
            if not node[arg1][0][1]:
                if arg1:
                    spread[spread[arg1][1]][0] = spread[arg1][0]
                    spread[spread[arg1][0]][1] = spread[arg1][1]
                    spread[arg1][0] = 0
                    spread[arg1][1] = 0
        amount[arg1][msg.sender] = 0
        if arg1 <= spread[0][0]:
            etherBalanceOf[address(msg.sender)] += amount[arg1][msg.sender] * arg1
        else:
            balanceOf[address(msg.sender)] += amount[arg1][msg.sender]
    return 1
}

function getBook() {
    mem[0] = 1
    mem[32] = sha3(0, 11)
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while idx:
        mem[0] = 1
        mem[32] = sha3(idx, 11)
        idx = spread[idx][1]
        s = s + 1
        continue 
    mem[160] = (2 * s) - 2
    idx = spread[1][1]
    t = 0
    while idx < 0x100000000000000000000000000000000:
        require t < mem[160]
        mem[(32 * t) + 192] = idx
        mem[0] = 1
        mem[32] = sha3(0, sha3(idx, 9))
        u = stor[sha3(mem[0 len 64])]
        v = 0
        while u:
            mem[(32 * (2 * s) - 2) + 192] = idx
            mem[(32 * (2 * s) - 2) + 224] = address(u)
            mem[0] = 1
            mem[32] = sha3(u, sha3(idx, 9))
            u = node[idx][u][1]
            v = v + amount[idx][address(u)]
            continue 
        require t + 1 < mem[160]
        mem[(32 * t + 1) + 192] = v
        mem[0] = 1
        mem[32] = sha3(idx, 11)
        idx = spread[idx][1]
        t = t + 2
        continue 
    mem[(32 * (2 * s) - 2) + 192] = 32
    return 32, mem[(32 * (2 * s) - 2) + 224 len (32 * mem[160]) + 32]
}



}
