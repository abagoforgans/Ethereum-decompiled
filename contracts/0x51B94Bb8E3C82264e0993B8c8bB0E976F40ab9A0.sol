contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() {
    stor3 = msg.sender
    bool(stor4.length) = 0
    stor4.length.field_1 = 7
    stor4.length.field_8 = 'WCToken' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 2
    stor5.length.field_8 = 'WC' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = 0
    stor6 = 0x332eca5baa67d9e4f4ee3ad0b73d7a19a8cda821
    stor7 = 0x332eca5baa67d9e4f4ee3ad0b73d7a19a8cda821
    stor8 = 0
    stor9 = 0
    stor10 = 4327161
    stor11 = 4427161
    stor12 = 4527161
    stor13 = 5 * 10^6
    stor14 = 4000
    stor15 = 3000
    stor16 = 2000
    stor17 = 1000
    return code.data[506 len 5220]
}



// =====================  Runtime code  =====================


const decimals = 18

const version = '1.0'

const MAX_SUPPLY = 100000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
address etherProceedsAccount;
address sub_a6f57515Address;
uint256 startBlock;
uint256 sub_08d18ef7;
uint256 sub_5ac727c7;
uint256 sub_5f897489;
uint256 sub_aa8d2a64;
uint256 endBlock;
uint256 oneStepRate;
uint256 twoStepRate;
uint256 sub_308005ab;
uint256 sub_420ddab4;

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function sub_08d18ef7(?) {
    return sub_08d18ef7
}

function totalSupply() {
    return totalSupply
}

function oneStepRate() {
    return oneStepRate
}

function sub_308005ab(?) {
    return sub_308005ab
}

function sub_420ddab4(?) {
    return sub_420ddab4
}

function twoStepRate() {
    return twoStepRate
}

function startBlock() {
    return startBlock
}

function sub_5ac727c7(?) {
    return sub_5ac727c7
}

function sub_5f897489(?) {
    return sub_5f897489
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a6f57515(?) {
    return sub_a6f57515Address
}

function sub_aa8d2a64(?) {
    return sub_aa8d2a64
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function etherProceedsAccount() {
    return etherProceedsAccount
}

function sub_76428811(?) {
    require owner == msg.sender
    sub_a6f57515Address = arg1
}

function setEtherProceedsAccount(address arg1) {
    require owner == msg.sender
    etherProceedsAccount = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function etherProceeds() {
    require msg.sender == etherProceedsAccount
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_5241b139(?) {
    require owner == msg.sender
    startBlock = arg1
    sub_08d18ef7 = arg2
    sub_5ac727c7 = arg3
    sub_5f897489 = arg4
    sub_aa8d2a64 = arg5
    endBlock = arg6
    oneStepRate = arg7
    twoStepRate = arg8
    sub_308005ab = arg9
    sub_420ddab4 = arg10
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function setName(string arg1) {
    require owner == msg.sender
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}

function setSymbol(string arg1) {
    require owner == msg.sender
    symbol.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function icoPlatformWithdraw(uint256 arg1) {
    require msg.sender == sub_a6f57515Address
    if arg1:
        require arg1
        require arg1 / arg1 == 1
    require arg1 + totalSupply >= totalSupply
    require 100000000 * 10^18 >= arg1 + totalSupply
    if arg1:
        require arg1
        require arg1 / arg1 == 1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    emit 0xb153643d: arg1, msg.sender
}

function _fallback() payable {
    require block.number >= startBlock
    require block.number < endBlock
    if block.number < startBlock:
        if block.number < sub_08d18ef7:
            if block.number < sub_5ac727c7:
                if block.number >= sub_5f897489:
                    if block.number < sub_aa8d2a64:
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        require 100000000 * 10^18 >= (sub_420ddab4 * msg.value) + totalSupply
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        totalSupply += sub_420ddab4 * msg.value
                        balanceOf[address(msg.sender)] += sub_420ddab4 * msg.value
                        emit Transfer((sub_420ddab4 * msg.value), 0, msg.sender);
                        emit 0xb153643d: (sub_420ddab4 * msg.value), msg.sender
            else:
                if block.number < sub_5f897489:
                    if msg.value:
                        require msg.value
                        require sub_308005ab * msg.value / msg.value == sub_308005ab
                    require (sub_308005ab * msg.value) + totalSupply >= totalSupply
                    require 100000000 * 10^18 >= (sub_308005ab * msg.value) + totalSupply
                    if msg.value:
                        require msg.value
                        require sub_308005ab * msg.value / msg.value == sub_308005ab
                    require (sub_308005ab * msg.value) + totalSupply >= totalSupply
                    totalSupply += sub_308005ab * msg.value
                    balanceOf[address(msg.sender)] += sub_308005ab * msg.value
                    emit Transfer((sub_308005ab * msg.value), 0, msg.sender);
                    emit 0xb153643d: (sub_308005ab * msg.value), msg.sender
                else:
                    if block.number < sub_aa8d2a64:
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        require 100000000 * 10^18 >= (sub_420ddab4 * msg.value) + totalSupply
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        totalSupply += sub_420ddab4 * msg.value
                        balanceOf[address(msg.sender)] += sub_420ddab4 * msg.value
                        emit Transfer((sub_420ddab4 * msg.value), 0, msg.sender);
                        emit 0xb153643d: (sub_420ddab4 * msg.value), msg.sender
        else:
            if block.number < sub_5ac727c7:
                if msg.value:
                    require msg.value
                    require twoStepRate * msg.value / msg.value == twoStepRate
                require (twoStepRate * msg.value) + totalSupply >= totalSupply
                require 100000000 * 10^18 >= (twoStepRate * msg.value) + totalSupply
                if msg.value:
                    require msg.value
                    require twoStepRate * msg.value / msg.value == twoStepRate
                require (twoStepRate * msg.value) + totalSupply >= totalSupply
                totalSupply += twoStepRate * msg.value
                balanceOf[address(msg.sender)] += twoStepRate * msg.value
                emit Transfer((twoStepRate * msg.value), 0, msg.sender);
                emit 0xb153643d: (twoStepRate * msg.value), msg.sender
            else:
                if block.number < sub_5f897489:
                    if msg.value:
                        require msg.value
                        require sub_308005ab * msg.value / msg.value == sub_308005ab
                    require (sub_308005ab * msg.value) + totalSupply >= totalSupply
                    require 100000000 * 10^18 >= (sub_308005ab * msg.value) + totalSupply
                    if msg.value:
                        require msg.value
                        require sub_308005ab * msg.value / msg.value == sub_308005ab
                    require (sub_308005ab * msg.value) + totalSupply >= totalSupply
                    totalSupply += sub_308005ab * msg.value
                    balanceOf[address(msg.sender)] += sub_308005ab * msg.value
                    emit Transfer((sub_308005ab * msg.value), 0, msg.sender);
                    emit 0xb153643d: (sub_308005ab * msg.value), msg.sender
                else:
                    if block.number < sub_aa8d2a64:
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        require 100000000 * 10^18 >= (sub_420ddab4 * msg.value) + totalSupply
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        totalSupply += sub_420ddab4 * msg.value
                        balanceOf[address(msg.sender)] += sub_420ddab4 * msg.value
                        emit Transfer((sub_420ddab4 * msg.value), 0, msg.sender);
                        emit 0xb153643d: (sub_420ddab4 * msg.value), msg.sender
    else:
        if block.number < sub_08d18ef7:
            if msg.value:
                require msg.value
                require oneStepRate * msg.value / msg.value == oneStepRate
            require (oneStepRate * msg.value) + totalSupply >= totalSupply
            require 100000000 * 10^18 >= (oneStepRate * msg.value) + totalSupply
            if msg.value:
                require msg.value
                require oneStepRate * msg.value / msg.value == oneStepRate
            require (oneStepRate * msg.value) + totalSupply >= totalSupply
            totalSupply += oneStepRate * msg.value
            balanceOf[address(msg.sender)] += oneStepRate * msg.value
            emit Transfer((oneStepRate * msg.value), 0, msg.sender);
            emit 0xb153643d: (oneStepRate * msg.value), msg.sender
        else:
            if block.number < sub_5ac727c7:
                if msg.value:
                    require msg.value
                    require twoStepRate * msg.value / msg.value == twoStepRate
                require (twoStepRate * msg.value) + totalSupply >= totalSupply
                require 100000000 * 10^18 >= (twoStepRate * msg.value) + totalSupply
                if msg.value:
                    require msg.value
                    require twoStepRate * msg.value / msg.value == twoStepRate
                require (twoStepRate * msg.value) + totalSupply >= totalSupply
                totalSupply += twoStepRate * msg.value
                balanceOf[address(msg.sender)] += twoStepRate * msg.value
                emit Transfer((twoStepRate * msg.value), 0, msg.sender);
                emit 0xb153643d: (twoStepRate * msg.value), msg.sender
            else:
                if block.number < sub_5f897489:
                    if msg.value:
                        require msg.value
                        require sub_308005ab * msg.value / msg.value == sub_308005ab
                    require (sub_308005ab * msg.value) + totalSupply >= totalSupply
                    require 100000000 * 10^18 >= (sub_308005ab * msg.value) + totalSupply
                    if msg.value:
                        require msg.value
                        require sub_308005ab * msg.value / msg.value == sub_308005ab
                    require (sub_308005ab * msg.value) + totalSupply >= totalSupply
                    totalSupply += sub_308005ab * msg.value
                    balanceOf[address(msg.sender)] += sub_308005ab * msg.value
                    emit Transfer((sub_308005ab * msg.value), 0, msg.sender);
                    emit 0xb153643d: (sub_308005ab * msg.value), msg.sender
                else:
                    if block.number < sub_aa8d2a64:
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        require 100000000 * 10^18 >= (sub_420ddab4 * msg.value) + totalSupply
                        if msg.value:
                            require msg.value
                            require sub_420ddab4 * msg.value / msg.value == sub_420ddab4
                        require (sub_420ddab4 * msg.value) + totalSupply >= totalSupply
                        totalSupply += sub_420ddab4 * msg.value
                        balanceOf[address(msg.sender)] += sub_420ddab4 * msg.value
                        emit Transfer((sub_420ddab4 * msg.value), 0, msg.sender);
                        emit 0xb153643d: (sub_420ddab4 * msg.value), msg.sender
}



}
