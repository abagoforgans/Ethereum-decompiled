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
    stor9 = 0xee462a6717f17c57c826f1ad9b4d3813495296c9
    return code.data[108 len 1433]
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
uint256 stor9;
uint256 stor10;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function MinDeposit() payable {
    return minDeposit
}

function Gamblers_Until_Jackpot() payable {
    return gamblers_Until_Jackpot
}

function Jackpot() payable {
    return jackpot
}

function Total_Payouts() payable {
    return total_Payouts
}

function owner() payable {
    return address(owner)
}

function FeeRate() payable {
    return feeRate
}

function Total_Deposits() payable {
    return total_Deposits
}

function Bankroll() payable {
    return bankroll
}

function Total_Gamblers() payable {
    return total_Gamblers
}

function setFeeRate(uint256 arg1) payable {
    if address(owner) == msg.sender:
        feeRate = arg1
}

function setMinDeposit(uint256 arg1) payable {
    if address(owner) == msg.sender:
        minDeposit = arg1
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
}

function gamblerlist(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[(2 * arg1) + code.data[1401 len 32]]), stor290D[arg1]
}

function enter() payable {
    if msg.value > 10^16:
        total_Gamblers = stor0.length + 1
        gamblers_Until_Jackpot = -(stor0.length + 1 % 40) + 40
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                uint256(stor0[idx].field_256) = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1401 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1401 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = msg.value
        total_Deposits += msg.value
        stor10 = msg.value * feeRate / 100
        bankroll += (80 * msg.value) - (80 * msg.value * feeRate / 100) / 100
        jackpot = msg.value - (msg.value * feeRate / 100) - ((80 * msg.value) - (80 * msg.value * feeRate / 100) / 100) + jackpot
        if msg.value * feeRate / 100:
            if stor10 >= 199 * 10^16:
                idx = 0
                while idx < stor10 / 199 * 10^16:
                    if stor10 > 0:
                        call address(owner) with:
                           value 199 * 10^16 wei
                             gas 0 wei
                        total_Payouts += stor10
                        stor10 -= 199 * 10^16
                    idx = idx + 1
                    continue 
            else:
                call address(owner) with:
                   value stor10 wei
                     gas 0 wei
                total_Payouts += stor10
        if msg.value >= minDeposit:
            require stor0.length < stor0.length
            if stor0.length % 40 != 0:
                if 0 == sha3(address(stor[code.data[1401 len 32] + (2 * stor0.length)]), stor0.length) + (sha3(gas_remaining) % 4):
                    if bankroll > 0:
                        require stor0.length < stor0.length
                        call address(stor[code.data[1401 len 32] + (2 * stor0.length)]) with:
                           value bankroll wei
                             gas 0 wei
                        total_Payouts += bankroll
                        bankroll = 0
            else:
                if jackpot > 0:
                    call address(stor[code.data[1401 len 32] + (2 * stor0.length)]) with:
                       value jackpot wei
                         gas 0 wei
                    total_Payouts += jackpot
                    jackpot = 0
                else:
                    if 0 == sha3(address(stor[code.data[1401 len 32] + (2 * stor0.length)]), stor0.length) + (sha3(gas_remaining) % 4):
                        if bankroll > 0:
                            require stor0.length < stor0.length
                            call address(stor[code.data[1401 len 32] + (2 * stor0.length)]) with:
                               value bankroll wei
                                 gas 0 wei
                            total_Payouts += bankroll
                            bankroll = 0
}

function _fallback() payable {
    if msg.value > 10^16:
        total_Gamblers = stor0.length + 1
        gamblers_Until_Jackpot = -(stor0.length + 1 % 40) + 40
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = 2 * stor0.length + 1
            while 2 * stor0.length > idx:
                address(stor0[idx].field_0) = 0
                uint256(stor0[idx].field_256) = 0
                idx = idx + 1
                continue 
        require stor0.length < stor0.length
        uint256(stor[code.data[1401 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1401 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = msg.value
        total_Deposits += msg.value
        stor10 = msg.value * feeRate / 100
        bankroll += (80 * msg.value) - (80 * msg.value * feeRate / 100) / 100
        jackpot = msg.value - (msg.value * feeRate / 100) - ((80 * msg.value) - (80 * msg.value * feeRate / 100) / 100) + jackpot
        if msg.value * feeRate / 100:
            if stor10 >= 199 * 10^16:
                idx = 0
                while idx < stor10 / 199 * 10^16:
                    if stor10 > 0:
                        call address(owner) with:
                           value 199 * 10^16 wei
                             gas 0 wei
                        total_Payouts += stor10
                        stor10 -= 199 * 10^16
                    idx = idx + 1
                    continue 
            else:
                call address(owner) with:
                   value stor10 wei
                     gas 0 wei
                total_Payouts += stor10
        if msg.value >= minDeposit:
            require stor0.length < stor0.length
            if stor0.length % 40 != 0:
                if 0 == sha3(address(stor[code.data[1401 len 32] + (2 * stor0.length)]), stor0.length) + (sha3(gas_remaining) % 4):
                    if bankroll > 0:
                        require stor0.length < stor0.length
                        call address(stor[code.data[1401 len 32] + (2 * stor0.length)]) with:
                           value bankroll wei
                             gas 0 wei
                        total_Payouts += bankroll
                        bankroll = 0
            else:
                if jackpot > 0:
                    call address(stor[code.data[1401 len 32] + (2 * stor0.length)]) with:
                       value jackpot wei
                         gas 0 wei
                    total_Payouts += jackpot
                    jackpot = 0
                else:
                    if 0 == sha3(address(stor[code.data[1401 len 32] + (2 * stor0.length)]), stor0.length) + (sha3(gas_remaining) % 4):
                        if bankroll > 0:
                            require stor0.length < stor0.length
                            call address(stor[code.data[1401 len 32] + (2 * stor0.length)]) with:
                               value bankroll wei
                                 gas 0 wei
                            total_Payouts += bankroll
                            bankroll = 0
}



}
