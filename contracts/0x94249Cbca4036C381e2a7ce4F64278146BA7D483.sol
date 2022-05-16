contract main {




// =====================  Runtime code  =====================


const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 stor7; offset 160
address releaseAgentAddress;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;
uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 stor15;
uint256 stor16;
uint256 totalAirDrop;
uint8 stor18;
uint256 stor19;
uint256 totalCrowdCoin;
uint256 stor21;
uint256 totalDevCoin;
uint256 stor23;
uint256 totalFoundCoin;
uint256 stor25;
array of struct tokenName;
array of struct symbol;
uint256 decimals;

function mintingFinished() {
    return bool(stor12)
}

function name() {
    return tokenName[0 len tokenName.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mintAgents(address arg1) {
    return bool(stor13[arg1])
}

function tokenName() {
    return tokenName[0 len tokenName.length].field_0
}

function totalCrowdCoin() {
    return totalCrowdCoin
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferAgents(address arg1) {
    return bool(stor11[arg1])
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function totalFoundCoin() {
    return totalFoundCoin
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function released() {
    return bool(stor7)
}

function finishCrowdCoin() {
    return bool(stor18)
}

function totalDevCoin() {
    return totalDevCoin
}

function getTotalSupply() {
    return totalSupply
}

function releaseAgent() {
    return releaseAgentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalAirDrop() {
    return totalAirDrop
}

function _fallback() payable {
    revert
}

function enableMint() {
    require msg.sender == owner
    stor12 = 0
}

function releaseTokenTransfer() {
    require msg.sender == releaseAgentAddress
    stor7 = 1
}

function addFound(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function addAdmin(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function setTotalAirDrop(uint256 arg1) {
    require msg.sender == owner
    totalAirDrop = arg1
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function removeFound(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function addDeveloper(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function removeDeveloper(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setReleaseAgent(address arg1) {
    require msg.sender == owner
    require not stor7
    releaseAgentAddress = arg1
}

function setDistributeAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    stor14[address(arg1)] = uint8(arg2)
}

function setTransferAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require not stor7
    stor11[address(arg1)] = uint8(arg2)
}

function setMintAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require not stor12
    stor13[address(arg1)] = uint8(arg2)
    emit MintingAgentChanged(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawAmount(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxTranferLimit(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 < totalSupply
    require arg2 < totalSupply
    require arg3 < totalSupply
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
}

function withdrawAll() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) {
    require stor13[msg.sender]
    require not stor12
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, 0, arg1);
}

function recycle(address arg1, uint256 arg2) {
    require stor4[msg.sender]
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 + balanceOf[stor3] >= balanceOf[stor3]
    require arg2 + balanceOf[stor3] >= arg2
    balanceOf[stor3] += arg2
    require arg2 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg2
    emit Transfer(arg2, arg1, owner);
}

function distributeToDev(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + stor21 < totalDevCoin
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 + stor21 >= stor21
    stor21 += arg2
    require msg.sender == owner
    stor5[address(arg1)] = 1
    emit Transfer(arg2, 0, arg1);
    return arg2
}

function distributeToFound(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + stor23 < totalFoundCoin
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    require arg2 + stor23 >= stor23
    stor23 += arg2
    require msg.sender == owner
    stor6[address(arg1)] = 1
    emit Transfer(arg2, 0, arg1);
    return arg2
}

function airDrop(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= stor15
    require arg3 + stor16 < totalAirDrop
    require 1 == bool(stor14[msg.sender])
    require arg3 <= balanceOf[stor3]
    balanceOf[stor3] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 + stor16 >= stor16
    stor16 += arg3
    emit AirDrop(0, address(arg2), arg3);
    return arg3
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if stor5[msg.sender]:
            require arg2 < stor8
        else:
            if stor6[msg.sender]:
                require arg2 < stor9
            else:
                if stor10:
                    require arg2 < stor10
        if not stor7:
            require stor11[address(msg.sender)]
    require calldata.size >= 68
    require arg2 >= 0
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != arg1:
        if stor5[msg.sender]:
            require arg3 < stor8
        else:
            if stor6[msg.sender]:
                require arg3 < stor9
            else:
                if stor10:
                    require arg3 < stor10
        if not stor7:
            require stor11[address(arg1)]
    require allowance[address(arg1)][msg.sender] >= arg3
    require arg3 >= 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setTokenInformation(string arg1, string arg2) {
    require msg.sender == owner
    tokenName[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint256(tokenName.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + tokenName.length + 256 > idx + 32:
        mem[idx + 32] = tokenName[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + tokenName.length + (floor32(tokenName.length - 1) + -tokenName.length + 32 % 32) + 256] = symbol.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + tokenName.length + (floor32(tokenName.length - 1) + -tokenName.length + 32 % 32) + 288] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + tokenName.length + (floor32(tokenName.length - 1) + -tokenName.length + 32 % 32) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + tokenName.length + (floor32(tokenName.length - 1) + -tokenName.length + 32 % 32) + symbol.length + 288 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit UpdatedTokenInformation(Array(len=tokenName.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len tokenName.length + (floor32(tokenName.length - 1) + -tokenName.length + 32 % 32) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32]), tokenName.length + (floor32(tokenName.length - 1) + -tokenName.length + 32 % 32) + 96);
}

function crowdDistribution() payable {
    require msg.sender
    require ext_code.size(msg.sender) <= 0
    require msg.value
    require totalCrowdCoin > stor19
    require not stor18
    if 0 == stor25:
        if msg.value:
            require msg.value
            require 50000 * msg.value / msg.value == 50000
        require 50000 * msg.value
        require (50000 * msg.value) + stor19 >= stor19
        stor19 += 50000 * msg.value
        require 50000 * msg.value <= balanceOf[stor3]
        balanceOf[stor3] += -50000 * msg.value
        require (50000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 50000 * msg.value
        if totalCrowdCoin:
            require totalCrowdCoin
            require 10 * totalCrowdCoin / totalCrowdCoin == 10
        require 10 * totalCrowdCoin == (100 * 10 * totalCrowdCoin / 100) + (10 * totalCrowdCoin % 100)
        if stor19 < 10 * totalCrowdCoin / 100:
            stor25 = 0
        else:
            if totalCrowdCoin:
                require totalCrowdCoin
                require 20 * totalCrowdCoin / totalCrowdCoin == 20
            require 20 * totalCrowdCoin == (100 * 20 * totalCrowdCoin / 100) + (20 * totalCrowdCoin % 100)
            if stor19 < 20 * totalCrowdCoin / 100:
                stor25 = 1
            else:
                if totalCrowdCoin:
                    require totalCrowdCoin
                    require 30 * totalCrowdCoin / totalCrowdCoin == 30
                require 30 * totalCrowdCoin == (100 * 30 * totalCrowdCoin / 100) + (30 * totalCrowdCoin % 100)
                if stor19 < 30 * totalCrowdCoin / 100:
                    stor25 = 2
                else:
                    if totalCrowdCoin:
                        require totalCrowdCoin
                        require 40 * totalCrowdCoin / totalCrowdCoin == 40
                    require 40 * totalCrowdCoin == (100 * 40 * totalCrowdCoin / 100) + (40 * totalCrowdCoin % 100)
                    if stor19 < 40 * totalCrowdCoin / 100:
                        stor25 = 3
                    else:
                        if totalCrowdCoin:
                            require totalCrowdCoin
                            require 50 * totalCrowdCoin / totalCrowdCoin == 50
                        require 50 * totalCrowdCoin == (100 * 50 * totalCrowdCoin / 100) + (50 * totalCrowdCoin % 100)
                        if stor19 < 50 * totalCrowdCoin / 100:
                            stor25 = 4
        if stor19 >= totalCrowdCoin:
            stor18 = 1
        emit CrowdDistribute(0, msg.sender, 50000 * msg.value);
        return (50000 * msg.value)
    if 1 == stor25:
        if msg.value:
            require msg.value
            require 30000 * msg.value / msg.value == 30000
        require 30000 * msg.value
        require (30000 * msg.value) + stor19 >= stor19
        stor19 += 30000 * msg.value
        require 30000 * msg.value <= balanceOf[stor3]
        balanceOf[stor3] += -30000 * msg.value
        require (30000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 30000 * msg.value
        if totalCrowdCoin:
            require totalCrowdCoin
            require 10 * totalCrowdCoin / totalCrowdCoin == 10
        require 10 * totalCrowdCoin == (100 * 10 * totalCrowdCoin / 100) + (10 * totalCrowdCoin % 100)
        if stor19 < 10 * totalCrowdCoin / 100:
            stor25 = 0
        else:
            if totalCrowdCoin:
                require totalCrowdCoin
                require 20 * totalCrowdCoin / totalCrowdCoin == 20
            require 20 * totalCrowdCoin == (100 * 20 * totalCrowdCoin / 100) + (20 * totalCrowdCoin % 100)
            if stor19 < 20 * totalCrowdCoin / 100:
                stor25 = 1
            else:
                if totalCrowdCoin:
                    require totalCrowdCoin
                    require 30 * totalCrowdCoin / totalCrowdCoin == 30
                require 30 * totalCrowdCoin == (100 * 30 * totalCrowdCoin / 100) + (30 * totalCrowdCoin % 100)
                if stor19 < 30 * totalCrowdCoin / 100:
                    stor25 = 2
                else:
                    if totalCrowdCoin:
                        require totalCrowdCoin
                        require 40 * totalCrowdCoin / totalCrowdCoin == 40
                    require 40 * totalCrowdCoin == (100 * 40 * totalCrowdCoin / 100) + (40 * totalCrowdCoin % 100)
                    if stor19 < 40 * totalCrowdCoin / 100:
                        stor25 = 3
                    else:
                        if totalCrowdCoin:
                            require totalCrowdCoin
                            require 50 * totalCrowdCoin / totalCrowdCoin == 50
                        require 50 * totalCrowdCoin == (100 * 50 * totalCrowdCoin / 100) + (50 * totalCrowdCoin % 100)
                        if stor19 < 50 * totalCrowdCoin / 100:
                            stor25 = 4
        if stor19 >= totalCrowdCoin:
            stor18 = 1
        emit CrowdDistribute(0, msg.sender, 30000 * msg.value);
        return (30000 * msg.value)
    if 2 == stor25:
        if msg.value:
            require msg.value
            require 20000 * msg.value / msg.value == 20000
        require 20000 * msg.value
        require (20000 * msg.value) + stor19 >= stor19
        stor19 += 20000 * msg.value
        require 20000 * msg.value <= balanceOf[stor3]
        balanceOf[stor3] += -20000 * msg.value
        require (20000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 20000 * msg.value
        if totalCrowdCoin:
            require totalCrowdCoin
            require 10 * totalCrowdCoin / totalCrowdCoin == 10
        require 10 * totalCrowdCoin == (100 * 10 * totalCrowdCoin / 100) + (10 * totalCrowdCoin % 100)
        if stor19 < 10 * totalCrowdCoin / 100:
            stor25 = 0
        else:
            if totalCrowdCoin:
                require totalCrowdCoin
                require 20 * totalCrowdCoin / totalCrowdCoin == 20
            require 20 * totalCrowdCoin == (100 * 20 * totalCrowdCoin / 100) + (20 * totalCrowdCoin % 100)
            if stor19 < 20 * totalCrowdCoin / 100:
                stor25 = 1
            else:
                if totalCrowdCoin:
                    require totalCrowdCoin
                    require 30 * totalCrowdCoin / totalCrowdCoin == 30
                require 30 * totalCrowdCoin == (100 * 30 * totalCrowdCoin / 100) + (30 * totalCrowdCoin % 100)
                if stor19 < 30 * totalCrowdCoin / 100:
                    stor25 = 2
                else:
                    if totalCrowdCoin:
                        require totalCrowdCoin
                        require 40 * totalCrowdCoin / totalCrowdCoin == 40
                    require 40 * totalCrowdCoin == (100 * 40 * totalCrowdCoin / 100) + (40 * totalCrowdCoin % 100)
                    if stor19 < 40 * totalCrowdCoin / 100:
                        stor25 = 3
                    else:
                        if totalCrowdCoin:
                            require totalCrowdCoin
                            require 50 * totalCrowdCoin / totalCrowdCoin == 50
                        require 50 * totalCrowdCoin == (100 * 50 * totalCrowdCoin / 100) + (50 * totalCrowdCoin % 100)
                        if stor19 < 50 * totalCrowdCoin / 100:
                            stor25 = 4
        if stor19 >= totalCrowdCoin:
            stor18 = 1
        emit CrowdDistribute(0, msg.sender, 20000 * msg.value);
        return (20000 * msg.value)
    if 3 == stor25:
        if msg.value:
            require msg.value
            require 15000 * msg.value / msg.value == 15000
        require 15000 * msg.value
        require (15000 * msg.value) + stor19 >= stor19
        stor19 += 15000 * msg.value
        require 15000 * msg.value <= balanceOf[stor3]
        balanceOf[stor3] += -15000 * msg.value
        require (15000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += 15000 * msg.value
        if totalCrowdCoin:
            require totalCrowdCoin
            require 10 * totalCrowdCoin / totalCrowdCoin == 10
        require 10 * totalCrowdCoin == (100 * 10 * totalCrowdCoin / 100) + (10 * totalCrowdCoin % 100)
        if stor19 < 10 * totalCrowdCoin / 100:
            stor25 = 0
        else:
            if totalCrowdCoin:
                require totalCrowdCoin
                require 20 * totalCrowdCoin / totalCrowdCoin == 20
            require 20 * totalCrowdCoin == (100 * 20 * totalCrowdCoin / 100) + (20 * totalCrowdCoin % 100)
            if stor19 < 20 * totalCrowdCoin / 100:
                stor25 = 1
            else:
                if totalCrowdCoin:
                    require totalCrowdCoin
                    require 30 * totalCrowdCoin / totalCrowdCoin == 30
                require 30 * totalCrowdCoin == (100 * 30 * totalCrowdCoin / 100) + (30 * totalCrowdCoin % 100)
                if stor19 < 30 * totalCrowdCoin / 100:
                    stor25 = 2
                else:
                    if totalCrowdCoin:
                        require totalCrowdCoin
                        require 40 * totalCrowdCoin / totalCrowdCoin == 40
                    require 40 * totalCrowdCoin == (100 * 40 * totalCrowdCoin / 100) + (40 * totalCrowdCoin % 100)
                    if stor19 < 40 * totalCrowdCoin / 100:
                        stor25 = 3
                    else:
                        if totalCrowdCoin:
                            require totalCrowdCoin
                            require 50 * totalCrowdCoin / totalCrowdCoin == 50
                        require 50 * totalCrowdCoin == (100 * 50 * totalCrowdCoin / 100) + (50 * totalCrowdCoin % 100)
                        if stor19 < 50 * totalCrowdCoin / 100:
                            stor25 = 4
        if stor19 >= totalCrowdCoin:
            stor18 = 1
        emit CrowdDistribute(0, msg.sender, 15000 * msg.value);
        return (15000 * msg.value)
    require 4 == stor25
    if msg.value:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
    require 10000 * msg.value
    require (10000 * msg.value) + stor19 >= stor19
    stor19 += 10000 * msg.value
    require 10000 * msg.value <= balanceOf[stor3]
    balanceOf[stor3] += -10000 * msg.value
    require (10000 * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += 10000 * msg.value
    if totalCrowdCoin:
        require totalCrowdCoin
        require 10 * totalCrowdCoin / totalCrowdCoin == 10
    require 10 * totalCrowdCoin == (100 * 10 * totalCrowdCoin / 100) + (10 * totalCrowdCoin % 100)
    if stor19 < 10 * totalCrowdCoin / 100:
        stor25 = 0
    else:
        if totalCrowdCoin:
            require totalCrowdCoin
            require 20 * totalCrowdCoin / totalCrowdCoin == 20
        require 20 * totalCrowdCoin == (100 * 20 * totalCrowdCoin / 100) + (20 * totalCrowdCoin % 100)
        if stor19 < 20 * totalCrowdCoin / 100:
            stor25 = 1
        else:
            if totalCrowdCoin:
                require totalCrowdCoin
                require 30 * totalCrowdCoin / totalCrowdCoin == 30
            require 30 * totalCrowdCoin == (100 * 30 * totalCrowdCoin / 100) + (30 * totalCrowdCoin % 100)
            if stor19 < 30 * totalCrowdCoin / 100:
                stor25 = 2
            else:
                if totalCrowdCoin:
                    require totalCrowdCoin
                    require 40 * totalCrowdCoin / totalCrowdCoin == 40
                require 40 * totalCrowdCoin == (100 * 40 * totalCrowdCoin / 100) + (40 * totalCrowdCoin % 100)
                if stor19 < 40 * totalCrowdCoin / 100:
                    stor25 = 3
                else:
                    if totalCrowdCoin:
                        require totalCrowdCoin
                        require 50 * totalCrowdCoin / totalCrowdCoin == 50
                    require 50 * totalCrowdCoin == (100 * 50 * totalCrowdCoin / 100) + (50 * totalCrowdCoin % 100)
                    if stor19 < 50 * totalCrowdCoin / 100:
                        stor25 = 4
    if stor19 >= totalCrowdCoin:
        stor18 = 1
    emit CrowdDistribute(0, msg.sender, 10000 * msg.value);
    return (10000 * msg.value)
}



}
