contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7; offset 152
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
address stor11;
uint256 stor12;
address stor13;
uint256 stor14;
address stor15;
uint256 stor16;
address stor17;
uint256 stor18;
address stor19;
uint256 stor20;

function _fallback() payable {
    stor0 = 0
    stor5 = 1000
    stor6 = 500
    Mask(152, 0, stor7.field_0) = 0x998eba0e5b83018a0cfcdecc5304f9f167d27a
    uint8(stor7.field_152) = 0
    stor8 = 50
    stor9 = 0x4ad48be9bf6e2d35277bd33c100d283c29c7951f
    stor10 = 75
    stor11 = 0x2a62609c6a6bdbe25da4fb05980e85db9a479c5e
    stor12 = 75
    stor13 = 0x53b8ffbe35ae548f22d5a3b31d6e5e0c04f0d2df
    stor14 = 70
    stor15 = 0x43f1aa047d3241b7dd250eb37b25fc509085fdf9
    stor16 = 200
    stor17 = 0x64ea62a8080ed1c2b8d996acc7a82108975e5361
    stor18 = 30
    require not msg.value
    stor4 = msg.sender
    stor20 = code.data[5135 len 32]
    stor19 = code.data[5179 len 20]
    stor0 = 0
    return code.data[378 len 4757]
}



// =====================  Runtime code  =====================


const name = 'REX - Real Estate tokens'

const decimals = 18

const version = '0.1.1'

const symbol = 'REX'

const WEI_RAISED_CAP = 133333 * 10^18


uint8 stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
address stor11;
uint256 stor12;
address stor13;
uint256 stor14;
address stor15;
uint256 stor16;
address stor17;
uint256 stor18;
address stor19;
uint256 startTime;
uint256 weiRaised;
uint8 tokenSaleOnHold;
uint8 migrateDisabled; offset 8
mapping of struct stor23;

function totalSupply() {
    return totalSupply
}

function weiRaised() {
    return weiRaised
}

function tokenSaleOnHold() {
    return bool(tokenSaleOnHold)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor0)
}

function owner() {
    return owner
}

function migrateDisabled() {
    return bool(migrateDisabled)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function toggleMigrationStatus() {
    require owner == msg.sender
    if not migrateDisabled:
        migrateDisabled = 1
    else:
        migrateDisabled = 0
}

function toggleTokenSaleOnHold() {
    require owner == msg.sender
    if not tokenSaleOnHold:
        tokenSaleOnHold = 1
    else:
        tokenSaleOnHold = 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function getRate() {
    if block.timestamp < startTime + (168 * 24 * 3600):
        return 1000
    if block.timestamp < startTime + (336 * 24 * 3600):
        return 900
    if block.timestamp >= startTime + (504 * 24 * 3600):
        return 700
    return 800
}

function getFinalSupply() {
    if not stor5:
        if stor6:
            return (totalSupply * stor5 / stor6)
    else:
        if stor5:
            if totalSupply * stor5 / stor5 == totalSupply:
                if stor6:
                    return (totalSupply * stor5 / stor6)
    revert
}

function tokenAmount(uint256 arg1, uint256 arg2) {
    require arg1 <= stor5
    if not arg1:
        if stor5:
            return (arg2 * arg1 / stor5)
    else:
        if arg1:
            if arg2 * arg1 / arg1 == arg2:
                if stor5:
                    return (arg2 * arg1 / stor5)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require stor0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferOwnCoins(address arg1, uint256 arg2) {
    require owner == msg.sender
    require stor0
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, this.address, arg1);
}

function claimMigrate() {
    require not migrateDisabled
    require stor23[address(msg.sender)].field_256
    require block.timestamp >= stor23[address(msg.sender)].field_0 + (168 * 24 * 3600)
    balanceOf[address(msg.sender)] += stor23[address(msg.sender)].field_256
    totalSupply += stor23[address(msg.sender)].field_256
    stor23[address(msg.sender)].field_0 = 0
    stor23[address(msg.sender)].field_256 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function migrate(uint256 arg1) {
    require stor0
    require not migrateDisabled
    require stor23[address(msg.sender)].field_256 <= 0
    require ext_code.size(0x42a689f1ebfca404e13c29cb6d01e00059ba9dbc)
    call 0x42a689f1ebfca404e13c29cb6d01e00059ba9dbc.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1 / 10^14
    require ext_call.success
    stor23[address(msg.sender)].field_0 = block.timestamp
    stor23[address(msg.sender)].field_256 = arg1
}

function finalize() {
    require owner == msg.sender
    require not stor0
    if weiRaised < 133333 * 10^18:
        require block.timestamp > startTime + (672 * 24 * 3600)
    if stor5:
        require stor5
        require totalSupply * stor5 / stor5 == totalSupply
    require stor6
    require stor8 <= stor5
    if stor8:
        require stor8
        require totalSupply * stor5 / stor6 * stor8 / stor8 == totalSupply * stor5 / stor6
    require stor5
    require (totalSupply * stor5 / stor6 * stor8 / stor5) + balanceOf[stor7] >= balanceOf[stor7]
    balanceOf[stor7] += totalSupply * stor5 / stor6 * stor8 / stor5
    emit TokenCreated((totalSupply * stor5 / stor6 * stor8 / stor5), stor7);
    require (totalSupply * stor5 / stor6 * stor8 / stor5) + totalSupply >= totalSupply
    totalSupply += totalSupply * stor5 / stor6 * stor8 / stor5
    require stor10 <= stor5
    if stor10:
        require stor10
        require totalSupply * stor5 / stor6 * stor10 / stor10 == totalSupply * stor5 / stor6
    require stor5
    require (totalSupply * stor5 / stor6 * stor10 / stor5) + balanceOf[stor9] >= balanceOf[stor9]
    balanceOf[stor9] += totalSupply * stor5 / stor6 * stor10 / stor5
    emit TokenCreated((totalSupply * stor5 / stor6 * stor10 / stor5), stor9);
    require (totalSupply * stor5 / stor6 * stor10 / stor5) + totalSupply >= totalSupply
    totalSupply += totalSupply * stor5 / stor6 * stor10 / stor5
    require stor12 <= stor5
    if stor12:
        require stor12
        require totalSupply * stor5 / stor6 * stor12 / stor12 == totalSupply * stor5 / stor6
    require stor5
    require (totalSupply * stor5 / stor6 * stor12 / stor5) + balanceOf[stor11] >= balanceOf[stor11]
    balanceOf[stor11] += totalSupply * stor5 / stor6 * stor12 / stor5
    emit TokenCreated((totalSupply * stor5 / stor6 * stor12 / stor5), stor11);
    require (totalSupply * stor5 / stor6 * stor12 / stor5) + totalSupply >= totalSupply
    totalSupply += totalSupply * stor5 / stor6 * stor12 / stor5
    require stor14 <= stor5
    if stor14:
        require stor14
        require totalSupply * stor5 / stor6 * stor14 / stor14 == totalSupply * stor5 / stor6
    require stor5
    require (totalSupply * stor5 / stor6 * stor14 / stor5) + balanceOf[stor13] >= balanceOf[stor13]
    balanceOf[stor13] += totalSupply * stor5 / stor6 * stor14 / stor5
    emit TokenCreated((totalSupply * stor5 / stor6 * stor14 / stor5), stor13);
    require (totalSupply * stor5 / stor6 * stor14 / stor5) + totalSupply >= totalSupply
    totalSupply += totalSupply * stor5 / stor6 * stor14 / stor5
    require stor16 <= stor5
    if stor16:
        require stor16
        require totalSupply * stor5 / stor6 * stor16 / stor16 == totalSupply * stor5 / stor6
    require stor5
    require (totalSupply * stor5 / stor6 * stor16 / stor5) + balanceOf[stor15] >= balanceOf[stor15]
    balanceOf[stor15] += totalSupply * stor5 / stor6 * stor16 / stor5
    emit TokenCreated((totalSupply * stor5 / stor6 * stor16 / stor5), stor15);
    require (totalSupply * stor5 / stor6 * stor16 / stor5) + totalSupply >= totalSupply
    totalSupply += totalSupply * stor5 / stor6 * stor16 / stor5
    require stor18 <= stor5
    if stor18:
        require stor18
        require totalSupply * stor5 / stor6 * stor18 / stor18 == totalSupply * stor5 / stor6
    require stor5
    require (totalSupply * stor5 / stor6 * stor18 / stor5) + balanceOf[stor17] >= balanceOf[stor17]
    balanceOf[stor17] += totalSupply * stor5 / stor6 * stor18 / stor5
    emit TokenCreated((totalSupply * stor5 / stor6 * stor18 / stor5), stor17);
    require (totalSupply * stor5 / stor6 * stor18 / stor5) + totalSupply >= totalSupply
    totalSupply += totalSupply * stor5 / stor6 * stor18 / stor5
    stor0 = 1
}

function createTokens(address arg1) payable {
    require not tokenSaleOnHold
    require msg.value
    require block.timestamp >= startTime
    require block.timestamp <= startTime + (672 * 24 * 3600)
    require weiRaised < 133333 * 10^18
    if weiRaised + msg.value <= 133333 * 10^18:
        if block.timestamp < startTime + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 1000 * msg.value / msg.value == 1000
            require (1000 * msg.value) + totalSupply >= totalSupply
            totalSupply += 1000 * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (1000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 1000 * msg.value
            emit TokenCreated((1000 * msg.value), arg1);
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 900 * msg.value / msg.value == 900
                require (900 * msg.value) + totalSupply >= totalSupply
                totalSupply += 900 * msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (900 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 900 * msg.value
                emit TokenCreated((900 * msg.value), arg1);
            else:
                if block.timestamp >= startTime + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 700 * msg.value / msg.value == 700
                    require (700 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 700 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (700 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 700 * msg.value
                    emit TokenCreated((700 * msg.value), arg1);
                else:
                    if msg.value:
                        require msg.value
                        require 800 * msg.value / msg.value == 800
                    require (800 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 800 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (800 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 800 * msg.value
                    emit TokenCreated((800 * msg.value), arg1);
        call stor19 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value msg.value + weiRaised - 133333 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if block.timestamp < startTime + (168 * 24 * 3600):
            if -weiRaised + 133333 * 10^18:
                require -weiRaised + 133333 * 10^18
                require (-1000 * weiRaised) + 133333000 * 10^18 / -weiRaised + 133333 * 10^18 == 1000
            require (-1000 * weiRaised) + totalSupply + 133333000 * 10^18 >= totalSupply
            totalSupply = (-1000 * weiRaised) + totalSupply + 133333000 * 10^18
            require 133333 * 10^18 >= weiRaised
            weiRaised = 133333 * 10^18
            require (-1000 * weiRaised) + balanceOf[address(arg1)] + 133333000 * 10^18 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = (-1000 * weiRaised) + balanceOf[address(arg1)] + 133333000 * 10^18
            emit TokenCreated(((-1000 * weiRaised) + 133333000 * 10^18), arg1);
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if -weiRaised + 133333 * 10^18:
                    require -weiRaised + 133333 * 10^18
                    require (-900 * weiRaised) + (3333325 * 10^16 * 3600) / -weiRaised + 133333 * 10^18 == 900
                require (-900 * weiRaised) + totalSupply + (3333325 * 10^16 * 3600) >= totalSupply
                totalSupply = (-900 * weiRaised) + totalSupply + (3333325 * 10^16 * 3600)
                require 133333 * 10^18 >= weiRaised
                weiRaised = 133333 * 10^18
                require (-900 * weiRaised) + balanceOf[address(arg1)] + (3333325 * 10^16 * 3600) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = (-900 * weiRaised) + balanceOf[address(arg1)] + (3333325 * 10^16 * 3600)
                emit TokenCreated(((-900 * weiRaised) + (3333325 * 10^16 * 3600)), arg1);
            else:
                if block.timestamp >= startTime + (504 * 24 * 3600):
                    if -weiRaised + 133333 * 10^18:
                        require -weiRaised + 133333 * 10^18
                        require (-700 * weiRaised) + 93333100 * 10^18 / -weiRaised + 133333 * 10^18 == 700
                    require (-700 * weiRaised) + totalSupply + 93333100 * 10^18 >= totalSupply
                    totalSupply = (-700 * weiRaised) + totalSupply + 93333100 * 10^18
                    require 133333 * 10^18 >= weiRaised
                    weiRaised = 133333 * 10^18
                    require (-700 * weiRaised) + balanceOf[address(arg1)] + 93333100 * 10^18 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = (-700 * weiRaised) + balanceOf[address(arg1)] + 93333100 * 10^18
                    emit TokenCreated(((-700 * weiRaised) + 93333100 * 10^18), arg1);
                else:
                    if -weiRaised + 133333 * 10^18:
                        require -weiRaised + 133333 * 10^18
                        require (-800 * weiRaised) + 106666400 * 10^18 / -weiRaised + 133333 * 10^18 == 800
                    require (-800 * weiRaised) + totalSupply + 106666400 * 10^18 >= totalSupply
                    totalSupply = (-800 * weiRaised) + totalSupply + 106666400 * 10^18
                    require 133333 * 10^18 >= weiRaised
                    weiRaised = 133333 * 10^18
                    require (-800 * weiRaised) + balanceOf[address(arg1)] + 106666400 * 10^18 >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = (-800 * weiRaised) + balanceOf[address(arg1)] + 106666400 * 10^18
                    emit TokenCreated(((-800 * weiRaised) + 106666400 * 10^18), arg1);
        call stor19 with:
           value -weiRaised + 133333 * 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not tokenSaleOnHold
    require msg.value
    require block.timestamp >= startTime
    require block.timestamp <= startTime + (672 * 24 * 3600)
    require weiRaised < 133333 * 10^18
    if weiRaised + msg.value <= 133333 * 10^18:
        if block.timestamp < startTime + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 1000 * msg.value / msg.value == 1000
            require (1000 * msg.value) + totalSupply >= totalSupply
            totalSupply += 1000 * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (1000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit TokenCreated((1000 * msg.value), msg.sender);
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 900 * msg.value / msg.value == 900
                require (900 * msg.value) + totalSupply >= totalSupply
                totalSupply += 900 * msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (900 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 900 * msg.value
                emit TokenCreated((900 * msg.value), msg.sender);
            else:
                if block.timestamp >= startTime + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 700 * msg.value / msg.value == 700
                    require (700 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 700 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (700 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 700 * msg.value
                    emit TokenCreated((700 * msg.value), msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 800 * msg.value / msg.value == 800
                    require (800 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 800 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (800 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 800 * msg.value
                    emit TokenCreated((800 * msg.value), msg.sender);
        call stor19 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value msg.value + weiRaised - 133333 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if block.timestamp < startTime + (168 * 24 * 3600):
            if -weiRaised + 133333 * 10^18:
                require -weiRaised + 133333 * 10^18
                require (-1000 * weiRaised) + 133333000 * 10^18 / -weiRaised + 133333 * 10^18 == 1000
            require (-1000 * weiRaised) + totalSupply + 133333000 * 10^18 >= totalSupply
            totalSupply = (-1000 * weiRaised) + totalSupply + 133333000 * 10^18
            require 133333 * 10^18 >= weiRaised
            weiRaised = 133333 * 10^18
            require (-1000 * weiRaised) + balanceOf[address(msg.sender)] + 133333000 * 10^18 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (-1000 * weiRaised) + balanceOf[address(msg.sender)] + 133333000 * 10^18
            emit TokenCreated(((-1000 * weiRaised) + 133333000 * 10^18), msg.sender);
        else:
            if block.timestamp < startTime + (336 * 24 * 3600):
                if -weiRaised + 133333 * 10^18:
                    require -weiRaised + 133333 * 10^18
                    require (-900 * weiRaised) + (3333325 * 10^16 * 3600) / -weiRaised + 133333 * 10^18 == 900
                require (-900 * weiRaised) + totalSupply + (3333325 * 10^16 * 3600) >= totalSupply
                totalSupply = (-900 * weiRaised) + totalSupply + (3333325 * 10^16 * 3600)
                require 133333 * 10^18 >= weiRaised
                weiRaised = 133333 * 10^18
                require (-900 * weiRaised) + balanceOf[address(msg.sender)] + (3333325 * 10^16 * 3600) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (-900 * weiRaised) + balanceOf[address(msg.sender)] + (3333325 * 10^16 * 3600)
                emit TokenCreated(((-900 * weiRaised) + (3333325 * 10^16 * 3600)), msg.sender);
            else:
                if block.timestamp >= startTime + (504 * 24 * 3600):
                    if -weiRaised + 133333 * 10^18:
                        require -weiRaised + 133333 * 10^18
                        require (-700 * weiRaised) + 93333100 * 10^18 / -weiRaised + 133333 * 10^18 == 700
                    require (-700 * weiRaised) + totalSupply + 93333100 * 10^18 >= totalSupply
                    totalSupply = (-700 * weiRaised) + totalSupply + 93333100 * 10^18
                    require 133333 * 10^18 >= weiRaised
                    weiRaised = 133333 * 10^18
                    require (-700 * weiRaised) + balanceOf[address(msg.sender)] + 93333100 * 10^18 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (-700 * weiRaised) + balanceOf[address(msg.sender)] + 93333100 * 10^18
                    emit TokenCreated(((-700 * weiRaised) + 93333100 * 10^18), msg.sender);
                else:
                    if -weiRaised + 133333 * 10^18:
                        require -weiRaised + 133333 * 10^18
                        require (-800 * weiRaised) + 106666400 * 10^18 / -weiRaised + 133333 * 10^18 == 800
                    require (-800 * weiRaised) + totalSupply + 106666400 * 10^18 >= totalSupply
                    totalSupply = (-800 * weiRaised) + totalSupply + 106666400 * 10^18
                    require 133333 * 10^18 >= weiRaised
                    weiRaised = 133333 * 10^18
                    require (-800 * weiRaised) + balanceOf[address(msg.sender)] + 106666400 * 10^18 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (-800 * weiRaised) + balanceOf[address(msg.sender)] + 106666400 * 10^18
                    emit TokenCreated(((-800 * weiRaised) + 106666400 * 10^18), msg.sender);
        call stor19 with:
           value -weiRaised + 133333 * 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
