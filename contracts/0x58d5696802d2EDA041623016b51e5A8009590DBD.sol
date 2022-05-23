contract main {




// =====================  Runtime code  =====================


const name = 'WhenHungry'

const decimals = 0

const symbol = 'Why'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 cap;
uint256 crowdSaleCap;
uint256 sub_aa4ef276;
uint256 sub_6cc94d95;
uint256 sub_4ad90cf5;
uint32 privateSaleStartDate;
uint32 privateSaleEndDate; offset 32
uint32 preIcoStartDate; offset 64
uint32 preIcoEndDate; offset 96
uint32 icoStartDate; offset 128
uint32 sub_6da7395d; offset 160
uint256 extraTime;

function privateSaleEndDate() {
    return privateSaleEndDate
}

function mintingFinished() {
    return bool(stor3)
}

function extraTime() {
    return extraTime
}

function totalSupply() {
    return totalSupply
}

function cap() {
    return cap
}

function preIcoEndDate() {
    return preIcoEndDate
}

function sub_4ad90cf5(?) {
    return sub_4ad90cf5
}

function sub_6cc94d95(?) {
    return sub_6cc94d95
}

function sub_6da7395d(?) {
    return sub_6da7395d
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function preIcoStartDate() {
    return preIcoStartDate
}

function privateSaleStartDate() {
    return privateSaleStartDate
}

function owner() {
    return owner
}

function sub_aa4ef276(?) {
    return sub_aa4ef276
}

function crowdSaleCap() {
    return crowdSaleCap
}

function icoStartDate() {
    return icoStartDate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getExtraDays() {
    return (extraTime / 24 * 3600)
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function finishMinting() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addExtraDays(uint256 arg1) {
    if not arg1:
        require extraTime >= extraTime
        return 0
    require 24 * 3600 * arg1 / arg1 == 24 * 3600
    require (24 * 3600 * arg1) + extraTime >= extraTime
    extraTime += 24 * 3600 * arg1
    return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getStage() {
    require extraTime + block.timestamp >= block.timestamp
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= privateSaleStartDate:
        if extraTime + block.timestamp <= privateSaleEndDate:
            return 'Private Sale'
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= preIcoStartDate:
        if extraTime + block.timestamp <= preIcoEndDate:
            return 'Pre ICO'
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= icoStartDate:
        if extraTime + block.timestamp <= sub_6da7395d:
            return 'Ico Bonus'
    if extraTime + block.timestamp <= sub_6da7395d:
        return 'Pause'
    return 'Ico'
}

function getBasePrice() {
    require extraTime + block.timestamp >= block.timestamp
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= privateSaleStartDate:
        if extraTime + block.timestamp <= privateSaleEndDate:
            return sub_aa4ef276
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= preIcoStartDate:
        if extraTime + block.timestamp <= preIcoEndDate:
            return sub_6cc94d95
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp < icoStartDate:
        require extraTime + block.timestamp > sub_6da7395d
    else:
        if extraTime + block.timestamp > sub_6da7395d:
            require extraTime + block.timestamp >= block.timestamp
            require extraTime + block.timestamp > sub_6da7395d
    return sub_4ad90cf5
}

function getBonuses(uint256 arg1) {
    require extraTime + block.timestamp >= block.timestamp
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= privateSaleStartDate:
        if extraTime + block.timestamp <= privateSaleEndDate:
            if arg1 < 20000:
                return 0
            return 30
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= preIcoStartDate:
        if extraTime + block.timestamp <= preIcoEndDate:
            if arg1 < 10000:
                return 0
            return 25
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp >= icoStartDate:
        if extraTime + block.timestamp <= sub_6da7395d:
            if arg1 < 10000:
                return 0
            return 15
    require extraTime + block.timestamp > sub_6da7395d
    return 0
}

function _fallback() payable {
    require extraTime + block.timestamp >= block.timestamp
    if extraTime + block.timestamp < privateSaleStartDate:
        require extraTime + block.timestamp >= block.timestamp
        if extraTime + block.timestamp < preIcoStartDate:
            require extraTime + block.timestamp >= block.timestamp
            if extraTime + block.timestamp < icoStartDate:
                require extraTime + block.timestamp >= block.timestamp
                require extraTime + block.timestamp > sub_6da7395d
                require sub_4ad90cf5
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp < privateSaleStartDate:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < preIcoStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < icoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            require extraTime + block.timestamp > sub_6da7395d
                            if msg.value / sub_4ad90cf5:
                                require not 0 / msg.value / sub_4ad90cf5
                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_4ad90cf5
                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_4ad90cf5
                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > sub_6da7395d:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 10000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > preIcoEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            if msg.value / sub_4ad90cf5 < 10000:
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5:
                                    require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                        emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                else:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp > privateSaleEndDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 10000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        if msg.value / sub_4ad90cf5 < 20000:
                            if msg.value / sub_4ad90cf5:
                                require not 0 / msg.value / sub_4ad90cf5
                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_4ad90cf5
                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_4ad90cf5
                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            if msg.value / sub_4ad90cf5:
                                require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                    emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                            else:
                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_4ad90cf5
                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
            else:
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp > sub_6da7395d:
                    require extraTime + block.timestamp >= block.timestamp
                    require extraTime + block.timestamp > sub_6da7395d
                    require sub_4ad90cf5
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < privateSaleStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 10000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > privateSaleEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            if msg.value / sub_4ad90cf5 < 20000:
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5:
                                    require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                        emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                else:
                    require sub_4ad90cf5
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < privateSaleStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 10000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > privateSaleEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            if msg.value / sub_4ad90cf5 < 20000:
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5:
                                    require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                        emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
        else:
            require extraTime + block.timestamp >= block.timestamp
            if extraTime + block.timestamp > preIcoEndDate:
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp < icoStartDate:
                    require extraTime + block.timestamp >= block.timestamp
                    require extraTime + block.timestamp > sub_6da7395d
                    require sub_4ad90cf5
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < privateSaleStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 10000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > privateSaleEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            if msg.value / sub_4ad90cf5 < 20000:
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5:
                                    require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                        emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                else:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp > sub_6da7395d:
                        require extraTime + block.timestamp >= block.timestamp
                        require extraTime + block.timestamp > sub_6da7395d
                        require sub_4ad90cf5
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < privateSaleStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > privateSaleEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 20000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require sub_4ad90cf5
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < privateSaleStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > privateSaleEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 20000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
            else:
                require sub_6cc94d95
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp < privateSaleStartDate:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < preIcoStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < icoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            require extraTime + block.timestamp > sub_6da7395d
                            if msg.value / sub_6cc94d95:
                                require not 0 / msg.value / sub_6cc94d95
                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_6cc94d95
                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_6cc94d95
                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > sub_6da7395d:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_6cc94d95:
                                    require not 0 / msg.value / sub_6cc94d95
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                if msg.value / sub_6cc94d95 < 10000:
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95:
                                        require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                        require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                        require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                        require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                            emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > preIcoEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_6cc94d95:
                                    require not 0 / msg.value / sub_6cc94d95
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95 < 10000:
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95:
                                            require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                        else:
                            if msg.value / sub_6cc94d95 < 10000:
                                if msg.value / sub_6cc94d95:
                                    require not 0 / msg.value / sub_6cc94d95
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                if msg.value / sub_6cc94d95:
                                    require 25 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 25
                                    require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                    require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                    require cap >= (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                        emit Transfer(((25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                else:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp > privateSaleEndDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_6cc94d95:
                                    require not 0 / msg.value / sub_6cc94d95
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95 < 10000:
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95:
                                            require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95 < 10000:
                                            if msg.value / sub_6cc94d95:
                                                require not 0 / msg.value / sub_6cc94d95
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_6cc94d95:
                                                require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                if msg.value / sub_6cc94d95 < 10000:
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95:
                                        require 25 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 25
                                        require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                        require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                        require cap >= (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                    else:
                        if msg.value / sub_6cc94d95 < 20000:
                            if msg.value / sub_6cc94d95:
                                require not 0 / msg.value / sub_6cc94d95
                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_6cc94d95
                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_6cc94d95
                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                        else:
                            if msg.value / sub_6cc94d95:
                                require 30 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 30
                                require (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                require (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                totalSupply = (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                require cap >= (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                    emit Transfer(((30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                            else:
                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_6cc94d95
                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
    else:
        require extraTime + block.timestamp >= block.timestamp
        if extraTime + block.timestamp > privateSaleEndDate:
            require extraTime + block.timestamp >= block.timestamp
            if extraTime + block.timestamp < preIcoStartDate:
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp < icoStartDate:
                    require extraTime + block.timestamp >= block.timestamp
                    require extraTime + block.timestamp > sub_6da7395d
                    require sub_4ad90cf5
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < privateSaleStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 10000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > privateSaleEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            if msg.value / sub_4ad90cf5 < 20000:
                                if msg.value / sub_4ad90cf5:
                                    require not 0 / msg.value / sub_4ad90cf5
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5:
                                    require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                    require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                        emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_4ad90cf5
                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                else:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp > sub_6da7395d:
                        require extraTime + block.timestamp >= block.timestamp
                        require extraTime + block.timestamp > sub_6da7395d
                        require sub_4ad90cf5
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < privateSaleStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > privateSaleEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 20000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require sub_4ad90cf5
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < privateSaleStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > privateSaleEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 20000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
            else:
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp > preIcoEndDate:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < icoStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        require extraTime + block.timestamp > sub_6da7395d
                        require sub_4ad90cf5
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < privateSaleStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 10000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > privateSaleEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                if msg.value / sub_4ad90cf5 < 20000:
                                    if msg.value / sub_4ad90cf5:
                                        require not 0 / msg.value / sub_4ad90cf5
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5:
                                        require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                        require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                            emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_4ad90cf5
                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > sub_6da7395d:
                            require extraTime + block.timestamp >= block.timestamp
                            require extraTime + block.timestamp > sub_6da7395d
                            require sub_4ad90cf5
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < privateSaleStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > privateSaleEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < preIcoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > preIcoEndDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp < icoStartDate:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require extraTime + block.timestamp >= block.timestamp
                                                if extraTime + block.timestamp > sub_6da7395d:
                                                    require extraTime + block.timestamp >= block.timestamp
                                                    require extraTime + block.timestamp > sub_6da7395d
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5 < 10000:
                                                        if msg.value / sub_4ad90cf5:
                                                            require not 0 / msg.value / sub_4ad90cf5
                                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply += msg.value / sub_4ad90cf5
                                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                        else:
                                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply += msg.value / sub_4ad90cf5
                                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        if msg.value / sub_4ad90cf5:
                                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                        else:
                                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply += msg.value / sub_4ad90cf5
                                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 20000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                        else:
                            require sub_4ad90cf5
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < privateSaleStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < preIcoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > preIcoEndDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5 < 10000:
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5:
                                                require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > privateSaleEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < preIcoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp < icoStartDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_4ad90cf5:
                                                require not 0 / msg.value / sub_4ad90cf5
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_4ad90cf5
                                                require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                    emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp > sub_6da7395d:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5 < 10000:
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5:
                                                        require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                        require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                            emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > preIcoEndDate:
                                            require extraTime + block.timestamp >= block.timestamp
                                            if extraTime + block.timestamp < icoStartDate:
                                                require extraTime + block.timestamp >= block.timestamp
                                                require extraTime + block.timestamp > sub_6da7395d
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                require extraTime + block.timestamp >= block.timestamp
                                                if extraTime + block.timestamp > sub_6da7395d:
                                                    require extraTime + block.timestamp >= block.timestamp
                                                    require extraTime + block.timestamp > sub_6da7395d
                                                    if msg.value / sub_4ad90cf5:
                                                        require not 0 / msg.value / sub_4ad90cf5
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                        require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                        totalSupply += msg.value / sub_4ad90cf5
                                                        require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                            balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                            emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    if msg.value / sub_4ad90cf5 < 10000:
                                                        if msg.value / sub_4ad90cf5:
                                                            require not 0 / msg.value / sub_4ad90cf5
                                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply += msg.value / sub_4ad90cf5
                                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                        else:
                                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply += msg.value / sub_4ad90cf5
                                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                    else:
                                                        if msg.value / sub_4ad90cf5:
                                                            require 15 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 15
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                            require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                            require cap >= (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                                emit Transfer(((15 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                        else:
                                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                            totalSupply += msg.value / sub_4ad90cf5
                                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_4ad90cf5 < 10000:
                                                if msg.value / sub_4ad90cf5:
                                                    require not 0 / msg.value / sub_4ad90cf5
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_4ad90cf5:
                                                    require 25 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 25
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                                    require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    require cap >= (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((25 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                                    require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_4ad90cf5
                                                    require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                        emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                else:
                                    if msg.value / sub_4ad90cf5 < 20000:
                                        if msg.value / sub_4ad90cf5:
                                            require not 0 / msg.value / sub_4ad90cf5
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_4ad90cf5:
                                            require 30 * msg.value / sub_4ad90cf5 / msg.value / sub_4ad90cf5 == 30
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) >= msg.value / sub_4ad90cf5
                                            require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            require cap >= (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)]
                                                emit Transfer(((30 * msg.value / sub_4ad90cf5 / 100) + (msg.value / sub_4ad90cf5)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_4ad90cf5 >= msg.value / sub_4ad90cf5
                                            require (msg.value / sub_4ad90cf5) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_4ad90cf5
                                            require cap >= (msg.value / sub_4ad90cf5) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_4ad90cf5) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_4ad90cf5
                                                emit Transfer((msg.value / sub_4ad90cf5), this.address, msg.sender);
                else:
                    require sub_6cc94d95
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < privateSaleStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < preIcoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_6cc94d95:
                                    require not 0 / msg.value / sub_6cc94d95
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95 < 10000:
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95:
                                            require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                            require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > preIcoEndDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95 < 10000:
                                            if msg.value / sub_6cc94d95:
                                                require not 0 / msg.value / sub_6cc94d95
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_6cc94d95:
                                                require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                if msg.value / sub_6cc94d95 < 10000:
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95:
                                        require 25 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 25
                                        require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                        require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                        require cap >= (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                            emit Transfer(((25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > privateSaleEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < preIcoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp < icoStartDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_6cc94d95:
                                        require not 0 / msg.value / sub_6cc94d95
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                        require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_6cc94d95
                                        require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                            emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp > sub_6da7395d:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95 < 10000:
                                            if msg.value / sub_6cc94d95:
                                                require not 0 / msg.value / sub_6cc94d95
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_6cc94d95:
                                                require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                                require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                    emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > preIcoEndDate:
                                    require extraTime + block.timestamp >= block.timestamp
                                    if extraTime + block.timestamp < icoStartDate:
                                        require extraTime + block.timestamp >= block.timestamp
                                        require extraTime + block.timestamp > sub_6da7395d
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        require extraTime + block.timestamp >= block.timestamp
                                        if extraTime + block.timestamp > sub_6da7395d:
                                            require extraTime + block.timestamp >= block.timestamp
                                            require extraTime + block.timestamp > sub_6da7395d
                                            if msg.value / sub_6cc94d95:
                                                require not 0 / msg.value / sub_6cc94d95
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                            else:
                                                require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                totalSupply += msg.value / sub_6cc94d95
                                                require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                    balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                    emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            if msg.value / sub_6cc94d95 < 10000:
                                                if msg.value / sub_6cc94d95:
                                                    require not 0 / msg.value / sub_6cc94d95
                                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_6cc94d95
                                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_6cc94d95
                                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                            else:
                                                if msg.value / sub_6cc94d95:
                                                    require 15 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 15
                                                    require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                                    require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                    totalSupply = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                    require cap >= (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                        emit Transfer(((15 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                                else:
                                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                                    totalSupply += msg.value / sub_6cc94d95
                                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    if msg.value / sub_6cc94d95 < 10000:
                                        if msg.value / sub_6cc94d95:
                                            require not 0 / msg.value / sub_6cc94d95
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_6cc94d95:
                                            require 25 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 25
                                            require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                            require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            require cap >= (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                                emit Transfer(((25 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                            require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_6cc94d95
                                            require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                                emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                        else:
                            if msg.value / sub_6cc94d95 < 20000:
                                if msg.value / sub_6cc94d95:
                                    require not 0 / msg.value / sub_6cc94d95
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
                            else:
                                if msg.value / sub_6cc94d95:
                                    require 30 * msg.value / sub_6cc94d95 / msg.value / sub_6cc94d95 == 30
                                    require (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) >= msg.value / sub_6cc94d95
                                    require (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply = (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                    require cap >= (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)]
                                        emit Transfer(((30 * msg.value / sub_6cc94d95 / 100) + (msg.value / sub_6cc94d95)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_6cc94d95 >= msg.value / sub_6cc94d95
                                    require (msg.value / sub_6cc94d95) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_6cc94d95
                                    require cap >= (msg.value / sub_6cc94d95) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_6cc94d95) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_6cc94d95
                                        emit Transfer((msg.value / sub_6cc94d95), this.address, msg.sender);
        else:
            require sub_aa4ef276
            require extraTime + block.timestamp >= block.timestamp
            if extraTime + block.timestamp < privateSaleStartDate:
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp < preIcoStartDate:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < icoStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        require extraTime + block.timestamp > sub_6da7395d
                        if msg.value / sub_aa4ef276:
                            require not 0 / msg.value / sub_aa4ef276
                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                            totalSupply += msg.value / sub_aa4ef276
                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                            totalSupply += msg.value / sub_aa4ef276
                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > sub_6da7395d:
                            require extraTime + block.timestamp >= block.timestamp
                            require extraTime + block.timestamp > sub_6da7395d
                            if msg.value / sub_aa4ef276:
                                require not 0 / msg.value / sub_aa4ef276
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            if msg.value / sub_aa4ef276 < 10000:
                                if msg.value / sub_aa4ef276:
                                    require not 0 / msg.value / sub_aa4ef276
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                if msg.value / sub_aa4ef276:
                                    require 15 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 15
                                    require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                                    require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                    require cap >= (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                        emit Transfer(((15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                else:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp > preIcoEndDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < icoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            require extraTime + block.timestamp > sub_6da7395d
                            if msg.value / sub_aa4ef276:
                                require not 0 / msg.value / sub_aa4ef276
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > sub_6da7395d:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_aa4ef276:
                                    require not 0 / msg.value / sub_aa4ef276
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                if msg.value / sub_aa4ef276 < 10000:
                                    if msg.value / sub_aa4ef276:
                                        require not 0 / msg.value / sub_aa4ef276
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    if msg.value / sub_aa4ef276:
                                        require 15 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 15
                                        require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                                        require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                        require cap >= (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                            emit Transfer(((15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                    else:
                        if msg.value / sub_aa4ef276 < 10000:
                            if msg.value / sub_aa4ef276:
                                require not 0 / msg.value / sub_aa4ef276
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            if msg.value / sub_aa4ef276:
                                require 25 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 25
                                require (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                                require (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply = (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                require cap >= (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                    emit Transfer(((25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                            else:
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
            else:
                require extraTime + block.timestamp >= block.timestamp
                if extraTime + block.timestamp > privateSaleEndDate:
                    require extraTime + block.timestamp >= block.timestamp
                    if extraTime + block.timestamp < preIcoStartDate:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp < icoStartDate:
                            require extraTime + block.timestamp >= block.timestamp
                            require extraTime + block.timestamp > sub_6da7395d
                            if msg.value / sub_aa4ef276:
                                require not 0 / msg.value / sub_aa4ef276
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                totalSupply += msg.value / sub_aa4ef276
                                require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                    emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp > sub_6da7395d:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_aa4ef276:
                                    require not 0 / msg.value / sub_aa4ef276
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                if msg.value / sub_aa4ef276 < 10000:
                                    if msg.value / sub_aa4ef276:
                                        require not 0 / msg.value / sub_aa4ef276
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    if msg.value / sub_aa4ef276:
                                        require 15 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 15
                                        require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                                        require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                        require cap >= (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                            emit Transfer(((15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                    else:
                        require extraTime + block.timestamp >= block.timestamp
                        if extraTime + block.timestamp > preIcoEndDate:
                            require extraTime + block.timestamp >= block.timestamp
                            if extraTime + block.timestamp < icoStartDate:
                                require extraTime + block.timestamp >= block.timestamp
                                require extraTime + block.timestamp > sub_6da7395d
                                if msg.value / sub_aa4ef276:
                                    require not 0 / msg.value / sub_aa4ef276
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                require extraTime + block.timestamp >= block.timestamp
                                if extraTime + block.timestamp > sub_6da7395d:
                                    require extraTime + block.timestamp >= block.timestamp
                                    require extraTime + block.timestamp > sub_6da7395d
                                    if msg.value / sub_aa4ef276:
                                        require not 0 / msg.value / sub_aa4ef276
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                    else:
                                        require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                        require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                        totalSupply += msg.value / sub_aa4ef276
                                        require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                            emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    if msg.value / sub_aa4ef276 < 10000:
                                        if msg.value / sub_aa4ef276:
                                            require not 0 / msg.value / sub_aa4ef276
                                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_aa4ef276
                                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_aa4ef276
                                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                    else:
                                        if msg.value / sub_aa4ef276:
                                            require 15 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 15
                                            require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                                            require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                            totalSupply = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                            require cap >= (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] = (15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                                emit Transfer(((15 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                                        else:
                                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                            totalSupply += msg.value / sub_aa4ef276
                                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            if msg.value / sub_aa4ef276 < 10000:
                                if msg.value / sub_aa4ef276:
                                    require not 0 / msg.value / sub_aa4ef276
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                            else:
                                if msg.value / sub_aa4ef276:
                                    require 25 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 25
                                    require (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                                    require (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply = (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                    require cap >= (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = (25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                        emit Transfer(((25 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                                else:
                                    require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                                    require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                                    totalSupply += msg.value / sub_aa4ef276
                                    require cap >= (msg.value / sub_aa4ef276) + totalSupply
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                        emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                else:
                    if msg.value / sub_aa4ef276 < 20000:
                        if msg.value / sub_aa4ef276:
                            require not 0 / msg.value / sub_aa4ef276
                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                            totalSupply += msg.value / sub_aa4ef276
                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                        else:
                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                            totalSupply += msg.value / sub_aa4ef276
                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
                    else:
                        if msg.value / sub_aa4ef276:
                            require 30 * msg.value / sub_aa4ef276 / msg.value / sub_aa4ef276 == 30
                            require (30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) >= msg.value / sub_aa4ef276
                            require (30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                            totalSupply = (30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                            require cap >= (30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + totalSupply
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = (30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)]
                                emit Transfer(((30 * msg.value / sub_aa4ef276 / 100) + (msg.value / sub_aa4ef276)), this.address, msg.sender);
                        else:
                            require msg.value / sub_aa4ef276 >= msg.value / sub_aa4ef276
                            require (msg.value / sub_aa4ef276) + totalSupply >= totalSupply
                            totalSupply += msg.value / sub_aa4ef276
                            require cap >= (msg.value / sub_aa4ef276) + totalSupply
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require (msg.value / sub_aa4ef276) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / sub_aa4ef276
                                emit Transfer((msg.value / sub_aa4ef276), this.address, msg.sender);
}



}
