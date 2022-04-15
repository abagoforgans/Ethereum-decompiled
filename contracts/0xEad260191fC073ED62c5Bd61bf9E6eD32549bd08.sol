contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint8 stor2; offset 160
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint16 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    stor6 = 124 * 10^12
    stor7 = 0
    stor8 = 0
    stor9 = 0
    uint16(stor10) = 0
    stor11 = 0
    stor12 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    require not msg.value
    stor1 = msg.sender
    stor2 = 1
    stor11 = code.data[9181 len 32]
    stor12 = code.data[9213 len 32]
    stor17 = code.data[9245 len 32]
    stor18 = code.data[9277 len 32]
    stor19 = code.data[9309 len 32]
    stor0 = 2 * 10^14
    uint8(stor10) = 1
    return code.data[277 len 8904]
}



// =====================  Runtime code  =====================


const name = 'Spheris Token'

const tokensForSale = 124 * 10^12

const decimals = 2

const initialSupply = 2 * 10^14

const sub_48352526(?) = (8 * 10^17 * 3600)

const getCurrentBlock = block.number

const minimumContribution = 10^16

const symbol = 'SPRS'

const tokensPerEth = 300000


uint256 totalSupply;
address owner;
uint8 stor2; offset 160
address newOwner;
mapping of uint256 balanceOf;
uint8 stor4;
mapping of uint256 allowance;
uint256 availableTokens;
uint256 sub_db1a6eaa;
uint256 sub_64471994;
uint256 soldTokens;
uint8 saleActive;
uint8 saleFinalized; offset 8
uint256 startBlock;
uint256 endBlock;
array of struct contributors;
mapping of struct sub_85850238;
uint256 sub_3ffdc5be;
uint256 sub_ff242688;
uint256 sub_c875144e;
uint256 sub_f9d657bb;
uint256 sub_177d38db;

function endBlock() {
    return endBlock
}

function sub_177d38db(?) {
    return sub_177d38db
}

function totalSupply() {
    return totalSupply
}

function tokensFrozen() {
    return bool(stor2)
}

function contributors(uint256 arg1) {
    require arg1 < contributors.length
    return contributors[arg1].field_0, 
           contributors[arg1].field_256,
           contributors[arg1].field_512,
           contributors[arg1].field_768,
           contributors[arg1].field_1024,
           bool(contributors[arg1].field_1280),
           bool(contributors[arg1].field_1288)
}

function sub_3ffdc5be(?) {
    return sub_3ffdc5be
}

function startBlock() {
    return startBlock
}

function soldTokens() {
    return soldTokens
}

function sub_64471994(?) {
    return sub_64471994
}

function saleActive() {
    return bool(saleActive)
}

function availableTokens() {
    return availableTokens
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_85850238(?) {
    return sub_85850238[arg1].field_0, bool(sub_85850238[arg1].field_256)
}

function owner() {
    return owner
}

function saleFinalized() {
    return bool(saleFinalized)
}

function halted() {
    return bool(stor4)
}

function sub_c875144e(?) {
    return sub_c875144e
}

function newOwner() {
    return newOwner
}

function sub_db1a6eaa(?) {
    return sub_db1a6eaa
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f9d657bb(?) {
    return sub_f9d657bb
}

function getContributorsCount() {
    return contributors.length
}

function sub_ff242688(?) {
    return sub_ff242688
}

function halt() {
    require owner == msg.sender
    stor4 = 1
}

function pause() {
    require owner == msg.sender
    saleActive = 0
}

function resume() {
    require owner == msg.sender
    saleActive = 1
}

function sub_1637e061(?) {
    require owner == msg.sender
    sub_f9d657bb = arg1
}

function sub_41d9b67c(?) {
    require owner == msg.sender
    sub_c875144e = arg1
}

function sub_7d1399d1(?) {
    require owner == msg.sender
    sub_177d38db = arg1
}

function tokensLeft() {
    if availableTokens <= 0:
        return 0
    return 1
}

function unhalt() {
    require owner == msg.sender
    require stor4
    stor4 = 0
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function unFreeze() {
    require owner == msg.sender
    require stor2
    stor2 = 0
}

function freeze() {
    require owner == msg.sender
    require not stor2
    stor2 = 1
}

function setEndBlock(uint256 arg1) {
    require owner == msg.sender
    endBlock = arg1
}

function setStartBlock(uint256 arg1) {
    require owner == msg.sender
    startBlock = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function sub_7dd78ca8(?) {
    require sub_64471994 + sub_db1a6eaa >= sub_db1a6eaa
    return (sub_64471994 + sub_db1a6eaa / 10^18)
}

function withdraw(address arg1) {
    require owner == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function currentBonus() {
    if block.number < sub_c875144e:
        return 20
    if block.number < sub_f9d657bb:
        return 15
    if block.number >= sub_177d38db:
        return 5
    return 10
}

function approve(address arg1, uint256 arg2) {
    require not stor2
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_1ecf6f8a(?) {
    require owner == msg.sender
    require block.number > endBlock
    require not saleFinalized
    require availableTokens > 0
    require sub_85850238[address(arg1)].field_256
    require availableTokens - arg2 >= 0
    require sub_85850238[address(arg1)].field_0 < contributors.length
    contributors[stor14[address(arg1)].field_0].field_768 = arg2
    require sub_85850238[address(arg1)].field_0 < contributors.length
    contributors[stor14[address(arg1)].field_0].field_1280 = 1
    require arg2 <= availableTokens
    availableTokens -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function finalize(address arg1, address arg2, address arg3, address arg4) {
    require owner == msg.sender
    require block.number > endBlock
    require not saleActive
    require not saleFinalized
    require arg1
    require arg2
    require arg3
    require arg4
    require balanceOf[address(arg1)] + 16 * 10^12 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 16 * 10^12
    require balanceOf[arg2] + 22 * 10^12 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 22 * 10^12
    require balanceOf[arg3] + 8 * 10^12 >= balanceOf[arg3]
    balanceOf[address(arg3)] = balanceOf[arg3] + 8 * 10^12
    require balanceOf[arg4] + 3 * 10^13 >= balanceOf[arg4]
    balanceOf[address(arg4)] = balanceOf[arg4] + 3 * 10^13
    saleFinalized = 1
}

function refund() {
    require block.number > endBlock
    require not saleFinalized
    require msg.sender
    require sub_64471994 + sub_db1a6eaa >= sub_db1a6eaa
    require sub_64471994 + sub_db1a6eaa < 8 * 10^17 * 3600
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    require contributors[stor14[address(msg.sender)].field_0].field_256 > 0
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    require not contributors[stor14[address(msg.sender)].field_0].field_1288
    balanceOf[address(msg.sender)] = 0
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    contributors[stor14[address(msg.sender)].field_0].field_1024 = contributors[stor14[address(msg.sender)].field_0].field_256
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    contributors[stor14[address(msg.sender)].field_0].field_256 = 0
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    contributors[stor14[address(msg.sender)].field_0].field_512 = 0
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    contributors[stor14[address(msg.sender)].field_0].field_1288 = 1
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    call msg.sender with:
       value contributors[stor14[address(msg.sender)].field_0].field_1024 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_85850238[address(msg.sender)].field_0 < contributors.length
    emit 0xcb1ed30c: contributors[stor14[address(msg.sender)].field_0].field_1024, msg.sender
}

function sub_b6e66270(?) {
    require owner == msg.sender
    require not stor4
    require not saleFinalized
    require arg1
    require arg2 > 0
    require availableTokens - arg2 >= 0
    require arg2 + soldTokens >= soldTokens
    soldTokens += arg2
    require arg2 <= availableTokens
    availableTokens -= arg2
    if sub_85850238[address(arg1)].field_256:
        require sub_85850238[address(arg1)].field_0 < contributors.length
        require arg2 + contributors[stor14[address(arg1)].field_0].field_512 >= contributors[stor14[address(arg1)].field_0].field_512
        require sub_85850238[address(arg1)].field_0 < contributors.length
        contributors[stor14[address(arg1)].field_0].field_512 += arg2
    else:
        contributors.length++
        if not contributors.length <= contributors.length + 1:
            idx = (6 * contributors.length) + 6
            while 6 * contributors.length > idx:
                contributors[idx].field_0 = 0
                contributors[idx].field_256 = 0
                contributors[idx].field_512 = 0
                contributors[idx].field_768 = 0
                contributors[idx].field_1024 = 0
                contributors[idx].field_1280 = 0
                idx = idx + 6
                continue 
        sub_85850238[address(arg1)].field_0 = contributors.length
        require contributors.length < contributors.length
        contributors[contributors.length].field_0 = arg1
        sub_ff242688++
        require sub_85850238[address(arg1)].field_0 < contributors.length
        contributors[stor14[address(arg1)].field_0].field_512 = arg2
    require arg3 + sub_64471994 >= sub_64471994
    sub_64471994 += arg3
    sub_85850238[address(arg1)].field_256 = 1
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit 0x77163138: arg3, arg2, arg1
}

function buyTokens() payable {
    require not stor4
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value >= 10^16
    require saleActive
    require not saleFinalized
    require availableTokens > 0
    if msg.value:
        require msg.value
        require 300000 * msg.value / msg.value == 300000
    if block.number < sub_c875144e:
        if 300000 * msg.value / 10^16:
            require 300000 * msg.value / 10^16
            require 20 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 20
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
        require availableTokens - (20 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
        soldTokens = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
        availableTokens = availableTokens - (20 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
        if sub_85850238[address(msg.sender)].field_256:
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_512 = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
        else:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = (6 * contributors.length) + 6
                while 6 * contributors.length > idx:
                    contributors[idx].field_0 = 0
                    contributors[idx].field_256 = 0
                    contributors[idx].field_512 = 0
                    contributors[idx].field_768 = 0
                    contributors[idx].field_1024 = 0
                    contributors[idx].field_1280 = 0
                    idx = idx + 6
                    continue 
            sub_85850238[address(msg.sender)].field_0 = contributors.length
            require contributors.length < contributors.length
            contributors[contributors.length].field_0 = msg.sender
            sub_3ffdc5be++
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_512 = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
        require msg.value + sub_db1a6eaa >= sub_db1a6eaa
        sub_db1a6eaa += msg.value
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
        emit 0x2dccfbec: msg.value, (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
    else:
        if block.number < sub_f9d657bb:
            if 300000 * msg.value / 10^16:
                require 300000 * msg.value / 10^16
                require 15 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 15
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
            require availableTokens - (15 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
            soldTokens = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
            availableTokens = availableTokens - (15 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
            if sub_85850238[address(msg.sender)].field_256:
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_512 = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
            else:
                contributors.length++
                if not contributors.length <= contributors.length + 1:
                    idx = (6 * contributors.length) + 6
                    while 6 * contributors.length > idx:
                        contributors[idx].field_0 = 0
                        contributors[idx].field_256 = 0
                        contributors[idx].field_512 = 0
                        contributors[idx].field_768 = 0
                        contributors[idx].field_1024 = 0
                        contributors[idx].field_1280 = 0
                        idx = idx + 6
                        continue 
                sub_85850238[address(msg.sender)].field_0 = contributors.length
                require contributors.length < contributors.length
                contributors[contributors.length].field_0 = msg.sender
                sub_3ffdc5be++
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_512 = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
            require msg.value + sub_db1a6eaa >= sub_db1a6eaa
            sub_db1a6eaa += msg.value
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
            emit 0x2dccfbec: msg.value, (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
        else:
            if block.number >= sub_177d38db:
                if 300000 * msg.value / 10^16:
                    require 300000 * msg.value / 10^16
                    require 5 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 5
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
                require availableTokens - (5 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
                soldTokens = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
                availableTokens = availableTokens - (5 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
                if sub_85850238[address(msg.sender)].field_256:
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
                else:
                    contributors.length++
                    if not contributors.length <= contributors.length + 1:
                        idx = (6 * contributors.length) + 6
                        while 6 * contributors.length > idx:
                            contributors[idx].field_0 = 0
                            contributors[idx].field_256 = 0
                            contributors[idx].field_512 = 0
                            contributors[idx].field_768 = 0
                            contributors[idx].field_1024 = 0
                            contributors[idx].field_1280 = 0
                            idx = idx + 6
                            continue 
                    sub_85850238[address(msg.sender)].field_0 = contributors.length
                    require contributors.length < contributors.length
                    contributors[contributors.length].field_0 = msg.sender
                    sub_3ffdc5be++
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
                require msg.value + sub_db1a6eaa >= sub_db1a6eaa
                sub_db1a6eaa += msg.value
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
                emit 0x2dccfbec: msg.value, (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
            else:
                if 300000 * msg.value / 10^16:
                    require 300000 * msg.value / 10^16
                    require 10 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 10
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
                require availableTokens - (10 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
                soldTokens = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
                availableTokens = availableTokens - (10 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
                if sub_85850238[address(msg.sender)].field_256:
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
                else:
                    contributors.length++
                    if not contributors.length <= contributors.length + 1:
                        idx = (6 * contributors.length) + 6
                        while 6 * contributors.length > idx:
                            contributors[idx].field_0 = 0
                            contributors[idx].field_256 = 0
                            contributors[idx].field_512 = 0
                            contributors[idx].field_768 = 0
                            contributors[idx].field_1024 = 0
                            contributors[idx].field_1280 = 0
                            idx = idx + 6
                            continue 
                    sub_85850238[address(msg.sender)].field_0 = contributors.length
                    require contributors.length < contributors.length
                    contributors[contributors.length].field_0 = msg.sender
                    sub_3ffdc5be++
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
                require msg.value + sub_db1a6eaa >= sub_db1a6eaa
                sub_db1a6eaa += msg.value
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
                emit 0x2dccfbec: msg.value, (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
    sub_85850238[address(msg.sender)].field_256 = 1
}

function _fallback() payable {
    require not stor4
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value >= 10^16
    require saleActive
    require not saleFinalized
    require availableTokens > 0
    if msg.value:
        require msg.value
        require 300000 * msg.value / msg.value == 300000
    if block.number < sub_c875144e:
        if 300000 * msg.value / 10^16:
            require 300000 * msg.value / 10^16
            require 20 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 20
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
        require availableTokens - (20 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
        soldTokens = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
        availableTokens = availableTokens - (20 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
        if sub_85850238[address(msg.sender)].field_256:
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_512 = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
        else:
            contributors.length++
            if not contributors.length <= contributors.length + 1:
                idx = (6 * contributors.length) + 6
                while 6 * contributors.length > idx:
                    contributors[idx].field_0 = 0
                    contributors[idx].field_256 = 0
                    contributors[idx].field_512 = 0
                    contributors[idx].field_768 = 0
                    contributors[idx].field_1024 = 0
                    contributors[idx].field_1280 = 0
                    idx = idx + 6
                    continue 
            sub_85850238[address(msg.sender)].field_0 = contributors.length
            require contributors.length < contributors.length
            contributors[contributors.length].field_0 = msg.sender
            sub_3ffdc5be++
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
            require sub_85850238[address(msg.sender)].field_0 < contributors.length
            contributors[stor14[address(msg.sender)].field_0].field_512 = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
        require msg.value + sub_db1a6eaa >= sub_db1a6eaa
        sub_db1a6eaa += msg.value
        require (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
        emit 0x2dccfbec: msg.value, (20 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
    else:
        if block.number < sub_f9d657bb:
            if 300000 * msg.value / 10^16:
                require 300000 * msg.value / 10^16
                require 15 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 15
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
            require availableTokens - (15 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
            soldTokens = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
            availableTokens = availableTokens - (15 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
            if sub_85850238[address(msg.sender)].field_256:
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_512 = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
            else:
                contributors.length++
                if not contributors.length <= contributors.length + 1:
                    idx = (6 * contributors.length) + 6
                    while 6 * contributors.length > idx:
                        contributors[idx].field_0 = 0
                        contributors[idx].field_256 = 0
                        contributors[idx].field_512 = 0
                        contributors[idx].field_768 = 0
                        contributors[idx].field_1024 = 0
                        contributors[idx].field_1280 = 0
                        idx = idx + 6
                        continue 
                sub_85850238[address(msg.sender)].field_0 = contributors.length
                require contributors.length < contributors.length
                contributors[contributors.length].field_0 = msg.sender
                sub_3ffdc5be++
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
                require sub_85850238[address(msg.sender)].field_0 < contributors.length
                contributors[stor14[address(msg.sender)].field_0].field_512 = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
            require msg.value + sub_db1a6eaa >= sub_db1a6eaa
            sub_db1a6eaa += msg.value
            require (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
            emit 0x2dccfbec: msg.value, (15 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
        else:
            if block.number >= sub_177d38db:
                if 300000 * msg.value / 10^16:
                    require 300000 * msg.value / 10^16
                    require 5 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 5
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
                require availableTokens - (5 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
                soldTokens = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
                availableTokens = availableTokens - (5 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
                if sub_85850238[address(msg.sender)].field_256:
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
                else:
                    contributors.length++
                    if not contributors.length <= contributors.length + 1:
                        idx = (6 * contributors.length) + 6
                        while 6 * contributors.length > idx:
                            contributors[idx].field_0 = 0
                            contributors[idx].field_256 = 0
                            contributors[idx].field_512 = 0
                            contributors[idx].field_768 = 0
                            contributors[idx].field_1024 = 0
                            contributors[idx].field_1280 = 0
                            idx = idx + 6
                            continue 
                    sub_85850238[address(msg.sender)].field_0 = contributors.length
                    require contributors.length < contributors.length
                    contributors[contributors.length].field_0 = msg.sender
                    sub_3ffdc5be++
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
                require msg.value + sub_db1a6eaa >= sub_db1a6eaa
                sub_db1a6eaa += msg.value
                require (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
                emit 0x2dccfbec: msg.value, (5 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
            else:
                if 300000 * msg.value / 10^16:
                    require 300000 * msg.value / 10^16
                    require 10 * 300000 * msg.value / 10^16 / 300000 * msg.value / 10^16 == 10
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) >= 300000 * msg.value / 10^16
                require availableTokens - (10 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16) >= 0
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens >= soldTokens
                soldTokens = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + soldTokens
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) <= availableTokens
                availableTokens = availableTokens - (10 * 300000 * msg.value / 10^16 / 100) - (300000 * msg.value / 10^16)
                if sub_85850238[address(msg.sender)].field_256:
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require msg.value + contributors[stor14[address(msg.sender)].field_0].field_256 >= contributors[stor14[address(msg.sender)].field_0].field_256
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 += msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512 >= contributors[stor14[address(msg.sender)].field_0].field_512
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + contributors[stor14[address(msg.sender)].field_0].field_512
                else:
                    contributors.length++
                    if not contributors.length <= contributors.length + 1:
                        idx = (6 * contributors.length) + 6
                        while 6 * contributors.length > idx:
                            contributors[idx].field_0 = 0
                            contributors[idx].field_256 = 0
                            contributors[idx].field_512 = 0
                            contributors[idx].field_768 = 0
                            contributors[idx].field_1024 = 0
                            contributors[idx].field_1280 = 0
                            idx = idx + 6
                            continue 
                    sub_85850238[address(msg.sender)].field_0 = contributors.length
                    require contributors.length < contributors.length
                    contributors[contributors.length].field_0 = msg.sender
                    sub_3ffdc5be++
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_256 = msg.value
                    require sub_85850238[address(msg.sender)].field_0 < contributors.length
                    contributors[stor14[address(msg.sender)].field_0].field_512 = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16)
                require msg.value + sub_db1a6eaa >= sub_db1a6eaa
                sub_db1a6eaa += msg.value
                require (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16) + balanceOf[address(msg.sender)]
                emit 0x2dccfbec: msg.value, (10 * 300000 * msg.value / 10^16 / 100) + (300000 * msg.value / 10^16), msg.sender
    sub_85850238[address(msg.sender)].field_256 = 1
}



}
