contract main {




// =====================  Runtime code  =====================


const decimals = 18


address currentManagerAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pendingManagerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
array of uint256 website;
uint256 pricePerToken;
uint256 sub_26b7c01c;
uint256 sub_985f4e4f;
uint8 batchLimit;
uint8 sub_f36f931b; offset 8
mapping of uint8 stor12;
address engineAddress;

function getEngine() {
    return engineAddress
}

function name() {
    return name[0 len name.length]
}

function currentManager() {
    return currentManagerAddress
}

function totalSupply() {
    return totalSupply
}

function sub_26b7c01c(?) {
    return sub_26b7c01c
}

function batchLimit() {
    return batchLimit
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function pricePerToken() {
    return pricePerToken
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_985f4e4f(?) {
    return sub_985f4e4f
}

function pendingManager() {
    return pendingManagerAddress
}

function website() {
    return website[0 len website.length]
}

function sub_d5497979(?) {
    return bool(uint8(stor1.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f36f931b(?) {
    return sub_f36f931b
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function sub_ff3f19b5(?) {
    require msg.sender == currentManagerAddress
    batchLimit = arg1
}

function sub_eef7bf39(?) {
    require msg.sender == currentManagerAddress
    sub_f36f931b = arg1
}

function setEngine(address arg1) {
    require msg.sender == currentManagerAddress
    engineAddress = arg1
}

function whitelist(address arg1) {
    require msg.sender == currentManagerAddress
    stor12[address(arg1)] = 0
}

function blacklist(address arg1) {
    require msg.sender == currentManagerAddress
    stor12[address(arg1)] = 1
}

function sub_b93afa12(?) {
    require msg.sender == currentManagerAddress
    sub_985f4e4f = arg1
    sub_26b7c01c = arg2
}

function transferManagement(address arg1) {
    require msg.sender == currentManagerAddress
    pendingManagerAddress = arg1
}

function disable() {
    require msg.sender == currentManagerAddress
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Disable()
}

function enable() {
    require msg.sender == currentManagerAddress
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Enable()
}

function sub_147983d3(?) {
    require msg.sender == pendingManagerAddress
    emit ManagementTransferred(currentManagerAddress, pendingManagerAddress);
    currentManagerAddress = pendingManagerAddress
    pendingManagerAddress = 0
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_9860e88c(?) {
    require msg.sender == currentManagerAddress
    call currentManagerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function weiToTokens(uint256 arg1) {
    if not arg1:
        if pricePerToken:
            return (0 / pricePerToken)
    else:
        if arg1:
            if 10^18 * arg1 / arg1 == 10^18:
                if pricePerToken:
                    return (10^18 * arg1 / pricePerToken)
    revert
}

function pullOut(address arg1, uint256 arg2) {
    require msg.sender == currentManagerAddress
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args currentManagerAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function increaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setName(string arg1) {
    require msg.sender == currentManagerAddress
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setSymbol(string arg1) {
    require msg.sender == currentManagerAddress
    symbol.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
}

function setWebsite(string arg1) {
    require msg.sender == currentManagerAddress
    website.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        website[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while website.length + 31 / 32 > idx:
        website[idx] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    require arg2
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if not msg.value:
        require pricePerToken
        require 0 / pricePerToken <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 0 / pricePerToken
        require balanceOf[address(msg.sender)] + (0 / pricePerToken) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 0 / pricePerToken
        emit Transfer((0 / pricePerToken), this.address, msg.sender);
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require pricePerToken
        require 10^18 * msg.value / pricePerToken <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 10^18 * msg.value / pricePerToken
        require balanceOf[address(msg.sender)] + (10^18 * msg.value / pricePerToken) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * msg.value / pricePerToken
        emit Transfer((10^18 * msg.value / pricePerToken), this.address, msg.sender);
}

function sub_88a810d7(?) payable {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    require not stor12[address(arg3)]
    require arg1.length <= batchLimit
    require arg1.length == arg2.length
    if arg4:
        require pricePerToken
        require sub_985f4e4f / pricePerToken <= balanceOf[address(msg.sender)]
        require sub_985f4e4f / pricePerToken <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= sub_985f4e4f / pricePerToken
        require sub_985f4e4f / pricePerToken <= totalSupply
        totalSupply -= sub_985f4e4f / pricePerToken
        emit Transfer((sub_985f4e4f / pricePerToken), msg.sender, 0);
        require totalSupply
        require 10^15 * 14^(1000000 * 10^18 / totalSupply) / 10^15 == 14^(1000000 * 10^18 / totalSupply)
        pricePerToken = 10^15 * 14^(1000000 * 10^18 / totalSupply) / 14
    else:
        require msg.value >= sub_26b7c01c
        require pricePerToken
        if not sub_26b7c01c / pricePerToken:
            if 0 <= balanceOf[address(this.address)]:
                require 0 <= balanceOf[address(this.address)]
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Transfer(0, this.address, msg.sender);
            else:
                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = 0
                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        else:
            require sub_26b7c01c / pricePerToken
            require sub_26b7c01c / pricePerToken * sub_f36f931b / sub_26b7c01c / pricePerToken == sub_f36f931b
            if not sub_26b7c01c / pricePerToken * sub_f36f931b / 100:
                if 0 <= balanceOf[address(this.address)]:
                    require 0 <= balanceOf[address(this.address)]
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, this.address, msg.sender);
                else:
                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            else:
                require sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                require 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 / sub_26b7c01c / pricePerToken * sub_f36f931b / 100 == 10^18
                if 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 > balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    require 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += -1 * 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                    require balanceOf[address(msg.sender)] + (10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                    emit Transfer((10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100), this.address, msg.sender);
    require ext_code.size(engineAddress)
    call engineAddress.0xfbe10fc7 with:
         gas gas_remaining wei
        args 0, 128, (32 * arg1.length) + 160, address(arg3), msg.sender, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x6c1d4b18: msg.sender, arg3
    return 1
}

function sub_602a486c(?) payable {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    require not stor12[address(arg3)]
    require arg1.length <= batchLimit
    require arg1.length == arg2.length
    if arg4:
        require pricePerToken
        require sub_985f4e4f / pricePerToken <= balanceOf[address(msg.sender)]
        require sub_985f4e4f / pricePerToken <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= sub_985f4e4f / pricePerToken
        require sub_985f4e4f / pricePerToken <= totalSupply
        totalSupply -= sub_985f4e4f / pricePerToken
        emit Transfer((sub_985f4e4f / pricePerToken), msg.sender, 0);
        require totalSupply
        require 10^15 * 14^(1000000 * 10^18 / totalSupply) / 10^15 == 14^(1000000 * 10^18 / totalSupply)
        pricePerToken = 10^15 * 14^(1000000 * 10^18 / totalSupply) / 14
    else:
        require msg.value >= sub_26b7c01c
        require pricePerToken
        if not sub_26b7c01c / pricePerToken:
            if 0 <= balanceOf[address(this.address)]:
                require 0 <= balanceOf[address(this.address)]
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Transfer(0, this.address, msg.sender);
            else:
                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = 0
                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        else:
            require sub_26b7c01c / pricePerToken
            require sub_26b7c01c / pricePerToken * sub_f36f931b / sub_26b7c01c / pricePerToken == sub_f36f931b
            if not sub_26b7c01c / pricePerToken * sub_f36f931b / 100:
                if 0 <= balanceOf[address(this.address)]:
                    require 0 <= balanceOf[address(this.address)]
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, this.address, msg.sender);
                else:
                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            else:
                require sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                require 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 / sub_26b7c01c / pricePerToken * sub_f36f931b / 100 == 10^18
                if 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 > balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    require 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += -1 * 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                    require balanceOf[address(msg.sender)] + (10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                    emit Transfer((10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100), this.address, msg.sender);
    require ext_code.size(engineAddress)
    call engineAddress.0x3aed0b32 with:
         gas gas_remaining wei
        args 0, 160, (32 * arg1.length) + 192, address(arg3), arg5, address(msg.sender), arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x6c1d4b18: msg.sender, arg3
    return 1
}

function sub_81ae648b(?) payable {
    if not uint8(stor1.field_160):
        require msg.sender == currentManagerAddress
    require arg1.length <= batchLimit
    require arg1.length == arg2.length
    if arg3:
        require pricePerToken
        require sub_985f4e4f / pricePerToken <= balanceOf[address(msg.sender)]
        require sub_985f4e4f / pricePerToken <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= sub_985f4e4f / pricePerToken
        require sub_985f4e4f / pricePerToken <= totalSupply
        totalSupply -= sub_985f4e4f / pricePerToken
        emit Transfer((sub_985f4e4f / pricePerToken), msg.sender, 0);
        require totalSupply
        require 10^15 * 14^(1000000 * 10^18 / totalSupply) / 10^15 == 14^(1000000 * 10^18 / totalSupply)
        pricePerToken = 10^15 * 14^(1000000 * 10^18 / totalSupply) / 14
        require ext_code.size(engineAddress)
        call engineAddress.0x49dc0951 with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 64, (32 * arg1.length) + 96, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        require sub_26b7c01c <= msg.value
        require ext_code.size(engineAddress)
        call engineAddress.0x49dc0951 with:
           value msg.value - sub_26b7c01c wei
             gas gas_remaining wei
            args 0, 64, (32 * arg1.length) + 96, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require pricePerToken
        if not sub_26b7c01c / pricePerToken:
            if 0 <= balanceOf[address(this.address)]:
                require 0 <= balanceOf[address(this.address)]
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Transfer(0, this.address, msg.sender);
            else:
                require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = 0
                require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
        else:
            require sub_26b7c01c / pricePerToken
            require sub_26b7c01c / pricePerToken * sub_f36f931b / sub_26b7c01c / pricePerToken == sub_f36f931b
            if not sub_26b7c01c / pricePerToken * sub_f36f931b / 100:
                if 0 <= balanceOf[address(this.address)]:
                    require 0 <= balanceOf[address(this.address)]
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Transfer(0, this.address, msg.sender);
                else:
                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            else:
                require sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                require 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 / sub_26b7c01c / pricePerToken * sub_f36f931b / 100 == 10^18
                if 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 > balanceOf[address(this.address)]:
                    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = 0
                    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
                    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                else:
                    require 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] += -1 * 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                    require balanceOf[address(msg.sender)] + (10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100
                    emit Transfer((10^18 * sub_26b7c01c / pricePerToken * sub_f36f931b / 100), this.address, msg.sender);
    emit 0x6c1d4b18: msg.sender, 0
    return 1
}



}
