contract main {




// =====================  Runtime code  =====================


const getNowTime = block.timestamp


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address newOwner;
uint256 getLengthofList;
mapping of uint8 stor3;
mapping of address indexlist;
mapping of uint256 reverseWhitelist;
uint256 weiRaised;
uint256 personalMincap;
uint256 personalMaxcap;
uint64 stor9;
uint256 stor9; offset 64
uint256 startTime;
uint64 stor10;
uint256 stor10; offset 64
uint256 endTime;
uint256 exchangeRate;
uint256 remainToken;
uint8 stor13;
uint256 mtStartTime;
uint256 mtEndTime;
address sub_ee29b454Address;
mapping of uint256 beneficiaryFunded;
mapping of uint256 beneficiaryBought;

function reverseWhitelist(address arg1) {
    return reverseWhitelist[arg1]
}

function count() {
    return getLengthofList
}

function personalMaxcap() {
    return personalMaxcap
}

function GetWhitelist(uint256 arg1) {
    return indexlist[arg1]
}

function endTime() {
    return endTime
}

function exchangeRate() {
    return exchangeRate
}

function weiRaised() {
    return weiRaised
}

function GetLengthofList() {
    return getLengthofList
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function beneficiaryBought(address arg1) {
    return beneficiaryBought[arg1]
}

function indexlist(uint256 arg1) {
    return indexlist[arg1]
}

function mtStartTime() {
    return mtStartTime
}

function startTime() {
    return startTime
}

function remainToken() {
    return remainToken
}

function isFinalized() {
    return bool(stor13)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor3[arg1])
}

function beneficiaryFunded(address arg1) {
    return beneficiaryFunded[arg1]
}

function newOwner() {
    return newOwner
}

function personalMincap() {
    return personalMincap
}

function IsWhite(address arg1) {
    return bool(stor3[address(arg1)])
}

function mtEndTime() {
    return mtEndTime
}

function sub_ee29b454(?) {
    return sub_ee29b454Address
}

function changePersonalMaxcap(uint256 arg1) {
    require msg.sender == owner
    personalMaxcap = 10^18 * arg1
}

function changePersonalMincap(uint256 arg1) {
    require msg.sender == owner
    personalMincap = 10^18 * arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function sub_8b0634e7(?) {
    require msg.sender == owner
    require arg1
    sub_ee29b454Address = arg1
    return 1
}

function changeMaintenanceTime(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    mtStartTime = arg1
    mtEndTime = arg2
}

function changeStartTime(uint64 arg1) {
    require msg.sender == owner
    uint64(stor9.field_0) = arg1
    Mask(192, 0, stor9.field_64) = 0
}

function changeEndTime(uint64 arg1) {
    require msg.sender == owner
    uint64(stor10.field_0) = arg1
    Mask(192, 0, stor10.field_64) = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function RemoveWhitelist(address arg1) {
    require msg.sender == owner
    require reverseWhitelist[address(arg1)]
    stor3[address(arg1)] = 0
}

function acceptOwnership() {
    require msg.sender
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
    return 0
}

function FinishTokenSale() {
    require msg.sender == owner
    if block.timestamp <= endTime:
        require not remainToken
    stor13 = 1
    call sub_ee29b454Address with:
       value weiRaised wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function AddWhitelist(address arg1) {
    require msg.sender == owner
    require arg1
    stor3[address(arg1)] = 1
    if not reverseWhitelist[address(arg1)]:
        require getLengthofList + 1 >= getLengthofList
        getLengthofList++
        indexlist[stor2] = arg1
        reverseWhitelist[address(arg1)] = getLengthofList
    return 1
}

function checkMaintenanceTime() {
    if mtStartTime <= mtEndTime:
        if block.timestamp % 24 * 3600 < mtStartTime:
            return block.timestamp % 24 * 3600 >= mtStartTime
    else:
        if block.timestamp % 24 * 3600 >= mtStartTime:
            return block.timestamp % 24 * 3600 >= mtStartTime
    return (block.timestamp % 24 * 3600 < mtEndTime)
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    if mtStartTime <= mtEndTime:
        require block.timestamp % 24 * 3600 >= mtStartTime
        require block.timestamp % 24 * 3600 < mtEndTime
    else:
        if block.timestamp % 24 * 3600 < mtStartTime:
            require block.timestamp % 24 * 3600 < mtEndTime
    exchangeRate = arg1
}

function claimToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function _fallback() payable {
    require not uint8(stor1.field_160)
    if not msg.value:
        require not stor13
        if msg.value < personalMincap:
            require msg.value >= personalMincap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        else:
            require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
            require beneficiaryFunded[address(msg.sender)] + msg.value <= personalMaxcap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        require stor3[address(msg.sender)]
        require remainToken >= 0
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require 0 <= remainToken
        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
        beneficiaryFunded[address(msg.sender)] += msg.value
        require beneficiaryBought[address(msg.sender)] >= beneficiaryBought[address(msg.sender)]
        emit Buy(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require not stor13
        if msg.value < personalMincap:
            require msg.value >= personalMincap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        else:
            require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
            require beneficiaryFunded[address(msg.sender)] + msg.value <= personalMaxcap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        require stor3[address(msg.sender)]
        require remainToken >= msg.value * exchangeRate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require msg.value * exchangeRate <= remainToken
        remainToken += -1 * msg.value * exchangeRate
        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
        beneficiaryFunded[address(msg.sender)] += msg.value
        require beneficiaryBought[address(msg.sender)] + (msg.value * exchangeRate) >= beneficiaryBought[address(msg.sender)]
        beneficiaryBought[address(msg.sender)] += msg.value * exchangeRate
        emit Buy(msg.value, msg.value * exchangeRate, msg.sender);
}

function buyPresale() payable {
    require not uint8(stor1.field_160)
    if not msg.value:
        require not stor13
        if msg.value < personalMincap:
            require msg.value >= personalMincap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        else:
            require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
            require beneficiaryFunded[address(msg.sender)] + msg.value <= personalMaxcap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        require stor3[address(msg.sender)]
        require remainToken >= 0
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require 0 <= remainToken
        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
        beneficiaryFunded[address(msg.sender)] += msg.value
        require beneficiaryBought[address(msg.sender)] >= beneficiaryBought[address(msg.sender)]
        emit Buy(msg.value, 0, msg.sender);
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require not stor13
        if msg.value < personalMincap:
            require msg.value >= personalMincap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        else:
            require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
            require beneficiaryFunded[address(msg.sender)] + msg.value <= personalMaxcap
            if block.timestamp < startTime:
                require block.timestamp >= startTime
            else:
                if block.timestamp > endTime:
                    require block.timestamp <= endTime
                else:
                    if mtStartTime <= mtEndTime:
                        if block.timestamp % 24 * 3600 < mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
                    else:
                        if block.timestamp % 24 * 3600 >= mtStartTime:
                            require block.timestamp % 24 * 3600 < mtStartTime
                        else:
                            require block.timestamp % 24 * 3600 >= mtEndTime
        require stor3[address(msg.sender)]
        require remainToken >= msg.value * exchangeRate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require msg.value * exchangeRate <= remainToken
        remainToken += -1 * msg.value * exchangeRate
        require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
        beneficiaryFunded[address(msg.sender)] += msg.value
        require beneficiaryBought[address(msg.sender)] + (msg.value * exchangeRate) >= beneficiaryBought[address(msg.sender)]
        beneficiaryBought[address(msg.sender)] += msg.value * exchangeRate
        emit Buy(msg.value, msg.value * exchangeRate, msg.sender);
}



}
