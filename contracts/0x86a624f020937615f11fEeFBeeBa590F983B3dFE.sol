contract main {




// =====================  Runtime code  =====================


const name = 'Strategic Studies Group'

const decimals = 18

const symbol = 'SSG'

const INITIAL_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address centralBankerAddress;
address superOwner;
address hiddenOwner;
mapping of uint8 stor7;
uint8 stor8;
mapping of uint8 stor9;
uint256 openingTime;
mapping of struct searchInvestor;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;

function superInvestor(address arg1) {
    return bool(stor12[arg1])
}

function operators(address arg1) {
    return bool(stor7[arg1])
}

function totalSupply() {
    return totalSupply
}

function investorList(address arg1) {
    return bool(stor14[arg1])
}

function CEx(address arg1) {
    return bool(stor13[arg1])
}

function centralBanker() {
    return centralBankerAddress
}

function paused() {
    return bool(stor8)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function searchInvestor(address arg1) {
    return searchInvestor[arg1].field_0, searchInvestor[arg1].field_256, searchInvestor[arg1].field_512
}

function superOwner() {
    return superOwner
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function hiddenOwner() {
    return hiddenOwner
}

function destory() {
    require msg.sender == hiddenOwner
    selfdestruct(superOwner)
}

function _fallback() {
  stop
}

function isPermitted(address arg1) {
    return not bool(stor9[address(arg1)])
}

function setOpeningTime() {
    require msg.sender == owner
    openingTime = block.timestamp
    return 0
}

function delCEx(address arg1) {
    require msg.sender == superOwner
    stor13[address(arg1)] = 0
    emit 0x790cba0a: arg1
}

function setCEx(address arg1) {
    require msg.sender == superOwner
    stor13[address(arg1)] = 1
    emit 0xf35cf7b3: arg1
}

function delOperator(address arg1) {
    require msg.sender == superOwner
    stor7[address(arg1)] = 0
    emit 0x9071dc15: arg1
}

function setOperator(address arg1) {
    require msg.sender == superOwner
    stor7[address(arg1)] = 1
    emit 0x73634a50: arg1
}

function getLimitPeriod() {
    require openingTime <= block.timestamp
    return (block.timestamp - openingTime / 744 * 24 * 3600)
}

function transferOwnership(address arg1) {
    require msg.sender == superOwner
    emit 0xaf3d1df3: 0, owner, arg1
    owner = arg1
}

function delSuperInvestor(address arg1) {
    require msg.sender == superOwner
    stor12[address(arg1)] = 0
    emit 0xceed9b24: arg1
}

function setSuperInvestor(address arg1) {
    require msg.sender == superOwner
    stor12[address(arg1)] = 1
    emit 0x6322fd5e: arg1
}

function unpause() {
    if owner != msg.sender:
        require stor7[address(msg.sender)]
    require stor8
    stor8 = 0
    emit 0x19a15335 
}

function changeHiddenOwner(address arg1) {
    require msg.sender == hiddenOwner
    emit 0xaf3d1df3: 3, hiddenOwner, arg1
    hiddenOwner = arg1
}

function pause() {
    if owner != msg.sender:
        require stor7[address(msg.sender)]
    require not stor8
    stor8 = 1
    emit 0xc19764a0 
}

function transferSuperOwnership(address arg1) {
    require msg.sender == hiddenOwner
    emit 0xaf3d1df3: 2, superOwner, arg1
    superOwner = arg1
}

function blacklist(address arg1) {
    if owner != msg.sender:
        require stor7[address(msg.sender)]
    stor9[address(arg1)] = 1
    emit 0x2777737e: arg1
}

function unblacklist(address arg1) {
    if owner != msg.sender:
        require stor7[address(msg.sender)]
    stor9[address(arg1)] = 0
    emit 0xc8bed252: arg1
}

function transferBankOwnership(address arg1) {
    require msg.sender == superOwner
    emit 0xaf3d1df3: 1, centralBankerAddress, arg1
    centralBankerAddress = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function delInvestor(address arg1) {
    require msg.sender == superOwner
    stor14[address(arg1)] = 0
    searchInvestor[address(arg1)].field_0 = 0
    searchInvestor[address(arg1)].field_256 = 0
    searchInvestor[address(arg1)].field_512 = 0
    emit 0x2ec54c71: arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require not stor8
    require centralBankerAddress != msg.sender
    require not stor12[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit 0x55cf326e: arg1, msg.sender
    return 1
}

function unstash(uint256 arg1) {
    require msg.sender == centralBankerAddress
    require balanceOf[stor4] >= arg1
    require owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[stor3] + arg1 >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    emit Transfer(arg1, msg.sender, owner);
    emit 0x3087d6d5: arg1
}

function stash(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[stor3] >= arg1
    require centralBankerAddress
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[stor4] + arg1 >= balanceOf[stor4]
    balanceOf[stor4] += arg1
    emit Transfer(arg1, msg.sender, centralBankerAddress);
    emit 0x18693a3e: arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor8
    require centralBankerAddress != msg.sender
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require not stor12[address(msg.sender)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit 0x55cf326e: arg2, arg1
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor8
    require centralBankerAddress != msg.sender
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require not stor12[address(msg.sender)]
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function refreshInvestor(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require stor14[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function _transferFromInvestor(address arg1, address arg2, uint256 arg3) {
    require searchInvestor[address(arg1)].field_0 + arg3 >= searchInvestor[address(arg1)].field_0
    require openingTime <= block.timestamp
    if not block.timestamp - openingTime / 744 * 24 * 3600:
        require 0 >= searchInvestor[address(arg1)].field_0 + arg3
    else:
        require block.timestamp - openingTime / 744 * 24 * 3600
        require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(arg1)].field_512 / block.timestamp - openingTime / 744 * 24 * 3600 == searchInvestor[address(arg1)].field_512
        require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(arg1)].field_512 >= searchInvestor[address(arg1)].field_0 + arg3
    searchInvestor[address(arg1)].field_0 += arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit 0x9048f4eb: arg3, arg1, msg.sender, arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor8
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    require not stor9[address(msg.sender)]
    if stor14[address(arg1)]:
        require searchInvestor[address(arg1)].field_0 + arg3 >= searchInvestor[address(arg1)].field_0
        require openingTime <= block.timestamp
        if not block.timestamp - openingTime / 744 * 24 * 3600:
            require 0 >= searchInvestor[address(arg1)].field_0 + arg3
        else:
            require block.timestamp - openingTime / 744 * 24 * 3600
            require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(arg1)].field_512 / block.timestamp - openingTime / 744 * 24 * 3600 == searchInvestor[address(arg1)].field_512
            require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(arg1)].field_512 >= searchInvestor[address(arg1)].field_0 + arg3
        searchInvestor[address(arg1)].field_0 += arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    emit 0x9048f4eb: arg3, arg1, msg.sender, arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    require not stor8
    require centralBankerAddress != msg.sender
    if stor14[address(msg.sender)]:
        require searchInvestor[address(msg.sender)].field_0 + arg2 >= searchInvestor[address(msg.sender)].field_0
        require openingTime <= block.timestamp
        if not block.timestamp - openingTime / 744 * 24 * 3600:
            require 0 >= searchInvestor[address(msg.sender)].field_0 + arg2
        else:
            require block.timestamp - openingTime / 744 * 24 * 3600
            require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(msg.sender)].field_512 / block.timestamp - openingTime / 744 * 24 * 3600 == searchInvestor[address(msg.sender)].field_512
            require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(msg.sender)].field_512 >= searchInvestor[address(msg.sender)].field_0 + arg2
        searchInvestor[address(msg.sender)].field_0 += arg2
    else:
        if stor12[address(msg.sender)]:
            require arg1 != owner
            require not stor12[address(arg1)]
            require not stor13[address(arg1)]
            if not stor14[address(arg1)]:
                stor14[address(arg1)] = 1
                searchInvestor[address(arg1)].field_0 = 0
                searchInvestor[address(arg1)].field_256 = arg2
                searchInvestor[address(arg1)].field_512 = arg2 / 10
                emit 0xaee082a7: arg1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function reclaimToken() {
    require msg.sender == owner
    require not stor9[address(msg.sender)]
    require not stor9[stor3]
    require not stor8
    require centralBankerAddress != msg.sender
    if stor14[address(msg.sender)]:
        require searchInvestor[address(msg.sender)].field_0 + balanceOf[address(this.address)] >= searchInvestor[address(msg.sender)].field_0
        require openingTime <= block.timestamp
        if not block.timestamp - openingTime / 744 * 24 * 3600:
            require 0 >= searchInvestor[address(msg.sender)].field_0 + balanceOf[address(this.address)]
        else:
            require block.timestamp - openingTime / 744 * 24 * 3600
            require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(msg.sender)].field_512 / block.timestamp - openingTime / 744 * 24 * 3600 == searchInvestor[address(msg.sender)].field_512
            require block.timestamp - openingTime / 744 * 24 * 3600 * searchInvestor[address(msg.sender)].field_512 >= searchInvestor[address(msg.sender)].field_0 + balanceOf[address(this.address)]
        searchInvestor[address(msg.sender)].field_0 += balanceOf[address(this.address)]
    else:
        if stor12[address(msg.sender)]:
            require owner != owner
            require not stor12[stor3]
            require not stor13[stor3]
            if not stor14[stor3]:
                stor14[stor3] = 1
                searchInvestor[stor3].field_0 = 0
                searchInvestor[stor3].field_256 = balanceOf[address(this.address)]
                searchInvestor[stor3].field_512 = balanceOf[address(this.address)] / 10
                emit 0xaee082a7: owner
    require owner
    require balanceOf[address(this.address)] <= balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
    require balanceOf[stor3] + balanceOf[address(this.address)] >= balanceOf[stor3]
    balanceOf[stor3] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], msg.sender, owner);
}



}
