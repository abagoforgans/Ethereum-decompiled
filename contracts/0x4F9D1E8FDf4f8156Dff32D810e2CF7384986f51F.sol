contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
address stor2;
address stor3;
uint256 validMCAmount;
uint256 maxNumMC;
uint256 vettingTime;
uint256 shareTimeGap;
uint256 numMC;
uint256 numMCApplied;
uint256 nextShareTime;
uint256 weiAmountShare;
mapping of struct mC;
mapping of uint256 index;
array of uint256 stor14;

function getMC(uint256 arg1) {
    return mC[arg1].field_0, mC[arg1].field_256, mC[arg1].field_512, bool(mC[arg1].field_768)
}

function numMC() {
    return numMC
}

function shareTimeGap() {
    return shareTimeGap
}

function owner() {
    return owner
}

function validMCAmount() {
    return validMCAmount
}

function vettingTime() {
    return vettingTime
}

function getIndex(address arg1) {
    return index[address(arg1)]
}

function numMCApplied() {
    return numMCApplied
}

function maxNumMC() {
    return maxNumMC
}

function nextShareTime() {
    return nextShareTime
}

function weiAmountShare() {
    return weiAmountShare
}

function numEmptyIndexes() {
    return stor14.length
}

function claimOwnership() {
    require msg.sender == stor2
    owner = stor2
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function upgradeEvilMorty(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1):
        stor3 = arg1
}

function updateMaxNumMC(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangeMaxNumMC(maxNumMC, arg1);
    maxNumMC = arg1
}

function updateVettingTime(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangeVettingTime(vettingTime, arg1);
    vettingTime = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSuperContract(address arg1) {
    if not ext_code.size(arg1):
        return 0
    if stor1[address(arg1)] != 1:
        return 0
    return 1
}

function updateShareTimeGap(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangeShareTimeGap(shareTimeGap, arg1);
    shareTimeGap = arg1
}

function updateValidMCAmount(uint256 arg1) {
    require msg.sender == owner
    emit SystemChangeValidMCAmount(validMCAmount, arg1);
    validMCAmount = arg1
}

function addContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function updateWeiAmountShare() {
    if nextShareTime < block.number:
        require numMC
        weiAmountShare = eth.balance(this.address) / numMC
        require nextShareTime <= block.number
        require shareTimeGap
        require (block.number - nextShareTime / shareTimeGap) + 1 >= block.number - nextShareTime / shareTimeGap
        if not shareTimeGap:
            require nextShareTime >= nextShareTime
        require shareTimeGap
        require shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap) / shareTimeGap == (block.number - nextShareTime / shareTimeGap) + 1
        require nextShareTime + shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap) >= nextShareTime
        nextShareTime = nextShareTime + shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap)
}

function updateMC(uint256 arg1) {
    if mC[arg1].field_0:
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args mC[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= validMCAmount:
            if not mC[arg1].field_768:
                if mC[arg1].field_256 < block.number:
                    mC[arg1].field_768 = 1
                    require numMC + 1 >= numMC
                    numMC++
                    emit MCAdded(mC[arg1].field_0);
        else:
            require 1 <= numMCApplied
            numMCApplied--
            if bool(mC[arg1].field_768) == 1:
                require 1 <= numMC
                numMC--
            stor14.length++
            stor14[stor14.length] = arg1
            emit MCRemoved(mC[arg1].field_0);
            index[stor12[arg1].field_0] = 0
            mC[arg1].field_0 = 0
            mC[arg1].field_256 = 0
            mC[arg1].field_512 = 0
            mC[arg1].field_768 = 0
}

function applyMC() payable {
    require numMCApplied < maxNumMC
    require not index[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= validMCAmount
    require numMCApplied + 1 >= numMCApplied
    numMCApplied++
    if stor14.length <= 0:
        require block.number + vettingTime >= block.number
        mC[stor9].field_0 = msg.sender
        mC[stor9].field_256 = block.number + vettingTime
        mC[stor9].field_512 = nextShareTime
        mC[stor9].field_768 = 0
        index[address(msg.sender)] = numMCApplied
    else:
        require stor14.length - 1 < stor14.length
        stor14[stor14.length] = 0
        stor14.length--
        if stor14.length > stor14.length - 1:
            idx = stor14.length - 1
            while stor14.length > idx:
                stor14[idx] = 0
                idx = idx + 1
                continue 
        require block.number + vettingTime >= block.number
        mC[stor14[stor14.length]].field_0 = msg.sender
        mC[stor14[stor14.length]].field_256 = block.number + vettingTime
        mC[stor14[stor14.length]].field_512 = nextShareTime
        mC[stor14[stor14.length]].field_768 = 0
        index[address(msg.sender)] = stor14[stor14.length]
    emit MCApplied(msg.sender);
}

function updateMCs() {
    if numMCApplied:
        idx = 0
        while idx < maxNumMC:
            mem[0] = idx
            mem[32] = 12
            if mC[idx].field_0:
                mem[100] = mC[idx].field_0
                require ext_code.size(stor3)
                call stor3.0x70a08231 with:
                     gas gas_remaining wei
                    args mC[idx].field_0
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= validMCAmount:
                    if not mC[idx].field_768:
                        if mC[idx].field_256 < block.number:
                            mC[idx].field_768 = 1
                            require numMC + 1 >= numMC
                            numMC++
                            mem[96] = mC[idx].field_0
                            emit MCAdded(mC[idx].field_0);
                else:
                    require 1 <= numMCApplied
                    numMCApplied--
                    if bool(mC[idx].field_768) == 1:
                        require 1 <= numMC
                        numMC--
                    stor14.length++
                    stor14[stor14.length] = idx
                    mem[96] = mC[idx].field_0
                    emit MCRemoved(mC[idx].field_0);
                    index[stor12[idx].field_0] = 0
                    mem[0] = idx
                    mem[32] = 12
                    mC[idx].field_0 = 0
                    mC[idx].field_256 = 0
                    mC[idx].field_512 = 0
                    mC[idx].field_768 = 0
            idx = idx + 1
            continue 
}

function claimShare(uint256 arg1) {
    if numMCApplied:
        idx = 0
        while idx < maxNumMC:
            mem[0] = idx
            mem[32] = 12
            if mC[idx].field_0:
                mem[100] = mC[idx].field_0
                require ext_code.size(stor3)
                call stor3.0x70a08231 with:
                     gas gas_remaining wei
                    args mC[idx].field_0
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= validMCAmount:
                    if not mC[idx].field_768:
                        if mC[idx].field_256 < block.number:
                            mC[idx].field_768 = 1
                            require numMC + 1 >= numMC
                            numMC++
                            mem[96] = mC[idx].field_0
                            emit MCAdded(mC[idx].field_0);
                else:
                    require 1 <= numMCApplied
                    numMCApplied--
                    if bool(mC[idx].field_768) == 1:
                        require 1 <= numMC
                        numMC--
                    stor14.length++
                    stor14[stor14.length] = idx
                    mem[96] = mC[idx].field_0
                    emit MCRemoved(mC[idx].field_0);
                    index[stor12[idx].field_0] = 0
                    mem[0] = idx
                    mem[32] = 12
                    mC[idx].field_0 = 0
                    mC[idx].field_256 = 0
                    mC[idx].field_512 = 0
                    mC[idx].field_768 = 0
            idx = idx + 1
            continue 
    if mC[arg1].field_0:
        if mC[arg1].field_768:
            if mC[arg1].field_512 < block.number:
                if nextShareTime < block.number:
                    require numMC
                    weiAmountShare = eth.balance(this.address) / numMC
                    require nextShareTime <= block.number
                    require shareTimeGap
                    require (block.number - nextShareTime / shareTimeGap) + 1 >= block.number - nextShareTime / shareTimeGap
                    if not shareTimeGap:
                        require nextShareTime >= nextShareTime
                    else:
                        require shareTimeGap
                        require shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap) / shareTimeGap == (block.number - nextShareTime / shareTimeGap) + 1
                        require nextShareTime + shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap) >= nextShareTime
                        nextShareTime = nextShareTime + shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap)
                mC[arg1].field_512 = nextShareTime
                call mC[arg1].field_0 with:
                   value weiAmountShare wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit ShareSent(weiAmountShare, mC[arg1].field_0);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == stor3
    if arg1 != owner:
        if numMCApplied:
            idx = 0
            while idx < maxNumMC:
                mem[0] = idx
                mem[32] = 12
                if mC[idx].field_0:
                    mem[ceil32(arg3.length) + 132] = mC[idx].field_0
                    require ext_code.size(stor3)
                    call stor3.0x70a08231 with:
                         gas gas_remaining wei
                        args mC[idx].field_0
                    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= validMCAmount:
                        if not mC[idx].field_768:
                            if mC[idx].field_256 < block.number:
                                mC[idx].field_768 = 1
                                require numMC + 1 >= numMC
                                numMC++
                                mem[ceil32(arg3.length) + 128] = mC[idx].field_0
                                emit MCAdded(mC[idx].field_0);
                    else:
                        require 1 <= numMCApplied
                        numMCApplied--
                        if bool(mC[idx].field_768) == 1:
                            require 1 <= numMC
                            numMC--
                        stor14.length++
                        stor14[stor14.length] = idx
                        mem[ceil32(arg3.length) + 128] = mC[idx].field_0
                        emit MCRemoved(mC[idx].field_0);
                        index[stor12[idx].field_0] = 0
                        mem[0] = idx
                        mem[32] = 12
                        mC[idx].field_0 = 0
                        mC[idx].field_256 = 0
                        mC[idx].field_512 = 0
                        mC[idx].field_768 = 0
                idx = idx + 1
                continue 
        if mC[stor13[address(arg1)]].field_0:
            if mC[stor13[address(arg1)]].field_768:
                if mC[stor13[address(arg1)]].field_512 < block.number:
                    if nextShareTime < block.number:
                        require numMC
                        weiAmountShare = eth.balance(this.address) / numMC
                        require nextShareTime <= block.number
                        require shareTimeGap
                        require (block.number - nextShareTime / shareTimeGap) + 1 >= block.number - nextShareTime / shareTimeGap
                        if not shareTimeGap:
                            require nextShareTime >= nextShareTime
                        else:
                            require shareTimeGap
                            require shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap) / shareTimeGap == (block.number - nextShareTime / shareTimeGap) + 1
                            require nextShareTime + shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap) >= nextShareTime
                            nextShareTime = nextShareTime + shareTimeGap + (block.number - nextShareTime / shareTimeGap * shareTimeGap)
                    mC[stor13[address(arg1)]].field_512 = nextShareTime
                    call mC[stor13[address(arg1)]].field_0 with:
                       value weiAmountShare wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit ShareSent(weiAmountShare, mC[stor13[address(arg1)]].field_0);
}

function _fallback() payable {
    if owner != msg.sender:
        if not ext_code.size(msg.sender):
            require numMCApplied < maxNumMC
            require not index[address(msg.sender)]
            require ext_code.size(stor3)
            call stor3.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= validMCAmount
            require numMCApplied + 1 >= numMCApplied
            numMCApplied++
            if stor14.length <= 0:
                require block.number + vettingTime >= block.number
                mC[stor9].field_0 = msg.sender
                mC[stor9].field_256 = block.number + vettingTime
                mC[stor9].field_512 = nextShareTime
                mC[stor9].field_768 = 0
                index[address(msg.sender)] = numMCApplied
            else:
                require stor14.length - 1 < stor14.length
                stor14[stor14.length] = 0
                stor14.length--
                if stor14.length > stor14.length - 1:
                    idx = stor14.length - 1
                    while stor14.length > idx:
                        stor14[idx] = 0
                        idx = idx + 1
                        continue 
                require block.number + vettingTime >= block.number
                mC[stor14[stor14.length]].field_0 = msg.sender
                mC[stor14[stor14.length]].field_256 = block.number + vettingTime
                mC[stor14[stor14.length]].field_512 = nextShareTime
                mC[stor14[stor14.length]].field_768 = 0
                index[address(msg.sender)] = stor14[stor14.length]
            emit MCApplied(msg.sender);
        else:
            if stor1[address(msg.sender)] != 1:
                require numMCApplied < maxNumMC
                require not index[address(msg.sender)]
                require ext_code.size(stor3)
                call stor3.0x70a08231 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= validMCAmount
                require numMCApplied + 1 >= numMCApplied
                numMCApplied++
                if stor14.length <= 0:
                    require block.number + vettingTime >= block.number
                    mC[stor9].field_0 = msg.sender
                    mC[stor9].field_256 = block.number + vettingTime
                    mC[stor9].field_512 = nextShareTime
                    mC[stor9].field_768 = 0
                    index[address(msg.sender)] = numMCApplied
                else:
                    require stor14.length - 1 < stor14.length
                    stor14[stor14.length] = 0
                    stor14.length--
                    if stor14.length > stor14.length - 1:
                        idx = stor14.length - 1
                        while stor14.length > idx:
                            stor14[idx] = 0
                            idx = idx + 1
                            continue 
                    require block.number + vettingTime >= block.number
                    mC[stor14[stor14.length]].field_0 = msg.sender
                    mC[stor14[stor14.length]].field_256 = block.number + vettingTime
                    mC[stor14[stor14.length]].field_512 = nextShareTime
                    mC[stor14[stor14.length]].field_768 = 0
                    index[address(msg.sender)] = stor14[stor14.length]
                emit MCApplied(msg.sender);
}



}
