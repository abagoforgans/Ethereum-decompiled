contract main {




// =====================  Runtime code  =====================


const decimals = 18

const cardsDivRate = 10

const totalEthereumBalance = eth.balance(this.address)

const referralRate = 5

const distDivRate = 40

const ownerDivRate = 50


array of uint256 name;
array of uint256 symbol;
uint256 totalCardValue;
uint256 precisionFactor;
mapping of address cardOwner;
mapping of uint256 cardPrice;
mapping of uint256 stor6;
mapping of uint256 myBalance;
mapping of uint256 totalCardDivs;
uint256 stor9;
uint256 totalDivsProduced;
uint256 totalCards;
uint8 stor12;
address stor12; offset 8
address stor13;

function name() {
    return name[0 len name.length]
}

function getcardPrice(uint256 arg1) {
    require arg1 < totalCards
    return cardPrice[arg1]
}

function getcardOwner(uint256 arg1) {
    require arg1 < totalCards
    return cardOwner[arg1]
}

function cardPrice(uint256 arg1) {
    return cardPrice[arg1]
}

function getMyBalance() {
    return myBalance[address(msg.sender)]
}

function gettotalCardDivs(uint256 arg1) {
    require arg1 < totalCards
    return totalCardDivs[arg1]
}

function getOwnerBalance(address arg1) {
    return myBalance[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function precisionFactor() {
    return precisionFactor
}

function getTotalDivsProduced() {
    return totalDivsProduced
}

function totalCardValue() {
    return totalCardValue
}

function gettotalCards() {
    return totalCards
}

function gettotalCardValue() {
    return totalCardValue
}

function totalCards() {
    return totalCards
}

function _fallback() payable {
    revert
}

function setAllowReferral(bool arg1) {
    require msg.sender == address(stor12.field_8)
    uint8(stor12.field_0) = uint8(arg1)
}

function setName(string arg1) {
    require msg.sender == address(stor12.field_8)
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require msg.sender == address(stor12.field_8)
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function setcardPrice(uint256 arg1, uint256 arg2) {
    require msg.sender == address(stor12.field_8)
    require cardOwner[arg1] == address(stor12.field_8)
    cardPrice[arg1] = arg2
}

function addNewcard(uint256 arg1) {
    require msg.sender == address(stor12.field_8)
    cardPrice[stor11 - 1] = arg1
    cardOwner[stor11 - 1] = address(stor12.field_8)
    totalCardDivs[stor11 - 1] = 0
    totalCards++
}

function withdraw() {
    require myBalance[address(msg.sender)] >= 10^15
    myBalance[address(msg.sender)] = 0
    call msg.sender with:
       value myBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(msg.sender, myBalance[address(msg.sender)]);
}

function getCardDivShare(uint256 arg1) {
    require arg1 < totalCards
    if not stor6[arg1]:
        if totalCardValue:
            return ((0 / totalCardValue) + 5 / 10)
    else:
        if stor6[arg1]:
            if stor6[arg1] * 10^(precisionFactor + 1) / stor6[arg1] == 10^(precisionFactor + 1):
                if totalCardValue:
                    return ((stor6[arg1] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10)
    revert
}

function getCardDivs(uint256 arg1, uint256 arg2) {
    require arg1 < totalCards
    if not stor6[arg1]:
        if totalCardValue:
            if not (0 / totalCardValue) + 5 / 10:
                if 10^precisionFactor:
                    return (0 / 10^precisionFactor)
            else:
                if (0 / totalCardValue) + 5 / 10:
                    if (0 / totalCardValue) + 5 / 10 * arg2 / (0 / totalCardValue) + 5 / 10 == arg2:
                        if 10^precisionFactor:
                            return ((0 / totalCardValue) + 5 / 10 * arg2 / 10^precisionFactor)
    else:
        if stor6[arg1]:
            if stor6[arg1] * 10^(precisionFactor + 1) / stor6[arg1] == 10^(precisionFactor + 1):
                if totalCardValue:
                    if not (stor6[arg1] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10:
                        if 10^precisionFactor:
                            return (0 / 10^precisionFactor)
                    else:
                        if (stor6[arg1] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10:
                            if (stor6[arg1] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 * arg2 / (stor6[arg1] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 == arg2:
                                if 10^precisionFactor:
                                    return ((stor6[arg1] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 * arg2 / 10^precisionFactor)
    revert
}

function buy(uint256 arg1, address arg2) payable {
    require arg1 < totalCards
    require msg.value == cardPrice[arg1]
    require cardOwner[arg1] != msg.sender
    if not msg.value:
        require stor6[arg1] <= 0
        require totalCardValue - stor6[arg1] >= totalCardValue
        totalCardValue -= stor6[arg1]
    else:
        require msg.value
        require msg.value * stor9 / msg.value == stor9
        require stor6[arg1] <= msg.value * stor9 / 100
        require totalCardValue + (msg.value * stor9 / 100) - stor6[arg1] >= totalCardValue
        totalCardValue = totalCardValue + (msg.value * stor9 / 100) - stor6[arg1]
    if not msg.value:
        require stor6[arg1] <= msg.value
        require totalDivsProduced + msg.value - stor6[arg1] >= totalDivsProduced
        totalDivsProduced = totalDivsProduced + msg.value - stor6[arg1]
        if not msg.value - stor6[arg1]:
            if not msg.value - stor6[arg1]:
                require totalCardDivs[arg1] >= totalCardDivs[arg1]
                require stor6[arg1] >= 0
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
            else:
                require msg.value - stor6[arg1]
                require (50 * msg.value) - (50 * stor6[arg1]) / msg.value - stor6[arg1] == 50
                require totalCardDivs[arg1] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) >= totalCardDivs[arg1]
                totalCardDivs[arg1] += (50 * msg.value) - (50 * stor6[arg1]) / 100
                require ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= (50 * msg.value) - (50 * stor6[arg1]) / 100
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
        else:
            require msg.value - stor6[arg1]
            require (10 * msg.value) - (10 * stor6[arg1]) / msg.value - stor6[arg1] == 10
            if not msg.value - stor6[arg1]:
                require totalCardDivs[arg1] >= totalCardDivs[arg1]
                require stor6[arg1] >= 0
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
            else:
                require msg.value - stor6[arg1]
                require (50 * msg.value) - (50 * stor6[arg1]) / msg.value - stor6[arg1] == 50
                require totalCardDivs[arg1] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) >= totalCardDivs[arg1]
                totalCardDivs[arg1] += (50 * msg.value) - (50 * stor6[arg1]) / 100
                require ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= (50 * msg.value) - (50 * stor6[arg1]) / 100
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
        stor6[arg1] = msg.value
        cardPrice[arg1] = 0
    else:
        require msg.value
        require msg.value * stor9 / msg.value == stor9
        require stor6[arg1] <= msg.value
        require totalDivsProduced + msg.value - stor6[arg1] >= totalDivsProduced
        totalDivsProduced = totalDivsProduced + msg.value - stor6[arg1]
        if not msg.value - stor6[arg1]:
            if not msg.value - stor6[arg1]:
                require totalCardDivs[arg1] >= totalCardDivs[arg1]
                require stor6[arg1] >= 0
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
            else:
                require msg.value - stor6[arg1]
                require (50 * msg.value) - (50 * stor6[arg1]) / msg.value - stor6[arg1] == 50
                require totalCardDivs[arg1] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) >= totalCardDivs[arg1]
                totalCardDivs[arg1] += (50 * msg.value) - (50 * stor6[arg1]) / 100
                require ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= (50 * msg.value) - (50 * stor6[arg1]) / 100
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
        else:
            require msg.value - stor6[arg1]
            require (10 * msg.value) - (10 * stor6[arg1]) / msg.value - stor6[arg1] == 10
            if not msg.value - stor6[arg1]:
                require totalCardDivs[arg1] >= totalCardDivs[arg1]
                require stor6[arg1] >= 0
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] += stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] += stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] += stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] += stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
            else:
                require msg.value - stor6[arg1]
                require (50 * msg.value) - (50 * stor6[arg1]) / msg.value - stor6[arg1] == 50
                require totalCardDivs[arg1] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) >= totalCardDivs[arg1]
                totalCardDivs[arg1] += (50 * msg.value) - (50 * stor6[arg1]) / 100
                require ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= (50 * msg.value) - (50 * stor6[arg1]) / 100
                if not msg.value - stor6[arg1]:
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += 0 / 10^precisionFactor
                            s = 0 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= 0
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                            require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not -(5 * msg.value) - (5 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require -(5 * msg.value) - (5 * stor6[arg1]) / 100
                                        require -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / -(5 * msg.value) - (5 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + (-1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = -1 * (5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                else:
                    require msg.value - stor6[arg1]
                    require (40 * msg.value) - (40 * stor6[arg1]) / msg.value - stor6[arg1] == 40
                    if not uint8(stor12.field_0):
                        require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                        myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                        call stor13 with:
                           value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = 0
                        s = 0
                        idx = 0
                        while idx < totalCards:
                            if not stor6[idx]:
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (0 / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require stor6[idx]
                            require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                            require totalCardValue
                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                s = 0 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            require 10^precisionFactor
                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                            mem[0] = idx
                            mem[32] = 8
                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                            idx = idx + 1
                            continue 
                    else:
                        if arg2 == msg.sender:
                            require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                            myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                            call stor13 with:
                               value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            s = 0
                            s = 0
                            idx = 0
                            while idx < totalCards:
                                if not stor6[idx]:
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (0 / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require stor6[idx]
                                require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                require totalCardValue
                                if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                    require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += 0 / 10^precisionFactor
                                    s = 0 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                require 10^precisionFactor
                                myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                mem[0] = idx
                                mem[32] = 8
                                totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                idx = idx + 1
                                continue 
                        else:
                            if not arg2:
                                require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                call stor13 with:
                                   value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                s = 0
                                s = 0
                                idx = 0
                                while idx < totalCards:
                                    if not stor6[idx]:
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (0 / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require stor6[idx]
                                    require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                    require totalCardValue
                                    if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                        require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += 0 / 10^precisionFactor
                                        s = 0 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    require 10^precisionFactor
                                    myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                    mem[0] = idx
                                    mem[32] = 8
                                    totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                    s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                    idx = idx + 1
                                    continue 
                            else:
                                if not msg.value - stor6[arg1]:
                                    require 0 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] >= myBalance[address(arg2)]
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                            require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10 / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not (40 * msg.value) - (40 * stor6[arg1]) / 100:
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100
                                        require (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / (40 * msg.value) - (40 * stor6[arg1]) / 100 == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        require totalCardDivs[idx] + ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10 / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
                                else:
                                    require msg.value - stor6[arg1]
                                    require (5 * msg.value) - (5 * stor6[arg1]) / msg.value - stor6[arg1] == 5
                                    require (5 * msg.value) - (5 * stor6[arg1]) / 100 <= (40 * msg.value) - (40 * stor6[arg1]) / 100
                                    require myBalance[address(arg2)] + ((5 * msg.value) - (5 * stor6[arg1]) / 100) >= myBalance[address(arg2)]
                                    myBalance[address(arg2)] += (5 * msg.value) - (5 * stor6[arg1]) / 100
                                    require myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1] >= myBalance[stor4[arg1]]
                                    myBalance[stor4[arg1]] = myBalance[stor4[arg1]] + ((50 * msg.value) - (50 * stor6[arg1]) / 100) + stor6[arg1]
                                    call stor13 with:
                                       value (10 * msg.value) - (10 * stor6[arg1]) / 100 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    s = 0
                                    s = 0
                                    idx = 0
                                    while idx < totalCards:
                                        if not stor6[idx]:
                                            require totalCardValue
                                            if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                                require 10^precisionFactor
                                                myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                                require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                                mem[0] = idx
                                                mem[32] = 8
                                                totalCardDivs[idx] += 0 / 10^precisionFactor
                                                s = 0 / 10^precisionFactor
                                                s = (0 / totalCardValue) + 5 / 10
                                                idx = idx + 1
                                                continue 
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                            require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (0 / totalCardValue) + 5 / 10
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (0 / totalCardValue) + 5 / 10) / 10^precisionFactor
                                            s = (0 / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require stor6[idx]
                                        require stor6[idx] * 10^(precisionFactor + 1) / stor6[idx] == 10^(precisionFactor + 1)
                                        require totalCardValue
                                        if not ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100):
                                            require 10^precisionFactor
                                            myBalance[stor4[idx]] += 0 / 10^precisionFactor
                                            require totalCardDivs[idx] + (0 / 10^precisionFactor) >= totalCardDivs[idx]
                                            mem[0] = idx
                                            mem[32] = 8
                                            totalCardDivs[idx] += 0 / 10^precisionFactor
                                            s = 0 / 10^precisionFactor
                                            s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                            idx = idx + 1
                                            continue 
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100)
                                        require ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / ((40 * msg.value) - (40 * stor6[arg1]) / 100) - ((5 * msg.value) - (5 * stor6[arg1]) / 100) == (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        require 10^precisionFactor
                                        myBalance[stor4[idx]] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        require totalCardDivs[idx] + (((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor) >= totalCardDivs[idx]
                                        mem[0] = idx
                                        mem[32] = 8
                                        totalCardDivs[idx] += ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = ((40 * msg.value) - (40 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) - ((5 * msg.value) - (5 * stor6[arg1]) / 100 * (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10) / 10^precisionFactor
                                        s = (stor6[idx] * 10^(precisionFactor + 1) / totalCardValue) + 5 / 10
                                        idx = idx + 1
                                        continue 
        stor6[arg1] = msg.value
        cardPrice[arg1] = msg.value * stor9 / 100
    cardOwner[arg1] = msg.sender
    if not msg.value:
        emit oncardPurchase(address(msg.sender), msg.value, arg1, 0);
    else:
        require msg.value
        require msg.value * stor9 / msg.value == stor9
        emit oncardPurchase(address(msg.sender), msg.value, arg1, msg.value * stor9 / 100);
}



}
