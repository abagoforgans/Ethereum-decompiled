contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
array of address stor3;
mapping of uint256 stor257;
address stor261;
address stor262;
address stor263;
address stor264;
array of address stor265;
uint256 stor266;
uint8 stor267;
array of uint256 stor269;

function _fallback() payable {
    stor266 = 10^17
    stor267 = 0
    require not msg.value
    mem[96 len -12976] = code.data[13954 len -12976]
    mem[64] = -12880
    stor2 = msg.sender
    mem[0] = msg.sender
    mem[32] = 257
    stor257[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor3[idx] = mem[mem[96] + (32 * idx) + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[mem[96] + (32 * idx) + 140 len 20]
        mem[32] = 257
        stor257[mem[mem[96] + (32 * idx) + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    require mem[128] <= 256
    require 4 == mem[mem[288] + 96]
    stor261 = mem[172 len 20]
    stor262 = mem[204 len 20]
    stor263 = mem[236 len 20]
    stor264 = mem[268 len 20]
    stor265.length = mem[mem[288] + 96]
    mem[0] = 265
    if not mem[mem[288] + 96]:
        idx = 0
        while stor265.length > idx:
            stor265[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[288] + 128
        while mem[288] + (32 * mem[mem[288] + 96]) + 128 > idx:
            stor265[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[288] + 96]) + 31) >> 5
        while stor265.length > idx:
            stor265[idx] = 0
            idx = idx + 1
            continue 
    stor269.length = 3
    s = 0
    idx = 128
    while 224 > idx:
        stor269[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor269.length > idx:
        stor269[idx].field_0 = 0
        idx = idx + 1
        continue 
    require 0 < stor269.length
    uint256(stor269.field_0) = 600000000 * 10^18
    require 1 < stor269.length
    uint256(stor269.field_256) = 140000000 * 10^18
    require 2 < stor269.length
    uint256(stor269.field_512) = 40000000 * 10^18
    return code.data[978 len 12976]
}



// =====================  Runtime code  =====================


#
#  - sub_7792cdef(?)
#
const sub_28fb889d(?) = 3

const sub_87d1ff22(?) = 2000000 * 10^18

const getNow = block.timestamp

const EARLY_CONTRIBUTOR_STAKE = 5000000 * 10^18

const COMMUNITY_ADVISERS_STAKE = 3000000 * 10^18

const ADVISER_STAKE = 5000000 * 10^18

const TEAM_VESTING_CLIFF = (4032 * 24 * 3600)

const EARLY_CONTRIBUTOR_VESTING_CLIFF = (2016 * 24 * 3600)

const FOUNDER2_STAKE = 80000000 * 10^18

const CONTRIB_PERIOD2_STAKE = 140000000 * 10^18

const CONTRIB_PERIOD3_STAKE = 40000000 * 10^18

const TEAM_VESTING_PERIOD = (16128 * 24 * 3600)

const CONTRIB_PERIOD1_STAKE = 600000000 * 10^18

const EARLY_CONTRIBUTOR_VESTING_PERIOD = (4032 * 24 * 3600)

const FOUNDER1_STAKE = 120000000 * 10^18


uint256 required;
array of address owner;
mapping of uint256 stor257;
mapping of struct stor258;
array of uint256 stor259;
uint8 stopped;
address district0xNetworkTokenAddress; offset 8
address walletAddress;
address founder1Address;
address founder2Address;
address earlySponsorAddress;
array of address advisers;
uint256 minContribAmount;
uint8 onApprove;
array of uint256 sub_a61c666b;

function advisers(uint256 arg1) {
    require arg1 < advisers.length
    return address(advisers[arg1].field_0)
}

function founder1() {
    return founder1Address
}

function wallet() {
    return walletAddress
}

function minContribAmount() {
    return minContribAmount
}

function stopped() {
    return bool(stopped)
}

function founder2() {
    return founder2Address
}

function earlySponsor() {
    return earlySponsorAddress
}

function sub_a61c666b(?) {
    require arg1 < sub_a61c666b.length
    return sub_a61c666b[arg1]
}

function tokenTransfersEnabled() {
    return bool(onApprove)
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function sub_d25abd36(?) {
    require arg1 < sub_f8ad5e69.length
    return uint256(stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg2)].field_0), 
           bool(uint8(stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg2)].field_256)),
           uint256(stor[(9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg2)].field_512)
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    return bool(onApprove)
}

function required() {
    return required
}

function district0xNetworkToken() {
    return district0xNetworkTokenAddress
}

function sub_f8ad5e69(?) {
    require arg1 < sub_f8ad5e69.length
    return uint256(sub_f8ad5e69[arg1].field_0), 
           uint256(sub_f8ad5e69[arg1].field_256),
           uint256(sub_f8ad5e69[arg1].field_512),
           uint256(sub_f8ad5e69[arg1].field_768),
           uint256(sub_f8ad5e69[arg1].field_1024),
           bool(uint8(sub_f8ad5e69[arg1].field_1280)),
           bool(uint8(sub_f8ad5e69[arg1].field_1288)),
           bool(uint8(sub_f8ad5e69[arg1].field_1296)),
           bool(uint8(sub_f8ad5e69[arg1].field_1304)),
           uint256(sub_f8ad5e69[arg1].field_1536)
}

function kill(address arg1) {
    require stor257[address(msg.sender)]
    if not uint256(stor258[call.data[0 len calldata.size]].field_0):
        uint256(stor258[call.data[0 len calldata.size]].field_0) = required
        uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        uint256(stor258[call.data[0 len calldata.size]].field_512) = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = sha3(call.data[0 len calldata.size])
    if uint256(stor258[call.data[0 len calldata.size]].field_256) and 2^stor257[address(msg.sender)] != 0:
    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
    if uint256(stor258[call.data[0 len calldata.size]].field_0) > 1:
        uint256(stor258[call.data[0 len calldata.size]].field_0)--
        uint256(stor258[call.data[0 len calldata.size]].field_256) = 2^stor257[address(msg.sender)] or uint256(stor258[call.data[0 len calldata.size]].field_256)
    require uint256(stor258[call.data[0 len calldata.size]].field_512) < stor259.length
    stor259[uint256(stor258[call.data[0 len calldata.size]].field_512)] = 0
    uint256(stor258[call.data[0 len calldata.size]].field_0) = 0
    uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
    uint256(stor258[call.data[0 len calldata.size]].field_512) = 0
    selfdestruct(arg1)
}

function proxyPayment(address arg1) payable {
    revert
}

function isOwner(address arg1) {
    return (stor257[address(arg1)] > 0)
}

function emergencyStop() {
    require stor257[address(msg.sender)] > 0
    stopped = 1
    emit onEmergencyChanged(1);
}

function release() {
    require stor257[address(msg.sender)] > 0
    require stopped
    stopped = 0
    emit onEmergencyChanged(0);
}

function setMinContribAmount(uint256 arg1) {
    require stor257[address(msg.sender)] > 0
    require arg1 > 0
    minContribAmount = arg1
}

function hasConfirmed(bytes32 arg1, address arg2) {
    if stor257[address(arg2)]:
        return uint256(stor258[arg1].field_256) and 2^stor257[address(arg2)] != 0
    else:
        return 0
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if onApprove:
        return bool(onApprove)
    if arg1 == this.address:
        return True
    return (arg2 == this.address)
}

function revoke(bytes32 arg1) {
    if stor257[address(msg.sender)]:
        if 2^stor257[address(msg.sender)] and uint256(stor258[arg1].field_256) > 0:
            uint256(stor258[arg1].field_0)++
            uint256(stor258[arg1].field_256) -= 2^stor257[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function enableDistrict0xNetworkTokenTransfers() {
    require stor257[address(msg.sender)] > 0
    require sub_f8ad5e69.length > 0
    require 0 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_1792):
        idx = 864
        s = 0
        while (32 * uint256(sub_f8ad5e69.field_1792)) + 832 > idx:
            mem[idx + 32] = address(sub_f8ad5e69[s + 7].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    require uint256(sub_f8ad5e69.field_1024) < block.timestamp
    onApprove = 1
}

function setDistrict0xNetworkToken(address arg1) {
    require stor257[address(msg.sender)] > 0
    require arg1
    district0xNetworkTokenAddress = arg1
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
    require ext_code.size(district0xNetworkTokenAddress)
    call district0xNetworkTokenAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), 1000000000 * 10^18
    require ext_call.success
}

function sub_f2f78e6d(?) {
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 268
        if uint8(sub_f8ad5e69[idx].field_1304):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_768) > block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_1024) < block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        return idx
    return 3
}

function sub_1b356291(?) {
    if arg1 >= sub_f8ad5e69.length:
        return 0
    if uint256(sub_f8ad5e69[arg1].field_1792):
        idx = 1248
        s = 0
        while (32 * uint256(sub_f8ad5e69[arg1].field_1792)) + 1216 > idx:
            mem[idx + 32] = address(stor[s + sha3((9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 7)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    require arg1 < sub_a61c666b.length
    return bool(uint8(sub_f8ad5e69[arg1].field_1280)), 
           bool(uint8(sub_f8ad5e69[arg1].field_1288)), bool(uint8(sub_f8ad5e69[arg1].field_1296)), bool(uint8(sub_f8ad5e69[arg1].field_1304)) >> 512,
           uint256(sub_f8ad5e69[arg1].field_0),
           uint256(sub_f8ad5e69[arg1].field_256),
           uint256(sub_f8ad5e69[arg1].field_512),
           uint256(sub_f8ad5e69[arg1].field_768),
           uint256(sub_f8ad5e69[arg1].field_1024),
           uint256(sub_f8ad5e69[arg1].field_1536),
           uint256(sub_f8ad5e69[arg1].field_1792),
           sub_a61c666b[arg1]
}

function getConfiguration() {
    idx = 0
    while idx < advisers.length:
        mem[0] = 265
        require idx < advisers.length
        mem[(32 * idx) + 160] = address(advisers[idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * advisers.length) + 160] = bool(stopped)
    mem[(32 * advisers.length) + 192] = required
    if Mask(251, 0, advisers.length):
        mem[(32 * advisers.length) + 448] = mem[160]
        mem[(32 * advisers.length) + 480 len floor32((32 * advisers.length) - 1)] = mem[192 len (32 * advisers.length) + 32], walletAddress, founder1Address, founder2Address, earlySponsorAddress, Array(len=mem[160], data=mem[(32 * advisers.length) + 480 len floor32((32 * advisers.length) - 1) + -(32 * advisers.length) - 288]), bool(onApprove), advisers.length
    return bool(stopped), 
           required,
           walletAddress,
           founder1Address,
           founder2Address,
           earlySponsorAddress,
           Array(len=advisers.length, data=mem[(32 * advisers.length) + 448 len 32 * advisers.length]),
           bool(onApprove)
}

function sub_ee409f54(?) {
    require stor257[address(msg.sender)]
    if not uint256(stor258[call.data[0 len calldata.size]].field_0):
        uint256(stor258[call.data[0 len calldata.size]].field_0) = required
        uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        uint256(stor258[call.data[0 len calldata.size]].field_512) = stor259.length
        require stor259.length < stor259.length
        stor259[stor259.length] = sha3(call.data[0 len calldata.size])
    if 0 == uint256(stor258[call.data[0 len calldata.size]].field_256) and 2^stor257[address(msg.sender)]:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if uint256(stor258[call.data[0 len calldata.size]].field_0) > 1:
            uint256(stor258[call.data[0 len calldata.size]].field_0)--
            uint256(stor258[call.data[0 len calldata.size]].field_256) = 2^stor257[address(msg.sender)] or uint256(stor258[call.data[0 len calldata.size]].field_256)
        else:
            require uint256(stor258[call.data[0 len calldata.size]].field_512) < stor259.length
            stor259[uint256(stor258[call.data[0 len calldata.size]].field_512)] = 0
            uint256(stor258[call.data[0 len calldata.size]].field_0) = 0
            uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
            uint256(stor258[call.data[0 len calldata.size]].field_512) = 0
            require arg1 < sub_f8ad5e69.length
            require uint256(sub_f8ad5e69[arg1].field_768) > 0
            require arg1 < sub_f8ad5e69.length
            require not uint8(sub_f8ad5e69[arg1].field_1288)
            require arg1 < sub_f8ad5e69.length
            uint8(sub_f8ad5e69[arg1].field_1280) = 1
}

function sub_55175310(?) {
    require stor257[address(msg.sender)]
    if uint256(stor258[call.data[0 len calldata.size]].field_0):
        if uint256(stor258[call.data[0 len calldata.size]].field_256) and 2^stor257[address(msg.sender)] != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if uint256(stor258[call.data[0 len calldata.size]].field_0) > 1:
            uint256(stor258[call.data[0 len calldata.size]].field_0)--
            uint256(stor258[call.data[0 len calldata.size]].field_256) = 2^stor257[address(msg.sender)] or uint256(stor258[call.data[0 len calldata.size]].field_256)
        if uint256(stor258[call.data[0 len calldata.size]].field_512) < stor259.length:
            stor259[uint256(stor258[call.data[0 len calldata.size]].field_512)] = 0
            uint256(stor258[call.data[0 len calldata.size]].field_0) = 0
            uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
            uint256(stor258[call.data[0 len calldata.size]].field_512) = 0
            require arg1 > 0
            require arg1 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69[arg1].field_1792):
                idx = 864
                s = 0
                while (32 * uint256(sub_f8ad5e69[arg1].field_1792)) + 832 > idx:
                    mem[idx + 32] = address(stor[s + sha3((9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 7)].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
            require uint256(sub_f8ad5e69[arg1].field_768) > block.timestamp
            require uint256(sub_f8ad5e69[arg1].field_1024) > block.timestamp
            if arg1 < sub_f8ad5e69.length:
                Mask(248, 0, sub_f8ad5e69[arg1].field_1288) = 1
                if arg1 < sub_a61c666b.length:
                    if ext_code.size(district0xNetworkTokenAddress):
                        call district0xNetworkTokenAddress.destroyTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(this.address), sub_a61c666b[arg1]
                        if ext_call.success:
    else:
        uint256(stor258[call.data[0 len calldata.size]].field_0) = required
        uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
        stor259.length++
        if not stor259.length <= stor259.length + 1:
            idx = stor259.length + 1
            while stor259.length > idx:
                stor259[idx] = 0
                idx = idx + 1
                continue 
        uint256(stor258[call.data[0 len calldata.size]].field_512) = stor259.length
        if stor259.length < stor259.length:
            stor259[stor259.length] = sha3(call.data[0 len calldata.size])
            if uint256(stor258[call.data[0 len calldata.size]].field_256) and 2^stor257[address(msg.sender)] != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if uint256(stor258[call.data[0 len calldata.size]].field_0) > 1:
                uint256(stor258[call.data[0 len calldata.size]].field_0)--
                uint256(stor258[call.data[0 len calldata.size]].field_256) = 2^stor257[address(msg.sender)] or uint256(stor258[call.data[0 len calldata.size]].field_256)
            if uint256(stor258[call.data[0 len calldata.size]].field_512) < stor259.length:
                stor259[uint256(stor258[call.data[0 len calldata.size]].field_512)] = 0
                uint256(stor258[call.data[0 len calldata.size]].field_0) = 0
                uint256(stor258[call.data[0 len calldata.size]].field_256) = 0
                uint256(stor258[call.data[0 len calldata.size]].field_512) = 0
                require arg1 > 0
                require arg1 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69[arg1].field_1792):
                    idx = 864
                    s = 0
                    while (32 * uint256(sub_f8ad5e69[arg1].field_1792)) + 832 > idx:
                        mem[idx + 32] = address(stor[s + sha3((9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 7)].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                require uint256(sub_f8ad5e69[arg1].field_768) > block.timestamp
                require uint256(sub_f8ad5e69[arg1].field_1024) > block.timestamp
                if arg1 < sub_f8ad5e69.length:
                    Mask(248, 0, sub_f8ad5e69[arg1].field_1288) = 1
                    if arg1 < sub_a61c666b.length:
                        if ext_code.size(district0xNetworkTokenAddress):
                            call district0xNetworkTokenAddress.destroyTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(this.address), sub_a61c666b[arg1]
                            if ext_call.success:
    revert
}

function contributeWithAddress(address arg1) payable {
    require not stopped
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 268
        if uint8(sub_f8ad5e69[idx].field_1304):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_768) > block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_1024) < block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        require idx < sub_f8ad5e69.length
        require msg.value >= minContribAmount
        require idx < sub_f8ad5e69.length
        require idx < sub_f8ad5e69.length
        if not uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg1)].field_0):
            uint256(sub_f8ad5e69[idx].field_1792)++
            if not uint256(sub_f8ad5e69[idx].field_1792) <= uint256(sub_f8ad5e69[idx].field_1792) + 1:
                s = uint256(sub_f8ad5e69[idx].field_1792) + sha3((9 * idx) + sha3(268) + 7) + 1
                while sha3((9 * idx) + sha3(268) + 7) + uint256(sub_f8ad5e69[idx].field_1792) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[uint256(sub_f8ad5e69[idx].field_1792) + sha3((9 * idx) + ('name', 'sub_f8ad5e69', 268) + 7)].field_0) = arg1
        require msg.value + uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg1)].field_0) >= uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg1)].field_0)
        require idx < sub_f8ad5e69.length
        uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(arg1)].field_0) += msg.value
        require msg.value + uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_1536)
        require idx < sub_f8ad5e69.length
        uint256(sub_f8ad5e69[idx].field_1536) += msg.value
        require idx < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_0):
            if uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_512):
                require idx < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_512):
                    require idx < sub_f8ad5e69.length
                    Mask(232, 0, sub_f8ad5e69[idx].field_1304) = 1
                    uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69[idx].field_1024), idx
        else:
            require idx < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_0):
                Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                require block.timestamp + uint256(sub_f8ad5e69[idx].field_256) >= uint256(sub_f8ad5e69[idx].field_256)
                require idx < sub_f8ad5e69.length
                uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp + uint256(sub_f8ad5e69[idx].field_256)
                emit 0xc8ff8485: uint256(sub_f8ad5e69[idx].field_1024), idx
            else:
                if uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_512):
                    require idx < sub_f8ad5e69.length
                    if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_512):
                        require idx < sub_f8ad5e69.length
                        Mask(232, 0, sub_f8ad5e69[idx].field_1304) = 1
                        uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp
                        emit 0x619ffc4b: uint256(sub_f8ad5e69[idx].field_1024), idx
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f8ad5e69.length
        emit 0x5fa0aae8: uint256(sub_f8ad5e69[idx].field_1536), msg.value, uint256(sub_f8ad5e69[idx].field_1792), idx, arg1
    require 3 < sub_f8ad5e69.length
    require msg.value >= minContribAmount
    require 3 < sub_f8ad5e69.length
    require 3 < sub_f8ad5e69.length
    if not uint256(sub_f8ad5e69[35][address(arg1)].field_0):
        uint256(sub_f8ad5e69.field_8704)++
        if not uint256(sub_f8ad5e69.field_8704) <= uint256(sub_f8ad5e69.field_8704) + 1:
            idx = uint256(sub_f8ad5e69.field_8704) + 1
            while uint256(sub_f8ad5e69.field_8704) > idx:
                uint256(sub_f8ad5e69[idx + 34].field_0) = 0
                idx = idx + 1
                continue 
        address(stor[uint256(sub_f8ad5e69.field_8704) + ('array', 34, ('name', 'sub_f8ad5e69', 268))].field_0) = arg1
    require msg.value + uint256(sub_f8ad5e69[35][address(arg1)].field_0) >= uint256(sub_f8ad5e69[35][address(arg1)].field_0)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69[35][address(arg1)].field_0) += msg.value
    require msg.value + uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_8448)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69.field_8448) += msg.value
    require 3 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
        if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
            require 3 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                Mask(232, 0, sub_f8ad5e69.field_8216) = 1
                uint256(sub_f8ad5e69.field_7936) = block.timestamp
                emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                emit 0x3: uint256(sub_f8ad5e69.field_7936)
    else:
        require 3 < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
            Mask(240, 0, sub_f8ad5e69.field_8208) = 1
            require block.timestamp + uint256(sub_f8ad5e69.field_7168) >= uint256(sub_f8ad5e69.field_7168)
            require 3 < sub_f8ad5e69.length
            uint256(sub_f8ad5e69.field_7936) = block.timestamp + uint256(sub_f8ad5e69.field_7168)
            emit 0xc8ff8485: uint256(sub_f8ad5e69.field_7936)
            emit 0x3: uint256(sub_f8ad5e69.field_7936)
        else:
            if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                    require 3 < sub_f8ad5e69.length
                    Mask(232, 0, sub_f8ad5e69.field_8216) = 1
                    uint256(sub_f8ad5e69.field_7936) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                    emit 0x3: uint256(sub_f8ad5e69.field_7936)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < sub_f8ad5e69.length
    emit 0x5fa0aae8: uint256(sub_f8ad5e69.field_8448), msg.value, uint256(sub_f8ad5e69.field_8704), 3, arg1
}

function _fallback() payable {
    require not stopped
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 268
        if uint8(sub_f8ad5e69[idx].field_1304):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_768) > block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_1024) < block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        require idx < sub_f8ad5e69.length
        require msg.value >= minContribAmount
        require idx < sub_f8ad5e69.length
        require idx < sub_f8ad5e69.length
        if not uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0):
            uint256(sub_f8ad5e69[idx].field_1792)++
            if not uint256(sub_f8ad5e69[idx].field_1792) <= uint256(sub_f8ad5e69[idx].field_1792) + 1:
                s = uint256(sub_f8ad5e69[idx].field_1792) + sha3((9 * idx) + sha3(268) + 7) + 1
                while sha3((9 * idx) + sha3(268) + 7) + uint256(sub_f8ad5e69[idx].field_1792) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[uint256(sub_f8ad5e69[idx].field_1792) + sha3((9 * idx) + ('name', 'sub_f8ad5e69', 268) + 7)].field_0) = msg.sender
        require msg.value + uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0) >= uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0)
        require idx < sub_f8ad5e69.length
        uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0) += msg.value
        require msg.value + uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_1536)
        require idx < sub_f8ad5e69.length
        uint256(sub_f8ad5e69[idx].field_1536) += msg.value
        require idx < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_0):
            if uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_512):
                require idx < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_512):
                    require idx < sub_f8ad5e69.length
                    Mask(232, 0, sub_f8ad5e69[idx].field_1304) = 1
                    uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69[idx].field_1024), idx
        else:
            require idx < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_0):
                Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                require block.timestamp + uint256(sub_f8ad5e69[idx].field_256) >= uint256(sub_f8ad5e69[idx].field_256)
                require idx < sub_f8ad5e69.length
                uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp + uint256(sub_f8ad5e69[idx].field_256)
                emit 0xc8ff8485: uint256(sub_f8ad5e69[idx].field_1024), idx
            else:
                if uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_512):
                    require idx < sub_f8ad5e69.length
                    if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_512):
                        require idx < sub_f8ad5e69.length
                        Mask(232, 0, sub_f8ad5e69[idx].field_1304) = 1
                        uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp
                        emit 0x619ffc4b: uint256(sub_f8ad5e69[idx].field_1024), idx
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f8ad5e69.length
        emit 0x5fa0aae8: uint256(sub_f8ad5e69[idx].field_1536), msg.value, uint256(sub_f8ad5e69[idx].field_1792), idx, msg.sender
    require 3 < sub_f8ad5e69.length
    require msg.value >= minContribAmount
    require 3 < sub_f8ad5e69.length
    require 3 < sub_f8ad5e69.length
    if not uint256(sub_f8ad5e69[35][address(msg.sender)].field_0):
        uint256(sub_f8ad5e69.field_8704)++
        if not uint256(sub_f8ad5e69.field_8704) <= uint256(sub_f8ad5e69.field_8704) + 1:
            idx = uint256(sub_f8ad5e69.field_8704) + 1
            while uint256(sub_f8ad5e69.field_8704) > idx:
                uint256(sub_f8ad5e69[idx + 34].field_0) = 0
                idx = idx + 1
                continue 
        address(stor[uint256(sub_f8ad5e69.field_8704) + ('array', 34, ('name', 'sub_f8ad5e69', 268))].field_0) = msg.sender
    require msg.value + uint256(sub_f8ad5e69[35][address(msg.sender)].field_0) >= uint256(sub_f8ad5e69[35][address(msg.sender)].field_0)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69[35][address(msg.sender)].field_0) += msg.value
    require msg.value + uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_8448)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69.field_8448) += msg.value
    require 3 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
        if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
            require 3 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                Mask(232, 0, sub_f8ad5e69.field_8216) = 1
                uint256(sub_f8ad5e69.field_7936) = block.timestamp
                emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                emit 0x3: uint256(sub_f8ad5e69.field_7936)
    else:
        require 3 < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
            Mask(240, 0, sub_f8ad5e69.field_8208) = 1
            require block.timestamp + uint256(sub_f8ad5e69.field_7168) >= uint256(sub_f8ad5e69.field_7168)
            require 3 < sub_f8ad5e69.length
            uint256(sub_f8ad5e69.field_7936) = block.timestamp + uint256(sub_f8ad5e69.field_7168)
            emit 0xc8ff8485: uint256(sub_f8ad5e69.field_7936)
            emit 0x3: uint256(sub_f8ad5e69.field_7936)
        else:
            if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                    require 3 < sub_f8ad5e69.length
                    Mask(232, 0, sub_f8ad5e69.field_8216) = 1
                    uint256(sub_f8ad5e69.field_7936) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                    emit 0x3: uint256(sub_f8ad5e69.field_7936)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < sub_f8ad5e69.length
    emit 0x5fa0aae8: uint256(sub_f8ad5e69.field_8448), msg.value, uint256(sub_f8ad5e69.field_8704), 3, msg.sender
}

function contribute() payable {
    require not stopped
    s = 0
    idx = 0
    while idx < sub_f8ad5e69.length:
        mem[0] = 268
        if uint8(sub_f8ad5e69[idx].field_1304):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if not uint8(sub_f8ad5e69[idx].field_1280):
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_768) > block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        if uint256(sub_f8ad5e69[idx].field_1024) < block.timestamp:
            s = (9 * idx) + sha3(268)
            idx = idx + 1
            continue 
        require idx < sub_f8ad5e69.length
        require msg.value >= minContribAmount
        require idx < sub_f8ad5e69.length
        require idx < sub_f8ad5e69.length
        if not uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0):
            uint256(sub_f8ad5e69[idx].field_1792)++
            if not uint256(sub_f8ad5e69[idx].field_1792) <= uint256(sub_f8ad5e69[idx].field_1792) + 1:
                s = uint256(sub_f8ad5e69[idx].field_1792) + sha3((9 * idx) + sha3(268) + 7) + 1
                while sha3((9 * idx) + sha3(268) + 7) + uint256(sub_f8ad5e69[idx].field_1792) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[uint256(sub_f8ad5e69[idx].field_1792) + sha3((9 * idx) + ('name', 'sub_f8ad5e69', 268) + 7)].field_0) = msg.sender
        require msg.value + uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0) >= uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0)
        require idx < sub_f8ad5e69.length
        uint256(stor[(9 * idx) + ('name', 'sub_f8ad5e69', 268) + 8][address(msg.sender)].field_0) += msg.value
        require msg.value + uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_1536)
        require idx < sub_f8ad5e69.length
        uint256(sub_f8ad5e69[idx].field_1536) += msg.value
        require idx < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_0):
            if uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_512):
                require idx < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_512):
                    require idx < sub_f8ad5e69.length
                    Mask(232, 0, sub_f8ad5e69[idx].field_1304) = 1
                    uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69[idx].field_1024), idx
        else:
            require idx < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_0):
                Mask(240, 0, sub_f8ad5e69[idx].field_1296) = 1
                require block.timestamp + uint256(sub_f8ad5e69[idx].field_256) >= uint256(sub_f8ad5e69[idx].field_256)
                require idx < sub_f8ad5e69.length
                uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp + uint256(sub_f8ad5e69[idx].field_256)
                emit 0xc8ff8485: uint256(sub_f8ad5e69[idx].field_1024), idx
            else:
                if uint256(sub_f8ad5e69[idx].field_1536) >= uint256(sub_f8ad5e69[idx].field_512):
                    require idx < sub_f8ad5e69.length
                    if uint256(sub_f8ad5e69[idx].field_1536) < uint256(sub_f8ad5e69[idx].field_512):
                        require idx < sub_f8ad5e69.length
                        Mask(232, 0, sub_f8ad5e69[idx].field_1304) = 1
                        uint256(sub_f8ad5e69[idx].field_1024) = block.timestamp
                        emit 0x619ffc4b: uint256(sub_f8ad5e69[idx].field_1024), idx
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f8ad5e69.length
        emit 0x5fa0aae8: uint256(sub_f8ad5e69[idx].field_1536), msg.value, uint256(sub_f8ad5e69[idx].field_1792), idx, msg.sender
    require 3 < sub_f8ad5e69.length
    require msg.value >= minContribAmount
    require 3 < sub_f8ad5e69.length
    require 3 < sub_f8ad5e69.length
    if not uint256(sub_f8ad5e69[35][address(msg.sender)].field_0):
        uint256(sub_f8ad5e69.field_8704)++
        if not uint256(sub_f8ad5e69.field_8704) <= uint256(sub_f8ad5e69.field_8704) + 1:
            idx = uint256(sub_f8ad5e69.field_8704) + 1
            while uint256(sub_f8ad5e69.field_8704) > idx:
                uint256(sub_f8ad5e69[idx + 34].field_0) = 0
                idx = idx + 1
                continue 
        address(stor[uint256(sub_f8ad5e69.field_8704) + ('array', 34, ('name', 'sub_f8ad5e69', 268))].field_0) = msg.sender
    require msg.value + uint256(sub_f8ad5e69[35][address(msg.sender)].field_0) >= uint256(sub_f8ad5e69[35][address(msg.sender)].field_0)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69[35][address(msg.sender)].field_0) += msg.value
    require msg.value + uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_8448)
    require 3 < sub_f8ad5e69.length
    uint256(sub_f8ad5e69.field_8448) += msg.value
    require 3 < sub_f8ad5e69.length
    if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
        if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
            require 3 < sub_f8ad5e69.length
            if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                Mask(232, 0, sub_f8ad5e69.field_8216) = 1
                uint256(sub_f8ad5e69.field_7936) = block.timestamp
                emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                emit 0x3: uint256(sub_f8ad5e69.field_7936)
    else:
        require 3 < sub_f8ad5e69.length
        if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_6912):
            Mask(240, 0, sub_f8ad5e69.field_8208) = 1
            require block.timestamp + uint256(sub_f8ad5e69.field_7168) >= uint256(sub_f8ad5e69.field_7168)
            require 3 < sub_f8ad5e69.length
            uint256(sub_f8ad5e69.field_7936) = block.timestamp + uint256(sub_f8ad5e69.field_7168)
            emit 0xc8ff8485: uint256(sub_f8ad5e69.field_7936)
            emit 0x3: uint256(sub_f8ad5e69.field_7936)
        else:
            if uint256(sub_f8ad5e69.field_8448) >= uint256(sub_f8ad5e69.field_7424):
                require 3 < sub_f8ad5e69.length
                if uint256(sub_f8ad5e69.field_8448) < uint256(sub_f8ad5e69.field_7424):
                    require 3 < sub_f8ad5e69.length
                    Mask(232, 0, sub_f8ad5e69.field_8216) = 1
                    uint256(sub_f8ad5e69.field_7936) = block.timestamp
                    emit 0x619ffc4b: uint256(sub_f8ad5e69.field_7936)
                    emit 0x3: uint256(sub_f8ad5e69.field_7936)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < sub_f8ad5e69.length
    emit 0x5fa0aae8: uint256(sub_f8ad5e69.field_8448), msg.value, uint256(sub_f8ad5e69.field_8704), 3, msg.sender
}

function sub_6002bf9d(?) {
    require stor257[address(msg.sender)] > 0
    require arg1 < 3
    require arg2 > 0
    require arg4 > arg2
    require arg3 > 0
    require arg5 > block.timestamp
    require arg6 > arg5
    if not arg1:
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
             gas gas_remaining - 710 wei
            args founder1Address
        require ext_call.success
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
             gas gas_remaining - 710 wei
            args founder2Address
        require ext_call.success
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
             gas gas_remaining - 710 wei
            args earlySponsorAddress
        require ext_call.success
        idx = 0
        while idx < advisers.length:
            mem[0] = 265
            mem[512] = 0xd169843000000000000000000000000000000000000000000000000000000000
            mem[516] = address(advisers[idx].field_0)
            require ext_code.size(district0xNetworkTokenAddress)
            call district0xNetworkTokenAddress.revokeAllTokenGrants(address rg1) with:
                 gas gas_remaining - 710 wei
                args address(advisers[idx].field_0)
            require ext_call.success
            idx = idx + 1
            continue 
        require arg5 + (16128 * 24 * 3600) >= arg5
        require arg5 + (4032 * 24 * 3600) >= arg5
        require arg5 + (2016 * 24 * 3600) >= arg5
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args founder1Address, 120000000 * 10^18, arg5 << 192, arg5 + (4032 * 24 * 3600) << 192, arg5 + (16128 * 24 * 3600) << 192, 1, 0
        require ext_call.success
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args founder2Address, 80000000 * 10^18, arg5 << 192, arg5 + (4032 * 24 * 3600) << 192, arg5 + (16128 * 24 * 3600) << 192, 1, 0
        require ext_call.success
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args earlySponsorAddress, 5000000 * 10^18, arg5 << 192, arg5 + (2016 * 24 * 3600) << 192, arg5 + (4032 * 24 * 3600) << 192, 1, 0
        require ext_call.success
        require 0 < advisers.length
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args address(advisers.field_0), 5000000 * 10^18, arg5 << 192, arg5 + (4032 * 24 * 3600) << 192, arg5 + (16128 * 24 * 3600) << 192, 1, 0
        require ext_call.success
        require 1 < advisers.length
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args address(advisers.field_256), 5000000 * 10^18, arg5 << 192, arg5 + (4032 * 24 * 3600) << 192, arg5 + (16128 * 24 * 3600) << 192, 1, 0
        require ext_call.success
        require 2 < advisers.length
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args address(advisers.field_512), 2000000 * 10^18, arg5 << 192, arg5 + (4032 * 24 * 3600) << 192, arg5 + (16128 * 24 * 3600) << 192, 1, 0
        require ext_call.success
        require 3 < advisers.length
        require ext_code.size(district0xNetworkTokenAddress)
        call district0xNetworkTokenAddress.grantVestedTokens(address rg1, uint256 rg2, uint64 rg3, uint64 rg4, uint64 rg5, bool rg6, bool rg7) with:
             gas gas_remaining - 710 wei
            args address(advisers.field_768), 3000000 * 10^18, arg5 << 192, arg5 << 192, arg5 << 192, 1, 0
        require ext_call.success
    if arg1 >= sub_f8ad5e69.length:
        sub_f8ad5e69.length++
        if not sub_f8ad5e69.length <= sub_f8ad5e69.length + 1:
            mem[0] = 268
            idx = (9 * sub_f8ad5e69.length) + 9
            while sha3(268) + (9 * sub_f8ad5e69.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint32(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                mem[0] = idx + sha3(mem[0]) + 7
                s = sha3(idx + sha3(mem[0]) + 7)
                while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                idx = idx + 9
                continue 
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_0) = arg2
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_256) = arg3
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_512) = arg4
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_768) = arg5
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_1024) = arg6
        uint8(sub_f8ad5e69[sub_f8ad5e69.length].field_1280) = 0
        uint8(sub_f8ad5e69[sub_f8ad5e69.length].field_1288) = 0
        uint8(sub_f8ad5e69[sub_f8ad5e69.length].field_1296) = 0
        Mask(232, 0, sub_f8ad5e69[sub_f8ad5e69.length].field_1304) = 0
        Mask(224, 0, sub_f8ad5e69[sub_f8ad5e69.length].field_1312) = 0
        Mask(224, 0, sub_f8ad5e69[sub_f8ad5e69.length].field_1312) = 0
        Mask(224, 0, sub_f8ad5e69[sub_f8ad5e69.length].field_1312) = 0
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_1536) = 0
        uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_1792) = 0
        idx = 0
        while uint256(sub_f8ad5e69[sub_f8ad5e69.length].field_1792) > idx:
            address(stor[idx + sha3((9 * sub_f8ad5e69.length) + ('name', 'sub_f8ad5e69', 268) + 7)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        require not uint8(sub_f8ad5e69[arg1].field_1280)
        require arg1 < sub_f8ad5e69.length
        require uint256(sub_f8ad5e69[arg1].field_768) > block.timestamp
        require arg1 < sub_f8ad5e69.length
        uint256(sub_f8ad5e69[arg1].field_0) = arg2
        uint256(sub_f8ad5e69[arg1].field_256) = arg3
        uint256(sub_f8ad5e69[arg1].field_512) = arg4
        uint256(sub_f8ad5e69[arg1].field_768) = arg5
        uint256(sub_f8ad5e69[arg1].field_1024) = arg6
        uint8(sub_f8ad5e69[arg1].field_1280) = 0
        uint8(sub_f8ad5e69[arg1].field_1288) = 0
        uint8(sub_f8ad5e69[arg1].field_1296) = 0
        Mask(232, 0, sub_f8ad5e69[arg1].field_1304) = 0
        Mask(224, 0, sub_f8ad5e69[arg1].field_1312) = 0
        Mask(224, 0, sub_f8ad5e69[arg1].field_1312) = 0
        Mask(224, 0, sub_f8ad5e69[arg1].field_1312) = 0
        uint256(sub_f8ad5e69[arg1].field_1536) = 0
        uint256(sub_f8ad5e69[arg1].field_1792) = 0
        idx = 0
        while uint256(sub_f8ad5e69[arg1].field_1792) > idx:
            address(stor[idx + sha3((9 * arg1) + ('name', 'sub_f8ad5e69', 268) + 7)].field_0) = 0
            idx = idx + 1
            continue 
}



}
