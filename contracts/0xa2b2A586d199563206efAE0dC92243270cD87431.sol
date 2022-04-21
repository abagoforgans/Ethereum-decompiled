contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint32 stor3; offset 8
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
mapping of uint256 stor14;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 15
    stor1.length.field_8 = 'AirDrop Example' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'ADE' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor3.field_0) = 18
    stor3.field_8 % 16777216 = 0
    stor4 = 21000000 * 10^18
    stor5 = 10000000 * 10^18
    stor6 = 1000000 * 10^18
    stor7 = 5000 * 10^18
    stor8 = 0x60bf15bc406242706385846779732c740fb077f9
    stor9 = 1510566000
    stor10 = 1510567800
    stor11 = 1510569000
    stor12 = 419603 * 3600
    require not msg.value
    stor0 = msg.sender
    stor14[stor0] = stor4
    stor14[stor8] = stor6
    stor14[stor0] = stor4 - stor6
    return code.data[582 len 3594]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 name;
array of uint256 symbol;
uint32 decimals;
uint256 totalSupply;
uint256 etap;
uint256 forCommand;
uint256 sendCount;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of struct stor13;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function forCommand() {
    return forCommand
}

function sendCount() {
    return sendCount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function etap() {
    return etap
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor0 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkAddress(address arg1) {
    if stor13.length:
        idx = 0
        while idx < stor13.length:
            mem[0] = 13
            if stor13[idx].field_0 != arg1:
                idx = idx + 1
                continue 
            else:
                return 0
    return 1
}

function clearArray() {
    require stor0 == msg.sender
    require block.timestamp >= stor10
    require block.timestamp <= stor11
    stor13.length = 0
    if not stor13.length <= 0:
        idx = 0
        while stor13.length > idx:
            stor13[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function ownerTransfer(address arg1) {
    stor13.length++
    if not stor13.length <= stor13.length + 1:
        idx = stor13.length + 1
        while stor13.length > idx:
            stor13[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor13[stor13.length].field_0 = arg1
    balanceOf[stor0] -= sendCount
    balanceOf[arg1] += sendCount
    emit Transfer(sendCount, stor0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn() {
    require stor0 == msg.sender
    if block.timestamp < stor10:
        require block.timestamp >= stor12
    else:
        if block.timestamp > stor11:
            require block.timestamp >= stor12
    if block.timestamp < stor10:
        balanceOf[stor0] = 0
        totalSupply -= balanceOf[stor0]
        emit Burn(stor0, balanceOf[stor0]);
    else:
        if block.timestamp > stor11:
            balanceOf[stor0] = 0
            totalSupply -= balanceOf[stor0]
            emit Burn(stor0, balanceOf[stor0]);
        else:
            require balanceOf[stor0] - etap > 0
            balanceOf[stor0] = etap
            totalSupply = totalSupply - balanceOf[stor0] + etap
            emit Burn(stor0, balanceOf[stor0] - etap);
}

function getAddresses() {
    if not stor13.length:
        mem[(32 * stor13.length) + 160] = 32
        mem[(32 * stor13.length) + 192] = stor13.length
        mem[(32 * stor13.length) + 224 len floor32(stor13.length)] = mem[160 len floor32(stor13.length)]
        return memory
          from (32 * stor13.length) + 160
           len (96 * stor13.length) + 64
    mem[160] = address(stor13.field_0)
    idx = 160
    s = 0
    while (32 * stor13.length) + 128 > idx:
        mem[idx + 32] = stor13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor13.length) + 224 len floor32(stor13.length)] = mem[160 len floor32(stor13.length)]
    return Array(len=stor13.length, data=mem[160 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 224 len (32 * stor13.length) - floor32(stor13.length)]), 
}

function transfer(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        if balanceOf[address(msg.sender)] < arg2:
            return 0
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if block.timestamp <= stor9:
            if block.timestamp <= stor11:
                return 0
            if block.timestamp >= stor12:
                return 0
            if balanceOf[stor0] < sendCount:
                return 0
            if balanceOf[address(arg1)] + sendCount < balanceOf[address(arg1)]:
                return 0
            if stor13.length:
                idx = 0
                while idx < stor13.length:
                    mem[0] = 13
                    if stor13[idx].field_0 != arg1:
                        idx = idx + 1
                        continue 
                    else:
                        return 0
        else:
            if block.timestamp < stor10:
                if balanceOf[stor0] - etap < sendCount:
                    return 0
                if balanceOf[address(arg1)] + sendCount < balanceOf[address(arg1)]:
                    return 0
                if stor13.length:
                    idx = 0
                    while idx < stor13.length:
                        mem[0] = 13
                        if stor13[idx].field_0 != arg1:
                            idx = idx + 1
                            continue 
                        else:
                            return 0
            else:
                if block.timestamp <= stor11:
                    return 0
                if block.timestamp >= stor12:
                    return 0
                if balanceOf[stor0] < sendCount:
                    return 0
                if balanceOf[address(arg1)] + sendCount < balanceOf[address(arg1)]:
                    return 0
                if stor13.length:
                    idx = 0
                    while idx < stor13.length:
                        mem[0] = 13
                        if stor13[idx].field_0 != arg1:
                            idx = idx + 1
                            continue 
                        else:
                            return 0
        stor13.length++
        if not stor13.length <= stor13.length + 1:
            idx = stor13.length + 1
            while stor13.length > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor13[stor13.length].field_0 = arg1
        balanceOf[stor0] -= sendCount
        balanceOf[arg1] += sendCount
        emit Transfer(sendCount, stor0, arg1);
    return 1
}



}
