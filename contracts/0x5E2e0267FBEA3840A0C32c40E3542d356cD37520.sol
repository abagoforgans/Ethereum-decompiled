contract main {




// =====================  Runtime code  =====================


const ETH_TOKEN_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
address kyberAddress;
address exchangeAdapterManagerAddress;
uint256 exchangeId;
uint256 name;
uint8 stor5; offset 160
address walletIdAddress;

function name() {
    return name
}

function exchangeId() {
    return exchangeId
}

function adapterEnabled() {
    return bool(stor5)
}

function isEnabled() {
    return bool(stor5)
}

function owner() {
    return owner
}

function kyber() {
    return kyberAddress
}

function walletId() {
    return walletIdAddress
}

function exchangeAdapterManager() {
    return exchangeAdapterManagerAddress
}

function _fallback() payable {
    revert
}

function getExchangeDetails() {
    return name, bool(stor5)
}

function enable() {
    require msg.sender == owner
    stor5 = 1
    return 1
}

function disable() {
    require msg.sender == owner
    stor5 = 0
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setExchangeAdapterManager(address arg1) {
    require msg.sender == owner
    exchangeAdapterManagerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setExchangeDetails(bytes32 arg1, bytes32 arg2) {
    require msg.sender == exchangeAdapterManagerAddress
    exchangeId = arg1
    name = arg2
    return 1
}

function configAdapter(address arg1, address arg2) {
    require msg.sender == owner
    if arg1:
        kyberAddress = arg1
    if arg2:
        walletIdAddress = arg2
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPrice(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(kyberAddress)
    call kyberAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function supportsTradingPair(address arg1, address arg2) {
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        require ext_code.size(this.address)
        call this.address.0xa9dd14d6 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), 10^18
    else:
        require ext_code.size(arg1)
        call arg1.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(this.address)
        call this.address.0xa9dd14d6 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (0 < ext_call.return_data[0])
}

function sellToken(address arg1, uint256 arg2, uint256 arg3, address arg4) {
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args kyberAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(kyberAddress)
    call kyberAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < arg3:
        return 0
    require ext_code.size(kyberAddress)
    call kyberAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(arg2), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg4), -1, arg3, walletIdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function buyToken(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    if arg2 > eth.balance(this.address):
        return 0
    require arg2 == msg.value
    require ext_code.size(kyberAddress)
    call kyberAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < arg3:
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kyberAddress)
    call kyberAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(arg2), address(arg1), address(arg4), -1, arg3, walletIdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > ext_call.return_data[0]
    return 1
}



}
