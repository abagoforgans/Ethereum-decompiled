contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
address stor4;
uint256 stor7;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor18;

function _fallback() payable {
    stor7 = 0
    stor12 = 500000000 * 10^18
    stor13 = 200000000 * 10^18
    stor14 = 100000000 * 10^18
    stor15 = 5760
    stor16 = 0
    stor17 = 0
    stor18 = 0
    require not msg.value
    stor3 = code.data[6034 len 20]
    stor4 = msg.sender
    require stor14 + stor13 >= stor13
    stor0 = stor14 + stor13
    stor1[stor4] = stor14 + stor13
    return code.data[261 len 5761]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address multisigAddress;
address foundationAddress;
address candidateAddress;
mapping of uint256 stor6;
uint256 startBlock;
uint256 phase1EndBlock;
uint256 phase2EndBlock;
uint256 phase3EndBlock;
uint256 endBlock;
uint256 crowdsaleTokenSupply;
uint256 ecosystemTokenSupply;
uint256 foundationTokenSupply;
uint256 transferLockup;
uint256 crowdsaleTokenSold;
uint256 presaleEtherRaised;
uint8 stor18;

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function crowdsaleTokenSold() {
    return crowdsaleTokenSold
}

function foundation() {
    return foundationAddress
}

function crowdsaleTokenSupply() {
    return crowdsaleTokenSupply
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function multisig() {
    return multisigAddress
}

function startBlock() {
    return startBlock
}

function phase1EndBlock() {
    return phase1EndBlock
}

function ecosystemTokenSupply() {
    return ecosystemTokenSupply
}

function phase2EndBlock() {
    return phase2EndBlock
}

function candidate() {
    return candidateAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function phase3EndBlock() {
    return phase3EndBlock
}

function halted() {
    return bool(stor18)
}

function transferLockup() {
    return transferLockup
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function foundationTokenSupply() {
    return foundationTokenSupply
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function halt() {
    require foundationAddress == msg.sender
    stor18 = 1
    emit Halt()
}

function unhalt() {
    require foundationAddress == msg.sender
    stor18 = 0
    emit Unhalt()
}

function isContract(address arg1) {
    if ext_code.size(arg1) <= 0:
        return 0
    return 1
}

function cancelFoundationTransfer() {
    require foundationAddress == msg.sender
    candidateAddress = 0
}

function proposeFoundationTransfer(address arg1) {
    require foundationAddress == msg.sender
    candidateAddress = arg1
}

function setMultisig(address arg1) {
    require foundationAddress == msg.sender
    require arg1
    multisigAddress = arg1
}

function acceptFoundationTransfer() {
    require candidateAddress == msg.sender
    foundationAddress = candidateAddress
    candidateAddress = 0
}

function perAddressCap() {
    require (presaleEtherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    return ((presaleEtherRaised / 100) + 1000 * 10^18)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require foundationAddress == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit 0x16ddf252: arg1, msg.sender, 0
    return 1
}

function start() {
    require foundationAddress == msg.sender
    require not startBlock
    startBlock = block.number
    phase1EndBlock = block.number + 40320
    phase2EndBlock = block.number + 80640
    phase3EndBlock = block.number + 120960
    endBlock = block.number + 120960
}

function requestToken() {
    require balanceOf[address(msg.sender)] + 100 * 10^18 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 100 * 10^18
    require totalSupply + 100 * 10^18 >= totalSupply
    totalSupply += 100 * 10^18
    emit 0x16ddf252: 100 * 10^18, 0, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.number > endBlock + transferLockup
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x16ddf252: arg3, arg1, arg2
}

function returnRate() {
    if block.number <= startBlock:
        if block.number <= phase1EndBlock:
            if block.number <= phase2EndBlock:
                return 0
        else:
            if block.number <= phase2EndBlock:
                return 8000
    else:
        if block.number <= phase1EndBlock:
            return 8888
        if block.number <= phase2EndBlock:
            return 8000
    ('gt', 'number', ('stor', ('name', 'phase2EndBlock', 9)))
    if block.number > phase3EndBlock:
        return 0
    return 7500
}

function transfer(address arg1, uint256 arg2) {
    require block.number > endBlock + transferLockup
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit 0x16ddf252: arg2, msg.sender, arg1
    emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                  arg2,
                  64,
                  0,
                  msg.sender,
                  arg1,
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require block.number > transferLockup + endBlock
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        if arg3.length:
            mem[ceil32(arg3.length) + 260] = mem[128]
            mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
        require ext_call.success
    emit 0x16ddf252: arg2, msg.sender, arg1
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 192] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Transfer(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), msg.sender, arg1);
    return 1
}

function buyRecipient(address arg1) payable {
    require not stor18
    require msg.value
    require block.number >= startBlock
    require block.number <= endBlock
    require (presaleEtherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
    require msg.value + stor6[address(arg1)] <= (presaleEtherRaised / 100) + 1000 * 10^18
    if block.number <= startBlock:
        if block.number <= phase1EndBlock:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require crowdsaleTokenSold >= crowdsaleTokenSold
                require crowdsaleTokenSold <= crowdsaleTokenSupply
                require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require totalSupply >= totalSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                stor6[address(arg1)] += msg.value
                require crowdsaleTokenSold >= crowdsaleTokenSold
                if crowdsaleTokenSupply == crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: 0, this.address, arg1
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                    stor6[address(arg1)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, arg1
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                    stor6[address(arg1)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, arg1
        else:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                require (8000 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                require (8000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 8000 * msg.value
                require (8000 * msg.value) + totalSupply >= totalSupply
                totalSupply += 8000 * msg.value
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                stor6[address(arg1)] += msg.value
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                crowdsaleTokenSold += 8000 * msg.value
                if crowdsaleTokenSupply == (8000 * msg.value) + crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: (8000 * msg.value), this.address, arg1
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                    stor6[address(arg1)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, arg1
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                    stor6[address(arg1)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, arg1
    else:
        if block.number <= phase1EndBlock:
            if msg.value:
                require msg.value
                require 8888 * msg.value / msg.value == 8888
            require (8888 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
            require (8888 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
            require (8888 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += 8888 * msg.value
            require (8888 * msg.value) + totalSupply >= totalSupply
            totalSupply += 8888 * msg.value
            require msg.value + presaleEtherRaised >= presaleEtherRaised
            presaleEtherRaised += msg.value
            require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
            stor6[address(arg1)] += msg.value
            require (8888 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
            crowdsaleTokenSold += 8888 * msg.value
            if crowdsaleTokenSupply == (8888 * msg.value) + crowdsaleTokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x16ddf252: (8888 * msg.value), this.address, arg1
        else:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                require (8000 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                require (8000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 8000 * msg.value
                require (8000 * msg.value) + totalSupply >= totalSupply
                totalSupply += 8000 * msg.value
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                stor6[address(arg1)] += msg.value
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                crowdsaleTokenSold += 8000 * msg.value
                if crowdsaleTokenSupply == (8000 * msg.value) + crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: (8000 * msg.value), this.address, arg1
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                    stor6[address(arg1)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, arg1
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(arg1)] >= stor6[address(arg1)]
                    stor6[address(arg1)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, arg1
}

function buy() payable {
    require not stor18
    require msg.value
    require block.number >= startBlock
    require block.number <= endBlock
    require (presaleEtherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
    require msg.value + stor6[address(msg.sender)] <= (presaleEtherRaised / 100) + 1000 * 10^18
    if block.number <= startBlock:
        if block.number <= phase1EndBlock:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require crowdsaleTokenSold >= crowdsaleTokenSold
                require crowdsaleTokenSold <= crowdsaleTokenSupply
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require totalSupply >= totalSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require crowdsaleTokenSold >= crowdsaleTokenSold
                if crowdsaleTokenSupply == crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: 0, this.address, msg.sender
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, msg.sender
        else:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                require (8000 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                require (8000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 8000 * msg.value
                require (8000 * msg.value) + totalSupply >= totalSupply
                totalSupply += 8000 * msg.value
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                crowdsaleTokenSold += 8000 * msg.value
                if crowdsaleTokenSupply == (8000 * msg.value) + crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: (8000 * msg.value), this.address, msg.sender
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, msg.sender
    else:
        if block.number <= phase1EndBlock:
            if msg.value:
                require msg.value
                require 8888 * msg.value / msg.value == 8888
            require (8888 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
            require (8888 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
            require (8888 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 8888 * msg.value
            require (8888 * msg.value) + totalSupply >= totalSupply
            totalSupply += 8888 * msg.value
            require msg.value + presaleEtherRaised >= presaleEtherRaised
            presaleEtherRaised += msg.value
            require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
            stor6[address(msg.sender)] += msg.value
            require (8888 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
            crowdsaleTokenSold += 8888 * msg.value
            if crowdsaleTokenSupply == (8888 * msg.value) + crowdsaleTokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x16ddf252: (8888 * msg.value), this.address, msg.sender
        else:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                require (8000 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                require (8000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 8000 * msg.value
                require (8000 * msg.value) + totalSupply >= totalSupply
                totalSupply += 8000 * msg.value
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                crowdsaleTokenSold += 8000 * msg.value
                if crowdsaleTokenSupply == (8000 * msg.value) + crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: (8000 * msg.value), this.address, msg.sender
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, msg.sender
}

function _fallback() payable {
    require not stor18
    require msg.value
    require block.number >= startBlock
    require block.number <= endBlock
    require (presaleEtherRaised / 100) + 1000 * 10^18 >= 1000 * 10^18
    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
    require msg.value + stor6[address(msg.sender)] <= (presaleEtherRaised / 100) + 1000 * 10^18
    if block.number <= startBlock:
        if block.number <= phase1EndBlock:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require crowdsaleTokenSold >= crowdsaleTokenSold
                require crowdsaleTokenSold <= crowdsaleTokenSupply
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require totalSupply >= totalSupply
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require crowdsaleTokenSold >= crowdsaleTokenSold
                if crowdsaleTokenSupply == crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: 0, this.address, msg.sender
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, msg.sender
        else:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                require (8000 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                require (8000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 8000 * msg.value
                require (8000 * msg.value) + totalSupply >= totalSupply
                totalSupply += 8000 * msg.value
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                crowdsaleTokenSold += 8000 * msg.value
                if crowdsaleTokenSupply == (8000 * msg.value) + crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: (8000 * msg.value), this.address, msg.sender
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, msg.sender
    else:
        if block.number <= phase1EndBlock:
            if msg.value:
                require msg.value
                require 8888 * msg.value / msg.value == 8888
            require (8888 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
            require (8888 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
            require (8888 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 8888 * msg.value
            require (8888 * msg.value) + totalSupply >= totalSupply
            totalSupply += 8888 * msg.value
            require msg.value + presaleEtherRaised >= presaleEtherRaised
            presaleEtherRaised += msg.value
            require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
            stor6[address(msg.sender)] += msg.value
            require (8888 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
            crowdsaleTokenSold += 8888 * msg.value
            if crowdsaleTokenSupply == (8888 * msg.value) + crowdsaleTokenSold:
                endBlock = block.number
            call multisigAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x16ddf252: (8888 * msg.value), this.address, msg.sender
        else:
            if block.number <= phase2EndBlock:
                if msg.value:
                    require msg.value
                    require 8000 * msg.value / msg.value == 8000
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                require (8000 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                require (8000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 8000 * msg.value
                require (8000 * msg.value) + totalSupply >= totalSupply
                totalSupply += 8000 * msg.value
                require msg.value + presaleEtherRaised >= presaleEtherRaised
                presaleEtherRaised += msg.value
                require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require (8000 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                crowdsaleTokenSold += 8000 * msg.value
                if crowdsaleTokenSupply == (8000 * msg.value) + crowdsaleTokenSold:
                    endBlock = block.number
                call multisigAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x16ddf252: (8000 * msg.value), this.address, msg.sender
            else:
                if block.number > phase3EndBlock:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    require crowdsaleTokenSold <= crowdsaleTokenSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require totalSupply >= totalSupply
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require crowdsaleTokenSold >= crowdsaleTokenSold
                    if crowdsaleTokenSupply == crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: 0, this.address, msg.sender
                else:
                    if msg.value:
                        require msg.value
                        require 7500 * msg.value / msg.value == 7500
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    require (7500 * msg.value) + crowdsaleTokenSold <= crowdsaleTokenSupply
                    require (7500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 7500 * msg.value
                    require (7500 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 7500 * msg.value
                    require msg.value + presaleEtherRaised >= presaleEtherRaised
                    presaleEtherRaised += msg.value
                    require msg.value + stor6[address(msg.sender)] >= stor6[address(msg.sender)]
                    stor6[address(msg.sender)] += msg.value
                    require (7500 * msg.value) + crowdsaleTokenSold >= crowdsaleTokenSold
                    crowdsaleTokenSold += 7500 * msg.value
                    if crowdsaleTokenSupply == (7500 * msg.value) + crowdsaleTokenSold:
                        endBlock = block.number
                    call multisigAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x16ddf252: (7500 * msg.value), this.address, msg.sender
}



}
