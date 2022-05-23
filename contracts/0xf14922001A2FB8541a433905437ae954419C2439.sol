contract main {




// =====================  Runtime code  =====================


const name = 'Inmediate'

const decimals = 8

const symbol = 'DIT'


address owner;
address potentialOwner;
mapping of uint256 balanceOf;
mapping of uint256 stor3;
uint256 totalSupply;
address burnerAddress;
uint256 creationTime;
address investorsAllocationAddress;
uint256 investorsTotal;
address teamAllocationAddress;
uint256 teamTotal;
uint256 teamPeriodAmount;
uint256 teamCliff;
uint256 teamUnlockedAfterCliff;
uint256 teamPeriodLength;
uint8 teamPeriodsNumber;
address stor15;
address advisorsAllocationAddress; offset 8
uint256 advisorsTotal;
uint256 advisorsPeriodAmount;
uint256 advisorsCliff;
uint256 advisorsUnlockedAfterCliff;
uint256 advisorsPeriodLength;
uint8 advisorsPeriodsNumber;
address stor21;
address bountyAllocationAddress; offset 8
uint256 bountyTotal;
address liquidityPoolAllocationAddress;
uint256 liquidityPoolTotal;
address contributorsAllocationAddress;
uint256 contributorsTotal;

function teamUnlockedAfterCliff() {
    return teamUnlockedAfterCliff
}

function teamTotal() {
    return teamTotal
}

function advisorsTotal() {
    return advisorsTotal
}

function totalSupply() {
    return totalSupply
}

function contributorsAllocation() {
    return contributorsAllocationAddress
}

function investorsTotal() {
    return investorsTotal
}

function burner() {
    return burnerAddress
}

function teamCliff() {
    return teamCliff
}

function liquidityPoolTotal() {
    return liquidityPoolTotal
}

function investorsAllocation() {
    return investorsAllocationAddress
}

function bountyTotal() {
    return bountyTotal
}

function contributorsTotal() {
    return contributorsTotal
}

function teamAllocation() {
    return teamAllocationAddress
}

function advisorsCliff() {
    return advisorsCliff
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function teamPeriodAmount() {
    return teamPeriodAmount
}

function potentialOwner() {
    return potentialOwner
}

function owner() {
    return owner
}

function teamPeriodsNumber() {
    return teamPeriodsNumber
}

function advisorsPeriodLength() {
    return advisorsPeriodLength
}

function teamPeriodLength() {
    return teamPeriodLength
}

function advisorsPeriodAmount() {
    return advisorsPeriodAmount
}

function creationTime() {
    return creationTime
}

function advisorsUnlockedAfterCliff() {
    return advisorsUnlockedAfterCliff
}

function liquidityPoolAllocation() {
    return liquidityPoolAllocationAddress
}

function advisorsPeriodsNumber() {
    return advisorsPeriodsNumber
}

function bountyAllocation() {
    return bountyAllocationAddress
}

function advisorsAllocation() {
    return advisorsAllocationAddress
}

function _fallback() payable {
    revert
}

function setBurner(address arg1) {
    require msg.sender == owner
    burnerAddress = arg1
    emit NewBurner(arg1);
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit NewPotentialOwner(owner, arg1);
    potentialOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    stor3[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + stor3[msg.sender][address(arg1)] >= stor3[msg.sender][address(arg1)]
    stor3[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + stor3[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == burnerAddress
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= stor3[msg.sender][address(arg1)]:
        stor3[msg.sender][address(arg1)] -= arg2
    else:
        stor3[msg.sender][address(arg1)] = 0
    emit Approval(stor3[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawBountyTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor3[stor21][msg.sender]
    require arg2 <= stor3[stor21][msg.sender]
    stor3[stor21][msg.sender] -= arg2
    require arg2 <= balanceOf[stor21]
    require arg1
    require arg2 <= balanceOf[stor21]
    balanceOf[stor21] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, bountyAllocationAddress, arg1);
}

function distributeInvestorsTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor3[stor7][msg.sender]
    require arg2 <= stor3[stor7][msg.sender]
    stor3[stor7][msg.sender] -= arg2
    require arg2 <= balanceOf[stor7]
    require arg1
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, investorsAllocationAddress, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= stor3[address(arg1)][msg.sender]
    require arg3 <= stor3[address(arg1)][msg.sender]
    stor3[address(arg1)][msg.sender] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawContributorsTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor3[stor25][msg.sender]
    require arg2 <= stor3[stor25][msg.sender]
    stor3[stor25][msg.sender] -= arg2
    require arg2 <= balanceOf[stor25]
    require arg1
    require arg2 <= balanceOf[stor25]
    balanceOf[stor25] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, contributorsAllocationAddress, arg1);
}

function withdrawLiquidityPoolTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor3[stor23][msg.sender]
    require arg2 <= stor3[stor23][msg.sender]
    stor3[stor23][msg.sender] -= arg2
    require arg2 <= balanceOf[stor23]
    require arg1
    require arg2 <= balanceOf[stor23]
    balanceOf[stor23] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, liquidityPoolAllocationAddress, arg1);
}

function confirmOwnership() {
    require msg.sender == potentialOwner
    stor3[stor7][stor0] = 0
    stor3[stor7][msg.sender] = balanceOf[stor7]
    stor3[stor9][stor0] = 0
    stor3[stor15][stor0] = 0
    stor3[stor21][stor0] = 0
    stor3[stor23][stor0] = 0
    stor3[stor25][stor0] = 0
    stor3[stor21][msg.sender] = balanceOf[stor21]
    stor3[stor23][msg.sender] = balanceOf[stor23]
    stor3[stor25][msg.sender] = balanceOf[stor25]
    emit NewOwner(owner, potentialOwner);
    owner = potentialOwner
    potentialOwner = 0
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] == arg3 + ext_call.return_data[0]
    return 1
}

function withdrawTeamTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    if owner != msg.sender:
        stor3[stor9][msg.sender] = stor3[stor9][address(msg.sender)]
    else:
        if teamAllocationAddress == teamAllocationAddress:
            require teamCliff + creationTime >= creationTime
            if block.timestamp < teamCliff + creationTime:
                if balanceOf[stor9] >= teamTotal:
                    stor3[stor9][msg.sender] = 0
                else:
                    require balanceOf[stor9] <= teamTotal
                    require teamTotal - balanceOf[stor9] <= 0
                    stor3[stor9][msg.sender] = -teamTotal + balanceOf[stor9]
            else:
                require teamCliff + creationTime >= creationTime
                require teamCliff + creationTime <= block.timestamp
                require teamPeriodLength
                if block.timestamp - teamCliff - creationTime / teamPeriodLength > teamPeriodsNumber:
                    if not teamPeriodsNumber:
                        require teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
                    else:
                        require teamPeriodAmount * teamPeriodsNumber / teamPeriodsNumber == teamPeriodAmount
                        require (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
                else:
                    if not block.timestamp - teamCliff - creationTime / teamPeriodLength:
                        require teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
                    else:
                        require teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength / block.timestamp - teamCliff - creationTime / teamPeriodLength == teamPeriodAmount
                        require (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff
                            stor3[stor9][msg.sender] = (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
        else:
            if advisorsAllocationAddress != teamAllocationAddress:
                stor3[stor9][msg.sender] = stor3[stor9][address(msg.sender)]
            else:
                require advisorsCliff + creationTime >= creationTime
                if block.timestamp < advisorsCliff + creationTime:
                    if balanceOf[stor15] >= advisorsTotal:
                        stor3[stor9][msg.sender] = 0
                    else:
                        require balanceOf[stor15] <= advisorsTotal
                        require advisorsTotal - balanceOf[stor15] <= 0
                        stor3[stor9][msg.sender] = -advisorsTotal + balanceOf[stor15]
                else:
                    require advisorsCliff + creationTime >= creationTime
                    require advisorsCliff + creationTime <= block.timestamp
                    require advisorsPeriodLength
                    if block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength > advisorsPeriodsNumber:
                        if not advisorsPeriodsNumber:
                            require advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
                        else:
                            require advisorsPeriodAmount * advisorsPeriodsNumber / advisorsPeriodsNumber == advisorsPeriodAmount
                            require (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
                    else:
                        if not block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength:
                            require advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
                        else:
                            require advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength / block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength == advisorsPeriodAmount
                            require (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff
                                stor3[stor9][msg.sender] = (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
    require arg2 <= stor3[stor9][msg.sender]
    require arg2 <= stor3[stor9][msg.sender]
    stor3[stor9][msg.sender] -= arg2
    require arg2 <= balanceOf[stor9]
    require arg1
    require arg2 <= balanceOf[stor9]
    balanceOf[stor9] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, teamAllocationAddress, arg1);
}

function withdrawAdvisorsTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    if owner != msg.sender:
        stor3[stor15][msg.sender] = stor3[stor15][address(msg.sender)]
    else:
        if teamAllocationAddress == advisorsAllocationAddress:
            require teamCliff + creationTime >= creationTime
            if block.timestamp < teamCliff + creationTime:
                if balanceOf[stor9] >= teamTotal:
                    stor3[stor15][msg.sender] = 0
                else:
                    require balanceOf[stor9] <= teamTotal
                    require teamTotal - balanceOf[stor9] <= 0
                    stor3[stor15][msg.sender] = -teamTotal + balanceOf[stor9]
            else:
                require teamCliff + creationTime >= creationTime
                require teamCliff + creationTime <= block.timestamp
                require teamPeriodLength
                if block.timestamp - teamCliff - creationTime / teamPeriodLength > teamPeriodsNumber:
                    if not teamPeriodsNumber:
                        require teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
                    else:
                        require teamPeriodAmount * teamPeriodsNumber / teamPeriodsNumber == teamPeriodAmount
                        require (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
                else:
                    if not block.timestamp - teamCliff - creationTime / teamPeriodLength:
                        require teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
                    else:
                        require teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength / block.timestamp - teamCliff - creationTime / teamPeriodLength == teamPeriodAmount
                        require (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff >= teamUnlockedAfterCliff
                        if balanceOf[stor9] >= teamTotal:
                            require 0 <= (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff
                        else:
                            require balanceOf[stor9] <= teamTotal
                            require teamTotal - balanceOf[stor9] <= (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff
                            stor3[stor15][msg.sender] = (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff - teamTotal + balanceOf[stor9]
        else:
            if advisorsAllocationAddress != advisorsAllocationAddress:
                stor3[stor15][msg.sender] = stor3[stor15][address(msg.sender)]
            else:
                require advisorsCliff + creationTime >= creationTime
                if block.timestamp < advisorsCliff + creationTime:
                    if balanceOf[stor15] >= advisorsTotal:
                        stor3[stor15][msg.sender] = 0
                    else:
                        require balanceOf[stor15] <= advisorsTotal
                        require advisorsTotal - balanceOf[stor15] <= 0
                        stor3[stor15][msg.sender] = -advisorsTotal + balanceOf[stor15]
                else:
                    require advisorsCliff + creationTime >= creationTime
                    require advisorsCliff + creationTime <= block.timestamp
                    require advisorsPeriodLength
                    if block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength > advisorsPeriodsNumber:
                        if not advisorsPeriodsNumber:
                            require advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
                        else:
                            require advisorsPeriodAmount * advisorsPeriodsNumber / advisorsPeriodsNumber == advisorsPeriodAmount
                            require (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
                    else:
                        if not block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength:
                            require advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
                        else:
                            require advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength / block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength == advisorsPeriodAmount
                            require (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff
                            if balanceOf[stor15] >= advisorsTotal:
                                require 0 <= (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff
                            else:
                                require balanceOf[stor15] <= advisorsTotal
                                require advisorsTotal - balanceOf[stor15] <= (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff
                                stor3[stor15][msg.sender] = (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15]
    require arg2 <= stor3[stor15][msg.sender]
    require arg2 <= stor3[stor15][msg.sender]
    stor3[stor15][msg.sender] -= arg2
    require arg2 <= balanceOf[stor15]
    require arg1
    require arg2 <= balanceOf[stor15]
    balanceOf[stor15] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, advisorsAllocationAddress, arg1);
}

function allowance(address arg1, address arg2) {
    if owner != arg2:
        return stor3[address(arg1)][address(arg2)]
    if teamAllocationAddress == arg1:
        if teamCliff + creationTime >= creationTime:
            if block.timestamp < teamCliff + creationTime:
                if balanceOf[stor9] >= teamTotal:
                    return 0
                if balanceOf[stor9] <= teamTotal:
                    if teamTotal - balanceOf[stor9] <= 0:
                        return (-teamTotal + balanceOf[stor9])
            else:
                if teamCliff + creationTime >= creationTime:
                    if teamCliff + creationTime <= block.timestamp:
                        if teamPeriodLength:
                            if block.timestamp - teamCliff - creationTime / teamPeriodLength > teamPeriodsNumber:
                                if not teamPeriodsNumber:
                                    if teamUnlockedAfterCliff >= teamUnlockedAfterCliff:
                                        if balanceOf[stor9] >= teamTotal:
                                            if 0 <= teamUnlockedAfterCliff:
                                                return teamUnlockedAfterCliff
                                        else:
                                            if balanceOf[stor9] <= teamTotal:
                                                if teamTotal - balanceOf[stor9] <= teamUnlockedAfterCliff:
                                                    return (teamUnlockedAfterCliff - teamTotal + balanceOf[stor9])
                                else:
                                    if teamPeriodAmount * teamPeriodsNumber / teamPeriodsNumber == teamPeriodAmount:
                                        if (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff >= teamUnlockedAfterCliff:
                                            if balanceOf[stor9] >= teamTotal:
                                                if 0 <= (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff:
                                                    return ((teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff)
                                            else:
                                                if balanceOf[stor9] <= teamTotal:
                                                    if teamTotal - balanceOf[stor9] <= (teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff:
                                                        return ((teamPeriodAmount * teamPeriodsNumber) + teamUnlockedAfterCliff - teamTotal + balanceOf[stor9])
                            else:
                                if not block.timestamp - teamCliff - creationTime / teamPeriodLength:
                                    if teamUnlockedAfterCliff >= teamUnlockedAfterCliff:
                                        if balanceOf[stor9] >= teamTotal:
                                            if 0 <= teamUnlockedAfterCliff:
                                                return teamUnlockedAfterCliff
                                        else:
                                            if balanceOf[stor9] <= teamTotal:
                                                if teamTotal - balanceOf[stor9] <= teamUnlockedAfterCliff:
                                                    return (teamUnlockedAfterCliff - teamTotal + balanceOf[stor9])
                                else:
                                    if teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength / block.timestamp - teamCliff - creationTime / teamPeriodLength == teamPeriodAmount:
                                        if (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff >= teamUnlockedAfterCliff:
                                            if balanceOf[stor9] >= teamTotal:
                                                if 0 <= (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff:
                                                    return ((teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff)
                                            else:
                                                if balanceOf[stor9] <= teamTotal:
                                                    if teamTotal - balanceOf[stor9] <= (teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff:
                                                        return ((teamPeriodAmount * block.timestamp - teamCliff - creationTime / teamPeriodLength) + teamUnlockedAfterCliff - teamTotal + balanceOf[stor9])
    else:
        if advisorsAllocationAddress != arg1:
            return stor3[address(arg1)][address(arg2)]
        if advisorsCliff + creationTime >= creationTime:
            if block.timestamp < advisorsCliff + creationTime:
                if balanceOf[stor15] >= advisorsTotal:
                    return 0
                if balanceOf[stor15] <= advisorsTotal:
                    if advisorsTotal - balanceOf[stor15] <= 0:
                        return (-advisorsTotal + balanceOf[stor15])
            else:
                if advisorsCliff + creationTime >= creationTime:
                    if advisorsCliff + creationTime <= block.timestamp:
                        if advisorsPeriodLength:
                            if block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength > advisorsPeriodsNumber:
                                if not advisorsPeriodsNumber:
                                    if advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff:
                                        if balanceOf[stor15] >= advisorsTotal:
                                            if 0 <= advisorsUnlockedAfterCliff:
                                                return advisorsUnlockedAfterCliff
                                        else:
                                            if balanceOf[stor15] <= advisorsTotal:
                                                if advisorsTotal - balanceOf[stor15] <= advisorsUnlockedAfterCliff:
                                                    return (advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15])
                                else:
                                    if advisorsPeriodAmount * advisorsPeriodsNumber / advisorsPeriodsNumber == advisorsPeriodAmount:
                                        if (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff:
                                            if balanceOf[stor15] >= advisorsTotal:
                                                if 0 <= (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff:
                                                    return ((advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff)
                                            else:
                                                if balanceOf[stor15] <= advisorsTotal:
                                                    if advisorsTotal - balanceOf[stor15] <= (advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff:
                                                        return ((advisorsPeriodAmount * advisorsPeriodsNumber) + advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15])
                            else:
                                if not block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength:
                                    if advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff:
                                        if balanceOf[stor15] >= advisorsTotal:
                                            if 0 <= advisorsUnlockedAfterCliff:
                                                return advisorsUnlockedAfterCliff
                                        else:
                                            if balanceOf[stor15] <= advisorsTotal:
                                                if advisorsTotal - balanceOf[stor15] <= advisorsUnlockedAfterCliff:
                                                    return (advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15])
                                else:
                                    if advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength / block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength == advisorsPeriodAmount:
                                        if (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff >= advisorsUnlockedAfterCliff:
                                            if balanceOf[stor15] >= advisorsTotal:
                                                if 0 <= (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff:
                                                    return ((advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff)
                                            else:
                                                if balanceOf[stor15] <= advisorsTotal:
                                                    if advisorsTotal - balanceOf[stor15] <= (advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff:
                                                        return ((advisorsPeriodAmount * block.timestamp - advisorsCliff - creationTime / advisorsPeriodLength) + advisorsUnlockedAfterCliff - advisorsTotal + balanceOf[stor15])
    revert
}



}
