contract main {


// =======================  Init code  ======================


address stor3;
array of address stor5;

function _fallback() {
    stor3 = msg.sender
    stor5.length++
    if not stor5.length > stor5.length + 1:
        address(stor5[stor5.length]) = 0xde18789c4d65dc8ece671a4145f32f1590c4d802
        stor5.length++
    else:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
        address(stor5[stor5.length]) = 0xde18789c4d65dc8ece671a4145f32f1590c4d802
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = stor5.length + 1
            while stor5.length > idx:
                uint256(stor5[idx]) = 0
                idx = idx + 1
                continue 
    address(stor5[stor5.length]) = 0x8899822d031891371afc369767511164ef21e55c
    return code.data[315 len 5142]
}



// =====================  Runtime code  =====================


const name = 'Useless Reserve Bank'

const decimals = 18

const symbol = 'URB'

const currentEtherBalance = eth.balance(this.address)

const WELFARE_HANDOUT = 1000

const ONEPERCENT_TOKENS_PER_ETH = 100000

const LIQUIDATION_RESERVE_RATIO = 75

const TAXRATE = 20

const LIQUIDATION_TOKENS_PER_ETH = 30000

const SENDING_BLOCK = 3999998


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 currentTokenBalance;
address gubbermentAddress;
address newGubbermentAddress;
array of address treasuryOfficials;
uint256 totalTaxed;
uint256 totalBribery;
uint256 totalPilfered;

function totalSupply() {
    return currentTokenBalance
}

function currentTokenBalance() {
    return currentTokenBalance
}

function totalPilfered() {
    return totalPilfered
}

function totalTaxed() {
    return totalTaxed
}

function totalBribery() {
    return totalBribery
}

function gubberment() {
    return gubbermentAddress
}

function treasuryOfficials(uint256 arg1) {
    require arg1 < treasuryOfficials.length
    return treasuryOfficials[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function newGubberment() {
    return newGubbermentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function numberOfTreasuryOfficials() {
    return treasuryOfficials.length
}

function coupDetat(address arg1) {
    require gubbermentAddress == msg.sender
    newGubbermentAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function gubbermentOverthrown() {
    if newGubbermentAddress == msg.sender:
        emit GubbermentOverthrown(gubbermentAddress, newGubbermentAddress);
        gubbermentAddress = newGubbermentAddress
}

function _fallback() payable {
    currentTokenBalance += 1000 * 10^18
    balanceOf[address(msg.sender)] += 1000 * 10^18
    emit WelfareHandout(1000 * 10^18, currentTokenBalance, msg.value, eth.balance(this.address), msg.sender);
    emit Transfer(1000 * 10^18, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function bribe() payable {
    require msg.value > 0
    totalBribery += msg.value
    emit Bribed(msg.value, msg.value + totalBribery);
    require treasuryOfficials.length
    idx = 0
    while idx < treasuryOfficials.length:
        mem[0] = 5
        call treasuryOfficials[idx] with:
           value msg.value / treasuryOfficials.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function acceptGiftTokens(address arg1) {
    require gubbermentAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args gubbermentAddress, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function liquidate(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    currentTokenBalance -= arg1
    require arg1 / 30000 > 0
    require arg1 / 30000 <= 25 * eth.balance(this.address) / 100
    emit Liquidate(arg1, currentTokenBalance, arg1 / 30000, eth.balance(this.address) - (arg1 / 30000), msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    call msg.sender with:
       value arg1 / 30000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function pilfer(uint256 arg1) {
    require gubbermentAddress == msg.sender
    require arg1 > eth.balance(this.address)
    totalPilfered += arg1
    emit Pilfered(arg1, arg1 + totalPilfered, eth.balance(this.address) - arg1);
    require treasuryOfficials.length
    idx = 0
    while idx < treasuryOfficials.length:
        mem[0] = 5
        call treasuryOfficials[idx] with:
           value arg1 / treasuryOfficials.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
}

function replaceOfficials(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require gubbermentAddress == msg.sender
    treasuryOfficials.length = arg1.length
    if not arg1.length:
        idx = 0
        while treasuryOfficials.length > idx:
            treasuryOfficials[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            treasuryOfficials[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while treasuryOfficials.length > idx:
            treasuryOfficials[idx] = 0
            idx = idx + 1
            continue 
}

function philanthropise(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.value > 0
    balanceOf[address(msg.sender)] += 100000 * msg.value
    currentTokenBalance += 100000 * msg.value
    if 20 * msg.value / 100 > 0:
        totalTaxed += 20 * msg.value / 100
        require treasuryOfficials.length
        idx = 0
        while idx < treasuryOfficials.length:
            mem[0] = 5
            call treasuryOfficials[idx] with:
               value 20 * msg.value / 100 / treasuryOfficials.length wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 160] = 100000 * msg.value
    mem[ceil32(arg1.length) + 192] = currentTokenBalance
    mem[ceil32(arg1.length) + 224] = msg.value
    mem[ceil32(arg1.length) + 256] = eth.balance(this.address)
    mem[ceil32(arg1.length) + 288] = totalTaxed
    mem[ceil32(arg1.length) + 128] = 192
    mem[ceil32(arg1.length) + 320] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 352] = mem[128]
        mem[ceil32(arg1.length) + 384 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit Philanthropy(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 352 len arg1.length]), 100000 * msg.value, currentTokenBalance, msg.value, eth.balance(this.address), totalTaxed, msg.sender);
    emit Transfer((100000 * msg.value), 0, msg.sender);
}



}
