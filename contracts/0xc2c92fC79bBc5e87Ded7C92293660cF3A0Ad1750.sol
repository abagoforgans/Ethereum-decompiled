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

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = msg.sender or Mask(96, 160, stor8)
    return code.data[71 len 1180]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 gamblers_Until_Jackpot;
uint256 total_Gamblers;
uint256 fees;
uint256 bankroll;
uint256 jackpot;
uint256 total_Deposits;
uint256 total_Payouts;
address owner;
uint256 stor8;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;

function Fees() payable {
    return fees
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

function Total_Deposits() payable {
    return total_Deposits
}

function Bankroll() payable {
    return bankroll
}

function Total_Gamblers() payable {
    return total_Gamblers
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor8) = arg1 or Mask(96, 160, uint256(stor8))
}

function gamblerlist(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[(2 * arg1) + code.data[1148 len 32]]), stor290D[arg1]
}

function enter() payable {
    if msg.value >= 10^18:
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
        uint256(stor[code.data[1148 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1148 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = msg.value
        total_Deposits += msg.value
        fees = msg.value / 13
        bankroll += (80 * msg.value) - (80 * msg.value / 13) / 100
        jackpot = msg.value - (msg.value / 13) - ((80 * msg.value) - (80 * msg.value / 13) / 100) + jackpot
        if msg.value / 13:
            call address(owner) with:
               value fees wei
                 gas 0 wei
            total_Payouts += fees
        require stor0.length < stor0.length
        if stor0.length % 40 != 0:
            if 0 == bool(sha3(address(stor[code.data[1148 len 32] + (2 * stor0.length)]))):
                if 0 == bool(stor0.length):
                    if bankroll > 0:
                        require stor0.length < stor0.length
                        call address(stor[code.data[1148 len 32] + (2 * stor0.length)]) with:
                           value bankroll wei
                             gas 0 wei
                        total_Payouts += bankroll
                        bankroll = 0
        else:
            if jackpot > 0:
                call address(stor[code.data[1148 len 32] + (2 * stor0.length)]) with:
                   value jackpot wei
                     gas 0 wei
                total_Payouts += jackpot
                jackpot = 0
            else:
                if 0 == bool(sha3(address(stor[code.data[1148 len 32] + (2 * stor0.length)]))):
                    if 0 == bool(stor0.length):
                        if bankroll > 0:
                            require stor0.length < stor0.length
                            call address(stor[code.data[1148 len 32] + (2 * stor0.length)]) with:
                               value bankroll wei
                                 gas 0 wei
                            total_Payouts += bankroll
                            bankroll = 0
}

function _fallback() payable {
    if msg.value >= 10^18:
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
        uint256(stor[code.data[1148 len 32] + (2 * stor0.length)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[1148 len 32] + (2 * stor0.length)]))
        stor290D[stor0.length] = msg.value
        total_Deposits += msg.value
        fees = msg.value / 13
        bankroll += (80 * msg.value) - (80 * msg.value / 13) / 100
        jackpot = msg.value - (msg.value / 13) - ((80 * msg.value) - (80 * msg.value / 13) / 100) + jackpot
        if msg.value / 13:
            call address(owner) with:
               value fees wei
                 gas 0 wei
            total_Payouts += fees
        require stor0.length < stor0.length
        if stor0.length % 40 != 0:
            if 0 == bool(sha3(address(stor[code.data[1148 len 32] + (2 * stor0.length)]))):
                if 0 == bool(stor0.length):
                    if bankroll > 0:
                        require stor0.length < stor0.length
                        call address(stor[code.data[1148 len 32] + (2 * stor0.length)]) with:
                           value bankroll wei
                             gas 0 wei
                        total_Payouts += bankroll
                        bankroll = 0
        else:
            if jackpot > 0:
                call address(stor[code.data[1148 len 32] + (2 * stor0.length)]) with:
                   value jackpot wei
                     gas 0 wei
                total_Payouts += jackpot
                jackpot = 0
            else:
                if 0 == bool(sha3(address(stor[code.data[1148 len 32] + (2 * stor0.length)]))):
                    if 0 == bool(stor0.length):
                        if bankroll > 0:
                            require stor0.length < stor0.length
                            call address(stor[code.data[1148 len 32] + (2 * stor0.length)]) with:
                               value bankroll wei
                                 gas 0 wei
                            total_Payouts += bankroll
                            bankroll = 0
}



}
