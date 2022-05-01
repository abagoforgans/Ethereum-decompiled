contract main {


// =======================  Init code  ======================


uint256 stor0;
bool stor1; offset 256
uint8 stor1;
uint16 stor1; offset 32
uint16 stor1; offset 48
uint32 stor1; offset 8
uint256 stor2;
uint256 stor3;
address stor6;
address stor7;
mapping of uint256 stor14;

function _fallback() payable {
    stor0 = 0
    uint8(stor1.field_0) = 17
    stor1.field_8 % 16777216 = 0
    uint16(stor1.field_32) = 10000
    uint16(stor1.field_48) = 0
    stor1.field_256 % 1 = 0
    stor2 = 1000
    stor3 = 10^15
    require not msg.value
    if code.data[7048 len 32] <= 0:
        stor0 = 0
    else:
        stor0 = code.data[7048 len 32]
    stor6 = msg.sender
    stor7 = msg.sender
    stor14[address(this.address)] = stor0
    return code.data[203 len 6845]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const investorMinimalBalance = 10^9

const name = 'Prime Donor Token'

const minFee = 1

const decimals = 5

const symbol = 'PDT'

const minTransfer = 10


uint256 totalSupply;
uint32 transferFeeNum;
uint32 transferFeeDenum; offset 32
uint256 rate;
uint256 minimalWei;
uint256 weiRaised;
array of address stor5;
address owner;
address transferFeeOwner;
mapping of uint8 stor8;
uint256 investorsTotalSupply;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
uint256 stor13;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function minimalWei() {
    return minimalWei
}

function rate() {
    return rate
}

function transferFeeNum() {
    return transferFeeNum
}

function weiRaised() {
    return weiRaised
}

function transferFeeOwner() {
    return transferFeeOwner
}

function investors(address arg1) {
    return bool(stor8[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function investorsTotalSupply() {
    return investorsTotalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferFeeDenum() {
    return transferFeeDenum
}

function kill() {
    require owner == msg.sender
    require not totalSupply
    selfdestruct(owner)
}

function changeMinimalWei(uint256 arg1) {
    require owner == msg.sender
    minimalWei = arg1
}

function changeRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    rate = arg1
}

function changeTransferFeeOwner(address arg1) {
    require owner == msg.sender
    transferFeeOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTransferFee(uint32 arg1, uint32 arg2) {
    require owner == msg.sender
    require arg2 > 0
    require arg1 < arg2
    transferFeeNum = arg1
    transferFeeDenum = arg2
}

function issue(uint256 arg1) {
    require owner == msg.sender
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[address(this.address)] >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg1
}

function sendDividendsEthers() payable {
    require owner == msg.sender
    require investorsTotalSupply > 0
    if not msg.value:
        require investorsTotalSupply
        require (0 / investorsTotalSupply) + stor13 >= stor13
        stor13 += 0 / investorsTotalSupply
    else:
        require 10 * 10^18 * msg.value / msg.value == 10 * 10^18
        require investorsTotalSupply
        require (10 * 10^18 * msg.value / investorsTotalSupply) + stor13 >= stor13
        stor13 += 10 * 10^18 * msg.value / investorsTotalSupply
}

function destroy(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    if this.address:
        require balanceOf[address(this.address)] >= arg1
        if this.address != this.address:
            if owner != this.address:
                if transferFeeOwner != this.address:
                    if stor8[address(this.address)]:
                        if balanceOf[address(this.address)] >= 10^9:
                            if balanceOf[address(this.address)] - arg1 < 10^9:
                                require balanceOf[address(this.address)] <= investorsTotalSupply
                                investorsTotalSupply -= balanceOf[address(this.address)]
                            else:
                                require arg1 <= investorsTotalSupply
                                investorsTotalSupply -= arg1
        require arg1 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= arg1
    totalSupply -= arg1
}

function sendDividends(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1 != this.address
    require investorsTotalSupply > 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > arg2
    if not arg2:
        require investorsTotalSupply
        require (0 / investorsTotalSupply) + stor11[address(arg1)] >= stor11[address(arg1)]
        stor11[address(arg1)] += 0 / investorsTotalSupply
    else:
        require 10 * 10^18 * arg2 / arg2 == 10 * 10^18
        require investorsTotalSupply
        require (10 * 10^18 * arg2 / investorsTotalSupply) + stor11[address(arg1)] >= stor11[address(arg1)]
        stor11[address(arg1)] += 10 * 10^18 * arg2 / investorsTotalSupply
    idx = 0
    while idx < stor5.length:
        if address(stor5[idx]) != arg1:
            require idx < stor5.length
            mem[0] = 5
            if address(stor5[idx]):
                idx = idx + 1
                continue 
        if idx == stor5.length:
            stor5.length++
            if not stor5.length <= stor5.length + 1:
                s = stor5.length + sha3(5) + 1
                while sha3(5) + stor5.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        require idx < stor5.length
        address(stor5[idx]) = arg1
    if stor5.length == stor5.length:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = stor5.length + 1
            while stor5.length > idx:
                uint256(stor5[idx]) = 0
                idx = idx + 1
                continue 
    require stor5.length < stor5.length
    address(stor5[stor5.length]) = arg1
}

function removeInvestor(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if not stor11[address(stor5[idx])]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if stor11[address(stor5[idx])] <= stor10[address(stor5[idx])][address(arg1)]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = arg1
        if not stor8[address(arg1)]:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        if balanceOf[address(arg1)] < 10^9:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[32] = 14
        mem[mem[64]] = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 4
        mem[mem[64] + 128] = 'divs'
        emit Debug((stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18, address(arg1), Array(len=4, data='divs'));
        if (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor5[idx]))
            call address(stor5[idx]).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18:
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                require ext_code.size(address(stor5[idx]))
                call address(stor5[idx]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
        mem[0] = arg1
        mem[32] = sha3(address(stor5[idx]), 10)
        stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
        s = address(stor5[idx])
        t = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        u = stor11[address(stor5[idx])] - stor10[address(stor5[idx])][address(arg1)]
        v = address(stor5[idx])
        idx = idx + 1
        continue 
    if stor13 != 0:
        if stor13 > stor12[address(arg1)]:
            if stor8[address(arg1)]:
                if balanceOf[address(arg1)] >= 10^9:
                    emit Debug((stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18, address(arg1), Array(len=10, data='divsEthers'));
                    require (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0
                    require eth.balance(this.address) >= (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                    call arg1 with:
                       value (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor12[address(arg1)] = stor13
            stor12[address(arg1)] = stor13
    stor8[address(arg1)] = 0
    if balanceOf[address(arg1)] >= 10^9:
        require balanceOf[address(arg1)] <= investorsTotalSupply
        investorsTotalSupply -= balanceOf[address(arg1)]
}

function addInvestor(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if not stor11[address(stor5[idx])]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if stor11[address(stor5[idx])] <= stor10[address(stor5[idx])][address(arg1)]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = arg1
        if not stor8[address(arg1)]:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        if balanceOf[address(arg1)] < 10^9:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[32] = 14
        mem[mem[64]] = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 4
        mem[mem[64] + 128] = 'divs'
        emit Debug((stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18, address(arg1), Array(len=4, data='divs'));
        if (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor5[idx]))
            call address(stor5[idx]).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18:
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                require ext_code.size(address(stor5[idx]))
                call address(stor5[idx]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
        mem[0] = arg1
        mem[32] = sha3(address(stor5[idx]), 10)
        stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
        s = address(stor5[idx])
        t = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        u = stor11[address(stor5[idx])] - stor10[address(stor5[idx])][address(arg1)]
        v = address(stor5[idx])
        idx = idx + 1
        continue 
    if stor13 != 0:
        if stor13 > stor12[address(arg1)]:
            if stor8[address(arg1)]:
                if balanceOf[address(arg1)] >= 10^9:
                    emit Debug((stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18, address(arg1), Array(len=10, data='divsEthers'));
                    require (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0
                    require eth.balance(this.address) >= (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                    call arg1 with:
                       value (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor12[address(arg1)] = stor13
            stor12[address(arg1)] = stor13
    stor8[address(arg1)] = 1
    if balanceOf[address(arg1)] >= 10^9:
        require balanceOf[address(arg1)] + investorsTotalSupply >= investorsTotalSupply
        investorsTotalSupply += balanceOf[address(arg1)]
}

function getDividends() payable {
    mem[64] = 96
    require not msg.value
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if not stor11[address(stor5[idx])]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if stor11[address(stor5[idx])] <= stor10[address(stor5[idx])][address(msg.sender)]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        if not stor8[address(msg.sender)]:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        if balanceOf[address(msg.sender)] < 10^9:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[32] = 14
        mem[mem[64]] = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 4
        mem[mem[64] + 128] = 'divs'
        emit Debug((stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18, msg.sender, Array(len=4, data='divs'));
        if (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor5[idx]))
            call address(stor5[idx]).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                require ext_code.size(address(stor5[idx]))
                call address(stor5[idx]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
        mem[0] = msg.sender
        mem[32] = sha3(address(stor5[idx]), 10)
        stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
        s = address(stor5[idx])
        t = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        u = stor11[address(stor5[idx])] - stor10[address(stor5[idx])][address(msg.sender)]
        v = address(stor5[idx])
        idx = idx + 1
        continue 
    if stor13 != 0:
        if stor13 > stor12[address(msg.sender)]:
            if stor8[address(msg.sender)]:
                if balanceOf[address(msg.sender)] >= 10^9:
                    emit Debug((stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18, msg.sender, Array(len=10, data='divsEthers'));
                    require (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0
                    require eth.balance(this.address) >= (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                    call msg.sender with:
                       value (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor12[address(msg.sender)] = stor13
            stor12[address(msg.sender)] = stor13
}

function sell(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if not stor11[address(stor5[idx])]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if stor11[address(stor5[idx])] <= stor10[address(stor5[idx])][address(arg1)]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = arg1
        if not stor8[address(arg1)]:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        if balanceOf[address(arg1)] < 10^9:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[32] = 14
        mem[mem[64]] = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 4
        mem[mem[64] + 128] = 'divs'
        emit Debug((stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18, address(arg1), Array(len=4, data='divs'));
        if (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0:
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor5[idx]))
            call address(stor5[idx]).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18:
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                require ext_code.size(address(stor5[idx]))
                call address(stor5[idx]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
        mem[0] = arg1
        mem[32] = sha3(address(stor5[idx]), 10)
        stor10[address(stor5[idx])][address(arg1)] = stor11[address(stor5[idx])]
        s = address(stor5[idx])
        t = (stor11[address(stor5[idx])] * balanceOf[address(arg1)]) - (stor10[address(stor5[idx])][address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
        u = stor11[address(stor5[idx])] - stor10[address(stor5[idx])][address(arg1)]
        v = address(stor5[idx])
        idx = idx + 1
        continue 
    if stor13 != 0:
        if stor13 > stor12[address(arg1)]:
            if stor8[address(arg1)]:
                if balanceOf[address(arg1)] >= 10^9:
                    emit Debug((stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18, address(arg1), Array(len=10, data='divsEthers'));
                    require (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 > 0
                    require eth.balance(this.address) >= (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18
                    call arg1 with:
                       value (stor13 * balanceOf[address(arg1)]) - (stor12[address(arg1)] * balanceOf[address(arg1)]) / 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor12[address(arg1)] = stor13
            stor12[address(arg1)] = stor13
    require arg2 >= 10
    if this.address:
        require balanceOf[address(this.address)] >= arg2
        if this.address != this.address:
            if owner != this.address:
                if transferFeeOwner != this.address:
                    if stor8[address(this.address)]:
                        if balanceOf[address(this.address)] >= 10^9:
                            if balanceOf[address(this.address)] - arg2 < 10^9:
                                require balanceOf[address(this.address)] <= investorsTotalSupply
                                investorsTotalSupply -= balanceOf[address(this.address)]
                            else:
                                require arg2 <= investorsTotalSupply
                                investorsTotalSupply -= arg2
        require arg2 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= arg2
    if arg1:
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        if arg1 != this.address:
            if owner != arg1:
                if arg1 != transferFeeOwner:
                    if stor8[address(arg1)]:
                        if balanceOf[address(arg1)] >= 10^9:
                            if balanceOf[address(arg1)] - arg2 < 10^9:
                                require balanceOf[address(arg1)] + investorsTotalSupply >= investorsTotalSupply
                                investorsTotalSupply += balanceOf[address(arg1)]
                            else:
                                require arg2 + investorsTotalSupply >= investorsTotalSupply
                                investorsTotalSupply += arg2
    emit Transfer(arg2, this.address, arg1);
}

function buyTokens(address arg1) payable {
    mem[64] = 96
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if not stor11[address(stor5[idx])]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if stor11[address(stor5[idx])] <= stor10[address(stor5[idx])][address(msg.sender)]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        if not stor8[address(msg.sender)]:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        if balanceOf[address(msg.sender)] < 10^9:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[32] = 14
        mem[mem[64]] = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 4
        mem[mem[64] + 128] = 'divs'
        emit Debug((stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18, msg.sender, Array(len=4, data='divs'));
        if (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor5[idx]))
            call address(stor5[idx]).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                require ext_code.size(address(stor5[idx]))
                call address(stor5[idx]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
        mem[0] = msg.sender
        mem[32] = sha3(address(stor5[idx]), 10)
        stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
        s = address(stor5[idx])
        t = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        u = stor11[address(stor5[idx])] - stor10[address(stor5[idx])][address(msg.sender)]
        v = address(stor5[idx])
        idx = idx + 1
        continue 
    if stor13 != 0:
        if stor13 > stor12[address(msg.sender)]:
            if stor8[address(msg.sender)]:
                if balanceOf[address(msg.sender)] >= 10^9:
                    emit Debug((stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18, msg.sender, Array(len=10, data='divsEthers'));
                    require (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0
                    require eth.balance(this.address) >= (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                    call msg.sender with:
                       value (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor12[address(msg.sender)] = stor13
            stor12[address(msg.sender)] = stor13
    require msg.value >= minimalWei
    require msg.value
    require rate * msg.value / msg.value == rate
    require rate * msg.value / 10^18
    require 100000 * rate * msg.value / 10^18 / rate * msg.value / 10^18 == 100000
    require 100000 * rate * msg.value / 10^18 > 0
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if this.address:
        require balanceOf[address(this.address)] >= 100000 * rate * msg.value / 10^18
        if this.address != this.address:
            if owner != this.address:
                if transferFeeOwner != this.address:
                    if stor8[address(this.address)]:
                        if balanceOf[address(this.address)] >= 10^9:
                            if balanceOf[address(this.address)] - (100000 * rate * msg.value / 10^18) < 10^9:
                                require balanceOf[address(this.address)] <= investorsTotalSupply
                                investorsTotalSupply -= balanceOf[address(this.address)]
                            else:
                                require 100000 * rate * msg.value / 10^18 <= investorsTotalSupply
                                investorsTotalSupply += -100000 * rate * msg.value / 10^18
        require 100000 * rate * msg.value / 10^18 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -100000 * rate * msg.value / 10^18
    if arg1:
        require (100000 * rate * msg.value / 10^18) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 100000 * rate * msg.value / 10^18
        if arg1 != this.address:
            if owner != arg1:
                if arg1 != transferFeeOwner:
                    if stor8[address(arg1)]:
                        if balanceOf[address(arg1)] >= 10^9:
                            if balanceOf[address(arg1)] - (100000 * rate * msg.value / 10^18) < 10^9:
                                require balanceOf[address(arg1)] + investorsTotalSupply >= investorsTotalSupply
                                investorsTotalSupply += balanceOf[address(arg1)]
                            else:
                                require (100000 * rate * msg.value / 10^18) + investorsTotalSupply >= investorsTotalSupply
                                investorsTotalSupply += 100000 * rate * msg.value / 10^18
    emit TokenPurchase(msg.value, 100000 * rate * msg.value / 10^18, this.address, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    mem[64] = 96
    s = 0
    t = 0
    u = 0
    v = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if not stor11[address(stor5[idx])]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor5[idx])
        mem[32] = 11
        if stor11[address(stor5[idx])] <= stor10[address(stor5[idx])][address(msg.sender)]:
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        if not stor8[address(msg.sender)]:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        if balanceOf[address(msg.sender)] < 10^9:
            mem[32] = sha3(address(stor5[idx]), 10)
            stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
            s = s
            t = t
            u = u
            v = address(stor5[idx])
            idx = idx + 1
            continue 
        mem[32] = 14
        mem[mem[64]] = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = 4
        mem[mem[64] + 128] = 'divs'
        emit Debug((stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18, msg.sender, Array(len=4, data='divs'));
        if (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0:
            mem[mem[64] + 32] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(stor5[idx]))
            call address(stor5[idx]).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                require ext_code.size(address(stor5[idx]))
                call address(stor5[idx]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
        mem[0] = msg.sender
        mem[32] = sha3(address(stor5[idx]), 10)
        stor10[address(stor5[idx])][address(msg.sender)] = stor11[address(stor5[idx])]
        s = address(stor5[idx])
        t = (stor11[address(stor5[idx])] * balanceOf[address(msg.sender)]) - (stor10[address(stor5[idx])][address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
        u = stor11[address(stor5[idx])] - stor10[address(stor5[idx])][address(msg.sender)]
        v = address(stor5[idx])
        idx = idx + 1
        continue 
    if stor13 != 0:
        if stor13 > stor12[address(msg.sender)]:
            if stor8[address(msg.sender)]:
                if balanceOf[address(msg.sender)] >= 10^9:
                    emit Debug((stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18, msg.sender, Array(len=10, data='divsEthers'));
                    require (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 > 0
                    require eth.balance(this.address) >= (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18
                    call msg.sender with:
                       value (stor13 * balanceOf[address(msg.sender)]) - (stor12[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    stor12[address(msg.sender)] = stor13
            stor12[address(msg.sender)] = stor13
    require msg.value >= minimalWei
    require msg.value
    require rate * msg.value / msg.value == rate
    require rate * msg.value / 10^18
    require 100000 * rate * msg.value / 10^18 / rate * msg.value / 10^18 == 100000
    require 100000 * rate * msg.value / 10^18 > 0
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if this.address:
        require balanceOf[address(this.address)] >= 100000 * rate * msg.value / 10^18
        if this.address != this.address:
            if owner != this.address:
                if transferFeeOwner != this.address:
                    if stor8[address(this.address)]:
                        if balanceOf[address(this.address)] >= 10^9:
                            if balanceOf[address(this.address)] - (100000 * rate * msg.value / 10^18) < 10^9:
                                require balanceOf[address(this.address)] <= investorsTotalSupply
                                investorsTotalSupply -= balanceOf[address(this.address)]
                            else:
                                require 100000 * rate * msg.value / 10^18 <= investorsTotalSupply
                                investorsTotalSupply += -100000 * rate * msg.value / 10^18
        require 100000 * rate * msg.value / 10^18 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -100000 * rate * msg.value / 10^18
    if msg.sender:
        require (100000 * rate * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 100000 * rate * msg.value / 10^18
        if this.address != msg.sender:
            if owner != msg.sender:
                if transferFeeOwner != msg.sender:
                    if stor8[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] >= 10^9:
                            if balanceOf[address(msg.sender)] - (100000 * rate * msg.value / 10^18) < 10^9:
                                require balanceOf[address(msg.sender)] + investorsTotalSupply >= investorsTotalSupply
                                investorsTotalSupply += balanceOf[address(msg.sender)]
                            else:
                                require (100000 * rate * msg.value / 10^18) + investorsTotalSupply >= investorsTotalSupply
                                investorsTotalSupply += 100000 * rate * msg.value / 10^18
    emit TokenPurchase(msg.value, 100000 * rate * msg.value / 10^18, this.address, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
