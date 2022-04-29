contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint32 stor9;
array of struct stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor15 = 16 * 10^17
    require not msg.value
    mem[96 len -13150] = code.data[15445 len -13150]
    _2 = mem[96]
    _3 = mem[128]
    _5 = mem[192]
    _6 = mem[224]
    _7 = mem[256]
    mem[64] = -12926
    mem[-13054] = 0
    mem[-13022] = 0
    mem[-12990] = 0
    mem[-12958] = 0
    stor0 = msg.sender
    require mem[140 len 20]
    address(stor2.length) = mem[140 len 20]
    require mem[160]
    require mem[192]
    require block.timestamp < mem[160]
    require mem[160] < mem[192]
    stor4 = mem[160]
    stor5 = mem[192]
    require not mem[mem[256] + 96] % 4
    require 0 < mem[mem[256] + 96]
    require mem[mem[256] + 128] > 0
    _12 = mem[mem[256] + 96]
    s = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    t = -13054
    while idx < _12 / 4:
        if not idx:
            require 4 * idx >= 4 * idx
            require 4 * idx < mem[_7 + 96]
            _52 = mem[(128 * idx) + _7 + 128]
            require (4 * idx) + 1 >= 4 * idx
            require (4 * idx) + 1 < mem[_7 + 96]
            _58 = mem[(32 * (4 * idx) + 1) + _7 + 128]
            require (4 * idx) + 2 >= 4 * idx
            require (4 * idx) + 2 < mem[_7 + 96]
            _66 = mem[(32 * (4 * idx) + 2) + _7 + 128]
            require (4 * idx) + 3 >= 4 * idx
            require (4 * idx) + 3 < mem[_7 + 96]
            _74 = mem[(32 * (4 * idx) + 3) + _7 + 128]
            require block.timestamp < mem[(32 * (4 * idx) + 1) + _7 + 128]
            require mem[(32 * (4 * idx) + 1) + _7 + 128] < mem[(32 * (4 * idx) + 2) + _7 + 128]
            if not idx:
                _81 = mem[64]
                mem[64] = mem[64] + 128
                mem[_81] = mem[(128 * idx) + _7 + 128]
                mem[_81 + 32] = _58
                mem[_81 + 64] = _66
                mem[_81 + 96] = _74
                stor13.length++
                if not stor13.length <= stor13.length + 1:
                    s = sha3(13) + (4 * stor13.length + 1)
                    while sha3(13) + (4 * stor13.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        uint256(stor2[s]) = 0
                        stor3[s] = 0
                        s = s + 4
                        continue 
                mem[0] = 13
                stor13[stor13.length].field_0 = _52
                stor13[stor13.length].field_256 = _58
                stor13[stor13.length].field_512 = _66
                stor13[stor13.length].field_768 = _74
                s = _74
                t = _66
                t = _58
                t = _52
                idx = idx + 1
                t = _81
                continue 
            if mem[(32 * (4 * idx) + 2) + _7 + 128] < mem[t + 64]:
                require mem[(32 * (4 * idx) + 2) + _7 + 128] > mem[t + 64]
                require mem[(128 * idx) + _7 + 128] >= mem[t]
                _97 = mem[64]
                mem[64] = mem[64] + 128
                mem[_97] = mem[(128 * idx) + _7 + 128]
                mem[_97 + 32] = _58
                mem[_97 + 64] = _66
                mem[_97 + 96] = _74
                stor13.length++
                if not stor13.length <= stor13.length + 1:
                    s = sha3(13) + (4 * stor13.length + 1)
                    while sha3(13) + (4 * stor13.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        uint256(stor2[s]) = 0
                        stor3[s] = 0
                        s = s + 4
                        continue 
                mem[0] = 13
                stor13[stor13.length].field_0 = _52
                stor13[stor13.length].field_256 = _58
                stor13[stor13.length].field_512 = _66
                stor13[stor13.length].field_768 = _74
                s = _74
                t = _66
                t = _58
                t = _52
                idx = idx + 1
                t = _97
                continue 
            if mem[(128 * idx) + _7 + 128] > mem[t]:
                _88 = mem[64]
                mem[64] = mem[64] + 128
                mem[_88] = mem[(128 * idx) + _7 + 128]
                mem[_88 + 32] = _58
                mem[_88 + 64] = _66
                mem[_88 + 96] = _74
                stor13.length++
                if not stor13.length > stor13.length + 1:
                    mem[0] = 13
                    stor13[stor13.length].field_0 = _52
                    stor13[stor13.length].field_256 = _58
                    stor13[stor13.length].field_512 = _66
                    stor13[stor13.length].field_768 = _74
                    s = _74
                    t = _66
                    t = _58
                    t = _52
                    idx = idx + 1
                    t = _88
                    continue 
                t = sha3(13) + (4 * stor13.length + 1)
                while sha3(13) + (4 * stor13.length) > t:
                    stor[t] = 0
                    uint256(stor1[t]) = 0
                    uint256(stor2[t]) = 0
                    stor3[t] = 0
                    t = t + 4
                    continue 
                mem[0] = 13
                stor13[stor13.length].field_0 = _52
                stor13[stor13.length].field_256 = _58
                stor13[stor13.length].field_512 = _66
                stor13[stor13.length].field_768 = _74
                t = _74
                t = _66
                t = _58
                t = _52
                idx = idx + 1
                t = _88
                continue 
            require mem[(32 * (4 * idx) + 2) + _7 + 128] > mem[t + 64]
            require mem[(128 * idx) + _7 + 128] >= mem[t]
            _101 = mem[64]
            mem[64] = mem[64] + 128
            mem[_101] = mem[(128 * idx) + _7 + 128]
            mem[_101 + 32] = _58
            mem[_101 + 64] = _66
            mem[_101 + 96] = _74
            stor13.length++
            if not stor13.length <= stor13.length + 1:
                s = sha3(13) + (4 * stor13.length + 1)
                while sha3(13) + (4 * stor13.length) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    uint256(stor2[s]) = 0
                    stor3[s] = 0
                    s = s + 4
                    continue 
            mem[0] = 13
            stor13[stor13.length].field_0 = _52
            stor13[stor13.length].field_256 = _58
            stor13[stor13.length].field_512 = _66
            stor13[stor13.length].field_768 = _74
            s = _74
            t = _66
            t = _58
            t = _52
            idx = idx + 1
            t = _101
            continue 
        require idx
        require 4 * idx / idx == 4
        require 4 * idx >= 4 * idx
        require 4 * idx < mem[_7 + 96]
        _54 = mem[(128 * idx) + _7 + 128]
        require (4 * idx) + 1 >= 4 * idx
        require (4 * idx) + 1 < mem[_7 + 96]
        _62 = mem[(32 * (4 * idx) + 1) + _7 + 128]
        require (4 * idx) + 2 >= 4 * idx
        require (4 * idx) + 2 < mem[_7 + 96]
        _70 = mem[(32 * (4 * idx) + 2) + _7 + 128]
        require (4 * idx) + 3 >= 4 * idx
        require (4 * idx) + 3 < mem[_7 + 96]
        _78 = mem[(32 * (4 * idx) + 3) + _7 + 128]
        require block.timestamp < mem[(32 * (4 * idx) + 1) + _7 + 128]
        require mem[(32 * (4 * idx) + 1) + _7 + 128] < mem[(32 * (4 * idx) + 2) + _7 + 128]
        if not idx:
            _90 = mem[64]
            mem[64] = mem[64] + 128
            mem[_90] = mem[(128 * idx) + _7 + 128]
            mem[_90 + 32] = _62
            mem[_90 + 64] = _70
            mem[_90 + 96] = _78
            stor13.length++
            if not stor13.length > stor13.length + 1:
                mem[0] = 13
                stor13[stor13.length].field_0 = _54
                stor13[stor13.length].field_256 = _62
                stor13[stor13.length].field_512 = _70
                stor13[stor13.length].field_768 = _78
                s = _78
                t = _70
                t = _62
                t = _54
                idx = idx + 1
                t = _90
                continue 
            t = sha3(13) + (4 * stor13.length + 1)
            while sha3(13) + (4 * stor13.length) > t:
                stor[t] = 0
                uint256(stor1[t]) = 0
                uint256(stor2[t]) = 0
                stor3[t] = 0
                t = t + 4
                continue 
            mem[0] = 13
            stor13[stor13.length].field_0 = _54
            stor13[stor13.length].field_256 = _62
            stor13[stor13.length].field_512 = _70
            stor13[stor13.length].field_768 = _78
            t = _78
            t = _70
            t = _62
            t = _54
            idx = idx + 1
            t = _90
            continue 
        if mem[(32 * (4 * idx) + 2) + _7 + 128] < mem[t + 64]:
            require mem[(32 * (4 * idx) + 2) + _7 + 128] > mem[t + 64]
            require mem[(128 * idx) + _7 + 128] >= mem[t]
            _116 = mem[64]
            mem[64] = mem[64] + 128
            mem[_116] = mem[(128 * idx) + _7 + 128]
            mem[_116 + 32] = _62
            mem[_116 + 64] = _70
            mem[_116 + 96] = _78
            stor13.length++
            if not stor13.length <= stor13.length + 1:
                s = sha3(13) + (4 * stor13.length + 1)
                while sha3(13) + (4 * stor13.length) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    uint256(stor2[s]) = 0
                    stor3[s] = 0
                    s = s + 4
                    continue 
            mem[0] = 13
            stor13[stor13.length].field_0 = _54
            stor13[stor13.length].field_256 = _62
            stor13[stor13.length].field_512 = _70
            stor13[stor13.length].field_768 = _78
            s = _78
            t = _70
            t = _62
            t = _54
            idx = idx + 1
            t = _116
            continue 
        if mem[(128 * idx) + _7 + 128] > mem[t]:
            _103 = mem[64]
            mem[64] = mem[64] + 128
            mem[_103] = mem[(128 * idx) + _7 + 128]
            mem[_103 + 32] = _62
            mem[_103 + 64] = _70
            mem[_103 + 96] = _78
            stor13.length++
            if not stor13.length <= stor13.length + 1:
                s = sha3(13) + (4 * stor13.length + 1)
                while sha3(13) + (4 * stor13.length) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    uint256(stor2[s]) = 0
                    stor3[s] = 0
                    s = s + 4
                    continue 
            mem[0] = 13
            stor13[stor13.length].field_0 = _54
            stor13[stor13.length].field_256 = _62
            stor13[stor13.length].field_512 = _70
            stor13[stor13.length].field_768 = _78
            s = _78
            t = _70
            t = _62
            t = _54
            idx = idx + 1
            t = _103
            continue 
        require mem[(32 * (4 * idx) + 2) + _7 + 128] > mem[t + 64]
        require mem[(128 * idx) + _7 + 128] >= mem[t]
        _124 = mem[64]
        mem[64] = mem[64] + 128
        mem[_124] = mem[(128 * idx) + _7 + 128]
        mem[_124 + 32] = _62
        mem[_124 + 64] = _70
        mem[_124 + 96] = _78
        stor13.length++
        if not stor13.length <= stor13.length + 1:
            s = sha3(13) + (4 * stor13.length + 1)
            while sha3(13) + (4 * stor13.length) > s:
                stor[s] = 0
                uint256(stor1[s]) = 0
                uint256(stor2[s]) = 0
                stor3[s] = 0
                s = s + 4
                continue 
        mem[0] = 13
        stor13[stor13.length].field_0 = _54
        stor13[stor13.length].field_256 = _62
        stor13[stor13.length].field_512 = _70
        stor13[stor13.length].field_768 = _78
        s = _78
        t = _70
        t = _62
        t = _54
        idx = idx + 1
        t = _124
        continue 
    stor14 = block.number
    require 1 <= stor13.length
    require stor13.length - 1 < stor13.length
    require _5 == stor13[stor13.length - 1].field_512
    create contract with 0 wei
                    code: code.data[9018 len 6427], 400000000 * 10^18, 18, address(_3), 1, address(_6)
    require create.new_address
    address(stor1.length) = address(create.new_address)
    require stor0 == msg.sender
    require _2 >= 100
    stor16 = _2
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x43214675 with:
         gas gas_remaining - 710 wei
        args address(this.address), 1
    require ext_call.success
    require ext_code.size(address(stor1.length))
    call address(stor1.length).setTransferAgent(address arg1, bool arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), 1
    require ext_call.success
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x29ff4f53 with:
         gas gas_remaining - 710 wei
        args address(this.address)
    require ext_call.success
    require ext_code.size(address(stor1.length))
    call address(stor1.length).setTransferAgent(address arg1, bool arg2) with:
         gas gas_remaining - 710 wei
        args address(_3), 1
    require ext_call.success
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), 600000000 * 10^18
    require ext_call.success
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x43214675 with:
         gas gas_remaining - 710 wei
        args address(this.address), 0
    require ext_call.success
    return code.data[2295 len 6723]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
uint8 stor0; offset 160
address owner;
address tokenAddress;
address multisigWalletAddress;
address investmentGatewayAddress;
uint256 startsAt;
uint256 endsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint128 stor9; offset 184
address signerAddress; offset 24
uint256 stor9; offset 8
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint8 stor12;
array of struct tranches;
uint256 deploymentBlock;
uint256 minimum_buy_value;
uint256 milieurs_per_eth;

function requireCustomerId() {
    return bool(uint8(stor9.field_8))
}

function endsAt() {
    return endsAt
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function tranches(uint256 arg1) {
    require arg1 < tranches.length
    return tranches[arg1].field_0, tranches[arg1].field_256, tranches[arg1].field_512, tranches[arg1].field_768
}

function investmentGateway() {
    return investmentGatewayAddress
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function signerAddress() {
    return signerAddress
}

function milieurs_per_eth() {
    return milieurs_per_eth
}

function minimum_buy_value() {
    return minimum_buy_value
}

function getDeploymentBlock() {
    return deploymentBlock
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function startsAt() {
    return startsAt
}

function finalized() {
    return bool(uint8(stor9.field_0))
}

function halted() {
    return bool(stor0)
}

function earlyParticipantWhitelist(address arg1) {
    return bool(stor12[arg1])
}

function requiredSignedAddress() {
    return bool(uint8(stor9.field_16))
}

function investorCount() {
    return investorCount
}

function getTranchesLength() {
    return tranches.length
}

function token() {
    return tokenAddress
}

function halt() {
    require owner == msg.sender
    stor0 = 1
    emit 0xd392333b: 1
}

function setMinimumBuyValue(uint256 arg1) {
    require owner == msg.sender
    minimum_buy_value = arg1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit 0xd392333b: 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function updateEursPerEth(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 100
    milieurs_per_eth = arg1
}

function setInvestmentGateway(address arg1) {
    require owner == msg.sender
    require arg1
    investmentGatewayAddress = arg1
}

function getState() {
    if uint8(stor9.field_0):
        return 4
    if block.timestamp < startsAt:
        return 1
    if block.timestamp > endsAt:
        return 3
    if tokensSold >= 600000000 * 10^18:
        return 3
    return 2
}

function setEndingTime(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor9.field_0)
    if block.timestamp >= startsAt:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
    require arg1 > block.timestamp
    require arg1 > startsAt
    endsAt = arg1
}

function setRequireSignedAddress(bool arg1, address arg2) {
    require owner == msg.sender
    uint8(stor9.field_16) = uint8(arg1)
    signerAddress = arg2
    Mask(72, 0, stor9.field_184) = Mask(72, 168, arg1) >> 168
    Mask(72, 0, stor9.field_184) = 0
    emit InvestmentPolicyChanged(bool(uint8(stor9.field_8)), bool(uint8(arg1)), arg2);
}

function setStartingTime(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor9.field_0)
    if block.timestamp >= startsAt:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
        revert
    else:
        require arg1 > block.timestamp
        require arg1 < endsAt
        startsAt = arg1
}

function setEarlyParticipantWhitelist(address arg1, bool arg2) {
    require owner == msg.sender
    require not uint8(stor9.field_0)
    if block.timestamp >= startsAt:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
    require not stor0
    stor12[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function setRequireCustomerId(bool arg1) {
    require owner == msg.sender
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg1)
    emit InvestmentPolicyChanged(bool arg1, bool arg2, address arg3):
                                 bool(uint8(arg1)),
                                 bool(uint16(arg1) / 256 or uint8(stor9.field_16) or 0),
                                 0,
                                 signerAddress,
}

function enableLostAndFound(address arg1, uint256 arg2, address arg3) {
    if tokenAddress != arg3:
        require msg.sender == owner
        require ext_code.size(arg3)
        call arg3.approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        require ext_call.success
    else:
        if not uint8(stor9.field_0):
            require block.timestamp >= startsAt
            require block.timestamp <= endsAt
            require tokensSold < 600000000 * 10^18
            revert
        else:
            require msg.sender == owner
            require ext_code.size(arg3)
            call arg3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2
            require ext_call.success
}

function finalize() {
    require not uint8(stor9.field_0)
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require tokensSold >= 600000000 * 10^18
    require owner == msg.sender
    require not stor0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5f412d4f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args (ext_call.return_data[0] / 2)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigWalletAddress, ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    require ext_call.success
    require not uint8(stor9.field_0)
    require block.timestamp >= startsAt
    if block.timestamp <= endsAt:
        require tokensSold >= 600000000 * 10^18
    require owner == msg.sender
    require not stor0
    uint8(stor9.field_0) = 1
    emit Finalized()
}

function preallocate(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require not uint8(stor9.field_0)
    if block.timestamp >= startsAt:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if arg2:
        require arg2
        require 10^ext_call.return_data[31 len 1] * arg2 / arg2 == 10^ext_call.return_data[31 len 1]
    require 10^ext_call.return_data[31 len 1] * arg2
    if arg3:
        require arg3
        require 10^ext_call.return_data[31 len 1] * arg2 * arg3 / arg3 == 10^ext_call.return_data[31 len 1] * arg2
    require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
    investedAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
    require (10^uint8(ext_call.return_data[0]) * arg2) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
    tokenAmountOf[address(arg1)] += 10^uint8(ext_call.return_data[0]) * arg2
    require (10^uint8(ext_call.return_data[0]) * arg2 * arg3) + weiRaised >= weiRaised
    weiRaised += 10^uint8(ext_call.return_data[0]) * arg2 * arg3
    require (10^uint8(ext_call.return_data[0]) * arg2) + tokensSold >= tokensSold
    tokensSold += 10^uint8(ext_call.return_data[0]) * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^uint8(ext_call.return_data[0]) * arg2
    require ext_call.success
    emit Invested(address(arg1), 10^uint8(ext_call.return_data[0]) * arg2 * arg3, 10^uint8(ext_call.return_data[0]) * arg2, 0);
}

function buyOnBehalfWithCustomerId(address arg1, uint128 arg2) payable {
    mem[64] = 96
    require arg2
    require not uint8(stor9.field_16)
    require not stor0
    require not uint8(stor9.field_0)
    if block.timestamp < startsAt:
        if uint8(stor9.field_0):
            require var34001 < tranches.length
            mem[0] = 13
            if tranches[var34001].field_256 > block.timestamp:
                var34001 = var34001 + 1
                continue 
            require var34001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var34001].field_512:
                var34001 = var34001 + 1
                continue 
            require var34001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var34001].field_0:
                var34001 = var34001 + 1
                continue 
            require var34001 < tranches.length
            if tranches[var34001].field_768:
                require tranches[var34001].field_768
                require milieurs_per_eth * tranches[var34001].field_768 / tranches[var34001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var34001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var34001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var34001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / milieurs_per_eth * tranches[var34001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
            else:
                if milieurs_per_eth * tranches[var34001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var34001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / milieurs_per_eth * tranches[var34001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var34001].field_768 / 1000 / 10^18, arg2);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var34001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var37001 < tranches.length
                    mem[0] = 13
                    if tranches[var37001].field_256 > block.timestamp:
                        var37001 = var37001 + 1
                        continue 
                    require var37001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var37001].field_512:
                        var37001 = var37001 + 1
                        continue 
                    require var37001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var37001].field_0:
                        var37001 = var37001 + 1
                        continue 
                    require var37001 < tranches.length
                    if tranches[var37001].field_768:
                        require tranches[var37001].field_768
                        require milieurs_per_eth * tranches[var37001].field_768 / tranches[var37001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var37001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var37001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var37001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / milieurs_per_eth * tranches[var37001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var37001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var37001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / milieurs_per_eth * tranches[var37001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var40001 < tranches.length
                    mem[0] = 13
                    if tranches[var40001].field_256 > block.timestamp:
                        var40001 = var40001 + 1
                        continue 
                    require var40001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var40001].field_512:
                        var40001 = var40001 + 1
                        continue 
                    require var40001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var40001].field_0:
                        var40001 = var40001 + 1
                        continue 
                    require var40001 < tranches.length
                    if tranches[var40001].field_768:
                        require tranches[var40001].field_768
                        require milieurs_per_eth * tranches[var40001].field_768 / tranches[var40001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var40001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var40001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var40001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / milieurs_per_eth * tranches[var40001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var40001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var40001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / milieurs_per_eth * tranches[var40001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var40001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var40001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var36001 < tranches.length
                mem[0] = 13
                if tranches[var36001].field_256 > block.timestamp:
                    var36001 = var36001 + 1
                    continue 
                require var36001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var36001].field_512:
                    var36001 = var36001 + 1
                    continue 
                require var36001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var36001].field_0:
                    var36001 = var36001 + 1
                    continue 
                require var36001 < tranches.length
                if tranches[var36001].field_768:
                    require tranches[var36001].field_768
                    require milieurs_per_eth * tranches[var36001].field_768 / tranches[var36001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var36001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var36001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var36001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / milieurs_per_eth * tranches[var36001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, arg2);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                else:
                    if milieurs_per_eth * tranches[var36001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var36001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / milieurs_per_eth * tranches[var36001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, arg2);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
        if uint8(stor9.field_0):
            require var41001 < tranches.length
            mem[0] = 13
            if tranches[var41001].field_256 > block.timestamp:
                var41001 = var41001 + 1
                continue 
            require var41001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var41001].field_512:
                var41001 = var41001 + 1
                continue 
            require var41001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var41001].field_0:
                var41001 = var41001 + 1
                continue 
            require var41001 < tranches.length
            if tranches[var41001].field_768:
                require tranches[var41001].field_768
                require milieurs_per_eth * tranches[var41001].field_768 / tranches[var41001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var41001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var41001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var41001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / milieurs_per_eth * tranches[var41001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
            else:
                if milieurs_per_eth * tranches[var41001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var41001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / milieurs_per_eth * tranches[var41001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18, arg2);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var44001 < tranches.length
                    mem[0] = 13
                    if tranches[var44001].field_256 > block.timestamp:
                        var44001 = var44001 + 1
                        continue 
                    require var44001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var44001].field_512:
                        var44001 = var44001 + 1
                        continue 
                    require var44001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var44001].field_0:
                        var44001 = var44001 + 1
                        continue 
                    require var44001 < tranches.length
                    if tranches[var44001].field_768:
                        require tranches[var44001].field_768
                        require milieurs_per_eth * tranches[var44001].field_768 / tranches[var44001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var44001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var44001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var44001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var47001 < tranches.length
                    mem[0] = 13
                    if tranches[var47001].field_256 > block.timestamp:
                        var47001 = var47001 + 1
                        continue 
                    require var47001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var47001].field_512:
                        var47001 = var47001 + 1
                        continue 
                    require var47001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var47001].field_0:
                        var47001 = var47001 + 1
                        continue 
                    require var47001 < tranches.length
                    if tranches[var47001].field_768:
                        require tranches[var47001].field_768
                        require milieurs_per_eth * tranches[var47001].field_768 / tranches[var47001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var47001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var47001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var47001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / milieurs_per_eth * tranches[var47001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var47001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var47001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / milieurs_per_eth * tranches[var47001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var47001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var47001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var43001 < tranches.length
                mem[0] = 13
                if tranches[var43001].field_256 > block.timestamp:
                    var43001 = var43001 + 1
                    continue 
                require var43001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var43001].field_512:
                    var43001 = var43001 + 1
                    continue 
                require var43001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var43001].field_0:
                    var43001 = var43001 + 1
                    continue 
                require var43001 < tranches.length
                if tranches[var43001].field_768:
                    require tranches[var43001].field_768
                    require milieurs_per_eth * tranches[var43001].field_768 / tranches[var43001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var43001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var43001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg2);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                else:
                    if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var43001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg2);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function buyOnBehalfWithSignedAddress(address arg1, uint128 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require arg2
    hash = sha256hash(arg1) 
    require sha256hash.result
    mem[64] = 128
    mem[128] = hash
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg5
    signer = erecover(hash, arg3 << 248, arg4, arg5) 
    mem[96] = signer
    require erecover.result
    require address(signer) == signerAddress
    require not stor0
    require not uint8(stor9.field_0)
    if block.timestamp < startsAt:
        if uint8(stor9.field_0):
            require var36001 < tranches.length
            mem[0] = 13
            if tranches[var36001].field_256 > block.timestamp:
                var36001 = var36001 + 1
                continue 
            require var36001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var36001].field_512:
                var36001 = var36001 + 1
                continue 
            require var36001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var36001].field_0:
                var36001 = var36001 + 1
                continue 
            require var36001 < tranches.length
            if tranches[var36001].field_768:
                require tranches[var36001].field_768
                require milieurs_per_eth * tranches[var36001].field_768 / tranches[var36001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var36001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var36001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var36001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / milieurs_per_eth * tranches[var36001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
            else:
                if milieurs_per_eth * tranches[var36001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / milieurs_per_eth * tranches[var36001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, arg2);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var39001 < tranches.length
                    mem[0] = 13
                    if tranches[var39001].field_256 > block.timestamp:
                        var39001 = var39001 + 1
                        continue 
                    require var39001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var39001].field_512:
                        var39001 = var39001 + 1
                        continue 
                    require var39001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var39001].field_0:
                        var39001 = var39001 + 1
                        continue 
                    require var39001 < tranches.length
                    if tranches[var39001].field_768:
                        require tranches[var39001].field_768
                        require milieurs_per_eth * tranches[var39001].field_768 / tranches[var39001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var39001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var39001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var39001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / milieurs_per_eth * tranches[var39001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var39001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var39001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / milieurs_per_eth * tranches[var39001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var42001 < tranches.length
                    mem[0] = 13
                    if tranches[var42001].field_256 > block.timestamp:
                        var42001 = var42001 + 1
                        continue 
                    require var42001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var42001].field_512:
                        var42001 = var42001 + 1
                        continue 
                    require var42001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var42001].field_0:
                        var42001 = var42001 + 1
                        continue 
                    require var42001 < tranches.length
                    if tranches[var42001].field_768:
                        require tranches[var42001].field_768
                        require milieurs_per_eth * tranches[var42001].field_768 / tranches[var42001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var42001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var42001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var38001 < tranches.length
                mem[0] = 13
                if tranches[var38001].field_256 > block.timestamp:
                    var38001 = var38001 + 1
                    continue 
                require var38001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var38001].field_512:
                    var38001 = var38001 + 1
                    continue 
                require var38001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var38001].field_0:
                    var38001 = var38001 + 1
                    continue 
                require var38001 < tranches.length
                if tranches[var38001].field_768:
                    require tranches[var38001].field_768
                    require milieurs_per_eth * tranches[var38001].field_768 / tranches[var38001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var38001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var38001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / milieurs_per_eth * tranches[var38001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, arg2);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                else:
                    if milieurs_per_eth * tranches[var38001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var38001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / milieurs_per_eth * tranches[var38001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, arg2);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
        if uint8(stor9.field_0):
            require var43001 < tranches.length
            mem[0] = 13
            if tranches[var43001].field_256 > block.timestamp:
                var43001 = var43001 + 1
                continue 
            require var43001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var43001].field_512:
                var43001 = var43001 + 1
                continue 
            require var43001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var43001].field_0:
                var43001 = var43001 + 1
                continue 
            require var43001 < tranches.length
            if tranches[var43001].field_768:
                require tranches[var43001].field_768
                require milieurs_per_eth * tranches[var43001].field_768 / tranches[var43001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var43001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var43001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                investedAmountOf[address(arg1)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg2);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
            else:
                if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(arg1)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg2);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var46001 < tranches.length
                    mem[0] = 13
                    if tranches[var46001].field_256 > block.timestamp:
                        var46001 = var46001 + 1
                        continue 
                    require var46001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var46001].field_512:
                        var46001 = var46001 + 1
                        continue 
                    require var46001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var46001].field_0:
                        var46001 = var46001 + 1
                        continue 
                    require var46001 < tranches.length
                    if tranches[var46001].field_768:
                        require tranches[var46001].field_768
                        require milieurs_per_eth * tranches[var46001].field_768 / tranches[var46001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var46001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / milieurs_per_eth * tranches[var46001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var46001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var46001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / milieurs_per_eth * tranches[var46001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var49001 < tranches.length
                    mem[0] = 13
                    if tranches[var49001].field_256 > block.timestamp:
                        var49001 = var49001 + 1
                        continue 
                    require var49001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var49001].field_512:
                        var49001 = var49001 + 1
                        continue 
                    require var49001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var49001].field_0:
                        var49001 = var49001 + 1
                        continue 
                    require var49001 < tranches.length
                    if tranches[var49001].field_768:
                        require tranches[var49001].field_768
                        require milieurs_per_eth * tranches[var49001].field_768 / tranches[var49001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var49001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg2);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg2);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                    else:
                        if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var49001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg2);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var45001 < tranches.length
                mem[0] = 13
                if tranches[var45001].field_256 > block.timestamp:
                    var45001 = var45001 + 1
                    continue 
                require var45001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var45001].field_512:
                    var45001 = var45001 + 1
                    continue 
                require var45001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var45001].field_0:
                    var45001 = var45001 + 1
                    continue 
                require var45001 < tranches.length
                if tranches[var45001].field_768:
                    require tranches[var45001].field_768
                    require milieurs_per_eth * tranches[var45001].field_768 / tranches[var45001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var45001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg2);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg2);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg2);
                else:
                    if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg2);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function buy() payable {
    mem[64] = 96
    mem[32] = 10
    require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
    require investedAmountOf[address(msg.sender)] + msg.value >= minimum_buy_value
    require not uint8(stor9.field_16)
    require not uint8(stor9.field_8)
    require not stor0
    require not uint8(stor9.field_0)
    if block.timestamp < startsAt:
        if uint8(stor9.field_0):
            require var42001 < tranches.length
            mem[0] = 13
            if tranches[var42001].field_256 > block.timestamp:
                var42001 = var42001 + 1
                continue 
            require var42001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var42001].field_512:
                var42001 = var42001 + 1
                continue 
            require var42001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var42001].field_0:
                var42001 = var42001 + 1
                continue 
            require var42001 < tranches.length
            if tranches[var42001].field_768:
                require tranches[var42001].field_768
                require milieurs_per_eth * tranches[var42001].field_768 / tranches[var42001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var42001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var42001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
            else:
                if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var42001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var45001 < tranches.length
                    mem[0] = 13
                    if tranches[var45001].field_256 > block.timestamp:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var45001].field_512:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var45001].field_0:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    if tranches[var45001].field_768:
                        require tranches[var45001].field_768
                        require milieurs_per_eth * tranches[var45001].field_768 / tranches[var45001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var45001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var48001 < tranches.length
                    mem[0] = 13
                    if tranches[var48001].field_256 > block.timestamp:
                        var48001 = var48001 + 1
                        continue 
                    require var48001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var48001].field_512:
                        var48001 = var48001 + 1
                        continue 
                    require var48001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var48001].field_0:
                        var48001 = var48001 + 1
                        continue 
                    require var48001 < tranches.length
                    if tranches[var48001].field_768:
                        require tranches[var48001].field_768
                        require milieurs_per_eth * tranches[var48001].field_768 / tranches[var48001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var48001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / milieurs_per_eth * tranches[var48001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var48001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var48001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / milieurs_per_eth * tranches[var48001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var44001 < tranches.length
                mem[0] = 13
                if tranches[var44001].field_256 > block.timestamp:
                    var44001 = var44001 + 1
                    continue 
                require var44001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var44001].field_512:
                    var44001 = var44001 + 1
                    continue 
                require var44001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var44001].field_0:
                    var44001 = var44001 + 1
                    continue 
                require var44001 < tranches.length
                if tranches[var44001].field_768:
                    require tranches[var44001].field_768
                    require milieurs_per_eth * tranches[var44001].field_768 / tranches[var44001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var44001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var44001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                else:
                    if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, 0);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
        if uint8(stor9.field_0):
            require var49001 < tranches.length
            mem[0] = 13
            if tranches[var49001].field_256 > block.timestamp:
                var49001 = var49001 + 1
                continue 
            require var49001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var49001].field_512:
                var49001 = var49001 + 1
                continue 
            require var49001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var49001].field_0:
                var49001 = var49001 + 1
                continue 
            require var49001 < tranches.length
            if tranches[var49001].field_768:
                require tranches[var49001].field_768
                require milieurs_per_eth * tranches[var49001].field_768 / tranches[var49001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var49001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var49001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, 0);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
            else:
                if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var49001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, 0);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var52001 < tranches.length
                    mem[0] = 13
                    if tranches[var52001].field_256 > block.timestamp:
                        var52001 = var52001 + 1
                        continue 
                    require var52001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var52001].field_512:
                        var52001 = var52001 + 1
                        continue 
                    require var52001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var52001].field_0:
                        var52001 = var52001 + 1
                        continue 
                    require var52001 < tranches.length
                    if tranches[var52001].field_768:
                        require tranches[var52001].field_768
                        require milieurs_per_eth * tranches[var52001].field_768 / tranches[var52001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var52001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var52001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var52001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / milieurs_per_eth * tranches[var52001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var52001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var52001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / milieurs_per_eth * tranches[var52001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var55001 < tranches.length
                    mem[0] = 13
                    if tranches[var55001].field_256 > block.timestamp:
                        var55001 = var55001 + 1
                        continue 
                    require var55001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var55001].field_512:
                        var55001 = var55001 + 1
                        continue 
                    require var55001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var55001].field_0:
                        var55001 = var55001 + 1
                        continue 
                    require var55001 < tranches.length
                    if tranches[var55001].field_768:
                        require tranches[var55001].field_768
                        require milieurs_per_eth * tranches[var55001].field_768 / tranches[var55001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var55001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var55001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var55001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / milieurs_per_eth * tranches[var55001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var55001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var55001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / milieurs_per_eth * tranches[var55001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var51001 < tranches.length
                mem[0] = 13
                if tranches[var51001].field_256 > block.timestamp:
                    var51001 = var51001 + 1
                    continue 
                require var51001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var51001].field_512:
                    var51001 = var51001 + 1
                    continue 
                require var51001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var51001].field_0:
                    var51001 = var51001 + 1
                    continue 
                require var51001 < tranches.length
                if tranches[var51001].field_768:
                    require tranches[var51001].field_768
                    require milieurs_per_eth * tranches[var51001].field_768 / tranches[var51001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var51001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var51001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var51001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / milieurs_per_eth * tranches[var51001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                else:
                    if milieurs_per_eth * tranches[var51001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var51001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / milieurs_per_eth * tranches[var51001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18, 0);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function buyWithSignedAddress(uint128 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    mem[32] = 10
    require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
    require investedAmountOf[address(msg.sender)] + msg.value >= minimum_buy_value
    require arg1
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    mem[64] = 128
    mem[128] = hash
    mem[160] = arg2
    mem[192] = arg3
    mem[224] = arg4
    signer = erecover(hash, arg2 << 248, arg3, arg4) 
    mem[96] = signer
    require erecover.result
    require address(signer) == signerAddress
    require not stor0
    require not uint8(stor9.field_0)
    if block.timestamp < startsAt:
        if uint8(stor9.field_0):
            require var43001 < tranches.length
            mem[0] = 13
            if tranches[var43001].field_256 > block.timestamp:
                var43001 = var43001 + 1
                continue 
            require var43001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var43001].field_512:
                var43001 = var43001 + 1
                continue 
            require var43001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var43001].field_0:
                var43001 = var43001 + 1
                continue 
            require var43001 < tranches.length
            if tranches[var43001].field_768:
                require tranches[var43001].field_768
                require milieurs_per_eth * tranches[var43001].field_768 / tranches[var43001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var43001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var43001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
            else:
                if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, arg1);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var46001 < tranches.length
                    mem[0] = 13
                    if tranches[var46001].field_256 > block.timestamp:
                        var46001 = var46001 + 1
                        continue 
                    require var46001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var46001].field_512:
                        var46001 = var46001 + 1
                        continue 
                    require var46001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var46001].field_0:
                        var46001 = var46001 + 1
                        continue 
                    require var46001 < tranches.length
                    if tranches[var46001].field_768:
                        require tranches[var46001].field_768
                        require milieurs_per_eth * tranches[var46001].field_768 / tranches[var46001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var46001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / milieurs_per_eth * tranches[var46001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var46001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var46001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / milieurs_per_eth * tranches[var46001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var49001 < tranches.length
                    mem[0] = 13
                    if tranches[var49001].field_256 > block.timestamp:
                        var49001 = var49001 + 1
                        continue 
                    require var49001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var49001].field_512:
                        var49001 = var49001 + 1
                        continue 
                    require var49001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var49001].field_0:
                        var49001 = var49001 + 1
                        continue 
                    require var49001 < tranches.length
                    if tranches[var49001].field_768:
                        require tranches[var49001].field_768
                        require milieurs_per_eth * tranches[var49001].field_768 / tranches[var49001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var49001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var49001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var45001 < tranches.length
                mem[0] = 13
                if tranches[var45001].field_256 > block.timestamp:
                    var45001 = var45001 + 1
                    continue 
                require var45001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var45001].field_512:
                    var45001 = var45001 + 1
                    continue 
                require var45001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var45001].field_0:
                    var45001 = var45001 + 1
                    continue 
                require var45001 < tranches.length
                if tranches[var45001].field_768:
                    require tranches[var45001].field_768
                    require milieurs_per_eth * tranches[var45001].field_768 / tranches[var45001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var45001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg1);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                else:
                    if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg1);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
        if uint8(stor9.field_0):
            require var50001 < tranches.length
            mem[0] = 13
            if tranches[var50001].field_256 > block.timestamp:
                var50001 = var50001 + 1
                continue 
            require var50001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var50001].field_512:
                var50001 = var50001 + 1
                continue 
            require var50001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var50001].field_0:
                var50001 = var50001 + 1
                continue 
            require var50001 < tranches.length
            if tranches[var50001].field_768:
                require tranches[var50001].field_768
                require milieurs_per_eth * tranches[var50001].field_768 / tranches[var50001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var50001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var50001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var50001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / milieurs_per_eth * tranches[var50001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
            else:
                if milieurs_per_eth * tranches[var50001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var50001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / milieurs_per_eth * tranches[var50001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var50001].field_768 / 1000 / 10^18, arg1);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var50001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var53001 < tranches.length
                    mem[0] = 13
                    if tranches[var53001].field_256 > block.timestamp:
                        var53001 = var53001 + 1
                        continue 
                    require var53001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var53001].field_512:
                        var53001 = var53001 + 1
                        continue 
                    require var53001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var53001].field_0:
                        var53001 = var53001 + 1
                        continue 
                    require var53001 < tranches.length
                    if tranches[var53001].field_768:
                        require tranches[var53001].field_768
                        require milieurs_per_eth * tranches[var53001].field_768 / tranches[var53001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var53001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var53001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var53001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / milieurs_per_eth * tranches[var53001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var53001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var53001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / milieurs_per_eth * tranches[var53001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var53001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var53001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var56001 < tranches.length
                    mem[0] = 13
                    if tranches[var56001].field_256 > block.timestamp:
                        var56001 = var56001 + 1
                        continue 
                    require var56001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var56001].field_512:
                        var56001 = var56001 + 1
                        continue 
                    require var56001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var56001].field_0:
                        var56001 = var56001 + 1
                        continue 
                    require var56001 < tranches.length
                    if tranches[var56001].field_768:
                        require tranches[var56001].field_768
                        require milieurs_per_eth * tranches[var56001].field_768 / tranches[var56001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var56001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var56001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var56001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / milieurs_per_eth * tranches[var56001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var56001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var56001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / milieurs_per_eth * tranches[var56001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var56001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var56001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var52001 < tranches.length
                mem[0] = 13
                if tranches[var52001].field_256 > block.timestamp:
                    var52001 = var52001 + 1
                    continue 
                require var52001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var52001].field_512:
                    var52001 = var52001 + 1
                    continue 
                require var52001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var52001].field_0:
                    var52001 = var52001 + 1
                    continue 
                require var52001 < tranches.length
                if tranches[var52001].field_768:
                    require tranches[var52001].field_768
                    require milieurs_per_eth * tranches[var52001].field_768 / tranches[var52001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var52001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var52001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var52001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / milieurs_per_eth * tranches[var52001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(msg.sender, msg.value, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, arg1);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                else:
                    if milieurs_per_eth * tranches[var52001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / milieurs_per_eth * tranches[var52001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(msg.sender, (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, arg1);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function buyWithCustomerId(uint128 arg1) payable {
    mem[64] = 96
    mem[32] = 10
    require investedAmountOf[address(msg.sender)] + msg.value >= msg.value
    require investedAmountOf[address(msg.sender)] + msg.value >= minimum_buy_value
    require arg1
    require not uint8(stor9.field_16)
    require arg1
    require not uint8(stor9.field_16)
    require not stor0
    require not uint8(stor9.field_0)
    if block.timestamp < startsAt:
        if uint8(stor9.field_0):
            require var42001 < tranches.length
            mem[0] = 13
            if tranches[var42001].field_256 > block.timestamp:
                var42001 = var42001 + 1
                continue 
            require var42001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var42001].field_512:
                var42001 = var42001 + 1
                continue 
            require var42001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var42001].field_0:
                var42001 = var42001 + 1
                continue 
            require var42001 < tranches.length
            if tranches[var42001].field_768:
                require tranches[var42001].field_768
                require milieurs_per_eth * tranches[var42001].field_768 / tranches[var42001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var42001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var42001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
            else:
                if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var42001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, arg1);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var45001 < tranches.length
                    mem[0] = 13
                    if tranches[var45001].field_256 > block.timestamp:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var45001].field_512:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var45001].field_0:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    if tranches[var45001].field_768:
                        require tranches[var45001].field_768
                        require milieurs_per_eth * tranches[var45001].field_768 / tranches[var45001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var45001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var48001 < tranches.length
                    mem[0] = 13
                    if tranches[var48001].field_256 > block.timestamp:
                        var48001 = var48001 + 1
                        continue 
                    require var48001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var48001].field_512:
                        var48001 = var48001 + 1
                        continue 
                    require var48001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var48001].field_0:
                        var48001 = var48001 + 1
                        continue 
                    require var48001 < tranches.length
                    if tranches[var48001].field_768:
                        require tranches[var48001].field_768
                        require milieurs_per_eth * tranches[var48001].field_768 / tranches[var48001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var48001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / milieurs_per_eth * tranches[var48001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var48001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var48001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / milieurs_per_eth * tranches[var48001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var44001 < tranches.length
                mem[0] = 13
                if tranches[var44001].field_256 > block.timestamp:
                    var44001 = var44001 + 1
                    continue 
                require var44001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var44001].field_512:
                    var44001 = var44001 + 1
                    continue 
                require var44001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var44001].field_0:
                    var44001 = var44001 + 1
                    continue 
                require var44001 < tranches.length
                if tranches[var44001].field_768:
                    require tranches[var44001].field_768
                    require milieurs_per_eth * tranches[var44001].field_768 / tranches[var44001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var44001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var44001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, arg1);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                else:
                    if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, arg1);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require block.timestamp <= endsAt
        require tokensSold < 600000000 * 10^18
        if uint8(stor9.field_0):
            require var49001 < tranches.length
            mem[0] = 13
            if tranches[var49001].field_256 > block.timestamp:
                var49001 = var49001 + 1
                continue 
            require var49001 < tranches.length
            mem[0] = 13
            if block.timestamp >= tranches[var49001].field_512:
                var49001 = var49001 + 1
                continue 
            require var49001 < tranches.length
            mem[0] = 13
            if tokensSold >= tranches[var49001].field_0:
                var49001 = var49001 + 1
                continue 
            require var49001 < tranches.length
            if tranches[var49001].field_768:
                require tranches[var49001].field_768
                require milieurs_per_eth * tranches[var49001].field_768 / tranches[var49001].field_768 == milieurs_per_eth
            require tokensSold <= 600000000 * 10^18
            if -tokensSold + 600000000 * 10^18:
                require -tokensSold + 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
            require milieurs_per_eth * tranches[var49001].field_768 / 1000
            if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 >= msg.value:
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                    if tokensSold <= 600000000 * 10^18:
                        if msg.value <= msg.value:
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if 600000000 * 10^18 >= tokensSold:
                                            tokensSold = 600000000 * 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, -tokensSold + 600000000 * 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                else:
                    if not milieurs_per_eth * tranches[var49001].field_768 / 1000:
                        if msg.value <= msg.value:
                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                investedAmountOf[address(msg.sender)] += msg.value
                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                    if msg.value + weiRaised >= weiRaised:
                                        weiRaised += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                            tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            require ext_call.success
                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg1);
                                            call multisigWalletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if msg.value <= msg.value:
                    else:
                        if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            if msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                revert
            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                require tokensSold <= 600000000 * 10^18
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                require -tokensSold + 600000000 * 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require 600000000 * 10^18 >= tokensSold
                tokensSold = 600000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + 600000000 * 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
            else:
                if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                    require milieurs_per_eth * tranches[var49001].field_768 / 1000
                    require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                require ext_call.success
                emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, arg1);
            call multisigWalletAddress with:
               value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 wei
                 gas 2300 * is_zero(value) wei
            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
            if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) > 0:
                call msg.sender with:
                   value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if block.timestamp >= startsAt:
                if block.timestamp > endsAt:
                    require var52001 < tranches.length
                    mem[0] = 13
                    if tranches[var52001].field_256 > block.timestamp:
                        var52001 = var52001 + 1
                        continue 
                    require var52001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var52001].field_512:
                        var52001 = var52001 + 1
                        continue 
                    require var52001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var52001].field_0:
                        var52001 = var52001 + 1
                        continue 
                    require var52001 < tranches.length
                    if tranches[var52001].field_768:
                        require tranches[var52001].field_768
                        require milieurs_per_eth * tranches[var52001].field_768 / tranches[var52001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var52001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var52001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var52001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / milieurs_per_eth * tranches[var52001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var52001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var52001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / milieurs_per_eth * tranches[var52001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var52001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var52001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require var55001 < tranches.length
                    mem[0] = 13
                    if tranches[var55001].field_256 > block.timestamp:
                        var55001 = var55001 + 1
                        continue 
                    require var55001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var55001].field_512:
                        var55001 = var55001 + 1
                        continue 
                    require var55001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var55001].field_0:
                        var55001 = var55001 + 1
                        continue 
                    require var55001 < tranches.length
                    if tranches[var55001].field_768:
                        require tranches[var55001].field_768
                        require milieurs_per_eth * tranches[var55001].field_768 / tranches[var55001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var55001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var55001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                            tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18, arg1);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var55001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / milieurs_per_eth * tranches[var55001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                                investedAmountOf[address(msg.sender)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18, arg1);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                    else:
                        if milieurs_per_eth * tranches[var55001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var55001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / milieurs_per_eth * tranches[var55001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var55001].field_768 / 1000 / 10^18, arg1);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var55001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
            else:
                mem[32] = 12
                require stor12[address(msg.sender)]
                require var51001 < tranches.length
                mem[0] = 13
                if tranches[var51001].field_256 > block.timestamp:
                    var51001 = var51001 + 1
                    continue 
                require var51001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var51001].field_512:
                    var51001 = var51001 + 1
                    continue 
                require var51001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var51001].field_0:
                    var51001 = var51001 + 1
                    continue 
                require var51001 < tranches.length
                if tranches[var51001].field_768:
                    require tranches[var51001].field_768
                    require milieurs_per_eth * tranches[var51001].field_768 / tranches[var51001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var51001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, -tokensSold + 600000000 * 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var51001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                        tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18, arg1);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var51001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / milieurs_per_eth * tranches[var51001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]:
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]:
                                                tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(msg.sender), msg.value, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18, arg1);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18 >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = -tokensSold + tokenAmountOf[address(msg.sender)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000, -tokensSold + 600000000 * 10^18, arg1);
                else:
                    if milieurs_per_eth * tranches[var51001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var51001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / milieurs_per_eth * tranches[var51001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(msg.sender), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var51001].field_768 / 1000 / 10^18, arg1);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var51001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function buyOnBehalf(address arg1) payable {
    mem[64] = 96
    if not uint8(stor9.field_16):
        require not uint8(stor9.field_8)
        require not stor0
        require not uint8(stor9.field_0)
        if block.timestamp < startsAt:
            if uint8(stor9.field_0):
                require var35001 < tranches.length
                mem[0] = 13
                if tranches[var35001].field_256 > block.timestamp:
                    var35001 = var35001 + 1
                    continue 
                require var35001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var35001].field_512:
                    var35001 = var35001 + 1
                    continue 
                require var35001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var35001].field_0:
                    var35001 = var35001 + 1
                    continue 
                require var35001 < tranches.length
                if tranches[var35001].field_768:
                    require tranches[var35001].field_768
                    require milieurs_per_eth * tranches[var35001].field_768 / tranches[var35001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var35001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var35001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var35001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / milieurs_per_eth * tranches[var35001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                else:
                    if milieurs_per_eth * tranches[var35001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var35001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / milieurs_per_eth * tranches[var35001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var35001].field_768 / 1000 / 10^18, 0);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var35001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        require var38001 < tranches.length
                        mem[0] = 13
                        if tranches[var38001].field_256 > block.timestamp:
                            var38001 = var38001 + 1
                            continue 
                        require var38001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var38001].field_512:
                            var38001 = var38001 + 1
                            continue 
                        require var38001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var38001].field_0:
                            var38001 = var38001 + 1
                            continue 
                        require var38001 < tranches.length
                        if tranches[var38001].field_768:
                            require tranches[var38001].field_768
                            require milieurs_per_eth * tranches[var38001].field_768 / tranches[var38001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var38001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / milieurs_per_eth * tranches[var38001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var38001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / milieurs_per_eth * tranches[var38001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require var41001 < tranches.length
                        mem[0] = 13
                        if tranches[var41001].field_256 > block.timestamp:
                            var41001 = var41001 + 1
                            continue 
                        require var41001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var41001].field_512:
                            var41001 = var41001 + 1
                            continue 
                        require var41001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var41001].field_0:
                            var41001 = var41001 + 1
                            continue 
                        require var41001 < tranches.length
                        if tranches[var41001].field_768:
                            require tranches[var41001].field_768
                            require milieurs_per_eth * tranches[var41001].field_768 / tranches[var41001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var41001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var41001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var41001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / milieurs_per_eth * tranches[var41001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var41001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var41001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / milieurs_per_eth * tranches[var41001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var41001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var41001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    mem[32] = 12
                    require stor12[address(msg.sender)]
                    require var37001 < tranches.length
                    mem[0] = 13
                    if tranches[var37001].field_256 > block.timestamp:
                        var37001 = var37001 + 1
                        continue 
                    require var37001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var37001].field_512:
                        var37001 = var37001 + 1
                        continue 
                    require var37001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var37001].field_0:
                        var37001 = var37001 + 1
                        continue 
                    require var37001 < tranches.length
                    if tranches[var37001].field_768:
                        require tranches[var37001].field_768
                        require milieurs_per_eth * tranches[var37001].field_768 / tranches[var37001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var37001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var37001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var37001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / milieurs_per_eth * tranches[var37001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var37001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var37001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / milieurs_per_eth * tranches[var37001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var37001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var37001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            require block.timestamp <= endsAt
            require tokensSold < 600000000 * 10^18
            if uint8(stor9.field_0):
                require var42001 < tranches.length
                mem[0] = 13
                if tranches[var42001].field_256 > block.timestamp:
                    var42001 = var42001 + 1
                    continue 
                require var42001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var42001].field_512:
                    var42001 = var42001 + 1
                    continue 
                require var42001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var42001].field_0:
                    var42001 = var42001 + 1
                    continue 
                require var42001 < tranches.length
                if tranches[var42001].field_768:
                    require tranches[var42001].field_768
                    require milieurs_per_eth * tranches[var42001].field_768 / tranches[var42001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var42001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var42001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                else:
                    if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var42001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        require var45001 < tranches.length
                        mem[0] = 13
                        if tranches[var45001].field_256 > block.timestamp:
                            var45001 = var45001 + 1
                            continue 
                        require var45001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var45001].field_512:
                            var45001 = var45001 + 1
                            continue 
                        require var45001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var45001].field_0:
                            var45001 = var45001 + 1
                            continue 
                        require var45001 < tranches.length
                        if tranches[var45001].field_768:
                            require tranches[var45001].field_768
                            require milieurs_per_eth * tranches[var45001].field_768 / tranches[var45001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var45001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var45001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require var48001 < tranches.length
                        mem[0] = 13
                        if tranches[var48001].field_256 > block.timestamp:
                            var48001 = var48001 + 1
                            continue 
                        require var48001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var48001].field_512:
                            var48001 = var48001 + 1
                            continue 
                        require var48001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var48001].field_0:
                            var48001 = var48001 + 1
                            continue 
                        require var48001 < tranches.length
                        if tranches[var48001].field_768:
                            require tranches[var48001].field_768
                            require milieurs_per_eth * tranches[var48001].field_768 / tranches[var48001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var48001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / milieurs_per_eth * tranches[var48001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var48001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var48001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / milieurs_per_eth * tranches[var48001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var48001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var48001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    mem[32] = 12
                    require stor12[address(msg.sender)]
                    require var44001 < tranches.length
                    mem[0] = 13
                    if tranches[var44001].field_256 > block.timestamp:
                        var44001 = var44001 + 1
                        continue 
                    require var44001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var44001].field_512:
                        var44001 = var44001 + 1
                        continue 
                    require var44001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var44001].field_0:
                        var44001 = var44001 + 1
                        continue 
                    require var44001 < tranches.length
                    if tranches[var44001].field_768:
                        require tranches[var44001].field_768
                        require milieurs_per_eth * tranches[var44001].field_768 / tranches[var44001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var44001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var44001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var44001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var44001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / milieurs_per_eth * tranches[var44001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var44001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var44001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
    else:
        require investmentGatewayAddress == msg.sender
        require not uint8(stor9.field_8)
        require not stor0
        require not uint8(stor9.field_0)
        if block.timestamp < startsAt:
            if uint8(stor9.field_0):
                require var36001 < tranches.length
                mem[0] = 13
                if tranches[var36001].field_256 > block.timestamp:
                    var36001 = var36001 + 1
                    continue 
                require var36001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var36001].field_512:
                    var36001 = var36001 + 1
                    continue 
                require var36001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var36001].field_0:
                    var36001 = var36001 + 1
                    continue 
                require var36001 < tranches.length
                if tranches[var36001].field_768:
                    require tranches[var36001].field_768
                    require milieurs_per_eth * tranches[var36001].field_768 / tranches[var36001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var36001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var36001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var36001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / milieurs_per_eth * tranches[var36001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                else:
                    if milieurs_per_eth * tranches[var36001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var36001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / milieurs_per_eth * tranches[var36001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var36001].field_768 / 1000 / 10^18, 0);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var36001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        require var39001 < tranches.length
                        mem[0] = 13
                        if tranches[var39001].field_256 > block.timestamp:
                            var39001 = var39001 + 1
                            continue 
                        require var39001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var39001].field_512:
                            var39001 = var39001 + 1
                            continue 
                        require var39001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var39001].field_0:
                            var39001 = var39001 + 1
                            continue 
                        require var39001 < tranches.length
                        if tranches[var39001].field_768:
                            require tranches[var39001].field_768
                            require milieurs_per_eth * tranches[var39001].field_768 / tranches[var39001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var39001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var39001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var39001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / milieurs_per_eth * tranches[var39001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var39001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var39001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / milieurs_per_eth * tranches[var39001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var39001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var39001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require var42001 < tranches.length
                        mem[0] = 13
                        if tranches[var42001].field_256 > block.timestamp:
                            var42001 = var42001 + 1
                            continue 
                        require var42001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var42001].field_512:
                            var42001 = var42001 + 1
                            continue 
                        require var42001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var42001].field_0:
                            var42001 = var42001 + 1
                            continue 
                        require var42001 < tranches.length
                        if tranches[var42001].field_768:
                            require tranches[var42001].field_768
                            require milieurs_per_eth * tranches[var42001].field_768 / tranches[var42001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var42001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var42001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var42001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / milieurs_per_eth * tranches[var42001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var42001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var42001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    mem[32] = 12
                    require stor12[address(msg.sender)]
                    require var38001 < tranches.length
                    mem[0] = 13
                    if tranches[var38001].field_256 > block.timestamp:
                        var38001 = var38001 + 1
                        continue 
                    require var38001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var38001].field_512:
                        var38001 = var38001 + 1
                        continue 
                    require var38001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var38001].field_0:
                        var38001 = var38001 + 1
                        continue 
                    require var38001 < tranches.length
                    if tranches[var38001].field_768:
                        require tranches[var38001].field_768
                        require milieurs_per_eth * tranches[var38001].field_768 / tranches[var38001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var38001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var38001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / milieurs_per_eth * tranches[var38001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var38001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var38001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / milieurs_per_eth * tranches[var38001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var38001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var38001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
        else:
            require block.timestamp <= endsAt
            require tokensSold < 600000000 * 10^18
            if uint8(stor9.field_0):
                require var43001 < tranches.length
                mem[0] = 13
                if tranches[var43001].field_256 > block.timestamp:
                    var43001 = var43001 + 1
                    continue 
                require var43001 < tranches.length
                mem[0] = 13
                if block.timestamp >= tranches[var43001].field_512:
                    var43001 = var43001 + 1
                    continue 
                require var43001 < tranches.length
                mem[0] = 13
                if tokensSold >= tranches[var43001].field_0:
                    var43001 = var43001 + 1
                    continue 
                require var43001 < tranches.length
                if tranches[var43001].field_768:
                    require tranches[var43001].field_768
                    require milieurs_per_eth * tranches[var43001].field_768 / tranches[var43001].field_768 == milieurs_per_eth
                require tokensSold <= 600000000 * 10^18
                if -tokensSold + 600000000 * 10^18:
                    require -tokensSold + 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                require milieurs_per_eth * tranches[var43001].field_768 / 1000
                if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 >= msg.value:
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                        if tokensSold <= 600000000 * 10^18:
                            if msg.value <= msg.value:
                                require -tokensSold + 600000000 * 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if 600000000 * 10^18 >= tokensSold:
                                                tokensSold = 600000000 * 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), -tokensSold + 600000000 * 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                    else:
                        if not milieurs_per_eth * tranches[var43001].field_768 / 1000:
                            if msg.value <= msg.value:
                                require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                if not investedAmountOf[address(arg1)]:
                                    investorCount++
                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                    investedAmountOf[address(arg1)] += msg.value
                                    if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                        if msg.value + weiRaised >= weiRaised:
                                            weiRaised += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                require ext_call.success
                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, 0);
                                                call multisigWalletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if msg.value <= msg.value:
                        else:
                            if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                                if msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                    revert
                if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000:
                    require tokensSold <= 600000000 * 10^18
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                    require -tokensSold + 600000000 * 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require 600000000 * 10^18 >= tokensSold
                    tokensSold = 600000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), -tokensSold + 600000000 * 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                else:
                    if milieurs_per_eth * tranches[var43001].field_768 / 1000:
                        require milieurs_per_eth * tranches[var43001].field_768 / 1000
                        require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / milieurs_per_eth * tranches[var43001].field_768 / 1000 == msg.value
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                    require msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    if not investedAmountOf[address(arg1)]:
                        investorCount++
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                    investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) + weiRaised >= weiRaised
                    weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000
                    require (msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                    tokensSold += msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18
                    require ext_call.success
                    emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var43001].field_768 / 1000 / 10^18, 0);
                call multisigWalletAddress with:
                   value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000 <= msg.value
                if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) > 0:
                    call msg.sender with:
                       value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var43001].field_768 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if block.timestamp >= startsAt:
                    if block.timestamp > endsAt:
                        require var46001 < tranches.length
                        mem[0] = 13
                        if tranches[var46001].field_256 > block.timestamp:
                            var46001 = var46001 + 1
                            continue 
                        require var46001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var46001].field_512:
                            var46001 = var46001 + 1
                            continue 
                        require var46001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var46001].field_0:
                            var46001 = var46001 + 1
                            continue 
                        require var46001 < tranches.length
                        if tranches[var46001].field_768:
                            require tranches[var46001].field_768
                            require milieurs_per_eth * tranches[var46001].field_768 / tranches[var46001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var46001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / milieurs_per_eth * tranches[var46001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var46001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var46001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / milieurs_per_eth * tranches[var46001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var46001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var46001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require var49001 < tranches.length
                        mem[0] = 13
                        if tranches[var49001].field_256 > block.timestamp:
                            var49001 = var49001 + 1
                            continue 
                        require var49001 < tranches.length
                        mem[0] = 13
                        if block.timestamp >= tranches[var49001].field_512:
                            var49001 = var49001 + 1
                            continue 
                        require var49001 < tranches.length
                        mem[0] = 13
                        if tokensSold >= tranches[var49001].field_0:
                            var49001 = var49001 + 1
                            continue 
                        require var49001 < tranches.length
                        if tranches[var49001].field_768:
                            require tranches[var49001].field_768
                            require milieurs_per_eth * tranches[var49001].field_768 / tranches[var49001].field_768 == milieurs_per_eth
                        require tokensSold <= 600000000 * 10^18
                        if -tokensSold + 600000000 * 10^18:
                            require -tokensSold + 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                        require milieurs_per_eth * tranches[var49001].field_768 / 1000
                        if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 >= msg.value:
                            if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                if tokensSold <= 600000000 * 10^18:
                                    if msg.value <= msg.value:
                                        require -tokensSold + 600000000 * 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if 600000000 * 10^18 >= tokensSold:
                                                        tokensSold = 600000000 * 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), -tokensSold + 600000000 * 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                            else:
                                if not milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                    if msg.value <= msg.value:
                                        require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                        if not investedAmountOf[address(arg1)]:
                                            investorCount++
                                        if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                            investedAmountOf[address(arg1)] += msg.value
                                            if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                if msg.value + weiRaised >= weiRaised:
                                                    weiRaised += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                        tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                        require ext_call.success
                                                        emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, 0);
                                                        call multisigWalletAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if msg.value <= msg.value:
                                else:
                                    if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                        if msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value:
                                            if msg.value <= msg.value:
                                                require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                if not investedAmountOf[address(arg1)]:
                                                    investorCount++
                                                if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                    investedAmountOf[address(arg1)] += msg.value
                                                    if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                        if msg.value + weiRaised >= weiRaised:
                                                            weiRaised += msg.value
                                                            if (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                                tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                                                                require ext_call.success
                                                                emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, 0);
                                                                call multisigWalletAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if msg.value <= msg.value:
                            revert
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000:
                            require tokensSold <= 600000000 * 10^18
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                            require -tokensSold + 600000000 * 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                            require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                            require 600000000 * 10^18 >= tokensSold
                            tokensSold = 600000000 * 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), -tokensSold + 600000000 * 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                        else:
                            if milieurs_per_eth * tranches[var49001].field_768 / 1000:
                                require milieurs_per_eth * tranches[var49001].field_768 / 1000
                                require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / milieurs_per_eth * tranches[var49001].field_768 / 1000 == msg.value
                            require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                            require msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                            if not investedAmountOf[address(arg1)]:
                                investorCount++
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                            investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                            require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) + weiRaised >= weiRaised
                            weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000
                            require (msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                            tokensSold += msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18
                            require ext_call.success
                            emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var49001].field_768 / 1000 / 10^18, 0);
                        call multisigWalletAddress with:
                           value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 wei
                             gas 2300 * is_zero(value) wei
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000 <= msg.value
                        if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) > 0:
                            call msg.sender with:
                               value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var49001].field_768 / 1000) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                else:
                    mem[32] = 12
                    require stor12[address(msg.sender)]
                    require var45001 < tranches.length
                    mem[0] = 13
                    if tranches[var45001].field_256 > block.timestamp:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    mem[0] = 13
                    if block.timestamp >= tranches[var45001].field_512:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    mem[0] = 13
                    if tokensSold >= tranches[var45001].field_0:
                        var45001 = var45001 + 1
                        continue 
                    require var45001 < tranches.length
                    if tranches[var45001].field_768:
                        require tranches[var45001].field_768
                        require milieurs_per_eth * tranches[var45001].field_768 / tranches[var45001].field_768 == milieurs_per_eth
                    require tokensSold <= 600000000 * 10^18
                    if -tokensSold + 600000000 * 10^18:
                        require -tokensSold + 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / -tokensSold + 600000000 * 10^18 == 10^18
                    require milieurs_per_eth * tranches[var45001].field_768 / 1000
                    if (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 >= msg.value:
                        if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            if tokensSold <= 600000000 * 10^18:
                                if msg.value <= msg.value:
                                    require -tokensSold + 600000000 * 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if 600000000 * 10^18 >= tokensSold:
                                                    tokensSold = 600000000 * 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), -tokensSold + 600000000 * 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, -tokensSold + 600000000 * 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                        else:
                            if not milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                if msg.value <= msg.value:
                                    require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                    if not investedAmountOf[address(arg1)]:
                                        investorCount++
                                    if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                        investedAmountOf[address(arg1)] += msg.value
                                        if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                            tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                            if msg.value + weiRaised >= weiRaised:
                                                weiRaised += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                    tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    require ext_call.success
                                                    emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                                                    call multisigWalletAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if msg.value <= msg.value:
                            else:
                                if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                                    if msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value:
                                        if msg.value <= msg.value:
                                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                            if not investedAmountOf[address(arg1)]:
                                                investorCount++
                                            if msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]:
                                                investedAmountOf[address(arg1)] += msg.value
                                                if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]:
                                                    tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                    if msg.value + weiRaised >= weiRaised:
                                                        weiRaised += msg.value
                                                        if (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold:
                                                            tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                                                            require ext_call.success
                                                            emit Invested(address(arg1), msg.value, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                                                            call multisigWalletAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if msg.value <= msg.value:
                        revert
                    if msg.value >= (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000:
                        require tokensSold <= 600000000 * 10^18
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        require -tokensSold + 600000000 * 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18 >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] = -tokensSold + tokenAmountOf[address(arg1)] + 600000000 * 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require 600000000 * 10^18 >= tokensSold
                        tokensSold = 600000000 * 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), -tokensSold + 600000000 * 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, -tokensSold + 600000000 * 10^18, 0);
                    else:
                        if milieurs_per_eth * tranches[var45001].field_768 / 1000:
                            require milieurs_per_eth * tranches[var45001].field_768 / 1000
                            require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / milieurs_per_eth * tranches[var45001].field_768 / 1000 == msg.value
                        require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                        require msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        if not investedAmountOf[address(arg1)]:
                            investorCount++
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
                        investedAmountOf[address(arg1)] += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
                        tokenAmountOf[address(arg1)] += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) + weiRaised >= weiRaised
                        weiRaised += (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000
                        require (msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18) + tokensSold >= tokensSold
                        tokensSold += msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18
                        require ext_call.success
                        emit Invested(address(arg1), (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000, msg.value * milieurs_per_eth * tranches[var45001].field_768 / 1000 / 10^18, 0);
                    call multisigWalletAddress with:
                       value (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    require (-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000 <= msg.value
                    if msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) > 0:
                        call msg.sender with:
                           value msg.value - ((-1 * 10^18 * tokensSold) + 600000000000000000000000000 * 10^18 / milieurs_per_eth * tranches[var45001].field_768 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}
