contract main {




// =====================  Runtime code  =====================


const name = 'The Fttt Touch Gold'

const symbol = 'fff'

const INITIAL_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address sub_0666b66bAddress;
address sub_fe4862b4Address;
address sub_7b3e1ccaAddress;
mapping of uint8 stor7;
uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 openingTime;
mapping of struct searchInvestor;
mapping of uint8 stor13;
mapping of uint8 stor14;

function sub_0666b66b(?) {
    return sub_0666b66bAddress
}

function superInvestor(address arg1) {
    return bool(stor13[arg1])
}

function totalSupply() {
    return totalSupply
}

function investorList(address arg1) {
    return bool(stor10[arg1])
}

function CEx(address arg1) {
    return bool(stor14[arg1])
}

function paused() {
    return bool(stor8)
}

function admin(address arg1) {
    return bool(stor7[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7b3e1cca(?) {
    return sub_7b3e1ccaAddress
}

function searchInvestor(address arg1) {
    return searchInvestor[arg1].field_0, searchInvestor[arg1].field_256, searchInvestor[arg1].field_512
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

function sub_fe4862b4(?) {
    return sub_fe4862b4Address
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
}

function getLimitPeriod() {
    require openingTime <= block.timestamp
    return (block.timestamp - openingTime / 720 * 24 * 3600)
}

function delCEx(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit 0x9b8a06f0: arg1
    stor14[address(arg1)] = 0
}

function unpause() {
    if owner != msg.sender:
        require stor7[msg.sender]
    require stor8
    stor8 = 0
    emit Unpause()
}

function setCEx(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit 0x29662364: arg1
    stor14[address(arg1)] = 1
}

function setAdmin(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit SetAdmin(arg1);
    stor7[address(arg1)] = 1
}

function pause() {
    if owner != msg.sender:
        require stor7[msg.sender]
    require not stor8
    stor8 = 1
    emit Pause()
}

function delAdmin(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit 0x1af6bd3d: arg1
    stor7[address(arg1)] = 0
}

function delInvestor(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit 0xccdff654: arg1
    stor10[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit 0xef6cd7fb: owner, arg1
    owner = arg1
}

function setInvestor(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit SetInvestor(arg1);
    stor10[address(arg1)] = 1
}

function delSuperInvestor(address arg1) {
    require msg.sender == sub_0666b66bAddress
    stor13[address(arg1)] = 0
    emit 0x4331fc20: arg1
}

function setSuperInvestor(address arg1) {
    require msg.sender == sub_0666b66bAddress
    stor13[address(arg1)] = 1
    emit 0x2896a355: arg1
}

function blacklist(address arg1) {
    if owner != msg.sender:
        require stor7[msg.sender]
    stor9[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unblacklist(address arg1) {
    if owner != msg.sender:
        require stor7[msg.sender]
    stor9[address(arg1)] = 0
    emit Whitelisted(arg1);
}

function transferBankOwnership(address arg1) {
    require msg.sender == sub_0666b66bAddress
    emit 0xef6cd7fb: msg.sender, arg1
    sub_7b3e1ccaAddress = arg1
}

function transferHiddenOwnership(address arg1) {
    require msg.sender == sub_fe4862b4Address
    emit 0xef6cd7fb: msg.sender, arg1
    sub_fe4862b4Address = arg1
}

function transferSuperOwnership(address arg1) {
    require msg.sender == sub_fe4862b4Address
    emit 0xef6cd7fb: sub_0666b66bAddress, arg1
    sub_0666b66bAddress = arg1
}

function sub_681d7d90(?) {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stash(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[stor3]
    require arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require arg1 + balanceOf[stor6] >= balanceOf[stor6]
    balanceOf[stor6] += arg1
    emit 0x8be245fa: arg1
}

function unstash(uint256 arg1) {
    require msg.sender == sub_7b3e1ccaAddress
    require arg1 <= balanceOf[stor6]
    require arg1 <= balanceOf[stor6]
    balanceOf[stor6] -= arg1
    require arg1 + balanceOf[stor3] >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    emit 0x9971d51b: arg1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function reclaimToken(address arg1) {
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor8
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor8
    require sub_7b3e1ccaAddress != msg.sender
    if not stor10[msg.sender]:
        require not stor13[msg.sender]
        require not stor8
    else:
        require not stor9[address(msg.sender)]
        require not stor9[address(arg1)]
        require 25 * 10^14 * 3600 >= searchInvestor[msg.sender].field_0
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require openingTime <= block.timestamp
        if block.timestamp - openingTime / 720 * 24 * 3600:
            require searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600 / block.timestamp - openingTime / 720 * 24 * 3600 == searchInvestor[msg.sender].field_512
        require arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0
        searchInvestor[msg.sender].field_0 += arg2
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor8
    require sub_7b3e1ccaAddress != msg.sender
    if stor10[msg.sender]:
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require not stor9[address(msg.sender)]
        require not stor9[address(arg1)]
        require openingTime <= block.timestamp
        if not block.timestamp - openingTime / 720 * 24 * 3600:
            require arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0
            require 25 * 10^14 * 3600 >= arg2 + searchInvestor[msg.sender].field_0
        else:
            require searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600 / block.timestamp - openingTime / 720 * 24 * 3600 == searchInvestor[msg.sender].field_512
            require arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0
            require (searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600) + (25 * 10^14 * 3600) >= searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600
            require (searchInvestor[msg.sender].field_512 * block.timestamp - openingTime / 720 * 24 * 3600) + (25 * 10^14 * 3600) >= arg2 + searchInvestor[msg.sender].field_0
        require arg2 + searchInvestor[msg.sender].field_0 >= searchInvestor[msg.sender].field_0
        searchInvestor[msg.sender].field_0 += arg2
    else:
        if not stor13[msg.sender]:
            require not stor8
            require not stor9[address(msg.sender)]
            require not stor9[address(arg1)]
            require arg1
        else:
            require not stor9[address(msg.sender)]
            require not stor9[address(arg1)]
            if not stor10[address(arg1)]:
                stor10[address(arg1)] = 1
                searchInvestor[address(arg1)].field_0 = 0
                searchInvestor[address(arg1)].field_256 = arg2
                searchInvestor[address(arg1)].field_512 = arg2 / 10
            require arg1
            require owner != arg1
            require not stor13[address(arg1)]
            require not stor14[address(arg1)]
        require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
