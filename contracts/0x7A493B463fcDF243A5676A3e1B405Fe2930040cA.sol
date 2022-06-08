contract main {




// =====================  Runtime code  =====================


const name = 'SterlingSovereign'

const totalIco = 35 * 10^17

const decimals = 8

const totalAirdrop = 25 * 10^16

const totalPresale = 5 * 10^17

const sub_6cd4be7f(?) = 25 * 10^16

const totalTeam = 5 * 10^17

const symbol = 'STSO'

const minContribution = 10^16

const sub_c2161870(?) = 3 * 10^18

const totalDeveloper = 5 * 10^17


address owner;
address newOwner;
address stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor6;
uint256 totalDistributed;
uint256 totalIcoDistributed;
uint256 tokensPerEth;
uint256 totalIcoDist;
address stor12;
address stor13;
uint256 presaleStartTime;
uint256 presalePerEth;
uint256 sub_041035dc;
uint256 icoStartTime;
uint256 icoPerEth;
uint256 sub_4caa23ab;
uint256 ico1StartTime;
uint256 ico1PerEth;
uint256 sub_a2f9deab;
uint256 ico2StartTime;
uint256 ico2PerEth;
uint256 sub_7744b800;
uint256 icoOpenTime;
uint256 icoEndTime;
uint8 icoOpen;
uint8 icoFinished; offset 8
uint8 distributionFinished; offset 16
uint256 stor32; offset 16
uint256 stor32; offset 8
uint256 tTokenPerEth;
uint256 tAmount;
uint256 stor35;

function ico1StartTime() {
    return ico1StartTime
}

function sub_041035dc(?) {
    return sub_041035dc
}

function totalIcoDist() {
    return totalIcoDist
}

function icoFinished() {
    return bool(icoFinished)
}

function ico1PerEth() {
    return ico1PerEth
}

function sub_4caa23ab(?) {
    return sub_4caa23ab
}

function icoOpenTime() {
    return icoOpenTime
}

function icoPerEth() {
    return icoPerEth
}

function ico2PerEth() {
    return ico2PerEth
}

function presalePerEth() {
    return presalePerEth
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7744b800(?) {
    return sub_7744b800
}

function icoEndTime() {
    return icoEndTime
}

function owner() {
    return owner
}

function icoOpen() {
    return bool(icoOpen)
}

function sub_a2f9deab(?) {
    return sub_a2f9deab
}

function totalIcoDistributed() {
    return totalIcoDistributed
}

function icoStartTime() {
    return icoStartTime
}

function presaleStartTime() {
    return presaleStartTime
}

function tTokenPerEth() {
    return tTokenPerEth
}

function ico2StartTime() {
    return ico2StartTime
}

function distributionFinished() {
    return bool(distributionFinished)
}

function tokensPerEth() {
    return tokensPerEth
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tAmount() {
    return tAmount
}

function totalDistributed() {
    return totalDistributed
}

function totalSupply() {
    return (stor6 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == owner
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function dist_multiple_airdrop(address[] arg1, uint256 arg2) {
    require msg.sender == owner
    tAmount = 0
    stor35 = 0
    # nil
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function startDistribution() {
    require msg.sender == owner
    require not distributionFinished
    icoOpen = 1
    presaleStartTime = block.timestamp
    icoOpenTime = block.timestamp
    return 1
}

function finishDistribution() {
    require msg.sender == owner
    require not distributionFinished
    Mask(240, 0, stor32.field_16) = 1
    Mask(248, 0, stor32.field_8) = 1
    emit DistrFinished()
    return 1
}

function send(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] >= arg2:
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}

function withdraw() {
    require msg.sender == owner
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require arg1 <= stor6
    stor6 -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, stor3);
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function dist_developer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[stor13]
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[stor13]
    balanceOf[stor13] -= arg2
    emit Distr(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    tAmount = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function dist_airdrop(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[stor12]
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[stor12]
    balanceOf[stor12] -= arg2
    emit Airdrop(arg2, balanceOf[address(arg1)], arg1);
    emit Transfer(arg2, 0, arg1);
}

function dist_privateSale(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[stor3]
    require arg2 > 0
    require totalDistributed + arg2 >= totalDistributed
    totalDistributed += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[stor3]
    balanceOf[stor3] -= arg2
    emit Distr(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    tAmount = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawAltcoinTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokens() payable {
    require not distributionFinished
    require msg.value >= 10^16
    require msg.value > 0
    if not tokensPerEth:
        if bool(icoFinished) == 1:
            revert with 0, 'ICO Has Finished'
        if balanceOf[stor3] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Token Balance or Sold Out.'
    else:
        require tokensPerEth
        require tokensPerEth * msg.value / tokensPerEth == msg.value
        if bool(icoFinished) == 1:
            revert with 0, 'ICO Has Finished'
        if balanceOf[stor3] < tokensPerEth * msg.value / 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Token Balance or Sold Out.'
        require tokensPerEth * msg.value / 10^18 >= 0
        totalIcoDistributed += tokensPerEth * msg.value / 10^18
        if tokensPerEth * msg.value / 10^18 > 0:
            require not distributionFinished
            require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
            totalDistributed += tokensPerEth * msg.value / 10^18
            require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
            require tokensPerEth * msg.value / 10^18 <= balanceOf[stor3]
            balanceOf[stor3] -= tokensPerEth * msg.value / 10^18
            emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
            emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
    if totalIcoDistributed >= 35 * 10^17:
        Mask(240, 0, stor32.field_16) = 1
}

function _fallback() payable {
    if stor3 != msg.sender:
        if block.timestamp < icoOpenTime:
            revert with 0, 'ICO does not open yet'
        if block.timestamp <= icoEndTime:
            icoOpen = 1
        else:
            icoOpen = 0
            Mask(248, 0, stor32.field_8) = 1
            Mask(240, 0, stor32.field_16) = 1
        if bool(icoFinished) == 1:
            revert with 0, 'ICO has finished'
        if bool(distributionFinished) == 1:
            revert with 0, 'Token distribution has finished'
        if bool(icoOpen) == 1:
            if block.timestamp < presaleStartTime:
                if block.timestamp < icoStartTime:
                    if block.timestamp < ico1StartTime:
                        if block.timestamp >= ico2StartTime:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
                    else:
                        if block.timestamp < ico2StartTime:
                            tTokenPerEth = ico1PerEth
                        else:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
                else:
                    if block.timestamp >= ico1StartTime:
                        if block.timestamp < ico2StartTime:
                            tTokenPerEth = ico1PerEth
                        else:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
                    else:
                        tTokenPerEth = icoPerEth
                        if block.timestamp >= ico2StartTime:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
            else:
                if block.timestamp >= icoStartTime:
                    if block.timestamp >= ico1StartTime:
                        if block.timestamp < ico2StartTime:
                            tTokenPerEth = ico1PerEth
                        else:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
                    else:
                        tTokenPerEth = icoPerEth
                        if block.timestamp >= ico2StartTime:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
                else:
                    tTokenPerEth = presalePerEth
                    if block.timestamp < ico1StartTime:
                        if block.timestamp >= ico2StartTime:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
                    else:
                        if block.timestamp < ico2StartTime:
                            tTokenPerEth = ico1PerEth
                        else:
                            if block.timestamp < icoEndTime:
                                tTokenPerEth = ico2PerEth
            tokensPerEth = tTokenPerEth
            require not distributionFinished
            require msg.value >= 10^16
            require msg.value > 0
            if not tokensPerEth:
                if bool(icoFinished) == 1:
                    revert with 0, 'ICO Has Finished'
                if balanceOf[stor3] < 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Token Balance or Sold Out.'
            else:
                require tokensPerEth
                require tokensPerEth * msg.value / tokensPerEth == msg.value
                if bool(icoFinished) == 1:
                    revert with 0, 'ICO Has Finished'
                if balanceOf[stor3] < tokensPerEth * msg.value / 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Token Balance or Sold Out.'
                require tokensPerEth * msg.value / 10^18 >= 0
                totalIcoDistributed += tokensPerEth * msg.value / 10^18
                if tokensPerEth * msg.value / 10^18 > 0:
                    require not distributionFinished
                    require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                    totalDistributed += tokensPerEth * msg.value / 10^18
                    require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                    require tokensPerEth * msg.value / 10^18 <= balanceOf[stor3]
                    balanceOf[stor3] -= tokensPerEth * msg.value / 10^18
                    emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                    emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
            if totalIcoDistributed >= 35 * 10^17:
                Mask(240, 0, stor32.field_16) = 1
    else:
        if not msg.value:
            require msg.sender == owner
            call stor3 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor3 != msg.sender:
            if block.timestamp < icoOpenTime:
                revert with 0, 'ICO does not open yet'
            if block.timestamp <= icoEndTime:
                icoOpen = 1
            else:
                icoOpen = 0
                Mask(248, 0, stor32.field_8) = 1
                Mask(240, 0, stor32.field_16) = 1
            if bool(icoFinished) == 1:
                revert with 0, 'ICO has finished'
            if bool(distributionFinished) == 1:
                revert with 0, 'Token distribution has finished'
            if bool(icoOpen) == 1:
                if block.timestamp < presaleStartTime:
                    if block.timestamp < icoStartTime:
                        if block.timestamp < ico1StartTime:
                            if block.timestamp >= ico2StartTime:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                        else:
                            if block.timestamp < ico2StartTime:
                                tTokenPerEth = ico1PerEth
                            else:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                    else:
                        if block.timestamp >= ico1StartTime:
                            if block.timestamp < ico2StartTime:
                                tTokenPerEth = ico1PerEth
                            else:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                        else:
                            tTokenPerEth = icoPerEth
                            if block.timestamp >= ico2StartTime:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                else:
                    if block.timestamp >= icoStartTime:
                        if block.timestamp >= ico1StartTime:
                            if block.timestamp < ico2StartTime:
                                tTokenPerEth = ico1PerEth
                            else:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                        else:
                            tTokenPerEth = icoPerEth
                            if block.timestamp >= ico2StartTime:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                    else:
                        tTokenPerEth = presalePerEth
                        if block.timestamp < ico1StartTime:
                            if block.timestamp >= ico2StartTime:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                        else:
                            if block.timestamp < ico2StartTime:
                                tTokenPerEth = ico1PerEth
                            else:
                                if block.timestamp < icoEndTime:
                                    tTokenPerEth = ico2PerEth
                tokensPerEth = tTokenPerEth
                require not distributionFinished
                require msg.value >= 10^16
                require msg.value > 0
                if not tokensPerEth:
                    if bool(icoFinished) == 1:
                        revert with 0, 'ICO Has Finished'
                    if balanceOf[stor3] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Token Balance or Sold Out.'
                else:
                    require tokensPerEth
                    require tokensPerEth * msg.value / tokensPerEth == msg.value
                    if bool(icoFinished) == 1:
                        revert with 0, 'ICO Has Finished'
                    if balanceOf[stor3] < tokensPerEth * msg.value / 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Token Balance or Sold Out.'
                    require tokensPerEth * msg.value / 10^18 >= 0
                    totalIcoDistributed += tokensPerEth * msg.value / 10^18
                    if tokensPerEth * msg.value / 10^18 > 0:
                        require not distributionFinished
                        require totalDistributed + (tokensPerEth * msg.value / 10^18) >= totalDistributed
                        totalDistributed += tokensPerEth * msg.value / 10^18
                        require balanceOf[address(msg.sender)] + (tokensPerEth * msg.value / 10^18) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += tokensPerEth * msg.value / 10^18
                        require tokensPerEth * msg.value / 10^18 <= balanceOf[stor3]
                        balanceOf[stor3] -= tokensPerEth * msg.value / 10^18
                        emit Distr((tokensPerEth * msg.value / 10^18), msg.sender);
                        emit Transfer((tokensPerEth * msg.value / 10^18), 0, msg.sender);
                if totalIcoDistributed >= 35 * 10^17:
                    Mask(240, 0, stor32.field_16) = 1
}



}
