contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor8;
address stor9;
uint256 stor11;
uint8 stor12;
uint256 stor13;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'hlht token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'HLHT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 4
    stor8 = 0
    stor11 = 0
    stor13 = 0
    require not msg.value
    require code.data[4766 len 20]
    require code.data[4830 len 20]
    require code.data[4786 len 32] > 0
    stor3 = code.data[4786 len 32]
    stor4[code.data[4766 len 20]] = code.data[4786 len 32]
    stor9 = code.data[4830 len 20]
    stor12 = 0
    require block.timestamp + (5 * 3600) >= block.timestamp
    stor13 = block.timestamp + (5 * 3600)
    return code.data[598 len 4156]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor6;
mapping of uint256 sub_a684cd0b;
uint256 sub_d167b920;
address stor9;
bool stor11;
uint256 stor11; offset 1
uint256 sub_a3d35f36;
uint8 stor12;
uint256 endTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a3d35f36(?) {
    return sub_a3d35f36
}

function sub_a684cd0b(?) {
    return sub_a684cd0b[address(arg1)]
}

function sub_d167b920(?) {
    return sub_d167b920
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_29e900c5(?) {
    require sub_d167b920 <= eth.balance(this.address)
    return (eth.balance(this.address) - sub_d167b920)
}

function sub_3111199a(?) {
    if bool(stor11.field_0):
        return ((sub_a3d35f36 - 1 / 2) + 1)
    return uint255(stor11.field_1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_82302f14(?) {
    require sub_d167b920 > 0
    require stor9 == msg.sender
    call msg.sender with:
       value sub_d167b920 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_d167b920 = 0
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function userPosition(address arg1) {
    if not stor6[address(arg1)].field_0:
        mem[(32 * stor6[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor6[address(arg1)].field_0) + 192] = stor6[address(arg1)].field_0
        mem[(32 * stor6[address(arg1)].field_0) + 224 len floor32(stor6[address(arg1)].field_0)] = mem[160 len floor32(stor6[address(arg1)].field_0)]
        return memory
          from (32 * stor6[address(arg1)].field_0) + 160
           len (96 * stor6[address(arg1)].field_0) + 64
    mem[160] = stor6[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor6[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor6[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6[address(arg1)].field_0) + 224 len floor32(stor6[address(arg1)].field_0)] = mem[160 len floor32(stor6[address(arg1)].field_0)]
    return Array(len=stor6[address(arg1)].field_0, data=mem[160 len floor32(stor6[address(arg1)].field_0)], mem[(32 * stor6[address(arg1)].field_0) + floor32(stor6[address(arg1)].field_0) + 224 len (32 * stor6[address(arg1)].field_0) - floor32(stor6[address(arg1)].field_0)]), 
}

function finalise() {
    require sub_a3d35f36 > 0
    require stor12 <= 1
    require not stor12
    require endTime < block.timestamp
    require sub_d167b920 <= eth.balance(this.address)
    if bool(stor11.field_0):
        if sub_a3d35f36 + 1 / 2 <= 5:
            require sub_a3d35f36 + 1 / 2
            idx = 1
            while idx <= sub_a3d35f36 + 1 / 2:
                require sub_a3d35f36 - idx < stor10.length
                call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                   value eth.balance(this.address) - sub_d167b920 / sub_a3d35f36 + 1 / 2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require sub_a3d35f36 - idx < stor10.length
                mem[32] = 7
                require (eth.balance(this.address) - sub_d167b920 / sub_a3d35f36 + 1 / 2) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                require sub_a3d35f36 - idx < stor10.length
                mem[0] = 10
                mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                mem[128] = eth.balance(this.address) - sub_d167b920 / sub_a3d35f36 + 1 / 2
                emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / sub_a3d35f36 + 1 / 2
                idx = idx + 1
                continue 
        else:
            idx = 1
            while idx <= 5:
                require sub_a3d35f36 - idx < stor10.length
                call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                   value eth.balance(this.address) - sub_d167b920 / 2 / 5 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require sub_a3d35f36 - idx < stor10.length
                mem[32] = 7
                require (eth.balance(this.address) - sub_d167b920 / 2 / 5) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                require sub_a3d35f36 - idx < stor10.length
                mem[0] = 10
                mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                mem[128] = eth.balance(this.address) - sub_d167b920 / 2 / 5
                emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / 2 / 5
                idx = idx + 1
                continue 
            if (sub_a3d35f36 + 1 / 2) - 5 > 50:
                idx = 1
                while idx <= 50:
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                       value eth.balance(this.address) - sub_d167b920 / 2 / 50 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[32] = 7
                    require (eth.balance(this.address) - sub_d167b920 / 2 / 50) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[0] = 10
                    mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                    mem[128] = eth.balance(this.address) - sub_d167b920 / 2 / 50
                    emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / 2 / 50
                    idx = idx + 1
                    continue 
            else:
                require (sub_a3d35f36 + 1 / 2) - 5
                idx = 1
                while idx <= (sub_a3d35f36 + 1 / 2) - 5:
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                       value eth.balance(this.address) - sub_d167b920 / 2 / (sub_a3d35f36 + 1 / 2) - 5 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[32] = 7
                    require (eth.balance(this.address) - sub_d167b920 / 2 / (sub_a3d35f36 + 1 / 2) - 5) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[0] = 10
                    mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                    mem[128] = eth.balance(this.address) - sub_d167b920 / 2 / (sub_a3d35f36 + 1 / 2) - 5
                    emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / 2 / (sub_a3d35f36 + 1 / 2) - 5
                    idx = idx + 1
                    continue 
    else:
        if uint255(stor11.field_1) + 1 <= 5:
            require uint255(stor11.field_1) + 1
            idx = 1
            while idx <= uint255(stor11.field_1) + 1:
                require sub_a3d35f36 - idx < stor10.length
                call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                   value eth.balance(this.address) - sub_d167b920 / uint255(stor11.field_1) + 1 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require sub_a3d35f36 - idx < stor10.length
                mem[32] = 7
                require (eth.balance(this.address) - sub_d167b920 / uint255(stor11.field_1) + 1) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                require sub_a3d35f36 - idx < stor10.length
                mem[0] = 10
                mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                mem[128] = eth.balance(this.address) - sub_d167b920 / uint255(stor11.field_1) + 1
                emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / uint255(stor11.field_1) + 1
                idx = idx + 1
                continue 
        else:
            idx = 1
            while idx <= 5:
                require sub_a3d35f36 - idx < stor10.length
                call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                   value eth.balance(this.address) - sub_d167b920 / 2 / 5 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require sub_a3d35f36 - idx < stor10.length
                mem[32] = 7
                require (eth.balance(this.address) - sub_d167b920 / 2 / 5) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                require sub_a3d35f36 - idx < stor10.length
                mem[0] = 10
                mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                mem[128] = eth.balance(this.address) - sub_d167b920 / 2 / 5
                emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / 2 / 5
                idx = idx + 1
                continue 
            if uint255(stor11.field_1) - 4 > 50:
                idx = 1
                while idx <= 50:
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                       value eth.balance(this.address) - sub_d167b920 / 2 / 50 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[32] = 7
                    require (eth.balance(this.address) - sub_d167b920 / 2 / 50) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[0] = 10
                    mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                    mem[128] = eth.balance(this.address) - sub_d167b920 / 2 / 50
                    emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / 2 / 50
                    idx = idx + 1
                    continue 
            else:
                require uint255(stor11.field_1) - 4
                idx = 1
                while idx <= uint255(stor11.field_1) - 4:
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    call stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx] with:
                       value eth.balance(this.address) - sub_d167b920 / 2 / uint255(stor11.field_1) - 4 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[32] = 7
                    require (eth.balance(this.address) - sub_d167b920 / 2 / uint255(stor11.field_1) - 4) + sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]] >= sub_a684cd0b[stor[uint256(stor11.field_0) - idx + ('name', 'stor10', 10)]]
                    require sub_a3d35f36 + -idx - 5 < stor10.length
                    mem[0] = 10
                    mem[96] = stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx]
                    mem[128] = eth.balance(this.address) - sub_d167b920 / 2 / uint255(stor11.field_1) - 4
                    emit 0xfde21004: stor[('name', 'stor10', 10) + uint256(stor11.field_0) - idx], eth.balance(this.address) - sub_d167b920 / 2 / uint255(stor11.field_1) - 4
                    idx = idx + 1
                    continue 
    stor12 = 1
    return 0
}



}
