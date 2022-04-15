contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor9;

function _fallback() payable {
    stor9 = 338
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[3621 len 32]
    stor4 = code.data[3653 len 32]
    stor5 = code.data[3685 len 32]
    stor7 = code.data[3729 len 20]
    stor6 = 55 * code.data[3621 len 32] / 100
    stor2[stor7] = code.data[3621 len 32]
    return code.data[197 len 3424]
}



// =====================  Runtime code  =====================


const name = 'SynchroCoin'

const decimals = 12

const symbol = 'SYC'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 STARTDATE;
uint256 ENDDATE;
uint256 crowdSale;
address multisigAddress;
uint256 totalFundedEther;
uint256 totalConsideredFundedEther;
mapping of uint256 stor10;
mapping of uint8 stor11;

function totalSupply() {
    return totalSupply
}

function ENDDATE() {
    return ENDDATE
}

function multisig() {
    return multisigAddress
}

function totalFundedEther() {
    return totalFundedEther
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function crowdSale() {
    return crowdSale
}

function STARTDATE() {
    return STARTDATE
}

function owner() {
    return owner
}

function totalConsideredFundedEther() {
    return totalConsideredFundedEther
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp > ENDDATE
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function calcBonusAt(uint256 arg1) {
    if arg1 < STARTDATE:
        return 140
    if arg1 < STARTDATE + (24 * 3600):
        return 120
    if arg1 < STARTDATE + (168 * 24 * 3600):
        return 115
    if arg1 < STARTDATE + (336 * 24 * 3600):
        return 110
    if arg1 < STARTDATE + (504 * 24 * 3600):
        return 105
    if arg1 > ENDDATE:
        return 0
    return 100
}

function calcBonus() {
    if block.timestamp < STARTDATE:
        return 140
    if block.timestamp < STARTDATE + (24 * 3600):
        return 120
    if block.timestamp < STARTDATE + (168 * 24 * 3600):
        return 115
    if block.timestamp < STARTDATE + (336 * 24 * 3600):
        return 110
    if block.timestamp < STARTDATE + (504 * 24 * 3600):
        return 105
    if block.timestamp > ENDDATE:
        return 0
    return 100
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp > ENDDATE
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function proxyWithdraw(address arg1) {
    require block.timestamp > ENDDATE
    require stor11[address(arg1)]
    require totalConsideredFundedEther > 1
    if crowdSale:
        require crowdSale
        require stor10[address(arg1)] * crowdSale / crowdSale == stor10[address(arg1)]
    require totalConsideredFundedEther
    call arg1 with:
       value stor10[address(arg1)] * crowdSale / totalConsideredFundedEther wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor11[address(arg1)] = 0
    return 1
}

function withdraw() {
    require block.timestamp > ENDDATE
    require stor11[address(msg.sender)]
    require totalConsideredFundedEther > 1
    if crowdSale:
        require crowdSale
        require stor10[address(msg.sender)] * crowdSale / crowdSale == stor10[address(msg.sender)]
    require totalConsideredFundedEther
    call msg.sender with:
       value stor10[address(msg.sender)] * crowdSale / totalConsideredFundedEther wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor11[address(msg.sender)] = 0
    return 1
}

function proxyPayment(address arg1) payable {
    require block.timestamp >= STARTDATE
    require block.timestamp <= ENDDATE
    require msg.value >= 10^17
    require msg.value + totalFundedEther >= totalFundedEther
    totalFundedEther += msg.value
    if block.timestamp < STARTDATE:
        if msg.value:
            require msg.value
            require 140 * msg.value / msg.value == 140
        require (140 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
        totalConsideredFundedEther += 140 * msg.value / 100
        require (140 * msg.value / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
        stor10[address(arg1)] += 140 * msg.value / 100
    else:
        if block.timestamp < STARTDATE + (24 * 3600):
            if msg.value:
                require msg.value
                require 120 * msg.value / msg.value == 120
            require (120 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
            totalConsideredFundedEther += 120 * msg.value / 100
            require (120 * msg.value / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
            stor10[address(arg1)] += 120 * msg.value / 100
        else:
            if block.timestamp < STARTDATE + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 115 * msg.value / msg.value == 115
                require (115 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                totalConsideredFundedEther += 115 * msg.value / 100
                require (115 * msg.value / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
                stor10[address(arg1)] += 115 * msg.value / 100
            else:
                if block.timestamp < STARTDATE + (336 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 110 * msg.value / msg.value == 110
                    require (110 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                    totalConsideredFundedEther += 110 * msg.value / 100
                    require (110 * msg.value / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
                    stor10[address(arg1)] += 110 * msg.value / 100
                else:
                    if block.timestamp < STARTDATE + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 105 * msg.value / msg.value == 105
                        require (105 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                        totalConsideredFundedEther += 105 * msg.value / 100
                        require (105 * msg.value / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
                        stor10[address(arg1)] += 105 * msg.value / 100
                    else:
                        if block.timestamp > ENDDATE:
                            if msg.value:
                                require msg.value
                                require not 0 / msg.value
                            require totalConsideredFundedEther >= totalConsideredFundedEther
                            require stor10[address(arg1)] >= stor10[address(arg1)]
                        else:
                            if msg.value:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                            require (100 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                            totalConsideredFundedEther += 100 * msg.value / 100
                            require (100 * msg.value / 100) + stor10[address(arg1)] >= stor10[address(arg1)]
                            stor10[address(arg1)] += 100 * msg.value / 100
    stor11[address(arg1)] = 1
    emit Fund(msg.value, totalFundedEther, arg1);
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= STARTDATE
    require block.timestamp <= ENDDATE
    require msg.value >= 10^17
    require msg.value + totalFundedEther >= totalFundedEther
    totalFundedEther += msg.value
    if block.timestamp < STARTDATE:
        if msg.value:
            require msg.value
            require 140 * msg.value / msg.value == 140
        require (140 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
        totalConsideredFundedEther += 140 * msg.value / 100
        require (140 * msg.value / 100) + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
        stor10[address(msg.sender)] += 140 * msg.value / 100
    else:
        if block.timestamp < STARTDATE + (24 * 3600):
            if msg.value:
                require msg.value
                require 120 * msg.value / msg.value == 120
            require (120 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
            totalConsideredFundedEther += 120 * msg.value / 100
            require (120 * msg.value / 100) + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
            stor10[address(msg.sender)] += 120 * msg.value / 100
        else:
            if block.timestamp < STARTDATE + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 115 * msg.value / msg.value == 115
                require (115 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                totalConsideredFundedEther += 115 * msg.value / 100
                require (115 * msg.value / 100) + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
                stor10[address(msg.sender)] += 115 * msg.value / 100
            else:
                if block.timestamp < STARTDATE + (336 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 110 * msg.value / msg.value == 110
                    require (110 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                    totalConsideredFundedEther += 110 * msg.value / 100
                    require (110 * msg.value / 100) + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
                    stor10[address(msg.sender)] += 110 * msg.value / 100
                else:
                    if block.timestamp < STARTDATE + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 105 * msg.value / msg.value == 105
                        require (105 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                        totalConsideredFundedEther += 105 * msg.value / 100
                        require (105 * msg.value / 100) + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
                        stor10[address(msg.sender)] += 105 * msg.value / 100
                    else:
                        if block.timestamp > ENDDATE:
                            if msg.value:
                                require msg.value
                                require not 0 / msg.value
                            require totalConsideredFundedEther >= totalConsideredFundedEther
                            require stor10[address(msg.sender)] >= stor10[address(msg.sender)]
                        else:
                            if msg.value:
                                require msg.value
                                require 100 * msg.value / msg.value == 100
                            require (100 * msg.value / 100) + totalConsideredFundedEther >= totalConsideredFundedEther
                            totalConsideredFundedEther += 100 * msg.value / 100
                            require (100 * msg.value / 100) + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] += 100 * msg.value / 100
    stor11[address(msg.sender)] = 1
    emit Fund(msg.value, totalFundedEther, msg.sender);
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
