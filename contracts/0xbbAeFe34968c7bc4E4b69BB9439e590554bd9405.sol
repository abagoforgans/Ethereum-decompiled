contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 tokens;
mapping of uint8 stor2;
address cdtTokenAddress;
uint256 minCDTToParticipate;
address marketDataOracleAddress;
uint256 maxAttackPrizePercent;
uint256 stor7;
uint256 maxOpenAttacks;
mapping of struct attackIdToInfo;
mapping of uint256 userToUserToAttackId;
mapping of uint256 openAttacksCount;

function minCDTToParticipate() {
    return minCDTToParticipate
}

function maxOpenAttacks() {
    return maxOpenAttacks
}

function attackIdToInfo(bytes32 arg1) {
    return attackIdToInfo[arg1].field_0, 
           attackIdToInfo[arg1].field_256,
           attackIdToInfo[arg1].field_512,
           attackIdToInfo[arg1].field_768,
           attackIdToInfo[arg1].field_1024,
           bool(attackIdToInfo[arg1].field_1280),
           attackIdToInfo[arg1].field_1536
}

function userToUserToAttackId(address arg1, address arg2) {
    return userToUserToAttackId[arg1][arg2]
}

function isActiveUser(address arg1) {
    return bool(uint8(stor2[address(arg1)]))
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function cdtTokenAddress() {
    return cdtTokenAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function openAttacksCount(address arg1) {
    return openAttacksCount[address(arg1)]
}

function owner() {
    return owner
}

function attackeePrizeByToken(bytes32 arg1, address arg2) {
    return attackIdToInfo[arg1][8][address(arg2)].field_0
}

function cntUserAttacks(address arg1) {
    return openAttacksCount[arg1]
}

function attackerPrizeByToken(bytes32 arg1, address arg2) {
    return attackIdToInfo[arg1][7][address(arg2)].field_0
}

function activeUsers(address arg1) {
    return bool(uint8(stor2[arg1]))
}

function maxAttackPrizePercent() {
    return maxAttackPrizePercent
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function marketDataOracle() {
    return marketDataOracleAddress
}

function setMaxOpenAttacks(uint256 arg1) {
    require msg.sender == owner
    maxOpenAttacks = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMaxAttackPrizePercent(uint256 arg1) {
    require msg.sender == owner
    if arg1 >= 5:
        revert with 0, 'max prize is 5 percent of funds'
    maxAttackPrizePercent = arg1
}

function _fallback() {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'Please do not send ETH without calling the deposit function. We will not do it automatically to validate your intent'
}

function isTokenSupported(address arg1) {
    require ext_code.size(marketDataOracleAddress)
    call marketDataOracleAddress.0x75151b63 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function deposit() payable {
    require not uint8(stor0.field_160)
    require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] += msg.value
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
    if bool(uint8(stor2[address(msg.sender)])) != tokens[stor3][address(msg.sender)] >= minCDTToParticipate:
        emit UserActiveStatusChanged(msg.sender, tokens[stor3][address(msg.sender)] >= minCDTToParticipate);
    uint256(stor2[address(msg.sender)]) = tokens[stor3][address(msg.sender)] >= minCDTToParticipate or Mask(248, 8, uint256(stor2[address(msg.sender)]))
}

function withdraw(uint256 arg1) {
    require arg1 <= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][address(msg.sender)]);
    if bool(uint8(stor2[address(msg.sender)])) != tokens[stor3][address(msg.sender)] >= minCDTToParticipate:
        emit UserActiveStatusChanged(msg.sender, tokens[stor3][address(msg.sender)] >= minCDTToParticipate);
    uint256(stor2[address(msg.sender)]) = tokens[stor3][address(msg.sender)] >= minCDTToParticipate or Mask(248, 8, uint256(stor2[address(msg.sender)]))
}

function withdrawToken(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'unrecognized token'
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
    if bool(uint8(stor2[address(msg.sender)])) != tokens[stor3][address(msg.sender)] >= minCDTToParticipate:
        emit UserActiveStatusChanged(msg.sender, tokens[stor3][address(msg.sender)] >= minCDTToParticipate);
    uint256(stor2[address(msg.sender)]) = tokens[stor3][address(msg.sender)] >= minCDTToParticipate or Mask(248, 8, uint256(stor2[address(msg.sender)]))
}

function depositToken(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if not arg1:
        revert with 0, 'unrecognized token'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
    if bool(uint8(stor2[address(msg.sender)])) != tokens[stor3][address(msg.sender)] >= minCDTToParticipate:
        emit UserActiveStatusChanged(msg.sender, tokens[stor3][address(msg.sender)] >= minCDTToParticipate);
    uint256(stor2[address(msg.sender)]) = tokens[stor3][address(msg.sender)] >= minCDTToParticipate or Mask(248, 8, uint256(stor2[address(msg.sender)]))
}

function getUserScore(address arg1) {
    require not uint8(stor0.field_160)
    require ext_code.size(marketDataOracleAddress)
    call marketDataOracleAddress.0x15a653a0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0xead491ac with:
             gas gas_remaining wei
            args idx
        mem[96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[0] = arg1
        mem[32] = sha3(address(ext_call.return_data[0]), 1)
        s = tokens[address(ext_call.return_data[0])][address(arg1)]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = s + (tokens[address(ext_call.return_data[0])][address(arg1)] * ext_call.return_data[32] * ext_call.return_data[64] * ext_call.return_data[96])
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function getWinner(bytes32 arg1) {
    if block.number < maxAttackPrizePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'attack can not be completed at this block, please wait'
    if block.number - attackIdToInfo[arg1].field_1536 >= 256:
        return attackIdToInfo[arg1].field_256, attackIdToInfo[arg1].field_768
    if attackIdToInfo[arg1].field_768 <= attackIdToInfo[arg1].field_512:
        require attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768
        require attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768
        require 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 / attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 == 2
        require 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768
        if attackIdToInfo[arg1].field_512 >= attackIdToInfo[arg1].field_768:
            if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 1:
                if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 <= attackIdToInfo[arg1].field_768:
                    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
                        return attackIdToInfo[arg1].field_256, 
                               attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)
                    return attackIdToInfo[arg1].field_0, 
                           attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)
                if attackIdToInfo[arg1].field_512 <= 0:
                    return attackIdToInfo[arg1].field_256, 0
                return attackIdToInfo[arg1].field_0, 0
        else:
            if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 8:
                if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 <= attackIdToInfo[arg1].field_768:
                    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
                        return attackIdToInfo[arg1].field_256, 
                               attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)
                    return attackIdToInfo[arg1].field_0, 
                           attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)
                if attackIdToInfo[arg1].field_512 <= 0:
                    return attackIdToInfo[arg1].field_256, 0
                return attackIdToInfo[arg1].field_0, 0
        require attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768) >= attackIdToInfo[arg1].field_768
        if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
            return attackIdToInfo[arg1].field_256, 
                   attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)
        return attackIdToInfo[arg1].field_0, 
               attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)
    require attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512
    require attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512
    require 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 / attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 == 2
    require 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512
    if attackIdToInfo[arg1].field_512 >= attackIdToInfo[arg1].field_768:
        if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 1:
            if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768:
                if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
                    return attackIdToInfo[arg1].field_256, 
                           attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)
                return attackIdToInfo[arg1].field_0, 
                       attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)
            if attackIdToInfo[arg1].field_512 <= 0:
                return attackIdToInfo[arg1].field_256, 0
            return attackIdToInfo[arg1].field_0, 0
    else:
        if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 8:
            if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768:
                if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
                    return attackIdToInfo[arg1].field_256, 
                           attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)
                return attackIdToInfo[arg1].field_0, 
                       attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)
            if attackIdToInfo[arg1].field_512 <= 0:
                return attackIdToInfo[arg1].field_256, 0
            return attackIdToInfo[arg1].field_0, 0
    require attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512) >= attackIdToInfo[arg1].field_768
    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
        return attackIdToInfo[arg1].field_256, 
               attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)
    return attackIdToInfo[arg1].field_0, 
           attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)
}

function attackPrizeRatio(address arg1) {
    require not uint8(stor0.field_160)
    require ext_code.size(marketDataOracleAddress)
    call marketDataOracleAddress.0x15a653a0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0xead491ac with:
             gas gas_remaining wei
            args idx
        mem[96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[0] = msg.sender
        mem[32] = sha3(address(ext_call.return_data[0]), 1)
        s = tokens[address(ext_call.return_data[0])][address(msg.sender)]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = s + (tokens[address(ext_call.return_data[0])][address(msg.sender)] * ext_call.return_data[32] * ext_call.return_data[64] * ext_call.return_data[96])
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] <= 0:
        revert with 0, 'attacker score is 0'
    require not uint8(stor0.field_160)
    require ext_code.size(marketDataOracleAddress)
    call marketDataOracleAddress.0x15a653a0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    t = 0
    t = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0xead491ac with:
             gas gas_remaining wei
            args idx
        mem[96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[0] = arg1
        mem[32] = sha3(address(ext_call.return_data[0]), 1)
        t = tokens[address(ext_call.return_data[0])][address(arg1)]
        t = ext_call.return_data[96]
        t = ext_call.return_data[64]
        t = ext_call.return_data[32]
        t = ext_call.return_data[0]
        idx = idx + 1
        t = t + (tokens[address(ext_call.return_data[0])][address(arg1)] * ext_call.return_data[32] * ext_call.return_data[64] * ext_call.return_data[96])
        continue 
    if t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] <= 0:
        revert with 0, 'attackee score is 0'
    if not t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            return 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                   s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                   t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    else:
        if t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            if t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] == stor7:
                if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
                    return t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], 
                           s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0],
                           t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
    revert
}

function completeAttack(bytes32 arg1) {
    if block.number < maxAttackPrizePercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'attack can not be completed at this block, please wait'
    if block.number - attackIdToInfo[arg1].field_1536 >= 256:
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0x15a653a0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 0
        t = 0
        t = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(marketDataOracleAddress)
            call marketDataOracleAddress.0xf4e50a4d with:
                 gas gas_remaining wei
                args idx
            mem[96 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[0] = address(ext_call.return_data[0])
            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                mem[32] = sha3(arg1, 9) + 8
                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                    mem[0] = attackIdToInfo[arg1].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                s = s
                t = ext_call.return_data[32]
                t = ext_call.return_data[0]
                idx = idx + 1
                continue 
            mem[32] = sha3(arg1, 9) + 7
            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                mem[0] = attackIdToInfo[arg1].field_0
                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
            t = ext_call.return_data[32]
            t = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require 1 <= openAttacksCount[stor9[arg1].field_0]
        openAttacksCount[stor9[arg1].field_0]--
        require 1 <= openAttacksCount[stor9[arg1].field_256]
        openAttacksCount[stor9[arg1].field_256]--
        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
        attackIdToInfo[arg1].field_0 = 0
        attackIdToInfo[arg1].field_256 = 0
        attackIdToInfo[arg1].field_512 = 0
        attackIdToInfo[arg1].field_768 = 0
        attackIdToInfo[arg1].field_1024 = 0
        attackIdToInfo[arg1].field_1280 = 0
        attackIdToInfo[arg1].field_1536 = 0
        emit AttackCompleted(attackIdToInfo[arg1].field_768, arg1, attackIdToInfo[arg1].field_256);
    else:
        if attackIdToInfo[arg1].field_768 <= attackIdToInfo[arg1].field_512:
            require attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768
            require attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768
            require 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 / attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 == 2
            require 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768
            if attackIdToInfo[arg1].field_512 >= attackIdToInfo[arg1].field_768:
                if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 1:
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 <= attackIdToInfo[arg1].field_768:
                        if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_0);
                    else:
                        if attackIdToInfo[arg1].field_512 <= 0:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_0);
                else:
                    require attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768) >= attackIdToInfo[arg1].field_768
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_256);
                    else:
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_0);
            else:
                if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 8:
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768 <= attackIdToInfo[arg1].field_768:
                        if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_0);
                    else:
                        if attackIdToInfo[arg1].field_512 <= 0:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_0);
                else:
                    require attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768) >= attackIdToInfo[arg1].field_768
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768):
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_256);
                    else:
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_512 - attackIdToInfo[arg1].field_768)), arg1, attackIdToInfo[arg1].field_0);
        else:
            require attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512
            require attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512
            require 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 / attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 == 2
            require 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512
            if attackIdToInfo[arg1].field_512 >= attackIdToInfo[arg1].field_768:
                if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 1:
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768:
                        if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_0);
                    else:
                        if attackIdToInfo[arg1].field_512 <= 0:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_0);
                else:
                    require attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512) >= attackIdToInfo[arg1].field_768
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_256);
                    else:
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_0);
            else:
                if block.hash(attackIdToInfo[arg1].field_1536) % 10 <= 8:
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768:
                        if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted((attackIdToInfo[arg1].field_768 - (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_0);
                    else:
                        if attackIdToInfo[arg1].field_512 <= 0:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_256);
                        else:
                            s = 0
                            t = 0
                            t = 0
                            idx = 0
                            while idx < ext_call.return_data[0]:
                                require ext_code.size(marketDataOracleAddress)
                                call marketDataOracleAddress.0xf4e50a4d with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[0] = address(ext_call.return_data[0])
                                if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                    mem[32] = sha3(arg1, 9) + 8
                                    if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                        require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                        require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                        mem[0] = attackIdToInfo[arg1].field_256
                                        mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                        tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    s = s
                                    t = ext_call.return_data[32]
                                    t = ext_call.return_data[0]
                                    idx = idx + 1
                                    continue 
                                mem[32] = sha3(arg1, 9) + 7
                                if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    mem[0] = attackIdToInfo[arg1].field_0
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            require 1 <= openAttacksCount[stor9[arg1].field_0]
                            openAttacksCount[stor9[arg1].field_0]--
                            require 1 <= openAttacksCount[stor9[arg1].field_256]
                            openAttacksCount[stor9[arg1].field_256]--
                            userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                            userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                            attackIdToInfo[arg1].field_0 = 0
                            attackIdToInfo[arg1].field_256 = 0
                            attackIdToInfo[arg1].field_512 = 0
                            attackIdToInfo[arg1].field_768 = 0
                            attackIdToInfo[arg1].field_1024 = 0
                            attackIdToInfo[arg1].field_1280 = 0
                            attackIdToInfo[arg1].field_1536 = 0
                            emit AttackCompleted(0, arg1, attackIdToInfo[arg1].field_0);
                else:
                    require attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512) >= attackIdToInfo[arg1].field_768
                    require ext_code.size(marketDataOracleAddress)
                    call marketDataOracleAddress.0x15a653a0 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if attackIdToInfo[arg1].field_512 <= attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512):
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_256:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_256);
                    else:
                        s = 0
                        t = 0
                        t = 0
                        idx = 0
                        while idx < ext_call.return_data[0]:
                            require ext_code.size(marketDataOracleAddress)
                            call marketDataOracleAddress.0xf4e50a4d with:
                                 gas gas_remaining wei
                                args idx
                            mem[96 len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[0] = address(ext_call.return_data[0])
                            if attackIdToInfo[arg1].field_0 != attackIdToInfo[arg1].field_0:
                                mem[32] = sha3(arg1, 9) + 8
                                if attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 > 0:
                                    require attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] -= attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                    require tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] + attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                    mem[0] = attackIdToInfo[arg1].field_256
                                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                    tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] += attackIdToInfo[arg1][8][address(ext_call.return_data[0])].field_0
                                s = s
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                idx = idx + 1
                                continue 
                            mem[32] = sha3(arg1, 9) + 7
                            if attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 > 0:
                                require attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 <= tokens[address(ext_call.return_data[0])][stor9[arg1].field_256]
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_256] -= attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                                require tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] + attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0 >= tokens[address(ext_call.return_data[0])][stor9[arg1].field_0]
                                mem[0] = attackIdToInfo[arg1].field_0
                                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                                tokens[address(ext_call.return_data[0])][stor9[arg1].field_0] += attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            s = attackIdToInfo[arg1][7][address(ext_call.return_data[0])].field_0
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            idx = idx + 1
                            continue 
                        require 1 <= openAttacksCount[stor9[arg1].field_0]
                        openAttacksCount[stor9[arg1].field_0]--
                        require 1 <= openAttacksCount[stor9[arg1].field_256]
                        openAttacksCount[stor9[arg1].field_256]--
                        userToUserToAttackId[stor9[arg1].field_0][stor9[arg1].field_256] = 0
                        userToUserToAttackId[stor9[arg1].field_256][stor9[arg1].field_0] = 0
                        attackIdToInfo[arg1].field_0 = 0
                        attackIdToInfo[arg1].field_256 = 0
                        attackIdToInfo[arg1].field_512 = 0
                        attackIdToInfo[arg1].field_768 = 0
                        attackIdToInfo[arg1].field_1024 = 0
                        attackIdToInfo[arg1].field_1280 = 0
                        attackIdToInfo[arg1].field_1536 = 0
                        emit AttackCompleted((attackIdToInfo[arg1].field_768 + (block.hash(attackIdToInfo[arg1].field_1536) % 2 * attackIdToInfo[arg1].field_768 - attackIdToInfo[arg1].field_512)), arg1, attackIdToInfo[arg1].field_0);
}

function attack(address arg1) {
    if not uint8(stor2[address(msg.sender)]):
        revert with 0, 'User not active'
    if not uint8(stor2[address(arg1)]):
        revert with 0, 'User not active'
    if msg.sender == arg1:
        revert with 0, 'Can't attack yourself'
    if userToUserToAttackId[address(msg.sender)][address(arg1)]:
        revert with 0, 'Cannot attack while pending attack exists, please complete attack'
    if openAttacksCount[address(msg.sender)] >= maxOpenAttacks:
        revert with 0, 'Too many open attacks for attacker'
    if openAttacksCount[address(arg1)] >= maxOpenAttacks:
        revert with 0, 'Too many open attacks for attackee'
    require not uint8(stor0.field_160)
    require ext_code.size(marketDataOracleAddress)
    call marketDataOracleAddress.0x15a653a0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0xead491ac with:
             gas gas_remaining wei
            args idx
        mem[320 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[0] = msg.sender
        mem[32] = sha3(address(ext_call.return_data[0]), 1)
        s = tokens[address(ext_call.return_data[0])][address(msg.sender)]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = s + (tokens[address(ext_call.return_data[0])][address(msg.sender)] * ext_call.return_data[32] * ext_call.return_data[64] * ext_call.return_data[96])
        continue 
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] <= 0:
        revert with 0, 'attacker score is 0'
    require not uint8(stor0.field_160)
    require ext_code.size(marketDataOracleAddress)
    call marketDataOracleAddress.0x15a653a0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    t = 0
    t = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0xead491ac with:
             gas gas_remaining wei
            args idx
        mem[320 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        mem[0] = arg1
        mem[32] = sha3(address(ext_call.return_data[0]), 1)
        t = tokens[address(ext_call.return_data[0])][address(arg1)]
        t = ext_call.return_data[96]
        t = ext_call.return_data[64]
        t = ext_call.return_data[32]
        t = ext_call.return_data[0]
        idx = idx + 1
        t = t + (tokens[address(ext_call.return_data[0])][address(arg1)] * ext_call.return_data[32] * ext_call.return_data[64] * ext_call.return_data[96])
        continue 
    if t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] <= 0:
        revert with 0, 'attackee score is 0'
    if not t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        require s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        hash = sha256hash(msg.sender, arg1, Mask(192, 64, block.hash(block.number - 1)) >> 64, mem[712 len 8]) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userToUserToAttackId[msg.sender][uint64(arg1) << 96] = hash
        userToUserToAttackId[uint64(arg1) << 96][msg.sender] = hash
        attackIdToInfo[hash].field_0 = msg.sender
        attackIdToInfo[hash].field_256 = uint64(arg1) << 96
        attackIdToInfo[hash].field_512 = s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        attackIdToInfo[hash].field_768 = t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        attackIdToInfo[hash].field_1024 = hash
        attackIdToInfo[hash].field_1280 = 0
        attackIdToInfo[hash].field_1536 = block.number
        require openAttacksCount[msg.sender] + 1 >= openAttacksCount[msg.sender]
        openAttacksCount[msg.sender]++
        require openAttacksCount[uint64(arg1) << 96] + 1 >= openAttacksCount[uint64(arg1) << 96]
        openAttacksCount[uint64(arg1) << 96]++
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0x15a653a0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            t = 0
            u = 0
            v = 0
            w = 0
            x = 0
            x = 0
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(marketDataOracleAddress)
                call marketDataOracleAddress.0xf4e50a4d with:
                     gas gas_remaining wei
                    args idx
                mem[648 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    t = t
                    u = u
                    v = v
                    w = w
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_0] <= 0:
                    mem[0] = attackIdToInfo[hash].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                        t = t
                        u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        v = v
                        w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        x = ext_call.return_data[32]
                        x = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                        require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        require not 0 / tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                    t = 0 / 100 * stor7
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    v = v
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_0]:
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    require not 0 / tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                require 100 * stor7
                attackIdToInfo[hash][8][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                mem[0] = attackIdToInfo[hash].field_256
                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                    t = t
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    v = 0 / 100 * stor7
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require not 0 / tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                require 100 * stor7
                mem[0] = address(ext_call.return_data[0])
                mem[32] = sha3(hash, 9) + 7
                attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                t = 0 / 100 * stor7
                u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                v = 0 / 100 * stor7
                w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                x = ext_call.return_data[32]
                x = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            require 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] == maxAttackPrizePercent
            t = 0
            u = 0
            v = 0
            w = 0
            x = 0
            x = 0
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(marketDataOracleAddress)
                call marketDataOracleAddress.0xf4e50a4d with:
                     gas gas_remaining wei
                    args idx
                mem[648 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    t = t
                    u = u
                    v = v
                    w = w
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_0] <= 0:
                    mem[0] = attackIdToInfo[hash].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                        t = t
                        u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        v = v
                        w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        x = ext_call.return_data[32]
                        x = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if not tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                        require 100 * stor7
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = sha3(hash, 9) + 7
                        attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                        t = 0 / 100 * stor7
                        u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        v = v
                        w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        x = ext_call.return_data[32]
                        x = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_256] == 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    t = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    v = v
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if not tokens[address(ext_call.return_data[0])][stor9[hash].field_0]:
                    require 100 * stor7
                    attackIdToInfo[hash][8][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                    mem[0] = attackIdToInfo[hash].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                        t = t
                        u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        v = 0 / 100 * stor7
                        w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        x = ext_call.return_data[32]
                        x = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if not tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                        require 100 * stor7
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = sha3(hash, 9) + 7
                        attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                        t = 0 / 100 * stor7
                        u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        v = 0 / 100 * stor7
                        w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        x = ext_call.return_data[32]
                        x = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_256] == 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    t = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    v = 0 / 100 * stor7
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_0] == 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                require 100 * stor7
                attackIdToInfo[hash][8][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                mem[0] = attackIdToInfo[hash].field_256
                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                    t = t
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if not tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                    t = 0 / 100 * stor7
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    x = ext_call.return_data[32]
                    x = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_256] == 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                require 100 * stor7
                mem[0] = address(ext_call.return_data[0])
                mem[32] = sha3(hash, 9) + 7
                attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                t = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                v = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                x = ext_call.return_data[32]
                x = ext_call.return_data[0]
                idx = idx + 1
                continue 
        emit Attack(hash, 0 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], stor7, block.number, msg.sender, uint64(arg1) << 96);
    else:
        require t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        require t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] == stor7
        require s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        hash = sha256hash(msg.sender, arg1, Mask(192, 64, block.hash(block.number - 1)) >> 64, mem[712 len 8]) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        userToUserToAttackId[msg.sender][uint64(arg1) << 96] = hash
        userToUserToAttackId[uint64(arg1) << 96][msg.sender] = hash
        attackIdToInfo[hash].field_0 = msg.sender
        attackIdToInfo[hash].field_256 = uint64(arg1) << 96
        attackIdToInfo[hash].field_512 = s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        attackIdToInfo[hash].field_768 = t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
        attackIdToInfo[hash].field_1024 = hash
        attackIdToInfo[hash].field_1280 = 0
        attackIdToInfo[hash].field_1536 = block.number
        require openAttacksCount[msg.sender] + 1 >= openAttacksCount[msg.sender]
        openAttacksCount[msg.sender]++
        require openAttacksCount[uint64(arg1) << 96] + 1 >= openAttacksCount[uint64(arg1) << 96]
        openAttacksCount[uint64(arg1) << 96]++
        require ext_code.size(marketDataOracleAddress)
        call marketDataOracleAddress.0x15a653a0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
            u = 0
            v = 0
            w = 0
            x = 0
            y = 0
            y = 0
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(marketDataOracleAddress)
                call marketDataOracleAddress.0xf4e50a4d with:
                     gas gas_remaining wei
                    args idx
                mem[648 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    u = u
                    v = v
                    w = w
                    x = x
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_0] <= 0:
                    mem[0] = attackIdToInfo[hash].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                        u = u
                        v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        w = w
                        x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        y = ext_call.return_data[32]
                        y = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                        require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        require not 0 / tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                    u = 0 / 100 * stor7
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    w = w
                    x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_0]:
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    require not 0 / tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                require 100 * stor7
                attackIdToInfo[hash][8][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                mem[0] = attackIdToInfo[hash].field_256
                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                    u = u
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    w = 0 / 100 * stor7
                    x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require not 0 / tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                require 100 * stor7
                mem[0] = address(ext_call.return_data[0])
                mem[32] = sha3(hash, 9) + 7
                attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                u = 0 / 100 * stor7
                v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                w = 0 / 100 * stor7
                x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                y = ext_call.return_data[32]
                y = ext_call.return_data[0]
                idx = idx + 1
                continue 
        else:
            require t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
            require t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] == maxAttackPrizePercent
            u = 0
            v = 0
            w = 0
            x = 0
            y = 0
            y = 0
            idx = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(marketDataOracleAddress)
                call marketDataOracleAddress.0xf4e50a4d with:
                     gas gas_remaining wei
                    args idx
                mem[648 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[32]:
                    u = u
                    v = v
                    w = w
                    x = x
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_0] <= 0:
                    mem[0] = attackIdToInfo[hash].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                        u = u
                        v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        w = w
                        x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        y = ext_call.return_data[32]
                        y = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if not tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                        require 100 * stor7
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = sha3(hash, 9) + 7
                        attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                        u = 0 / 100 * stor7
                        v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        w = w
                        x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        y = ext_call.return_data[32]
                        y = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_256] == t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    w = w
                    x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if not tokens[address(ext_call.return_data[0])][stor9[hash].field_0]:
                    require 100 * stor7
                    attackIdToInfo[hash][8][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                    mem[0] = attackIdToInfo[hash].field_256
                    mem[32] = sha3(address(ext_call.return_data[0]), 1)
                    if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                        u = u
                        v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        w = 0 / 100 * stor7
                        x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        y = ext_call.return_data[32]
                        y = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    if not tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                        require 100 * stor7
                        mem[0] = address(ext_call.return_data[0])
                        mem[32] = sha3(hash, 9) + 7
                        attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                        u = 0 / 100 * stor7
                        v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                        w = 0 / 100 * stor7
                        x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                        y = ext_call.return_data[32]
                        y = ext_call.return_data[0]
                        idx = idx + 1
                        continue 
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    require tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_256] == t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    w = 0 / 100 * stor7
                    x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_0] == t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                require 100 * stor7
                attackIdToInfo[hash][8][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                mem[0] = attackIdToInfo[hash].field_256
                mem[32] = sha3(address(ext_call.return_data[0]), 1)
                if tokens[address(ext_call.return_data[0])][stor9[hash].field_256] <= 0:
                    u = u
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                if not tokens[address(ext_call.return_data[0])][stor9[hash].field_256]:
                    require 100 * stor7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = sha3(hash, 9) + 7
                    attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = 0 / 100 * stor7
                    u = 0 / 100 * stor7
                    v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                    w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                    x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                    y = ext_call.return_data[32]
                    y = ext_call.return_data[0]
                    idx = idx + 1
                    continue 
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                require tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / tokens[address(ext_call.return_data[0])][stor9[hash].field_256] == t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent
                require 100 * stor7
                mem[0] = address(ext_call.return_data[0])
                mem[32] = sha3(hash, 9) + 7
                attackIdToInfo[hash][7][address(ext_call.return_data[0])].field_0 = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                u = tokens[address(ext_call.return_data[0])][stor9[hash].field_256] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                v = tokens[address(ext_call.return_data[0])][stor9[hash].field_256]
                w = tokens[address(ext_call.return_data[0])][stor9[hash].field_0] * t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * maxAttackPrizePercent / 100 * stor7
                x = tokens[address(ext_call.return_data[0])][stor9[hash].field_0]
                y = ext_call.return_data[32]
                y = ext_call.return_data[0]
                idx = idx + 1
                continue 
        emit Attack(hash, t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * stor7 / s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0], stor7, block.number, msg.sender, uint64(arg1) << 96);
}



}
