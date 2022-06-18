contract main {




// =====================  Runtime code  =====================


const sub_e6c6aa6f(?) = 10


address owner;
uint256 stor1;
address sub_849b2fe1Address;
address sub_43297433Address;
address signerAddress;
address walletAddress;
address administratorAddress;
uint256 sub_ae6a916e;

function signer() {
    return signerAddress
}

function sub_43297433(?) {
    return sub_43297433Address
}

function wallet() {
    return walletAddress
}

function sub_849b2fe1(?) {
    return sub_849b2fe1Address
}

function owner() {
    return owner
}

function sub_ae6a916e(?) {
    return sub_ae6a916e
}

function administrator() {
    return administratorAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_9733c230(?) {
    require msg.sender == owner
    sub_43297433Address = arg1
}

function sub_4bbafdb5(?) {
    require msg.sender == owner
    administratorAddress = arg1
    emit 0xec7f9681: arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setWalletAddress(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
    emit WalletChanged(arg1);
}

function sub_dd6b6b7c(?) {
    require msg.sender == owner
    emit TokenPriceChanged(sub_ae6a916e, arg1);
    sub_ae6a916e = arg1
}

function setSignerAddress(address arg1) {
    require msg.sender == owner
    signerAddress = arg1
    emit CrowdsaleSignerChanged(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens() {
    require msg.sender == owner
    require ext_code.size(sub_849b2fe1Address)
    call sub_849b2fe1Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_849b2fe1Address)
    call sub_849b2fe1Address.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_849b2fe1Address)
    call sub_849b2fe1Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7024be2a(?) {
    if administratorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'sendTokens() method may be called only by administrator '
    require ext_code.size(sub_849b2fe1Address)
    call sub_849b2fe1Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_849b2fe1Address)
    call sub_849b2fe1Address.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        require 10^ext_call.return_data[31 len 1] > 0
        require 10^ext_call.return_data[31 len 1]
        require ext_code.size(sub_43297433Address)
        call sub_43297433Address.0xdda18611 with:
             gas gas_remaining wei
            args 0, 0, address(arg1), arg3, 0 / 10^uint8(ext_call.return_data[0]), arg2
    else:
        require sub_ae6a916e * arg3 / arg3 == sub_ae6a916e
        require 10^ext_call.return_data[31 len 1] > 0
        require 10^ext_call.return_data[31 len 1]
        require ext_code.size(sub_43297433Address)
        call sub_43297433Address.0xdda18611 with:
             gas gas_remaining wei
            args 0, 0, address(arg1), arg3, sub_ae6a916e * arg3 / 10^uint8(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SendTokens(arg3, arg1);
}

function buyTokens(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) payable {
    stor1++
    if arg6 < block.timestamp:
        revert with 0, 'Signature expired'
    if not arg1:
        revert with 0, 'Token receiver must be provided'
    if arg5 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimal amount to purchase must be greater than 0'
    if not walletAddress:
        revert with 0, 'Wallet must be set'
    if arg5 > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchased amount is less than min amount to invest'
    signer = erecover(sha3(arg4, arg5, arg1, arg2, arg3, Mask(192, 64, arg6) >> 64 >> 1024, uint64(arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if signerAddress != address(signer):
        revert with 0, 'Something wrong with signature'
    require ext_code.size(sub_849b2fe1Address)
    call sub_849b2fe1Address.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require arg4 > 0
        require arg4
        require ext_code.size(sub_849b2fe1Address)
        call sub_849b2fe1Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0 / arg4:
            revert with 0, 'Not enough tokens in sale contract'
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_849b2fe1Address)
        call sub_849b2fe1Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0 / arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_849b2fe1Address)
        call sub_849b2fe1Address.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / arg4:
            require 10^ext_call.return_data[31 len 1] > 0
            require 10^ext_call.return_data[31 len 1]
            require ext_code.size(sub_43297433Address)
            call sub_43297433Address.0xdda18611 with:
                 gas gas_remaining wei
                args address(arg2), address(arg1), 0 / arg4, 0 / 10^uint8(ext_call.return_data[0]), arg3
        else:
            require sub_ae6a916e * 0 / arg4 / 0 / arg4 == sub_ae6a916e
            require 10^ext_call.return_data[31 len 1] > 0
            require 10^ext_call.return_data[31 len 1]
            require ext_code.size(sub_43297433Address)
            call sub_43297433Address.0xdda18611 with:
                 gas gas_remaining wei
                args address(arg2), address(arg1), 0 / arg4, sub_ae6a916e * 0 / arg4 / 10^uint8(ext_call.return_data[0]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit BuyTokens(arg4, 0 / arg4, msg.sender, arg1);
    else:
        require 10^ext_call.return_data[31 len 1] * msg.value / msg.value == 10^ext_call.return_data[31 len 1]
        require arg4 > 0
        require arg4
        require ext_code.size(sub_849b2fe1Address)
        call sub_849b2fe1Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 10^uint8(ext_call.return_data[0]) * msg.value / arg4:
            revert with 0, 'Not enough tokens in sale contract'
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_849b2fe1Address)
        call sub_849b2fe1Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 10^uint8(ext_call.return_data[0]) * msg.value / arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_849b2fe1Address)
        call sub_849b2fe1Address.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 10^uint8(ext_call.return_data[0]) * msg.value / arg4:
            require 10^ext_call.return_data[31 len 1] > 0
            require 10^ext_call.return_data[31 len 1]
            require ext_code.size(sub_43297433Address)
            call sub_43297433Address.0xdda18611 with:
                 gas gas_remaining wei
                args address(arg2), address(arg1), 10^uint8(ext_call.return_data[0]) * msg.value / arg4, 0 / 10^uint8(ext_call.return_data[0]), arg3
        else:
            require sub_ae6a916e * 10^uint8(ext_call.return_data[0]) * msg.value / arg4 / 10^uint8(ext_call.return_data[0]) * msg.value / arg4 == sub_ae6a916e
            require 10^ext_call.return_data[31 len 1] > 0
            require 10^ext_call.return_data[31 len 1]
            require ext_code.size(sub_43297433Address)
            call sub_43297433Address.0xdda18611 with:
                 gas gas_remaining wei
                args address(arg2), address(arg1), 10^uint8(ext_call.return_data[0]) * msg.value / arg4, sub_ae6a916e * 10^uint8(ext_call.return_data[0]) * msg.value / arg4 / 10^uint8(ext_call.return_data[0]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit BuyTokens(arg4, 10^uint8(ext_call.return_data[0]) * msg.value / arg4, msg.sender, arg1);
    require stor1 + 1 == stor1
}



}
