contract main {




// =====================  Runtime code  =====================


const decimals = 8


address owner;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint256 capitalization;
uint256 exchangeRate;
mapping of uint256 balanceOf;
uint256 totalSupply;
address serviceWalletAddress;
address migrateToAddress;
address sub_318c9d15Address;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_318c9d15(?) {
    return sub_318c9d15Address
}

function exchangeRate() {
    return exchangeRate
}

function serviceWallet() {
    return serviceWalletAddress
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function migrateTo() {
    return migrateToAddress
}

function capitalization() {
    return capitalization
}

function _fallback() payable {
    revert
}

function setPendingOwner(address arg1) {
    require msg.sender == owner
    require arg1
    stor1 = arg1
    return 1
}

function getOwnership() {
    require msg.sender == stor1
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
    return 1
}

function sub_2bbda87d(?) {
    require msg.sender == owner
    require arg1
    migrateToAddress = arg1
    emit 0x1b8369b3: arg1
    return 1
}

function setServiceWallet(address arg1) {
    require msg.sender == owner
    require arg1
    serviceWalletAddress = arg1
    emit 0xf53874c5: serviceWalletAddress
    return 1
}

function migrateFrom(address arg1, uint256 arg2) {
    require sub_318c9d15Address == msg.sender
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit 0xc1a660f7: address(arg1), arg2
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2
    require arg1
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setCapitalization(uint256 arg1) {
    require msg.sender == owner
    capitalization = arg1
    if totalSupply > 0:
        if not capitalization:
            require totalSupply
            exchangeRate = 0 / totalSupply
        else:
            require capitalization
            require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
            require totalSupply
            exchangeRate = 100 * 10^6 * capitalization / totalSupply
    emit 0x2fc214ed: capitalization, capitalization
    return 1
}

function withdrawCommission(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        require exchangeRate
        require serviceWalletAddress
        require arg1
        require 0 / exchangeRate <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= 0 / exchangeRate
        require balanceOf[stor8] + (0 / exchangeRate) >= balanceOf[stor8]
        balanceOf[stor8] += 0 / exchangeRate
        emit 0xd97d0a78: 0 / exchangeRate, exchangeRate, arg1
    else:
        require arg2
        require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
        require exchangeRate
        require serviceWalletAddress
        require arg1
        require 100 * 10^6 * arg2 / exchangeRate <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= 100 * 10^6 * arg2 / exchangeRate
        require balanceOf[stor8] + (100 * 10^6 * arg2 / exchangeRate) >= balanceOf[stor8]
        balanceOf[stor8] += 100 * 10^6 * arg2 / exchangeRate
        emit 0xd97d0a78: 100 * 10^6 * arg2 / exchangeRate, exchangeRate, arg1
}

function migrate(address arg1) {
    require msg.sender == owner
    require migrateToAddress
    require arg1
    require balanceOf[address(arg1)] > 0
    require exchangeRate > 0
    if not balanceOf[address(arg1)]:
        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = 0
        require balanceOf[address(arg1)] <= totalSupply
        totalSupply -= balanceOf[address(arg1)]
        require 0 <= capitalization
    else:
        require balanceOf[address(arg1)]
        require balanceOf[address(arg1)] * exchangeRate / balanceOf[address(arg1)] == exchangeRate
        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = 0
        require balanceOf[address(arg1)] <= totalSupply
        totalSupply -= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] * exchangeRate / 100 * 10^6 <= capitalization
        capitalization -= balanceOf[address(arg1)] * exchangeRate / 100 * 10^6
    require ext_code.size(migrateToAddress)
    call migrateToAddress.0x7a3130e3 with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb6bb5703: migrateToAddress, arg1
    return 1
}

function withdrawFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require exchangeRate > 0
    if not arg2:
        require arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        require 0 <= capitalization
        if totalSupply > 0:
            if not capitalization:
                require totalSupply
                exchangeRate = 0 / totalSupply
            else:
                require capitalization
                require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
                require totalSupply
                exchangeRate = 100 * 10^6 * capitalization / totalSupply
        emit Sold(arg2, exchangeRate, arg1);
        return 1, 0
    require arg2
    require arg2 * exchangeRate / arg2 == exchangeRate
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 * exchangeRate / 100 * 10^6 <= capitalization
    capitalization -= arg2 * exchangeRate / 100 * 10^6
    if totalSupply > 0:
        if not capitalization:
            require totalSupply
            exchangeRate = 0 / totalSupply
        else:
            require capitalization
            require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
            require totalSupply
            exchangeRate = 100 * 10^6 * capitalization / totalSupply
    emit Sold(arg2, exchangeRate, arg1);
    return 1, arg2 * exchangeRate / 100 * 10^6
}

function sub_3df37a47(?) {
    require msg.sender == owner
    if not arg1:
        require exchangeRate
        require serviceWalletAddress
        require 0 / exchangeRate > 0
        require balanceOf[stor8] + (0 / exchangeRate) >= balanceOf[stor8]
        balanceOf[stor8] += 0 / exchangeRate
        require totalSupply + (0 / exchangeRate) >= totalSupply
        totalSupply += 0 / exchangeRate
        require capitalization >= capitalization
        if totalSupply > 0:
            if not capitalization:
                require totalSupply
                exchangeRate = 0 / totalSupply
            else:
                require capitalization
                require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
                require totalSupply
                exchangeRate = 100 * 10^6 * capitalization / totalSupply
        emit 0xb330cc7a: 0 / exchangeRate, totalSupply, exchangeRate, exchangeRate
    else:
        require arg1
        require 100 * 10^6 * arg1 / arg1 == 100 * 10^6
        require exchangeRate
        require serviceWalletAddress
        require 100 * 10^6 * arg1 / exchangeRate > 0
        require balanceOf[stor8] + (100 * 10^6 * arg1 / exchangeRate) >= balanceOf[stor8]
        balanceOf[stor8] += 100 * 10^6 * arg1 / exchangeRate
        require totalSupply + (100 * 10^6 * arg1 / exchangeRate) >= totalSupply
        totalSupply += 100 * 10^6 * arg1 / exchangeRate
        require capitalization >= capitalization
        if totalSupply > 0:
            if not capitalization:
                require totalSupply
                exchangeRate = 0 / totalSupply
            else:
                require capitalization
                require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
                require totalSupply
                exchangeRate = 100 * 10^6 * capitalization / totalSupply
        emit 0xb330cc7a: 100 * 10^6 * arg1 / exchangeRate, totalSupply, exchangeRate, exchangeRate
}

function depositTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg2:
        require exchangeRate
        require arg1
        require 0 / exchangeRate > 0
        require balanceOf[address(arg1)] + (0 / exchangeRate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 0 / exchangeRate
        require totalSupply + (0 / exchangeRate) >= totalSupply
        totalSupply += 0 / exchangeRate
        require capitalization + arg2 >= capitalization
        capitalization += arg2
        if totalSupply > 0:
            if not capitalization:
                require totalSupply
                exchangeRate = 0 / totalSupply
            else:
                require capitalization
                require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
                require totalSupply
                exchangeRate = 100 * 10^6 * capitalization / totalSupply
        emit Bought(0 / exchangeRate, exchangeRate, arg1);
    else:
        require arg2
        require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
        require exchangeRate
        require arg1
        require 100 * 10^6 * arg2 / exchangeRate > 0
        require balanceOf[address(arg1)] + (100 * 10^6 * arg2 / exchangeRate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 100 * 10^6 * arg2 / exchangeRate
        require totalSupply + (100 * 10^6 * arg2 / exchangeRate) >= totalSupply
        totalSupply += 100 * 10^6 * arg2 / exchangeRate
        require capitalization + arg2 >= capitalization
        capitalization += arg2
        if totalSupply > 0:
            if not capitalization:
                require totalSupply
                exchangeRate = 0 / totalSupply
            else:
                require capitalization
                require 100 * 10^6 * capitalization / capitalization == 100 * 10^6
                require totalSupply
                exchangeRate = 100 * 10^6 * capitalization / totalSupply
        emit Bought(100 * 10^6 * arg2 / exchangeRate, exchangeRate, arg1);
    return 1
}



}
