contract main {




// =====================  Runtime code  =====================


const auctionDuration = (120 * 24 * 3600)

const sub_0eb51c9c(?) = (24 * 3600)

const sub_3ebf2508(?) = 10^18

const sub_49087bcc(?) = 5 * 10^16

const sub_51b472b9(?) = 10 * 10^18

const sub_5911e5da(?) = 24

const sub_6ba6bccb(?) = 1

const sub_8ccf802b(?) = 24

const sub_de8d77e7(?) = 10


mapping of uint256 payments;
uint256 totalPayments;
uint8 stage; offset 160
address owner;
mapping of address sub_76813438;
mapping of uint256 sub_c2cf114f;
uint256 sub_c557a5a9;
uint256 sub_580e0037;
uint256 auctionStartTime;
uint256 roundNumber;
uint256 sub_8771fc4a;
uint256 stor10; offset 1
uint256 sub_c2539429;
uint256 roundEndTime;
uint256 stor12; offset 1
uint256 jackpot;
uint256 sub_03fca061;

function totalPayments() {
    return totalPayments
}

function sub_03fca061(?) {
    return sub_03fca061
}

function roundNumber() {
    return roundNumber
}

function sub_580e0037(?) {
    return sub_580e0037
}

function jackpot() {
    return jackpot
}

function sub_76813438(?) {
    return sub_76813438[arg1]
}

function sub_8771fc4a(?) {
    return sub_8771fc4a
}

function owner() {
    return owner
}

function stage() {
    require stage <= 1
    return stage
}

function sub_c2539429(?) {
    return sub_c2539429
}

function sub_c2cf114f(?) {
    return sub_c2cf114f[arg1]
}

function sub_c557a5a9(?) {
    return sub_c557a5a9
}

function payments(address arg1) {
    return payments[arg1]
}

function roundEndTime() {
    return roundEndTime
}

function auctionStartTime() {
    return auctionStartTime
}

function _fallback() payable {
  stop
}

function _nextPotTax(uint256 arg1) {
    return (arg1 / 20)
}

function _priceToTax(uint256 arg1) {
    return (arg1 / 10)
}

function _teamJackpot(uint256 arg1) {
    return (arg1 / 20)
}

function _winnerJackpot(uint256 arg1) {
    return (arg1 / 2)
}

function _nextPotJackpot(uint256 arg1) {
    return (arg1 / 20)
}

function _p3dSellPercentage(uint256 arg1) {
    return (arg1 / 4)
}

function _referrerTax(uint256 arg1, bool arg2) {
    if not arg2:
        return 0
    return (arg1 / 20)
}

function _jackpotTax(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 2 * arg1 / arg1 == 2
    return (2 * arg1 / 5)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _landholderJackpot(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 2 * arg1 / arg1 == 2
    return (2 * arg1 / 5)
}

function _totalLandholderTax(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 19 * arg1 / arg1 == 19
    return (19 * arg1 / 50)
}

function _teamTax(uint256 arg1, bool arg2) {
    if not arg1:
        return 0
    require arg1
    if not arg2:
        require 17 * arg1 / arg1 == 17
        return (17 * arg1 / 100)
    require 3 * arg1 / arg1 == 3
    return (3 * arg1 / 25)
}

function roundTimeRemaining() {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if block.timestamp >= roundEndTime:
        return 0
    require block.timestamp <= roundEndTime
    return (roundEndTime - block.timestamp)
}

function getP3DBalance() {
    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDivsBalance() {
    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
    call 0x765a944008f08e8366c4ac4c88db63961f65be79.dividendsOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawContractBalance() {
    require msg.sender == owner
    require totalPayments <= eth.balance(this.address)
    require eth.balance(this.address) - totalPayments > 0
    require payments[address(msg.sender)] + eth.balance(this.address) - totalPayments >= payments[address(msg.sender)]
    payments[address(msg.sender)] = payments[address(msg.sender)] + eth.balance(this.address) - totalPayments
    require eth.balance(this.address) >= totalPayments
    totalPayments = eth.balance(this.address)
}

function getSquarePriceAuction() {
    require stage <= 1
    if stage:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if block.timestamp <= auctionStartTime:
        return 10^18
    require auctionStartTime <= block.timestamp
    if block.timestamp - auctionStartTime >= 120 * 24 * 3600:
        return 5 * 10^16
    require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 95 * 10^16 == block.timestamp - auctionStartTime
    require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600 <= 10^18
    return (-((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18)
}

function setSquarePrice(uint8 arg1, uint256 arg2, address arg3) payable {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if block.timestamp >= roundEndTime:
        revert with 0, 'Round is over'
    if sub_76813438[arg1 << 248] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't set square price for a square you don't own!'
    if msg.value < arg2 / 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must pay tax on new square price!'
    if not msg.value:
        require jackpot >= jackpot
    else:
        require msg.value
        require 2 * msg.value / msg.value == 2
        require jackpot + (2 * msg.value / 5) >= jackpot
        jackpot += 2 * msg.value / 5
    if not msg.value:
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 3
            if not sub_76813438[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_c2cf114f[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            require sub_c557a5a9 > 0
            require sub_c557a5a9
            require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
            mem[0] = sub_76813438[idx << 248]
            mem[32] = 0
            payments[stor3[idx << 248]] += 0 / sub_c557a5a9
            require totalPayments + (0 / sub_c557a5a9) >= totalPayments
            totalPayments += 0 / sub_c557a5a9
            s = 0 / sub_c557a5a9
            t = sub_c2cf114f[idx << 248]
            idx = idx + 1
            continue 
    else:
        require msg.value
        require 19 * msg.value / msg.value == 19
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 3
            if not sub_76813438[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_c2cf114f[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            if not 19 * msg.value / 50:
                require sub_c557a5a9 > 0
                require sub_c557a5a9
                require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                mem[0] = sub_76813438[idx << 248]
                mem[32] = 0
                payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                totalPayments += 0 / sub_c557a5a9
                s = 0 / sub_c557a5a9
                t = sub_c2cf114f[idx << 248]
                idx = idx + 1
                continue 
            require 19 * msg.value / 50
            require 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / 19 * msg.value / 50 == sub_c2cf114f[idx << 248]
            require sub_c557a5a9 > 0
            require sub_c557a5a9
            require payments[stor3[idx << 248]] + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= payments[stor3[idx << 248]]
            mem[0] = sub_76813438[idx << 248]
            mem[32] = 0
            payments[stor3[idx << 248]] += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
            require totalPayments + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= totalPayments
            totalPayments += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
            s = 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
            t = sub_c2cf114f[idx << 248]
            idx = idx + 1
            continue 
    require sub_03fca061 + (msg.value / 20) >= sub_03fca061
    sub_03fca061 += msg.value / 20
    if not arg3:
        if not msg.value:
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
        else:
            require msg.value
            require 17 * msg.value / msg.value == 17
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
               value 17 * msg.value / 100 wei
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
    else:
        if not msg.value:
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
        else:
            require msg.value
            require 3 * msg.value / msg.value == 3
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
               value 3 * msg.value / 25 wei
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        require payments[address(arg3)] >= payments[address(arg3)]
        require totalPayments >= totalPayments
    else:
        require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
        payments[address(arg3)] += msg.value / 20
        require totalPayments + (msg.value / 20) >= totalPayments
        totalPayments += msg.value / 20
    sub_c2cf114f[arg1 << 248] = arg2
    require sub_c2cf114f[arg1 << 248] <= sub_c557a5a9
    require arg2 >= 0
    sub_c557a5a9 = sub_c557a5a9 - sub_c2cf114f[arg1 << 248] + arg2
    require block.timestamp + sub_c2539429 >= block.timestamp
    if roundEndTime < block.timestamp + sub_c2539429:
        roundEndTime = block.timestamp + sub_c2539429
    emit GameRoundExtended(roundEndTime);
    require sub_8771fc4a + msg.value >= sub_8771fc4a
    sub_8771fc4a += msg.value
    if sub_8771fc4a >= 10 * 10^18:
        if stor10 >= 10:
            sub_c2539429 = stor10
        else:
            sub_c2539429 = 10
        sub_8771fc4a = 0
    emit SquarePriceChanged(sub_c2cf114f[arg1 << 248], arg2, arg1, sub_76813438[arg1 << 248]);
}

function buySquare(uint8 arg1, uint256 arg2, address arg3) payable {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if block.timestamp >= roundEndTime:
        revert with 0, 'Round is over'
    if sub_76813438[arg1 << 248] == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't buy a square you already own'
    require (arg2 / 10) + sub_c2cf114f[arg1 << 248] >= arg2 / 10
    if msg.value < (arg2 / 10) + sub_c2cf114f[arg1 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must pay full price and tax for square'
    require payments[stor3[arg1 << 248]] + sub_c2cf114f[arg1 << 248] >= payments[stor3[arg1 << 248]]
    payments[stor3[arg1 << 248]] += sub_c2cf114f[arg1 << 248]
    require totalPayments + sub_c2cf114f[arg1 << 248] >= totalPayments
    totalPayments += sub_c2cf114f[arg1 << 248]
    sub_76813438[arg1 << 248] = msg.sender
    require sub_c2cf114f[arg1 << 248] <= msg.value
    if not msg.value - sub_c2cf114f[arg1 << 248]:
        require jackpot >= jackpot
    else:
        require msg.value - sub_c2cf114f[arg1 << 248]
        require 2 * msg.value - sub_c2cf114f[arg1 << 248] / msg.value - sub_c2cf114f[arg1 << 248] == 2
        require jackpot + (2 * msg.value - sub_c2cf114f[arg1 << 248] / 5) >= jackpot
        jackpot += 2 * msg.value - sub_c2cf114f[arg1 << 248] / 5
    if not msg.value - sub_c2cf114f[arg1 << 248]:
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 3
            if not sub_76813438[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_c2cf114f[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            require sub_c557a5a9 > 0
            require sub_c557a5a9
            require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
            mem[0] = sub_76813438[idx << 248]
            mem[32] = 0
            payments[stor3[idx << 248]] += 0 / sub_c557a5a9
            require totalPayments + (0 / sub_c557a5a9) >= totalPayments
            totalPayments += 0 / sub_c557a5a9
            s = 0 / sub_c557a5a9
            t = sub_c2cf114f[idx << 248]
            idx = idx + 1
            continue 
    else:
        require msg.value - sub_c2cf114f[arg1 << 248]
        require (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / msg.value - sub_c2cf114f[arg1 << 248] == 19
        s = 0
        t = 0
        idx = 1
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 3
            if not sub_76813438[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            mem[0] = uint8(idx)
            mem[32] = 4
            if not sub_c2cf114f[idx << 248]:
                s = s
                t = t
                idx = idx + 1
                continue 
            if not (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50:
                require sub_c557a5a9 > 0
                require sub_c557a5a9
                require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                mem[0] = sub_76813438[idx << 248]
                mem[32] = 0
                payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                totalPayments += 0 / sub_c557a5a9
                s = 0 / sub_c557a5a9
                t = sub_c2cf114f[idx << 248]
                idx = idx + 1
                continue 
            require (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50
            require (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 * sub_c2cf114f[idx << 248] / (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 == sub_c2cf114f[idx << 248]
            require sub_c557a5a9 > 0
            require sub_c557a5a9
            require payments[stor3[idx << 248]] + ((19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= payments[stor3[idx << 248]]
            mem[0] = sub_76813438[idx << 248]
            mem[32] = 0
            payments[stor3[idx << 248]] += (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
            require totalPayments + ((19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= totalPayments
            totalPayments += (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
            s = (19 * msg.value) - (19 * sub_c2cf114f[arg1 << 248]) / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
            t = sub_c2cf114f[idx << 248]
            idx = idx + 1
            continue 
    require sub_03fca061 + (msg.value - sub_c2cf114f[arg1 << 248] / 20) >= sub_03fca061
    sub_03fca061 += msg.value - sub_c2cf114f[arg1 << 248] / 20
    if not arg3:
        if not msg.value - sub_c2cf114f[arg1 << 248]:
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
        else:
            require msg.value - sub_c2cf114f[arg1 << 248]
            require (17 * msg.value) - (17 * sub_c2cf114f[arg1 << 248]) / msg.value - sub_c2cf114f[arg1 << 248] == 17
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
               value (17 * msg.value) - (17 * sub_c2cf114f[arg1 << 248]) / 100 wei
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
    else:
        if not msg.value - sub_c2cf114f[arg1 << 248]:
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
        else:
            require msg.value - sub_c2cf114f[arg1 << 248]
            require (3 * msg.value) - (3 * sub_c2cf114f[arg1 << 248]) / msg.value - sub_c2cf114f[arg1 << 248] == 3
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
               value (3 * msg.value) - (3 * sub_c2cf114f[arg1 << 248]) / 25 wei
                 gas gas_remaining wei
                args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        require payments[address(arg3)] >= payments[address(arg3)]
        require totalPayments >= totalPayments
    else:
        require payments[address(arg3)] + (msg.value - sub_c2cf114f[arg1 << 248] / 20) >= payments[address(arg3)]
        payments[address(arg3)] += msg.value - sub_c2cf114f[arg1 << 248] / 20
        require totalPayments + (msg.value - sub_c2cf114f[arg1 << 248] / 20) >= totalPayments
        totalPayments += msg.value - sub_c2cf114f[arg1 << 248] / 20
    sub_c2cf114f[arg1 << 248] = arg2
    require sub_c2cf114f[arg1 << 248] <= sub_c557a5a9
    require arg2 >= 0
    sub_c557a5a9 = sub_c557a5a9 - sub_c2cf114f[arg1 << 248] + arg2
    require block.timestamp + sub_c2539429 >= block.timestamp
    if roundEndTime < block.timestamp + sub_c2539429:
        roundEndTime = block.timestamp + sub_c2539429
    emit GameRoundExtended(roundEndTime);
    require sub_8771fc4a + msg.value >= sub_8771fc4a
    sub_8771fc4a += msg.value
    if sub_8771fc4a >= 10 * 10^18:
        if stor10 >= 10:
            sub_c2539429 = stor10
        else:
            sub_c2539429 = 10
        sub_8771fc4a = 0
    emit SquareOwnerChanged(sub_c2cf114f[arg1 << 248], arg2, arg1, sub_76813438[arg1 << 248], msg.sender);
}

function endGameRound() {
    require stage <= 1
    if stage != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if block.timestamp < roundEndTime:
        revert with 0, 'Round must be over!'
    if not jackpot:
        require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
        call 0x765a944008f08e8366c4ac4c88db63961f65be79.dividendsOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0x3ccfd60b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_call.return_data[0] >= 0
        mem[128 len 800] = code.data[12792 len 800]
        s = 0
        idx = 1
        s = 0
        t = 0
        u = 0
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 4
            require sub_c2cf114f[idx << 248] <= sub_c557a5a9
            if t:
                if sub_c557a5a9 - sub_c2cf114f[idx << 248] <= t:
                    require uint8(idx) < 25
                    mem[(32 * uint8(idx)) + 128] = sub_c557a5a9 - sub_c2cf114f[idx << 248]
                    require u + sub_c557a5a9 - sub_c2cf114f[idx << 248] >= u
                    s = sub_c557a5a9 - sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    s = s
                    t = t
                    u = u + sub_c557a5a9 - sub_c2cf114f[idx << 248]
                    continue 
            require uint8(idx) < 25
            mem[(32 * uint8(idx)) + 128] = sub_c557a5a9 - sub_c2cf114f[idx << 248]
            require u + sub_c557a5a9 - sub_c2cf114f[idx << 248] >= u
            s = sub_c557a5a9 - sub_c2cf114f[idx << 248]
            idx = idx + 1
            s = idx
            t = sub_c557a5a9 - sub_c2cf114f[idx << 248]
            u = u + sub_c557a5a9 - sub_c2cf114f[idx << 248]
            continue 
        v = 0
        idx = 1
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 4
            require sub_c2cf114f[idx << 248] <= sub_c557a5a9
            if sub_c557a5a9 - sub_c2cf114f[idx << 248] != t:
                v = v
                idx = idx + 1
                continue 
            v = v + 1
            idx = idx + 1
            continue 
        mem[932] = this.address
        require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
        call 0x765a944008f08e8366c4ac4c88db63961f65be79.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[928] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if v != 1:
            idx = 1
            while uint8(idx) <= 24:
                mem[0] = uint8(idx)
                mem[32] = 4
                require sub_c2cf114f[idx << 248] <= sub_c557a5a9
                if sub_c557a5a9 - sub_c2cf114f[idx << 248] == t:
                    require v > 0
                    require v
                    require payments[stor3[idx << 248]] + (stor12 / v) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += stor12 / v
                    require totalPayments + (stor12 / v) >= totalPayments
                    totalPayments += stor12 / v
                    if ext_call.return_data[0] > 0:
                        mem[0] = uint8(idx)
                        mem[32] = 3
                        mem[932] = sub_76813438[idx << 248]
                        mem[964] = ext_call.return_data[0] / 4
                        require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                        call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_76813438[idx << 248], ext_call.return_data[0] / 4
                        mem[928] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                idx = idx + 1
                continue 
        else:
            require payments[stor3[s << 248]] + stor12 >= payments[stor3[s << 248]]
            payments[stor3[s << 248]] += stor12
            require totalPayments + stor12 >= totalPayments
            totalPayments += stor12
            if ext_call.return_data[0] > 0:
                mem[932] = sub_76813438[s << 248]
                mem[964] = ext_call.return_data[0] / 4
                require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_76813438[s << 248], ext_call.return_data[0] / 4
                mem[928] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        s = 0
        idx = 1
        while uint8(idx) <= 24:
            require uint8(idx) < 25
            if not mem[(32 * uint8(idx)) + 128]:
                require u > 0
                require u
                require payments[stor3[idx << 248]] + (0 / u) >= payments[stor3[idx << 248]]
                mem[0] = sub_76813438[idx << 248]
                mem[32] = 0
                payments[stor3[idx << 248]] += 0 / u
                require totalPayments + (0 / u) >= totalPayments
                totalPayments += 0 / u
                s = 0 / u
                idx = idx + 1
                continue 
            require mem[(32 * uint8(idx)) + 128]
            require mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0] / mem[(32 * uint8(idx)) + 128] == ext_call.return_data[0]
            require u > 0
            require u
            require payments[stor3[idx << 248]] + (mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0] / u) >= payments[stor3[idx << 248]]
            mem[0] = sub_76813438[idx << 248]
            mem[32] = 0
            payments[stor3[idx << 248]] += mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0] / u
            require totalPayments + (mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0] / u) >= totalPayments
            totalPayments += mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0] / u
            s = mem[(32 * uint8(idx)) + 128] * ext_call.return_data[0] / u
            idx = idx + 1
            continue 
    else:
        require jackpot
        require 2 * jackpot / jackpot == 2
        require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
        call 0x765a944008f08e8366c4ac4c88db63961f65be79.dividendsOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
            call 0x765a944008f08e8366c4ac4c88db63961f65be79.0x3ccfd60b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require (2 * jackpot / 5) + ext_call.return_data[0] >= 2 * jackpot / 5
        mem[128 len 800] = code.data[12792 len 800]
        s = 0
        idx = 1
        s = 0
        t = 0
        u = 0
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 4
            require sub_c2cf114f[idx << 248] <= sub_c557a5a9
            if t:
                if sub_c557a5a9 - sub_c2cf114f[idx << 248] <= t:
                    require uint8(idx) < 25
                    mem[(32 * uint8(idx)) + 128] = sub_c557a5a9 - sub_c2cf114f[idx << 248]
                    require u + sub_c557a5a9 - sub_c2cf114f[idx << 248] >= u
                    s = sub_c557a5a9 - sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    s = s
                    t = t
                    u = u + sub_c557a5a9 - sub_c2cf114f[idx << 248]
                    continue 
            require uint8(idx) < 25
            mem[(32 * uint8(idx)) + 128] = sub_c557a5a9 - sub_c2cf114f[idx << 248]
            require u + sub_c557a5a9 - sub_c2cf114f[idx << 248] >= u
            s = sub_c557a5a9 - sub_c2cf114f[idx << 248]
            idx = idx + 1
            s = idx
            t = sub_c557a5a9 - sub_c2cf114f[idx << 248]
            u = u + sub_c557a5a9 - sub_c2cf114f[idx << 248]
            continue 
        v = 0
        idx = 1
        while uint8(idx) <= 24:
            mem[0] = uint8(idx)
            mem[32] = 4
            require sub_c2cf114f[idx << 248] <= sub_c557a5a9
            if sub_c557a5a9 - sub_c2cf114f[idx << 248] != t:
                v = v
                idx = idx + 1
                continue 
            v = v + 1
            idx = idx + 1
            continue 
        mem[932] = this.address
        require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
        call 0x765a944008f08e8366c4ac4c88db63961f65be79.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[928] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if v != 1:
            idx = 1
            while uint8(idx) <= 24:
                mem[0] = uint8(idx)
                mem[32] = 4
                require sub_c2cf114f[idx << 248] <= sub_c557a5a9
                if sub_c557a5a9 - sub_c2cf114f[idx << 248] == t:
                    require v > 0
                    require v
                    require payments[stor3[idx << 248]] + (stor12 / v) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += stor12 / v
                    require totalPayments + (stor12 / v) >= totalPayments
                    totalPayments += stor12 / v
                    if ext_call.return_data[0] > 0:
                        mem[0] = uint8(idx)
                        mem[32] = 3
                        mem[932] = sub_76813438[idx << 248]
                        mem[964] = ext_call.return_data[0] / 4
                        require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                        call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_76813438[idx << 248], ext_call.return_data[0] / 4
                        mem[928] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                idx = idx + 1
                continue 
        else:
            require payments[stor3[s << 248]] + stor12 >= payments[stor3[s << 248]]
            payments[stor3[s << 248]] += stor12
            require totalPayments + stor12 >= totalPayments
            totalPayments += stor12
            if ext_call.return_data[0] > 0:
                mem[932] = sub_76813438[s << 248]
                mem[964] = ext_call.return_data[0] / 4
                require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_76813438[s << 248], ext_call.return_data[0] / 4
                mem[928] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        s = 0
        idx = 1
        while uint8(idx) <= 24:
            require uint8(idx) < 25
            if not mem[(32 * uint8(idx)) + 128]:
                require u > 0
                require u
                require payments[stor3[idx << 248]] + (0 / u) >= payments[stor3[idx << 248]]
                mem[0] = sub_76813438[idx << 248]
                mem[32] = 0
                payments[stor3[idx << 248]] += 0 / u
                require totalPayments + (0 / u) >= totalPayments
                totalPayments += 0 / u
                s = 0 / u
                idx = idx + 1
                continue 
            require mem[(32 * uint8(idx)) + 128]
            require (2 * jackpot / 5 * mem[(32 * uint8(idx)) + 128]) + (ext_call.return_data[0] * mem[(32 * uint8(idx)) + 128]) / mem[(32 * uint8(idx)) + 128] == (2 * jackpot / 5) + ext_call.return_data[0]
            require u > 0
            require u
            require payments[stor3[idx << 248]] + ((2 * jackpot / 5 * mem[(32 * uint8(idx)) + 128]) + (ext_call.return_data[0] * mem[(32 * uint8(idx)) + 128]) / u) >= payments[stor3[idx << 248]]
            mem[0] = sub_76813438[idx << 248]
            mem[32] = 0
            payments[stor3[idx << 248]] += (2 * jackpot / 5 * mem[(32 * uint8(idx)) + 128]) + (ext_call.return_data[0] * mem[(32 * uint8(idx)) + 128]) / u
            require totalPayments + ((2 * jackpot / 5 * mem[(32 * uint8(idx)) + 128]) + (ext_call.return_data[0] * mem[(32 * uint8(idx)) + 128]) / u) >= totalPayments
            totalPayments += (2 * jackpot / 5 * mem[(32 * uint8(idx)) + 128]) + (ext_call.return_data[0] * mem[(32 * uint8(idx)) + 128]) / u
            s = (2 * jackpot / 5 * mem[(32 * uint8(idx)) + 128]) + (ext_call.return_data[0] * mem[(32 * uint8(idx)) + 128]) / u
            idx = idx + 1
            continue 
    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
       value jackpot / 20 wei
         gas gas_remaining wei
        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_03fca061 + (jackpot / 20) >= sub_03fca061
    sub_03fca061 += jackpot / 20
    emit GameRoundEnded(jackpot);
    sub_8771fc4a = 0
    sub_c2539429 = 24 * 3600
    jackpot = sub_03fca061
    sub_03fca061 = 0
    require roundNumber + 1 >= roundNumber
    roundNumber++
    require block.timestamp + sub_c2539429 >= block.timestamp
    if roundEndTime < block.timestamp + sub_c2539429:
        roundEndTime = block.timestamp + sub_c2539429
    emit GameRoundExtended(roundEndTime);
    emit GameRoundStarted(jackpot, roundEndTime, roundNumber);
}

function buySquareAtAuction(uint8 arg1, uint256 arg2, address arg3) payable {
    require stage <= 1
    if stage:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if sub_76813438[arg1 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This square has already been auctioned off'
    if sub_c2cf114f[arg1 << 248]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This square has already been auctioned off'
    require stage <= 1
    if stage:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot be called at this stage.'
    if block.timestamp <= auctionStartTime:
        require (arg2 / 10) + 10^18 >= arg2 / 10
        if msg.value < (arg2 / 10) + 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Must pay the full price and tax for a square on auction'
        if not msg.value:
            s = 0
            t = 0
            idx = 1
            while uint8(idx) <= 24:
                mem[0] = uint8(idx)
                mem[32] = 3
                if not sub_76813438[idx << 248]:
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                mem[0] = uint8(idx)
                mem[32] = 4
                if not sub_c2cf114f[idx << 248]:
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                require sub_c557a5a9 > 0
                require sub_c557a5a9
                require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                mem[0] = sub_76813438[idx << 248]
                mem[32] = 0
                payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                totalPayments += 0 / sub_c557a5a9
                s = 0 / sub_c557a5a9
                t = sub_c2cf114f[idx << 248]
                idx = idx + 1
                continue 
        else:
            require msg.value
            require 19 * msg.value / msg.value == 19
            s = 0
            t = 0
            idx = 1
            while uint8(idx) <= 24:
                mem[0] = uint8(idx)
                mem[32] = 3
                if not sub_76813438[idx << 248]:
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                mem[0] = uint8(idx)
                mem[32] = 4
                if not sub_c2cf114f[idx << 248]:
                    s = s
                    t = t
                    idx = idx + 1
                    continue 
                if not 19 * msg.value / 50:
                    require sub_c557a5a9 > 0
                    require sub_c557a5a9
                    require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                    require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                    totalPayments += 0 / sub_c557a5a9
                    s = 0 / sub_c557a5a9
                    t = sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    continue 
                require 19 * msg.value / 50
                require 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / 19 * msg.value / 50 == sub_c2cf114f[idx << 248]
                require sub_c557a5a9 > 0
                require sub_c557a5a9
                require payments[stor3[idx << 248]] + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= payments[stor3[idx << 248]]
                mem[0] = sub_76813438[idx << 248]
                mem[32] = 0
                payments[stor3[idx << 248]] += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                require totalPayments + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= totalPayments
                totalPayments += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                s = 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                t = sub_c2cf114f[idx << 248]
                idx = idx + 1
                continue 
        if not msg.value:
            require msg.value / 20 >= 0
            require sub_03fca061 + (msg.value / 20) >= sub_03fca061
            sub_03fca061 += msg.value / 20
        else:
            require msg.value
            require 2 * msg.value / msg.value == 2
            require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
            require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
            sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
        if not arg3:
            if not msg.value:
                require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                     gas gas_remaining wei
                    args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
            else:
                require msg.value
                require 17 * msg.value / msg.value == 17
                require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                   value 17 * msg.value / 100 wei
                     gas gas_remaining wei
                    args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
        else:
            if not msg.value:
                require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                     gas gas_remaining wei
                    args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
            else:
                require msg.value
                require 3 * msg.value / msg.value == 3
                require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                   value 3 * msg.value / 25 wei
                     gas gas_remaining wei
                    args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            require payments[address(arg3)] >= payments[address(arg3)]
            require totalPayments >= totalPayments
        else:
            require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
            payments[address(arg3)] += msg.value / 20
            require totalPayments + (msg.value / 20) >= totalPayments
            totalPayments += msg.value / 20
        sub_76813438[arg1 << 248] = msg.sender
        sub_c2cf114f[arg1 << 248] = arg2
        require sub_c2cf114f[arg1 << 248] <= sub_c557a5a9
        require arg2 >= 0
        sub_c557a5a9 = sub_c557a5a9 - sub_c2cf114f[arg1 << 248] + arg2
        require sub_580e0037 + 1 >= sub_580e0037
        sub_580e0037++
        emit SquareOwnerChanged(10^18, arg2, arg1, 0, msg.sender);
    else:
        require auctionStartTime <= block.timestamp
        if block.timestamp - auctionStartTime >= 120 * 24 * 3600:
            require (arg2 / 10) + 5 * 10^16 >= arg2 / 10
            if msg.value < (arg2 / 10) + 5 * 10^16:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Must pay the full price and tax for a square on auction'
            if not msg.value:
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 24:
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    if not sub_76813438[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_c2cf114f[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    require sub_c557a5a9 > 0
                    require sub_c557a5a9
                    require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                    require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                    totalPayments += 0 / sub_c557a5a9
                    s = 0 / sub_c557a5a9
                    t = sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    continue 
            else:
                require msg.value
                require 19 * msg.value / msg.value == 19
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 24:
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    if not sub_76813438[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_c2cf114f[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    if not 19 * msg.value / 50:
                        require sub_c557a5a9 > 0
                        require sub_c557a5a9
                        require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                        mem[0] = sub_76813438[idx << 248]
                        mem[32] = 0
                        payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                        require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                        totalPayments += 0 / sub_c557a5a9
                        s = 0 / sub_c557a5a9
                        t = sub_c2cf114f[idx << 248]
                        idx = idx + 1
                        continue 
                    require 19 * msg.value / 50
                    require 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / 19 * msg.value / 50 == sub_c2cf114f[idx << 248]
                    require sub_c557a5a9 > 0
                    require sub_c557a5a9
                    require payments[stor3[idx << 248]] + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                    require totalPayments + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= totalPayments
                    totalPayments += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                    s = 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                    t = sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    continue 
            if not msg.value:
                require msg.value / 20 >= 0
                require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                sub_03fca061 += msg.value / 20
            else:
                require msg.value
                require 2 * msg.value / msg.value == 2
                require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
            if not arg3:
                if not msg.value:
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
                else:
                    require msg.value
                    require 17 * msg.value / msg.value == 17
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                       value 17 * msg.value / 100 wei
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
            else:
                if not msg.value:
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
                else:
                    require msg.value
                    require 3 * msg.value / msg.value == 3
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                       value 3 * msg.value / 25 wei
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                require payments[address(arg3)] >= payments[address(arg3)]
                require totalPayments >= totalPayments
            else:
                require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                payments[address(arg3)] += msg.value / 20
                require totalPayments + (msg.value / 20) >= totalPayments
                totalPayments += msg.value / 20
            sub_76813438[arg1 << 248] = msg.sender
            sub_c2cf114f[arg1 << 248] = arg2
            require sub_c2cf114f[arg1 << 248] <= sub_c557a5a9
            require arg2 >= 0
            sub_c557a5a9 = sub_c557a5a9 - sub_c2cf114f[arg1 << 248] + arg2
            require sub_580e0037 + 1 >= sub_580e0037
            sub_580e0037++
            emit SquareOwnerChanged(5 * 10^16, arg2, arg1, 0, msg.sender);
        else:
            require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 95 * 10^16 == block.timestamp - auctionStartTime
            require (95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600 <= 10^18
            require (arg2 / 10) + -((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18 >= arg2 / 10
            if msg.value < (arg2 / 10) + -((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Must pay the full price and tax for a square on auction'
            if not msg.value:
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 24:
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    if not sub_76813438[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_c2cf114f[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    require sub_c557a5a9 > 0
                    require sub_c557a5a9
                    require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                    require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                    totalPayments += 0 / sub_c557a5a9
                    s = 0 / sub_c557a5a9
                    t = sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    continue 
            else:
                require msg.value
                require 19 * msg.value / msg.value == 19
                s = 0
                t = 0
                idx = 1
                while uint8(idx) <= 24:
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    if not sub_76813438[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    mem[0] = uint8(idx)
                    mem[32] = 4
                    if not sub_c2cf114f[idx << 248]:
                        s = s
                        t = t
                        idx = idx + 1
                        continue 
                    if not 19 * msg.value / 50:
                        require sub_c557a5a9 > 0
                        require sub_c557a5a9
                        require payments[stor3[idx << 248]] + (0 / sub_c557a5a9) >= payments[stor3[idx << 248]]
                        mem[0] = sub_76813438[idx << 248]
                        mem[32] = 0
                        payments[stor3[idx << 248]] += 0 / sub_c557a5a9
                        require totalPayments + (0 / sub_c557a5a9) >= totalPayments
                        totalPayments += 0 / sub_c557a5a9
                        s = 0 / sub_c557a5a9
                        t = sub_c2cf114f[idx << 248]
                        idx = idx + 1
                        continue 
                    require 19 * msg.value / 50
                    require 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / 19 * msg.value / 50 == sub_c2cf114f[idx << 248]
                    require sub_c557a5a9 > 0
                    require sub_c557a5a9
                    require payments[stor3[idx << 248]] + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= payments[stor3[idx << 248]]
                    mem[0] = sub_76813438[idx << 248]
                    mem[32] = 0
                    payments[stor3[idx << 248]] += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                    require totalPayments + (19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9) >= totalPayments
                    totalPayments += 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                    s = 19 * msg.value / 50 * sub_c2cf114f[idx << 248] / sub_c557a5a9
                    t = sub_c2cf114f[idx << 248]
                    idx = idx + 1
                    continue 
            if not msg.value:
                require msg.value / 20 >= 0
                require sub_03fca061 + (msg.value / 20) >= sub_03fca061
                sub_03fca061 += msg.value / 20
            else:
                require msg.value
                require 2 * msg.value / msg.value == 2
                require (2 * msg.value / 5) + (msg.value / 20) >= 2 * msg.value / 5
                require sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20) >= sub_03fca061
                sub_03fca061 = sub_03fca061 + (2 * msg.value / 5) + (msg.value / 20)
            if not arg3:
                if not msg.value:
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
                else:
                    require msg.value
                    require 17 * msg.value / msg.value == 17
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                       value 17 * msg.value / 100 wei
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
            else:
                if not msg.value:
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
                else:
                    require msg.value
                    require 3 * msg.value / msg.value == 3
                    require ext_code.size(0x765a944008f08e8366c4ac4c88db63961f65be79)
                    call 0x765a944008f08e8366c4ac4c88db63961f65be79.0xf088d547 with:
                       value 3 * msg.value / 25 wei
                         gas gas_remaining wei
                        args 0x8d8ff688e895a0607e4135e5e18c22f41d7885
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                require payments[address(arg3)] >= payments[address(arg3)]
                require totalPayments >= totalPayments
            else:
                require payments[address(arg3)] + (msg.value / 20) >= payments[address(arg3)]
                payments[address(arg3)] += msg.value / 20
                require totalPayments + (msg.value / 20) >= totalPayments
                totalPayments += msg.value / 20
            sub_76813438[arg1 << 248] = msg.sender
            sub_c2cf114f[arg1 << 248] = arg2
            require sub_c2cf114f[arg1 << 248] <= sub_c557a5a9
            require arg2 >= 0
            sub_c557a5a9 = sub_c557a5a9 - sub_c2cf114f[arg1 << 248] + arg2
            require sub_580e0037 + 1 >= sub_580e0037
            sub_580e0037++
            emit SquareOwnerChanged(-((95 * 10^16 * block.timestamp) - (95 * 10^16 * auctionStartTime) / 120 * 24 * 3600) + 10^18, arg2, arg1, 0, msg.sender);
    if sub_580e0037 >= 24:
        stage = 1
        sub_8771fc4a = 0
        sub_c2539429 = 24 * 3600
        jackpot = sub_03fca061
        sub_03fca061 = 0
        require roundNumber + 1 >= roundNumber
        roundNumber++
        require block.timestamp + sub_c2539429 >= block.timestamp
        if roundEndTime < block.timestamp + sub_c2539429:
            roundEndTime = block.timestamp + sub_c2539429
        emit GameRoundExtended(roundEndTime);
        emit GameRoundStarted(jackpot, roundEndTime, roundNumber);
        emit AuctionEnded(block.timestamp);
}



}
