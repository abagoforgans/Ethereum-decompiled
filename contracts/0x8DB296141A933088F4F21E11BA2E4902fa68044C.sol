contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
uint256 stor10;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 5
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 10^17
    stor10 = 0
    require not msg.value
    stor9 = 0xee462a6717f17c57c826f1ad9b4d3813495296c9
    return code.data[117 len 1703]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 gamblers_Until_Jackpot;
uint256 total_Gamblers;
uint256 feeRate;
uint256 bankroll;
uint256 jackpot;
uint256 total_Deposits;
uint256 total_Payouts;
uint256 minDeposit;
address owner;
uint256 stor10;

function MinDeposit() {
    return minDeposit
}

function Gamblers_Until_Jackpot() {
    return gamblers_Until_Jackpot
}

function Jackpot() {
    return jackpot
}

function Total_Payouts() {
    return total_Payouts
}

function owner() {
    return owner
}

function FeeRate() {
    return feeRate
}

function Total_Deposits() {
    return total_Deposits
}

function Bankroll() {
    return bankroll
}

function Total_Gamblers() {
    return total_Gamblers
}

function setOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
}

function setFeeRate(uint256 arg1) {
    if owner == msg.sender:
        feeRate = arg1
}

function setMinDeposit(uint256 arg1) {
    if owner == msg.sender:
        minDeposit = arg1
}

function gamblerlist(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function _fallback() {
    if msg.value <= 10^16:
    total_Gamblers = stor0.length + 1
    gamblers_Until_Jackpot = -(stor0.length + 1 % 40) + 40
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = msg.value
    total_Deposits += msg.value
    stor10 = msg.value * feeRate / 100
    bankroll += (80 * msg.value) - (80 * msg.value * feeRate / 100) / 100
    jackpot = msg.value - (msg.value * feeRate / 100) - ((80 * msg.value) - (80 * msg.value * feeRate / 100) / 100) + jackpot
    if not msg.value * feeRate / 100:
        if msg.value < minDeposit:
        if stor0.length % 40:
            if stor0.length < stor0.length:
                if sha3(stor0[stor0.length].field_0, stor0.length) + (sha3(gas_remaining) % 4):
                if bankroll <= 0:
                if stor0.length < stor0.length:
                    call stor0[stor0.length].field_0 with:
                       value bankroll wei
                         gas 2300 * is_zero(value) wei
        else:
            if jackpot > 0:
                if stor0.length < stor0.length:
                    call stor0[stor0.length].field_0 with:
                       value jackpot wei
                         gas 2300 * is_zero(value) wei
            else:
                if stor0.length < stor0.length:
                    if sha3(stor0[stor0.length].field_0, stor0.length) + (sha3(gas_remaining) % 4):
                    if bankroll <= 0:
                    if stor0.length < stor0.length:
                        call stor0[stor0.length].field_0 with:
                           value bankroll wei
                             gas 2300 * is_zero(value) wei
    else:
        if stor10 < 199 * 10^16:
            call owner with:
               value stor10 wei
                 gas 2300 * is_zero(value) wei
        else:
            idx = 0
            while idx < stor10 / 199 * 10^16:
                if stor10 <= 0:
                    idx = idx + 1
                    continue 
                call owner with:
                   value 199 * 10^16 wei
                     gas 0 wei
                revert 
            require msg.value < minDeposit
    revert 
}

function enter() payable {
    if msg.value <= 10^16:
    total_Gamblers = stor0.length + 1
    gamblers_Until_Jackpot = -(stor0.length + 1 % 40) + 40
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 2 * stor0.length + 1
        while 2 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            idx = idx + 2
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = msg.value
    total_Deposits += msg.value
    stor10 = msg.value * feeRate / 100
    bankroll += (80 * msg.value) - (80 * msg.value * feeRate / 100) / 100
    jackpot = msg.value - (msg.value * feeRate / 100) - ((80 * msg.value) - (80 * msg.value * feeRate / 100) / 100) + jackpot
    if not msg.value * feeRate / 100:
        if msg.value < minDeposit:
        if stor0.length % 40:
            if stor0.length < stor0.length:
                if sha3(stor0[stor0.length].field_0, stor0.length) + (sha3(gas_remaining) % 4):
                if bankroll <= 0:
                if stor0.length < stor0.length:
                    call stor0[stor0.length].field_0 with:
                       value bankroll wei
                         gas 2300 * is_zero(value) wei
        else:
            if jackpot > 0:
                if stor0.length < stor0.length:
                    call stor0[stor0.length].field_0 with:
                       value jackpot wei
                         gas 2300 * is_zero(value) wei
            else:
                if stor0.length < stor0.length:
                    if sha3(stor0[stor0.length].field_0, stor0.length) + (sha3(gas_remaining) % 4):
                    if bankroll <= 0:
                    if stor0.length < stor0.length:
                        call stor0[stor0.length].field_0 with:
                           value bankroll wei
                             gas 2300 * is_zero(value) wei
    else:
        if stor10 < 199 * 10^16:
            call owner with:
               value stor10 wei
                 gas 2300 * is_zero(value) wei
        else:
            idx = 0
            while idx < stor10 / 199 * 10^16:
                if stor10 <= 0:
                    idx = idx + 1
                    continue 
                call owner with:
                   value 199 * 10^16 wei
                     gas 0 wei
                revert 
            require msg.value < minDeposit
    revert 
}



}
