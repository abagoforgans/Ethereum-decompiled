contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor11;

function _fallback() payable {
    stor6 = 0
    stor9 = 0
    stor11 = 0
    require not msg.value
    stor3 = msg.sender
    require code.data[9785 len 32] >= block.timestamp
    require code.data[9817 len 32] >= code.data[9785 len 32]
    require code.data[9849 len 32] >= code.data[9817 len 32]
    require code.data[9881 len 32] >= code.data[9849 len 32]
    stor4 = code.data[9785 len 32]
    stor5 = code.data[9817 len 32]
    stor7 = code.data[9849 len 32]
    stor8 = code.data[9881 len 32]
    return code.data[308 len 9477]
}



// =====================  Runtime code  =====================


const saleEndTokenCreationRate = 10000

const name = Array(len=37, data='BlockChain Board Of Derivatives ', 'Token', Mask(40, -256, 'BlockChain Board Of Derivatives ', 'Token') << 256)

const divisor = 10000

const decimals = 18

const presaleTokenCreationRate = 20000

const qtAccount = 0x87a9131485cf8ed8e9bd834b46a12d7f3092c263

const version = '1.0.0'

const presaleTokenCreationCap = 40000 * 10^18

const symbol = 'BBD'

const coreTeamMemberTwo = 0xad00884d1e7d0354d16fa8ab083208c2cc3ed515

const coreTeamMemberOne = 0xe43088e823ea7422d77e32a195267ae9779a8b07

const totalTokenCreationCap = 240000 * 10^18

const saleStartTokenCreationRate = 16600


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint8 stor6;
uint256 saleStartTime;
uint256 saleEndTime;
uint8 stor9;
address migrationAgentAddress; offset 8
uint256 totalMigrated;
uint256 stor11;

function totalSupply() {
    return totalSupply
}

function saleStartTime() {
    return saleStartTime
}

function presaleEndTime() {
    return presaleEndTime
}

function presaleFinalized() {
    return bool(stor6)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function migrationAgent() {
    return migrationAgentAddress
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function saleFinalized() {
    return bool(stor9)
}

function presaleStartTime() {
    return presaleStartTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function saleEndTime() {
    return saleEndTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setMigrationAgent(address arg1) {
    require msg.sender == owner
    require stor9
    require not migrationAgentAddress
    migrationAgentAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getTokenCreationRate() {
    if not stor6:
        return 20000
    require not stor9
    if not stor6:
        return 20000
    require saleStartTime <= block.timestamp
    require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
    require saleEndTime - saleStartTime
    require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
    return (-((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600)
}

function icoOverview() {
    if not stor6:
        return stor11, totalSupply, 20000
    require not stor9
    if not stor6:
        return stor11, totalSupply, 20000
    require saleStartTime <= block.timestamp
    require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
    require saleEndTime - saleStartTime
    require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
    return stor11, totalSupply, -((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600
}

function migrate(uint256 arg1) {
    require stor9
    require migrationAgentAddress
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require totalMigrated + arg1 >= totalMigrated
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}

function finalizePresale() {
    require msg.sender == owner
    require not stor6
    if block.timestamp < presaleEndTime:
        require totalSupply == 40000 * 10^18
    stor6 = 1
    if eth.balance(this.address):
        require eth.balance(this.address)
        require 500 * eth.balance(this.address) / eth.balance(this.address) == 500
    call 0xe43088e823ea7422d77e32a195267ae9779a8b07 with:
       value 500 * eth.balance(this.address) / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xad00884d1e7d0354d16fa8ab083208c2cc3ed515 with:
       value 500 * eth.balance(this.address) / 10000 wei
         gas 2300 * is_zero(value) wei
    call 0x87a9131485cf8ed8e9bd834b46a12d7f3092c263 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function finalizeSale() {
    require msg.sender == owner
    require not stor9
    if block.timestamp < saleEndTime:
        require totalSupply == 240000 * 10^18
    stor9 = 1
    if totalSupply:
        require totalSupply
        require 2250 * totalSupply / totalSupply == 2250
    require totalSupply + (2250 * totalSupply / 10000) >= totalSupply
    totalSupply += 2250 * totalSupply / 10000
    require balanceOf[0x87a9131485cf8ed8e9bd834b46a12d7f3092c263] + (2250 * totalSupply / 10000) >= balanceOf[0x87a9131485cf8ed8e9bd834b46a12d7f3092c263]
    balanceOf[0x87a9131485cf8ed8e9bd834b46a12d7f3092c263] += 2250 * totalSupply / 10000
    if totalSupply:
        require totalSupply
        require 125 * totalSupply / totalSupply == 125
    require totalSupply + (2 * 125 * totalSupply / 10000) >= totalSupply
    totalSupply += 2 * 125 * totalSupply / 10000
    require balanceOf[0xe43088e823ea7422d77e32a195267ae9779a8b07] + (125 * totalSupply / 10000) >= balanceOf[0xe43088e823ea7422d77e32a195267ae9779a8b07]
    balanceOf[0xe43088e823ea7422d77e32a195267ae9779a8b07] += 125 * totalSupply / 10000
    require balanceOf[0xad00884d1e7d0354d16fa8ab083208c2cc3ed515] + (125 * totalSupply / 10000) >= balanceOf[0xad00884d1e7d0354d16fa8ab083208c2cc3ed515]
    balanceOf[0xad00884d1e7d0354d16fa8ab083208c2cc3ed515] += 125 * totalSupply / 10000
    if eth.balance(this.address):
        require eth.balance(this.address)
        require 500 * eth.balance(this.address) / eth.balance(this.address) == 500
    call 0xe43088e823ea7422d77e32a195267ae9779a8b07 with:
       value 500 * eth.balance(this.address) / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xad00884d1e7d0354d16fa8ab083208c2cc3ed515 with:
       value 500 * eth.balance(this.address) / 10000 wei
         gas 2300 * is_zero(value) wei
    call 0x87a9131485cf8ed8e9bd834b46a12d7f3092c263 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function buySaleTokens(address arg1) payable {
    require not stor9
    require msg.value
    require block.timestamp <= saleEndTime
    require block.timestamp >= saleStartTime
    if not stor6:
        if msg.value:
            require msg.value
            require 20000 * msg.value / msg.value == 20000
        require totalSupply + (20000 * msg.value / 10000) >= totalSupply
        require 240000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
        require totalSupply + (20000 * msg.value / 10000) >= totalSupply
        totalSupply += 20000 * msg.value / 10000
        require balanceOf[address(arg1)] + (20000 * msg.value / 10000) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 20000 * msg.value / 10000
        stor11 += msg.value
        emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, arg1);
    else:
        require not stor9
        if not stor6:
            if msg.value:
                require msg.value
                require 20000 * msg.value / msg.value == 20000
            require totalSupply + (20000 * msg.value / 10000) >= totalSupply
            require 240000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
            require totalSupply + (20000 * msg.value / 10000) >= totalSupply
            totalSupply += 20000 * msg.value / 10000
            require balanceOf[address(arg1)] + (20000 * msg.value / 10000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 20000 * msg.value / 10000
            stor11 += msg.value
            emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, arg1);
        else:
            require saleStartTime <= block.timestamp
            require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
            require saleEndTime - saleStartTime
            require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
            if msg.value:
                require msg.value
                require (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / msg.value == -((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600
            require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
            require 240000 * 10^18 >= totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000)
            require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
            totalSupply += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
            require balanceOf[address(arg1)] + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
            stor11 += msg.value
            emit TokenPurchase(msg.value, (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000, msg.sender, arg1);
}

function buyPresaleTokens(address arg1) payable {
    require not stor6
    require msg.value
    require block.timestamp <= presaleEndTime
    require block.timestamp >= presaleStartTime
    if not stor6:
        if msg.value:
            require msg.value
            require 20000 * msg.value / msg.value == 20000
        require totalSupply + (20000 * msg.value / 10000) >= totalSupply
        require 40000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
        require totalSupply + (20000 * msg.value / 10000) >= totalSupply
        totalSupply += 20000 * msg.value / 10000
        require balanceOf[address(arg1)] + (20000 * msg.value / 10000) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 20000 * msg.value / 10000
        stor11 += msg.value
        emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, arg1);
    else:
        require not stor9
        if not stor6:
            if msg.value:
                require msg.value
                require 20000 * msg.value / msg.value == 20000
            require totalSupply + (20000 * msg.value / 10000) >= totalSupply
            require 40000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
            require totalSupply + (20000 * msg.value / 10000) >= totalSupply
            totalSupply += 20000 * msg.value / 10000
            require balanceOf[address(arg1)] + (20000 * msg.value / 10000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 20000 * msg.value / 10000
            stor11 += msg.value
            emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, arg1);
        else:
            require saleStartTime <= block.timestamp
            require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
            require saleEndTime - saleStartTime
            require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
            if msg.value:
                require msg.value
                require (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / msg.value == -((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600
            require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
            require 40000 * 10^18 >= totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000)
            require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
            totalSupply += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
            require balanceOf[address(arg1)] + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
            stor11 += msg.value
            emit TokenPurchase(msg.value, (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000, msg.sender, arg1);
}

function _fallback() payable {
    if not stor6:
        require msg.value
        require block.timestamp <= presaleEndTime
        require block.timestamp >= presaleStartTime
        if not stor6:
            if msg.value:
                require msg.value
                require 20000 * msg.value / msg.value == 20000
            require totalSupply + (20000 * msg.value / 10000) >= totalSupply
            require 40000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
            require totalSupply + (20000 * msg.value / 10000) >= totalSupply
            totalSupply += 20000 * msg.value / 10000
            require balanceOf[address(msg.sender)] + (20000 * msg.value / 10000) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 20000 * msg.value / 10000
            stor11 += msg.value
            emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, msg.sender);
        else:
            require not stor9
            if not stor6:
                if msg.value:
                    require msg.value
                    require 20000 * msg.value / msg.value == 20000
                require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                require 40000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
                require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                totalSupply += 20000 * msg.value / 10000
                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10000) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 20000 * msg.value / 10000
                stor11 += msg.value
                emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, msg.sender);
            else:
                require saleStartTime <= block.timestamp
                require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
                require saleEndTime - saleStartTime
                require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
                if msg.value:
                    require msg.value
                    require (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / msg.value == -((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600
                require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
                require 40000 * 10^18 >= totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000)
                require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
                totalSupply += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
                require balanceOf[address(msg.sender)] + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
                stor11 += msg.value
                emit TokenPurchase(msg.value, (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000, msg.sender, msg.sender);
    else:
        require not stor9
        if not stor6:
            require msg.value
            require block.timestamp <= presaleEndTime
            require block.timestamp >= presaleStartTime
            if not stor6:
                if msg.value:
                    require msg.value
                    require 20000 * msg.value / msg.value == 20000
                require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                require 40000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
                require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                totalSupply += 20000 * msg.value / 10000
                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10000) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 20000 * msg.value / 10000
                stor11 += msg.value
                emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, msg.sender);
            else:
                require not stor9
                if not stor6:
                    if msg.value:
                        require msg.value
                        require 20000 * msg.value / msg.value == 20000
                    require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                    require 40000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
                    require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                    totalSupply += 20000 * msg.value / 10000
                    require balanceOf[address(msg.sender)] + (20000 * msg.value / 10000) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 20000 * msg.value / 10000
                    stor11 += msg.value
                    emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, msg.sender);
                else:
                    require saleStartTime <= block.timestamp
                    require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
                    require saleEndTime - saleStartTime
                    require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
                    if msg.value:
                        require msg.value
                        require (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / msg.value == -((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600
                    require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
                    require 40000 * 10^18 >= totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000)
                    require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
                    totalSupply += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
                    require balanceOf[address(msg.sender)] + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
                    stor11 += msg.value
                    emit TokenPurchase(msg.value, (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000, msg.sender, msg.sender);
        else:
            require not stor9
            require msg.value
            require block.timestamp <= saleEndTime
            require block.timestamp >= saleStartTime
            if not stor6:
                if msg.value:
                    require msg.value
                    require 20000 * msg.value / msg.value == 20000
                require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                require 240000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
                require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                totalSupply += 20000 * msg.value / 10000
                require balanceOf[address(msg.sender)] + (20000 * msg.value / 10000) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 20000 * msg.value / 10000
                stor11 += msg.value
                emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, msg.sender);
            else:
                require not stor9
                if not stor6:
                    if msg.value:
                        require msg.value
                        require 20000 * msg.value / msg.value == 20000
                    require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                    require 240000 * 10^18 >= totalSupply + (20000 * msg.value / 10000)
                    require totalSupply + (20000 * msg.value / 10000) >= totalSupply
                    totalSupply += 20000 * msg.value / 10000
                    require balanceOf[address(msg.sender)] + (20000 * msg.value / 10000) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 20000 * msg.value / 10000
                    stor11 += msg.value
                    emit TokenPurchase(msg.value, 20000 * msg.value / 10000, msg.sender, msg.sender);
                else:
                    require saleStartTime <= block.timestamp
                    require (6600 * block.timestamp) - (6600 * saleStartTime) / 6600 == block.timestamp - saleStartTime
                    require saleEndTime - saleStartTime
                    require (6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime <= 16600
                    if msg.value:
                        require msg.value
                        require (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / msg.value == -((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime) + 16600
                    require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
                    require 240000 * 10^18 >= totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000)
                    require totalSupply + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= totalSupply
                    totalSupply += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
                    require balanceOf[address(msg.sender)] + ((16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000
                    stor11 += msg.value
                    emit TokenPurchase(msg.value, (16600 * msg.value) - ((6600 * block.timestamp) - (6600 * saleStartTime) / saleEndTime - saleStartTime * msg.value) / 10000, msg.sender, msg.sender);
}



}
