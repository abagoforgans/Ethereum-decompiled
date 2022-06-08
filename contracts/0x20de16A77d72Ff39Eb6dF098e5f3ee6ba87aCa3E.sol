contract main {




// =====================  Runtime code  =====================


#
#  - sub_35492056(?)
#  - buy()
#
address owner;
address coinvestAddress;
mapping of uint8 stor2;
address daiAddress;
address pethAddress;
address wethAddress;
address sub_a3afda1aAddress;
address tubAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address tapAddress;
uint256 sub_be37757a;
uint256 sub_eb4f6e9f;

function coinvest() {
    return coinvestAddress
}

function tub() {
    return tubAddress
}

function weth() {
    return wethAddress
}

function admins(address arg1) {
    return bool(stor2[arg1])
}

function peth() {
    return pethAddress
}

function testing() {
    return bool(uint8(stor8.field_160))
}

function owner() {
    return owner
}

function sub_a3afda1a(?) {
    return sub_a3afda1aAddress
}

function sub_be37757a(?) {
    return sub_be37757a
}

function sub_eb4f6e9f(?) {
    return sub_eb4f6e9f
}

function dai() {
    return daiAddress
}

function tap() {
    return tapAddress
}

function _fallback() payable {
    revert
}

function transferCoinvest(address arg1) {
    require msg.sender == coinvestAddress
    require arg1
    coinvestAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ba7a5b11(?) {
    require stor2[address(msg.sender)]
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
    sub_be37757a = arg2
    sub_eb4f6e9f = arg3
}

function alterAdmin(address arg1, bool arg2) {
    require msg.sender == coinvestAddress
    require arg1
    require arg1 != coinvestAddress
    stor2[address(arg1)] = uint8(arg2)
}

function withdraw(address arg1) {
    require stor2[address(msg.sender)]
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function approve() {
    require stor2[address(msg.sender)]
    require ext_code.size(daiAddress)
    call daiAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tapAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pethAddress)
    call pethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_a3afda1aAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_150bf6fc(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(tubAddress)
        call tubAddress.safe(bytes32 arg1) with:
             gas gas_remaining wei
            args _15
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < arg1.length
            _21 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0x40cc885400000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = _21
            require ext_code.size(tubAddress)
            call tubAddress.bite(bytes32 arg1) with:
                 gas gas_remaining wei
                args _21
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
}

function checkProfit(uint256 arg1) {
    require ext_code.size(daiAddress)
    call daiAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tapAddress)
    call tapAddress.ask(uint256 arg1) with:
         gas gas_remaining wei
        args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
        call tubAddress.bid(uint256 arg1) with:
             gas gas_remaining wei
            args (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_a3afda1aAddress)
        call sub_a3afda1aAddress.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args daiAddress, wethAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0], 
               ext_call.return_data[0] - (10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18),
               10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    call tubAddress.bid(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3afda1aAddress)
    call sub_a3afda1aAddress.getBuyAmount(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args daiAddress, wethAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0] - (arg1 * ext_call.return_data[0] / 10^18), arg1
}



}
