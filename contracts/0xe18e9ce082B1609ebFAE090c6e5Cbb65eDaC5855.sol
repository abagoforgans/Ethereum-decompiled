contract main {


// =======================  Init code  ======================


address stor1;
uint8 stor7;
uint256 stor12;
uint256 stor13;
array of uint256 stor16;
array of uint256 stor17;
array of uint256 stor18;
uint8 stor19;

function _fallback() payable {
    stor12 = 0
    stor13 = 1
    bool(stor18.length) = 0
    stor18.length.field_1 = 7
    stor18.length.field_8 = 'SPR_0.1' / 256
    idx = 0
    while stor18.length + 31 / 32 > idx:
        stor18[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    bool(stor16.length) = 0
    stor16.length.field_1 = 11
    stor16.length.field_8 = 'EtherSphere' / 256
    idx = 0
    while stor16.length + 31 / 32 > idx:
        stor16[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor17.length) = 0
    stor17.length.field_1 = 3
    stor17.length.field_8 = 'SPR' / 256
    idx = 0
    while stor17.length + 31 / 32 > idx:
        stor17[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 4
    stor19 = 0
    return code.data[581 len 13600]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address controllerAddress;
address newControllerAddress;
address daoAddress;
mapping of uint256 balances;
array of address mintingFactories;
uint256 numFactories;
uint8 decimals;
mapping of uint256 roundFees;
mapping of uint256 recordedCoinSupplyForRound;
mapping of uint256 claimedFees;
mapping of uint256 lastClaimedRound;
uint256 latestRound;
uint256 initialRound;
uint256 reserves;
uint8 stor15;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 isTransferEnabled;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function recordedCoinSupplyForRound(uint256 arg1) {
    return recordedCoinSupplyForRound[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function numFactories() {
    return numFactories
}

function claimedFees(uint256 arg1, address arg2) {
    return claimedFees[arg1][arg2]
}

function decimals() {
    return decimals
}

function initialRound() {
    return initialRound
}

function mintingFactories(uint256 arg1) {
    require arg1 < mintingFactories.length
    return address(mintingFactories[arg1])
}

function newController() {
    return newControllerAddress
}

function dao() {
    return daoAddress
}

function version() {
    return version[0 len version.length]
}

function latestRound() {
    return latestRound
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function reserves() {
    return reserves
}

function lastClaimedRound(address arg1) {
    return lastClaimedRound[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function halted() {
    return bool(stor15)
}

function roundFees(uint256 arg1) {
    return roundFees[arg1]
}

function isTransferEnabled() {
    return bool(isTransferEnabled)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function halt() {
    require msg.sender == controllerAddress
    stor15 = 1
}

function resetFactories() {
    require msg.sender == controllerAddress
    numFactories = 0
}

function reservesPerUnitToken() {
    require totalSupply
    return (reserves / totalSupply)
}

function unhalt() {
    require msg.sender == controllerAddress
    require stor15
    stor15 = 0
}

function setDAO(address arg1) {
    require msg.sender == controllerAddress
    daoAddress = arg1
}

function changeOwner(address arg1) {
    require msg.sender == controllerAddress
    newControllerAddress = arg1
}

function setTransferEnable(bool arg1) {
    require msg.sender == daoAddress
    isTransferEnabled = uint8(arg1)
}

function acceptOwnership() {
    if msg.sender == newControllerAddress:
        controllerAddress = newControllerAddress
}

function reduceReserves(uint256 arg1) {
    require calldata.size == 36
    require msg.sender == daoAddress
    require arg1 <= reserves
    reserves -= arg1
}

function addReserves(uint256 arg1) {
    require calldata.size == 36
    require msg.sender == daoAddress
    require reserves + arg1 >= reserves
    require reserves + arg1 >= arg1
    reserves += arg1
}

function depositFees(uint256 arg1) {
    require msg.sender == daoAddress
    latestRound++
    emit Deposited(arg1, latestRound);
    recordedCoinSupplyForRound[stor12] = totalSupply
    roundFees[stor12] = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor15
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function subApproval(address arg1, uint256 arg2) {
    require calldata.size == 68
    require not stor15
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    return 1
}

function addApproval(address arg1, uint256 arg2) {
    require calldata.size == 68
    require not stor15
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    return 1
}

function feePerUnitOfCoin(uint256 arg1) {
    require recordedCoinSupplyForRound[arg1] > 0
    require recordedCoinSupplyForRound[arg1]
    require roundFees[arg1] == (recordedCoinSupplyForRound[arg1] * roundFees[arg1] / recordedCoinSupplyForRound[arg1]) + (roundFees[arg1] % recordedCoinSupplyForRound[arg1])
    return (roundFees[arg1] / recordedCoinSupplyForRound[arg1])
}

function removeMintingFactory(address arg1) {
    require msg.sender == controllerAddress
    idx = 0
    while idx < numFactories:
        require idx < mintingFactories.length
        mem[0] = 5
        if arg1 == address(mintingFactories[idx]):
            require idx < mintingFactories.length
            mem[0] = 5
            address(mintingFactories[idx]) = 0
        idx = idx + 1
        continue 
}

function addMintingFactory(address arg1) {
    require msg.sender == controllerAddress
    mintingFactories.length++
    if not mintingFactories.length <= mintingFactories.length + 1:
        idx = mintingFactories.length + 1
        while mintingFactories.length > idx:
            uint256(mintingFactories[idx]) = 0
            idx = idx + 1
            continue 
    address(mintingFactories[mintingFactories.length]) = arg1
    numFactories++
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == daoAddress
    require balances[address(arg1)] >= arg2
    require latestRound == lastClaimedRound[address(arg1)]
    require totalSupply
    require reserves / totalSupply * arg2 <= reserves
    reserves += -1 * reserves / totalSupply * arg2
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Burned(arg2, arg1);
    return (reserves / totalSupply * arg2)
}

function mintTokens(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < numFactories:
        require idx < mintingFactories.length
        mem[0] = 5
        if address(mintingFactories[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        if not msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require s
    lastClaimedRound[address(msg.sender)] = latestRound
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    balances[address(arg1)] += arg2
}

function claimFeesForRound(address arg1, uint256 arg2) {
    require calldata.size == 68
    require msg.sender == daoAddress
    require recordedCoinSupplyForRound[arg2] > 0
    require recordedCoinSupplyForRound[arg2]
    require roundFees[arg2] == (recordedCoinSupplyForRound[arg2] * roundFees[arg2] / recordedCoinSupplyForRound[arg2]) + (roundFees[arg2] % recordedCoinSupplyForRound[arg2])
    if balances[address(arg1)] * roundFees[arg2] / recordedCoinSupplyForRound[arg2] <= claimedFees[arg2][address(arg1)]:
        require claimedFees[arg2][address(arg1)] >= claimedFees[arg2][address(arg1)]
        require claimedFees[arg2][address(arg1)] >= 0
        emit Claimed(0, arg1);
        return 0
    require claimedFees[arg2][address(arg1)] <= balances[address(arg1)] * roundFees[arg2] / recordedCoinSupplyForRound[arg2]
    require balances[address(arg1)] * roundFees[arg2] / recordedCoinSupplyForRound[arg2] >= claimedFees[arg2][address(arg1)]
    require claimedFees[arg2][address(arg1)] >= 0
    claimedFees[arg2][address(arg1)] = balances[address(arg1)] * roundFees[arg2] / recordedCoinSupplyForRound[arg2]
    emit Claimed(((balances[address(arg1)] * roundFees[arg2] / recordedCoinSupplyForRound[arg2]) - claimedFees[arg2][address(arg1)]), arg1);
    return ((balances[address(arg1)] * roundFees[arg2] / recordedCoinSupplyForRound[arg2]) - claimedFees[arg2][address(arg1)])
}

function claimFees(address arg1) {
    require calldata.size == 36
    require msg.sender == daoAddress
    mem[0] = arg1
    mem[32] = 11
    s = 0
    idx = stor[sha3(mem[0 len 64])] + 1
    t = 0
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        if balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx] <= claimedFees[idx][address(arg1)]:
            require claimedFees[idx][address(arg1)] >= claimedFees[idx][address(arg1)]
            require claimedFees[idx][address(arg1)] >= 0
            mem[0] = arg1
            mem[32] = sha3(idx, 10)
            require t >= t
            require t >= 0
            s = 0
            idx = idx + 1
            t = t
            continue 
        require claimedFees[idx][address(arg1)] <= balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        require balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx] >= claimedFees[idx][address(arg1)]
        require claimedFees[idx][address(arg1)] >= 0
        mem[0] = arg1
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(arg1)] = balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        require t + (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)] >= t
        require t >= 0
        s = (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)]
        idx = idx + 1
        t = t + (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)]
        continue 
    lastClaimedRound[address(arg1)] = latestRound
    emit Claimed(s, arg1);
    return t
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require not stor15
    if arg2 > balances[address(msg.sender)]:
        return 0
    if not isTransferEnabled:
        return 0
    mem[0] = msg.sender
    mem[32] = 11
    s = 0
    t = 0
    idx = stor[sha3(mem[0 len 64])] + 1
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        mem[0] = msg.sender
        mem[32] = sha3(idx, 10)
        if balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx] <= claimedFees[idx][address(msg.sender)]:
            s = s
            t = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
            idx = idx + 1
            continue 
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        require claimedFees[idx][address(msg.sender)] <= balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        if arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx] < (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)]:
            require reserves + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= reserves
            require reserves + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            reserves += arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            require claimedFees[idx][address(msg.sender)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= claimedFees[idx][address(msg.sender)]
            require claimedFees[idx][address(msg.sender)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            mem[0] = msg.sender
            mem[32] = sha3(idx, 10)
            claimedFees[idx][address(msg.sender)] += arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            s = arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            t = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
            idx = idx + 1
            continue 
        require reserves + (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)] >= reserves
        require reserves >= 0
        reserves = reserves + (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)]
        require balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx] >= claimedFees[idx][address(msg.sender)]
        require claimedFees[idx][address(msg.sender)] >= 0
        mem[0] = msg.sender
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(msg.sender)] = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        s = (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)]
        t = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 11
    idx = stor[sha3(mem[0 len 64])] + 1
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        require claimedFees[idx][address(arg1)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= claimedFees[idx][address(arg1)]
        require claimedFees[idx][address(arg1)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
        mem[0] = arg1
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(arg1)] += arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
        idx = idx + 1
        continue 
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size == 100
    require not stor15
    if arg3 > balances[address(arg1)]:
        return 0
    if not isTransferEnabled:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > balances[address(arg1)]:
        return 0
    if not isTransferEnabled:
        return 0
    mem[0] = arg1
    mem[32] = 11
    s = 0
    t = 0
    idx = stor[sha3(mem[0 len 64])] + 1
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        mem[0] = arg1
        mem[32] = sha3(idx, 10)
        if balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx] <= claimedFees[idx][address(arg1)]:
            s = s
            t = balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
            idx = idx + 1
            continue 
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        require claimedFees[idx][address(arg1)] <= balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        if arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx] < (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)]:
            require reserves + (arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= reserves
            require reserves + (arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            reserves += arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            require claimedFees[idx][address(arg1)] + (arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= claimedFees[idx][address(arg1)]
            require claimedFees[idx][address(arg1)] + (arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            mem[0] = arg1
            mem[32] = sha3(idx, 10)
            claimedFees[idx][address(arg1)] += arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            s = arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            t = balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
            idx = idx + 1
            continue 
        require reserves + (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)] >= reserves
        require reserves >= 0
        reserves = reserves + (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)]
        require balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx] >= claimedFees[idx][address(arg1)]
        require claimedFees[idx][address(arg1)] >= 0
        mem[0] = arg1
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(arg1)] = balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        s = (balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(arg1)]
        t = balances[address(arg1)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        idx = idx + 1
        continue 
    mem[0] = arg2
    mem[32] = 11
    idx = stor[sha3(mem[0 len 64])] + 1
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        require claimedFees[idx][address(arg2)] + (arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= claimedFees[idx][address(arg2)]
        require claimedFees[idx][address(arg2)] + (arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
        mem[0] = arg2
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(arg2)] += arg3 * roundFees[idx] / recordedCoinSupplyForRound[idx]
        idx = idx + 1
        continue 
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function exchangeTransfer(address arg1, uint256 arg2) {
    require not stor15
    idx = 0
    s = 0
    while idx < numFactories:
        require idx < mintingFactories.length
        mem[0] = 5
        if address(mintingFactories[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        if not msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require s
    if arg2 > balances[address(msg.sender)]:
        return 0
    mem[0] = msg.sender
    mem[32] = 11
    s = 0
    t = 0
    idx = stor[sha3(mem[0 len 64])] + 1
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        mem[0] = msg.sender
        mem[32] = sha3(idx, 10)
        if balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx] <= claimedFees[idx][address(msg.sender)]:
            s = s
            t = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
            idx = idx + 1
            continue 
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        require claimedFees[idx][address(msg.sender)] <= balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        if arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx] < (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)]:
            require reserves + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= reserves
            require reserves + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            reserves += arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            require claimedFees[idx][address(msg.sender)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= claimedFees[idx][address(msg.sender)]
            require claimedFees[idx][address(msg.sender)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            mem[0] = msg.sender
            mem[32] = sha3(idx, 10)
            claimedFees[idx][address(msg.sender)] += arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            s = arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
            t = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
            idx = idx + 1
            continue 
        require reserves + (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)] >= reserves
        require reserves >= 0
        reserves = reserves + (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)]
        require balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx] >= claimedFees[idx][address(msg.sender)]
        require claimedFees[idx][address(msg.sender)] >= 0
        mem[0] = msg.sender
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(msg.sender)] = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        s = (balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]) - claimedFees[idx][address(msg.sender)]
        t = balances[address(msg.sender)] * roundFees[idx] / recordedCoinSupplyForRound[idx]
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 11
    idx = stor[sha3(mem[0 len 64])] + 1
    while idx <= latestRound:
        require recordedCoinSupplyForRound[idx] > 0
        require recordedCoinSupplyForRound[idx]
        require roundFees[idx] == (recordedCoinSupplyForRound[idx] * roundFees[idx] / recordedCoinSupplyForRound[idx]) + (roundFees[idx] % recordedCoinSupplyForRound[idx])
        require claimedFees[idx][address(arg1)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= claimedFees[idx][address(arg1)]
        require claimedFees[idx][address(arg1)] + (arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]) >= arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
        mem[0] = arg1
        mem[32] = sha3(idx, 10)
        claimedFees[idx][address(arg1)] += arg2 * roundFees[idx] / recordedCoinSupplyForRound[idx]
        idx = idx + 1
        continue 
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
