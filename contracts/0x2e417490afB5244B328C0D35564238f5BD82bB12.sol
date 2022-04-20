contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor6;
address stor6; offset 48
uint256 stor6; offset 40
uint256 stor6; offset 32
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 6
    stor3.length.field_8 = 'Nodium' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 1
    stor4.length.field_8 = 'N' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 1
    Mask(240, 0, stor6.field_16) = 0
    Mask(232, 0, stor6.field_24) = 0
    Mask(224, 0, stor6.field_32) = 0
    Mask(216, 0, stor6.field_40) = 1
    address(stor6.field_48) = 0
    stor7 = 0
    stor8 = 40 * 10^6
    stor9 = 2800000
    stor10 = 1200000
    stor11 = 36000120
    stor12 = 36000120
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor7 = msg.sender
    address(stor6.field_48) = code.data[11440 len 20]
    stor1[address(stor6.field_0)] = stor9
    require stor9 <= stor8
    stor8 -= stor9
    require stor10 <= stor8
    stor8 -= stor10
    stor0 = stor8
    stor1[stor7] = stor0
    return code.data[1193 len 10235]
}



// =====================  Runtime code  =====================


const price = 10^15

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint8 stor6; offset 24
uint8 stor6; offset 32
uint8 stor6; offset 40
address stor6;
address stor6; offset 48
uint256 stor6; offset 40
uint256 stor6; offset 32
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
address stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function freeze() {
    require msg.sender == stor7
    Mask(216, 0, stor6.field_40) = 1
}

function unFreeze() {
    require msg.sender == stor7
    Mask(216, 0, stor6.field_40) = 0
}

function EventEmergencyStop() {
    require msg.sender == stor7
    uint8(stor6.field_0) = 1
}

function PreTgeEnable() {
    require msg.sender == stor7
    Mask(248, 0, stor6.field_8) = 1
}

function PreTgeDisable() {
    require msg.sender == stor7
    Mask(248, 0, stor6.field_8) = 0
}

function StageTwoEnable() {
    require msg.sender == stor7
    Mask(232, 0, stor6.field_24) = 1
}

function StageOneEnable() {
    require msg.sender == stor7
    Mask(240, 0, stor6.field_16) = 1
}

function EventEmergencyContinue() {
    require msg.sender == stor7
    uint8(stor6.field_0) = 0
}

function StageTwoDisable() {
    require msg.sender == stor7
    Mask(232, 0, stor6.field_24) = 0
}

function StageOneDisable() {
    require msg.sender == stor7
    Mask(240, 0, stor6.field_16) = 0
}

function StageThreeEnable() {
    require msg.sender == stor7
    Mask(224, 0, stor6.field_32) = 1
}

function StageThreeDisable() {
    require msg.sender == stor7
    Mask(224, 0, stor6.field_32) = 0
}

function changeOwner(address arg1) {
    require msg.sender == stor7
    balanceOf[address(arg1)] = balanceOf[stor7]
    balanceOf[stor7] = 0
    stor7 = arg1
}

function burnRemainingTokens() {
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_40)
    require msg.sender == stor7
    emit Burn(balanceOf[stor7], stor7);
    balanceOf[stor7] = 0
}

function changeFounder(address arg1) {
    require msg.sender == stor7
    balanceOf[address(arg1)] = balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] = 0
    address(stor6.field_48) = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendBounty(address arg1, uint256 arg2) {
    require msg.sender == stor7
    require arg2 <= stor10
    stor10 -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit TokensSent(arg2, arg1);
    emit Transfer(arg2, stor7, arg1);
}

function sendSupplyTokens(address arg1, uint256 arg2) {
    require msg.sender == stor7
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit TokensSent(arg2, arg1);
    emit Transfer(arg2, stor7, arg1);
}

function sendTeamTokens(address arg1, uint256 arg2) {
    require msg.sender == stor7
    require arg2 <= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit TokensSent(arg2, arg1);
    emit Transfer(arg2, stor7, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_40)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_0)
    require not uint8(stor6.field_40)
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor6.field_0)
    require msg.value > 0
    require balanceOf[stor7] > msg.value / 10^15
    if uint8(stor6.field_32):
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        Mask(232, 0, stor6.field_24) = 0
    if not uint8(stor6.field_24):
        if not uint8(stor6.field_16):
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) >= stor13
                require stor13 + (msg.value / 10^15) >= msg.value / 10^15
                require stor13 + (msg.value / 10^15) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) >= msg.value / 10^15
                balanceOf[address(msg.sender)] += msg.value / 10^15
                require msg.value / 10^15 <= balanceOf[stor7]
                balanceOf[stor7] -= msg.value / 10^15
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) >= stor15
                    require stor15 + (msg.value / 10^15) >= msg.value / 10^15
                    stor15 += msg.value / 10^15
                require stor13 + (msg.value / 10^15) >= stor13
                require stor13 + (msg.value / 10^15) >= msg.value / 10^15
                stor13 += msg.value / 10^15
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, msg.value / 10^15, msg.sender);
                emit TokensSent((msg.value / 10^15), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^15), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 5)), stor7, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= stor13
                require stor13 >= 0
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10)
                require (msg.value / 10^15) + (msg.value / 10^15 / 10) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 10)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 10), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 10)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 10)), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 10) - ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)), stor7, msg.sender);
    else:
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        if not uint8(stor6.field_16):
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= stor13
                require stor13 >= 0
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20)), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)), stor7, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= stor13
                require stor13 >= 0
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)), stor7, msg.sender);
}

function buy() payable {
    require not uint8(stor6.field_0)
    require msg.value > 0
    require balanceOf[stor7] > msg.value / 10^15
    if uint8(stor6.field_32):
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        Mask(232, 0, stor6.field_24) = 0
    if not uint8(stor6.field_24):
        if not uint8(stor6.field_16):
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) >= stor13
                require stor13 + (msg.value / 10^15) >= msg.value / 10^15
                require stor13 + (msg.value / 10^15) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) >= msg.value / 10^15
                balanceOf[address(msg.sender)] += msg.value / 10^15
                require msg.value / 10^15 <= balanceOf[stor7]
                balanceOf[stor7] -= msg.value / 10^15
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) >= stor15
                    require stor15 + (msg.value / 10^15) >= msg.value / 10^15
                    stor15 += msg.value / 10^15
                require stor13 + (msg.value / 10^15) >= stor13
                require stor13 + (msg.value / 10^15) >= msg.value / 10^15
                stor13 += msg.value / 10^15
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, msg.value / 10^15, msg.sender);
                emit TokensSent((msg.value / 10^15), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer((msg.value / 10^15), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 5)), stor7, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= stor13
                require stor13 >= 0
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10)
                require (msg.value / 10^15) + (msg.value / 10^15 / 10) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 10)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 10), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 10)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 10)), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 10) - ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 10) / 5)), stor7, msg.sender);
    else:
        Mask(248, 0, stor6.field_8) = 0
        Mask(240, 0, stor6.field_16) = 0
        if not uint8(stor6.field_16):
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= stor13
                require stor13 >= 0
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20)), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 5)), stor7, msg.sender);
        else:
            Mask(248, 0, stor6.field_8) = 0
            if not uint8(stor6.field_8):
                require stor15 <= stor12
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= stor13
                require stor13 >= 0
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10)), stor7, msg.sender);
            else:
                if uint8(stor6.field_8):
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) < stor11
                else:
                    require stor15 <= stor12
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor13
                    require stor13 >= 0
                    require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) < stor12 - stor15
                call address(stor6.field_48) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                require (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) <= balanceOf[stor7]
                balanceOf[stor7] = balanceOf[stor7] - (msg.value / 10^15) - (msg.value / 10^15 / 20) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) - ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                if uint8(stor6.field_8):
                    require stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor15
                    require stor15 >= 0
                    stor15 = stor15 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                require stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5) >= stor13
                require stor13 >= 0
                stor13 = stor13 + (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)
                require stor14 + msg.value >= stor14
                require stor14 + msg.value >= msg.value
                stor14 += msg.value
                emit Buy(msg.value, (msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5), msg.sender);
                emit TokensSent(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)), msg.sender);
                emit ContributionReceived(msg.value, msg.sender);
                emit Transfer(((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) + ((msg.value / 10^15) + (msg.value / 10^15 / 20) / 10) / 5)), stor7, msg.sender);
    return 1
}



}
