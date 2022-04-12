contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
address stor7;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    stor4 = 0
    stor5 = 20
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor7 = msg.sender
    return code.data[119 len 8271]
}



// =====================  Runtime code  =====================


const name = 'Provide'

const decimals = 8

const symbol = 'PRVD'

const canUpgrade = 1

const BURN_ADDRESS = 0


uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address controllerAddress;
uint256 totalSupply;
uint256 stor5;
array of struct tokenGrantsCount;
address upgradeControllerAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;

function tokenGrantsCount(address arg1) {
    return tokenGrantsCount[address(arg1)].field_0
}

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
}

function grants(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[arg1].field_0
    return tokenGrantsCount[arg1][arg2].field_0, 
           tokenGrantsCount[arg1][arg2].field_256,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_512,
           tokenGrantsCount[arg1][arg2].field_640,
           bool(tokenGrantsCount[arg1][arg2].field_704),
           bool(tokenGrantsCount[arg1][arg2].field_712)
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function upgradeController() {
    return upgradeControllerAddress
}

function totalUpgraded() {
    return totalUpgraded
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function controller() {
    return controllerAddress
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function finishMinting() {
    require controllerAddress == msg.sender
    stor3 = 1
    emit MintFinished()
    return 1
}

function getUpgradeState() {
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function setUpgradeController(address arg1) {
    require arg1
    require upgradeControllerAddress == msg.sender
    upgradeControllerAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= stor0
    stor0 -= arg1
    emit Burned(msg.sender, arg1);
    emit Transfer(arg1, msg.sender, 0);
}

function lastTokenIsTransferableDate(address arg1) {
    idx = 0
    while idx < tokenGrantsCount[address(arg1)].field_0:
        mem[32] = 6
        require idx < tokenGrantsCount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        idx = idx + 1
        continue 
    return uint64(block.timestamp)
}

function mint(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function _fallback() payable {
    require controllerAddress
    require ext_code.size(controllerAddress) > 0
    require ext_code.size(controllerAddress)
    call controllerAddress.proxyPayment(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
}

function calculateVestedTokens(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if arg2 < arg4:
        return 0
    if arg2 >= arg5:
        return arg1
    require arg3 <= arg5
    require arg3 <= arg2
    if not arg1:
        if arg5 - arg3:
            return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    else:
        if arg1:
            if (arg2 * arg1) - (arg3 * arg1) / arg1 == arg2 - arg3:
                if arg5 - arg3:
                    return ((arg2 * arg1) - (arg3 * arg1) / arg5 - arg3)
    revert
}

function upgrade(uint256 arg1) {
    require upgradeAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= stor0
    stor0 -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require arg1
    require upgradeControllerAddress == msg.sender
    if upgradeAgentAddress:
        require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == stor0
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function tokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               0,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
        return tokenGrantsCount[address(arg1)][arg2].field_0, 
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_256,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               tokenGrantsCount[address(arg1)][arg2].field_512,
               bool(tokenGrantsCount[address(arg1)][arg2].field_704),
               bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
    require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
    if not tokenGrantsCount[address(arg1)][arg2].field_256:
        if tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512:
            return tokenGrantsCount[address(arg1)][arg2].field_0, 
                   tokenGrantsCount[address(arg1)][arg2].field_256,
                   (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
                   tokenGrantsCount[address(arg1)][arg2].field_512,
                   tokenGrantsCount[address(arg1)][arg2].field_512,
                   tokenGrantsCount[address(arg1)][arg2].field_512,
                   bool(tokenGrantsCount[address(arg1)][arg2].field_704),
                   bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    else:
        if tokenGrantsCount[address(arg1)][arg2].field_256:
            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512:
                if tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512:
                    return tokenGrantsCount[address(arg1)][arg2].field_0, 
                           tokenGrantsCount[address(arg1)][arg2].field_256,
                           (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640,
                           tokenGrantsCount[address(arg1)][arg2].field_512,
                           tokenGrantsCount[address(arg1)][arg2].field_512,
                           tokenGrantsCount[address(arg1)][arg2].field_512,
                           bool(tokenGrantsCount[address(arg1)][arg2].field_704),
                           bool(tokenGrantsCount[address(arg1)][arg2].field_712)
    revert
}

function transferableTokens(address arg1, uint64 arg2) payable {
    mem[64] = 96
    require not msg.value
    if tokenGrantsCount[address(arg1)].field_0:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 6
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 6)
            _25 = mem[64]
            mem[64] = mem[64] + 224
            mem[_25] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_25 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_25 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_25 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_25 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_25 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_25 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if arg2 < tokenGrantsCount[address(arg1)][idx].field_512:
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if arg2 >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                        if tokenGrantsCount[address(arg1)][idx].field_640 <= arg2:
                            if not tokenGrantsCount[address(arg1)][idx].field_256:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                            else:
                                if tokenGrantsCount[address(arg1)][idx].field_256:
                                    if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == arg2 - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if (arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                if tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(arg1)][idx].field_256 - ((arg2 * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                    continue 
            revert
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            return (balanceOf[address(arg1)] - s)
    return balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(arg1)].field_0:
        require arg3 <= balanceOf[address(arg1)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(arg1)].field_0:
            mem[32] = 6
            require idx < tokenGrantsCount[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 6)
            _55 = mem[64]
            mem[64] = mem[64] + 224
            mem[_55] = tokenGrantsCount[address(arg1)][idx].field_0
            mem[_55 + 32] = tokenGrantsCount[address(arg1)][idx].field_256
            mem[_55 + 64] = tokenGrantsCount[address(arg1)][idx].field_512
            mem[_55 + 96] = tokenGrantsCount[address(arg1)][idx].field_576
            mem[_55 + 128] = tokenGrantsCount[address(arg1)][idx].field_640
            mem[_55 + 160] = bool(tokenGrantsCount[address(arg1)][idx].field_704)
            mem[_55 + 192] = bool(tokenGrantsCount[address(arg1)][idx].field_712)
            if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][idx].field_512:
                if 0 <= tokenGrantsCount[address(arg1)][idx].field_256:
                    if tokenGrantsCount[address(arg1)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(arg1)][idx].field_256 + s
                        continue 
            else:
                if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][idx].field_576:
                    if tokenGrantsCount[address(arg1)][idx].field_256 <= tokenGrantsCount[address(arg1)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_576:
                        if tokenGrantsCount[address(arg1)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(arg1)][idx].field_256:
                                if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                        if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                            continue 
                            else:
                                if tokenGrantsCount[address(arg1)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][idx].field_512:
                                        if tokenGrantsCount[address(arg1)][idx].field_576 - tokenGrantsCount[address(arg1)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512 <= tokenGrantsCount[address(arg1)][idx].field_256:
                                                if tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(arg1)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][idx].field_256) - (tokenGrantsCount[address(arg1)][idx].field_512 * tokenGrantsCount[address(arg1)][idx].field_256) / tokenGrantsCount[address(arg1)][idx].field_512 - tokenGrantsCount[address(arg1)][idx].field_512) + s
                                                    continue 
            revert
        require s <= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] - s < balanceOf[address(arg1)]:
            require arg3 <= balanceOf[address(arg1)] - s
        else:
            require arg3 <= balanceOf[address(arg1)]
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if not tokenGrantsCount[address(msg.sender)].field_0:
        require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = 0
        s = 0
        while idx < tokenGrantsCount[address(msg.sender)].field_0:
            mem[32] = 6
            require idx < tokenGrantsCount[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 6)
            _43 = mem[64]
            mem[64] = mem[64] + 224
            mem[_43] = tokenGrantsCount[address(msg.sender)][idx].field_0
            mem[_43 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
            mem[_43 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
            mem[_43 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
            mem[_43 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
            mem[_43 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
            mem[_43 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
            if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                    if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                        idx = idx + 1
                        s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                        continue 
            else:
                if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                    if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                        if s >= s:
                            idx = idx + 1
                            s = s
                            continue 
                else:
                    if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                        if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                            if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                            idx = idx + 1
                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                            continue 
                            else:
                                if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
            revert
        require s <= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
            require arg2 <= balanceOf[address(msg.sender)] - s
        else:
            require arg2 <= balanceOf[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function grantVestedTokens(address arg1, uint256 arg2, uint64 arg3, uint64 arg4, uint64 arg5, bool arg6, bool arg7) {
    require arg4 >= arg3
    require arg5 >= arg4
    require tokenGrantsCount[address(arg1)].field_0 <= stor5
    tokenGrantsCount[address(arg1)].field_0++
    if not tokenGrantsCount[address(arg1)].field_0 > tokenGrantsCount[address(arg1)].field_0 + 1:
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 6
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 6)
                    _222 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_222] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_222 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_222 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_222 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_222 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_222 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_222 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 6
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 6)
                    _223 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_223] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_223 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_223 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_223 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_223 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_223 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_223 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
    else:
        idx = (3 * tokenGrantsCount[address(arg1)].field_0) + 3
        while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
            tokenGrantsCount[address(arg1)][idx].field_0 = 0
            tokenGrantsCount[address(arg1)][idx].field_256 = 0
            tokenGrantsCount[address(arg1)][idx].field_512 = 0
            idx = idx + 3
            continue 
        mem[64] = 320
        if arg6:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = msg.sender
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 6
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 6)
                    _394 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_394] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_394 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_394 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_394 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_394 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_394 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_394 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
        else:
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = 0
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_256 = arg2
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_512 = arg4
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_576 = arg5
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_640 = arg3
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_704 = uint64(arg6)
            tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_712 = arg7 % 72057594037927936
            if not tokenGrantsCount[address(msg.sender)].field_0:
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                idx = 0
                s = 0
                while idx < tokenGrantsCount[address(msg.sender)].field_0:
                    mem[32] = 6
                    require idx < tokenGrantsCount[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 6)
                    _395 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_395] = tokenGrantsCount[address(msg.sender)][idx].field_0
                    mem[_395 + 32] = tokenGrantsCount[address(msg.sender)][idx].field_256
                    mem[_395 + 64] = tokenGrantsCount[address(msg.sender)][idx].field_512
                    mem[_395 + 96] = tokenGrantsCount[address(msg.sender)][idx].field_576
                    mem[_395 + 128] = tokenGrantsCount[address(msg.sender)][idx].field_640
                    mem[_395 + 160] = bool(tokenGrantsCount[address(msg.sender)][idx].field_704)
                    mem[_395 + 192] = bool(tokenGrantsCount[address(msg.sender)][idx].field_712)
                    if uint64(block.timestamp) < tokenGrantsCount[address(msg.sender)][idx].field_512:
                        if 0 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 + s >= s:
                                idx = idx + 1
                                s = tokenGrantsCount[address(msg.sender)][idx].field_256 + s
                                continue 
                    else:
                        if uint64(block.timestamp) >= tokenGrantsCount[address(msg.sender)][idx].field_576:
                            if tokenGrantsCount[address(msg.sender)][idx].field_256 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                if s >= s:
                                    idx = idx + 1
                                    s = s
                                    continue 
                        else:
                            if tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_576:
                                if tokenGrantsCount[address(msg.sender)][idx].field_640 <= uint64(block.timestamp):
                                    if not tokenGrantsCount[address(msg.sender)][idx].field_256:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                    idx = idx + 1
                                                    s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                    continue 
                                    else:
                                        if tokenGrantsCount[address(msg.sender)][idx].field_256:
                                            if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                if tokenGrantsCount[address(msg.sender)][idx].field_576 - tokenGrantsCount[address(msg.sender)][idx].field_512:
                                                    if (uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512 <= tokenGrantsCount[address(msg.sender)][idx].field_256:
                                                        if tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s >= s:
                                                            idx = idx + 1
                                                            s = tokenGrantsCount[address(msg.sender)][idx].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(msg.sender)][idx].field_256) - (tokenGrantsCount[address(msg.sender)][idx].field_512 * tokenGrantsCount[address(msg.sender)][idx].field_256) / tokenGrantsCount[address(msg.sender)][idx].field_512 - tokenGrantsCount[address(msg.sender)][idx].field_512) + s
                                                            continue 
                    revert
                require s <= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] - s < balanceOf[address(msg.sender)]:
                    require arg2 <= balanceOf[address(msg.sender)] - s
                else:
                    require arg2 <= balanceOf[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit NewTokenGrant(arg2, tokenGrantsCount[address(arg1)].field_0, msg.sender, arg1);
}

function revokeTokenGrant(address arg1, uint256 arg2) {
    require arg2 < tokenGrantsCount[address(arg1)].field_0
    require tokenGrantsCount[address(arg1)][arg2].field_704
    require tokenGrantsCount[address(arg1)][arg2].field_0 == msg.sender
    if tokenGrantsCount[address(arg1)][arg2].field_712:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[0] >= balanceOf[0]
            balanceOf[0] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, 0);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[0] >= balanceOf[0]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, arg1, 0);
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require tokenGrantsCount[address(arg1)][arg2].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[0] >= balanceOf[0]
                balanceOf[0] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[0]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, 0);
    else:
        if uint64(block.timestamp) < tokenGrantsCount[address(arg1)][arg2].field_512:
            require 0 <= tokenGrantsCount[address(arg1)][arg2].field_256
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = 0
            tokenGrantsCount[address(arg1)][arg2].field_256 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = 0
            require 1 <= tokenGrantsCount[address(arg1)].field_0
            require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
            require arg2 < tokenGrantsCount[address(arg1)].field_0
            tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_704 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_712 = 0
            tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
            tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
            tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = 0
            tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
            tokenGrantsCount[address(arg1)].field_0--
            if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                    tokenGrantsCount[address(arg1)][idx].field_0 = 0
                    tokenGrantsCount[address(arg1)][idx].field_256 = 0
                    tokenGrantsCount[address(arg1)][idx].field_512 = 0
                    idx = idx + 3
                    continue 
            require tokenGrantsCount[address(arg1)][arg2].field_256 + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokenGrantsCount[address(arg1)][arg2].field_256
            require tokenGrantsCount[address(arg1)][arg2].field_256 <= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256
            emit Transfer(tokenGrantsCount[address(arg1)][arg2].field_256, arg1, msg.sender);
        else:
            if uint64(block.timestamp) >= tokenGrantsCount[address(arg1)][arg2].field_576:
                require tokenGrantsCount[address(arg1)][arg2].field_256 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require 0 <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1]
                emit Transfer(0, arg1, msg.sender);
            else:
                require tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_576
                require tokenGrantsCount[address(arg1)][arg2].field_640 <= uint64(block.timestamp)
                if tokenGrantsCount[address(arg1)][arg2].field_256:
                    require tokenGrantsCount[address(arg1)][arg2].field_256
                    require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_256 == uint64(block.timestamp) - tokenGrantsCount[address(arg1)][arg2].field_512
                require tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_512
                require (uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_512 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_512 - tokenGrantsCount[address(arg1)][arg2].field_512 <= tokenGrantsCount[address(arg1)][arg2].field_256
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = 0
                tokenGrantsCount[address(arg1)][arg2].field_256 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = 0
                require 1 <= tokenGrantsCount[address(arg1)].field_0
                require tokenGrantsCount[address(arg1)].field_0 - 1 < tokenGrantsCount[address(arg1)].field_0
                require arg2 < tokenGrantsCount[address(arg1)].field_0
                tokenGrantsCount[address(arg1)][arg2].field_0 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_256 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_704 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint64(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_712 = 0
                tokenGrantsCount[address(arg1)][arg2].field_512 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_576 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_640 = tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0
                tokenGrantsCount[address(arg1)][arg2].field_704 = uint8(bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0))
                tokenGrantsCount[address(arg1)][arg2].field_712 = bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0) % 72057594037927936
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = 0
                tokenGrantsCount[address(arg1)][arg2].field_720 = Mask(48, 16, bool(tokenGrantsCount[address(arg1)][tokenGrantsCount[address(arg1)].field_0].field_0)) >> 16
                tokenGrantsCount[address(arg1)].field_0--
                if not tokenGrantsCount[address(arg1)].field_0 <= tokenGrantsCount[address(arg1)].field_0 - 1:
                    idx = (3 * tokenGrantsCount[address(arg1)].field_0) - 3
                    while 3 * tokenGrantsCount[address(arg1)].field_0 > idx:
                        tokenGrantsCount[address(arg1)][idx].field_0 = 0
                        tokenGrantsCount[address(arg1)][idx].field_256 = 0
                        tokenGrantsCount[address(arg1)][idx].field_512 = 0
                        idx = idx + 3
                        continue 
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) + balanceOf[address(msg.sender)]
                require tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640) <= balanceOf[arg1]
                balanceOf[address(arg1)] = balanceOf[arg1] - tokenGrantsCount[address(arg1)][arg2].field_256 + ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)
                emit Transfer((tokenGrantsCount[address(arg1)][arg2].field_256 - ((uint64(block.timestamp) * tokenGrantsCount[address(arg1)][arg2].field_256) - (tokenGrantsCount[address(arg1)][arg2].field_640 * tokenGrantsCount[address(arg1)][arg2].field_256) / tokenGrantsCount[address(arg1)][arg2].field_576 - tokenGrantsCount[address(arg1)][arg2].field_640)), arg1, msg.sender);
}



}
