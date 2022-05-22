contract main {




// =====================  Runtime code  =====================


#
#  - buyKey()
#
const configTimeMax = (24 * 3600)

const configRunTime = 300

const configMaxKeys = 10^10

const configTimeInc = 30

const configRoundKey = 75 * 10^12

const configTimeInit = (24 * 3600)

const configRoundKeyAdd = 10^10

const configPerFund = 10

const configPerShares = 75


uint256 runTime;
uint256 allEth;
uint256 allEthShares;
uint256 allTime;
uint256 allKeys;
uint256 roundEth;
uint256 roundEthShares;
uint256 roundTime;
uint256 roundKeys;
uint256 round;
uint256 roundPot;
uint256 roundPrice;
address roundLeaderAddress;
mapping of uint256 accountRounds;
mapping of uint256 accountShares;
mapping of uint256 accountSharesOut;
mapping of uint256 accountKeys;
array of address stor18;
address owner;
uint256 stor19;
uint256 ownerEth;

function round() {
    return round
}

function allEthShares() {
    return allEthShares
}

function roundPrice() {
    return roundPrice
}

function roundEth() {
    return roundEth
}

function roundPot() {
    return roundPot
}

function accountShares(address arg1) {
    return accountShares[arg1]
}

function allTime() {
    return allTime
}

function accountKeys(address arg1) {
    return accountKeys[arg1]
}

function accountRounds(address arg1) {
    return accountRounds[arg1]
}

function owner() {
    return address(owner)
}

function accountSharesOut(address arg1) {
    return accountSharesOut[arg1]
}

function ownerEth() {
    return ownerEth
}

function roundLeader() {
    return roundLeaderAddress
}

function roundKeys() {
    return roundKeys
}

function allKeys() {
    return allKeys
}

function roundEthShares() {
    return roundEthShares
}

function runTime() {
    return runTime
}

function roundTime() {
    return roundTime
}

function allEth() {
    return allEth
}

function _fallback() payable {
    revert
}

function withdrawlOwner() payable {
    if 0xbeba30e7f05581fd7330a58743b0331bd7dd5508 != msg.sender:
        if 0x479f9dfadaf30fba069d8a9f017d881c648b5ac0 != msg.sender:
            if 0x57854e9293789854df8fcfdd3ad845bf15e35bbc != msg.sender:
                if 0xe0becc4b07b50fc24b60b42deeabe9fcabdce5ce != msg.sender:
                    if 0x968f54fd6eddeecebfe2b0ca45bfee82d2629bfe != msg.sender:
                        revert with 0, 32, 30, 0xe58faae58581e8aeb8e59fbae98791e4bc9ae4bba3e8a1a8e68f90e58f960000
    require 0 < ownerEth
    call msg.sender with:
       value ownerEth wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    ownerEth = 0
    return 0
}

function doStart() payable {
    require not round
    require runTime <= 0
    if 0xbeba30e7f05581fd7330a58743b0331bd7dd5508 != msg.sender:
        if 0x479f9dfadaf30fba069d8a9f017d881c648b5ac0 != msg.sender:
            if 0x57854e9293789854df8fcfdd3ad845bf15e35bbc != msg.sender:
                if 0xe0becc4b07b50fc24b60b42deeabe9fcabdce5ce != msg.sender:
                    if 0x968f54fd6eddeecebfe2b0ca45bfee82d2629bfe != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0xe58faae58581e8aeb8e59bbae5ae9ae79a84e8b4a6e58fb7e590afe58aa8e69c,
                                    0xace58d8fe8aeae00000000000000000000000000000000000000000000000000
    require block.timestamp + 300 >= block.timestamp
    runTime = block.timestamp + 300
    roundTime = block.timestamp + 86700
    uint256(stor19) = msg.sender or Mask(96, 160, uint256(stor19))
    roundPrice = 75 * 10^12
    require round + 1 >= round
    round++
    roundLeaderAddress = address(owner)
    mem[96] = address(owner)
    stor18.length = 1
    s = 0
    idx = 96
    while 128 > idx:
        stor18[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor18.length > idx:
        stor18[idx] = 0
        idx = idx + 1
        continue 
    return runTime
}

function withdrawl() payable {
    require runTime > 0
    require block.timestamp > runTime
    require 0 < round
    if block.timestamp > roundTime:
        require 0 <= roundPot
        mem[128] = roundLeaderAddress
        emit 0x97145a76: block.timestamp, roundLeaderAddress, roundPot, roundTime
        require roundPot + accountShares[stor13] >= accountShares[stor13]
        accountShares[stor13] += roundPot
        round++
        roundPot = 0
        roundLeaderAddress = address(owner)
        require block.timestamp + (24 * 3600) >= block.timestamp
        roundTime = block.timestamp + (24 * 3600)
        roundEth = roundPot
        roundEthShares = 0
        roundKeys = 0
        if roundKeys <= 0:
            roundPrice = 75 * 10^12
        else:
            if not roundKeys:
                roundPrice = 75 * 10^12
            else:
                require 10^10 * roundKeys / roundKeys == 10^10
                require (10^10 * roundKeys) + 75 * 10^12 >= 75 * 10^12
                roundPrice = (10^10 * roundKeys) + 75 * 10^12
            if roundKeys <= 0:
                roundPrice = 75 * 10^12
            else:
                if roundPrice <= 75 * 10^12:
                    roundPrice = 75 * 10^12
        require roundEth + allEth >= allEth
        allEth += roundEth
        require roundEthShares + allEthShares >= allEthShares
        allEthShares += roundEthShares
        mem[96] = address(owner)
        stor18.length = 1
        s = 0
        idx = 96
        while 128 > idx:
            stor18[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 1
        while stor18.length > idx:
            stor18[idx] = 0
            idx = idx + 1
            continue 
        emit 0x1349d852: block.timestamp, round, roundPot
    require accountShares[msg.sender] > 0
    require accountSharesOut[msg.sender] <= accountShares[msg.sender]
    require accountShares[msg.sender] - accountSharesOut[msg.sender] > 0
    require accountShares[msg.sender] >= accountSharesOut[msg.sender]
    accountSharesOut[msg.sender] = accountShares[msg.sender]
    call msg.sender with:
       value accountShares[msg.sender] - accountSharesOut[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2a3f3ded: block.timestamp, msg.sender, accountShares[msg.sender] - accountSharesOut[msg.sender]
    return (accountShares[msg.sender] - accountSharesOut[msg.sender])
}



}
