contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    require msg.sender
    require msg.sender == stor0
    require msg.sender
    stor1 = msg.sender
    stor2 = 0xee2a06ef4281c7a4aa3b4c6bbc21354e7e87c26e
    stor3 = 132 * 10^18
    stor6 = 1440 * 24 * 3600
    stor5 = 25
    return code.data[640 len 3516]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address walletAddress;
address tokenAddress;
uint256 total;
uint256 sub_002a1776;
uint256 sub_3fd0a40f;
uint256 sub_e4a9f192;
uint256 unlockTimestamp;

function sub_002a1776(?) {
    return sub_002a1776
}

function total() {
    return total
}

function sub_3fd0a40f(?) {
    return sub_3fd0a40f
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function unlockTimestamp() {
    return unlockTimestamp
}

function keepEth() {
    return bool(uint8(stor1.field_160))
}

function sub_e4a9f192(?) {
    return sub_e4a9f192
}

function token() {
    return tokenAddress
}

function depositEth() payable {
  stop
}

function _fallback() payable {
    revert
}

function setUnlockTimestamp(uint256 arg1) {
    require msg.sender == owner
    unlockTimestamp = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function setKeepEth(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth2Wallet(uint256 arg1) {
    require msg.sender == owner
    require walletAddress
    require arg1 > 0
    call walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_bd4ca607(?) {
    require msg.sender == owner
    require arg1 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_310f767d(?) {
    if not unlockTimestamp:
        return 0
    if block.timestamp < unlockTimestamp:
        return 0
    require unlockTimestamp <= block.timestamp
    require sub_e4a9f192
    require (block.timestamp - unlockTimestamp / sub_e4a9f192) + 1 >= block.timestamp - unlockTimestamp / sub_e4a9f192
    if not sub_3fd0a40f:
        return 0
    require sub_3fd0a40f
    require sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f) / sub_3fd0a40f == (block.timestamp - unlockTimestamp / sub_e4a9f192) + 1
    if sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f) < 100:
        return (sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f))
    return 100
}

function getWithdrawableAmount() {
    if not unlockTimestamp:
        if not total:
            if sub_002a1776 <= 0:
                return -sub_002a1776
        else:
            if total:
                if not 0 / total:
                    if sub_002a1776 <= 0:
                        return -sub_002a1776
    else:
        if block.timestamp < unlockTimestamp:
            if not total:
                if sub_002a1776 <= 0:
                    return -sub_002a1776
            else:
                if total:
                    if not 0 / total:
                        if sub_002a1776 <= 0:
                            return -sub_002a1776
        else:
            if unlockTimestamp <= block.timestamp:
                if sub_e4a9f192:
                    if (block.timestamp - unlockTimestamp / sub_e4a9f192) + 1 >= block.timestamp - unlockTimestamp / sub_e4a9f192:
                        if not sub_3fd0a40f:
                            if not total:
                                if sub_002a1776 <= 0:
                                    return -sub_002a1776
                            else:
                                if total:
                                    if not 0 / total:
                                        if sub_002a1776 <= 0:
                                            return -sub_002a1776
                        else:
                            if sub_3fd0a40f:
                                if sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f) / sub_3fd0a40f == (block.timestamp - unlockTimestamp / sub_e4a9f192) + 1:
                                    if sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f) < 100:
                                        if not total:
                                            if sub_002a1776 <= 0:
                                                return -sub_002a1776
                                        else:
                                            if total:
                                                if (sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / total == sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f):
                                                    if sub_002a1776 <= (sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100:
                                                        return (((sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100) - sub_002a1776)
                                    else:
                                        if not total:
                                            if sub_002a1776 <= 0:
                                                return -sub_002a1776
                                        else:
                                            if total:
                                                if 100 * total / total == 100:
                                                    if sub_002a1776 <= 100 * total / 100:
                                                        return ((100 * total / 100) - sub_002a1776)
    revert
}

function withdraw() {
    require msg.sender == owner
    if not unlockTimestamp:
        if not total:
            if sub_002a1776 <= 0:
                require -sub_002a1776 > 0
                if 0 >= sub_002a1776:
                    sub_002a1776 = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args walletAddress, -sub_002a1776
                    require ext_call.success
                    if ext_call.return_data[0]:
        else:
            if total:
                if not 0 / total:
                    if sub_002a1776 <= 0:
                        require -sub_002a1776 > 0
                        if 0 >= sub_002a1776:
                            sub_002a1776 = 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args walletAddress, -sub_002a1776
                            require ext_call.success
                            if ext_call.return_data[0]:
    else:
        if block.timestamp < unlockTimestamp:
            if not total:
                if sub_002a1776 <= 0:
                    require -sub_002a1776 > 0
                    if 0 >= sub_002a1776:
                        sub_002a1776 = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args walletAddress, -sub_002a1776
                        require ext_call.success
                        if ext_call.return_data[0]:
            else:
                if total:
                    if not 0 / total:
                        if sub_002a1776 <= 0:
                            require -sub_002a1776 > 0
                            if 0 >= sub_002a1776:
                                sub_002a1776 = 0
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args walletAddress, -sub_002a1776
                                require ext_call.success
                                if ext_call.return_data[0]:
        else:
            if unlockTimestamp <= block.timestamp:
                if sub_e4a9f192:
                    if (block.timestamp - unlockTimestamp / sub_e4a9f192) + 1 >= block.timestamp - unlockTimestamp / sub_e4a9f192:
                        if not sub_3fd0a40f:
                            if not total:
                                if sub_002a1776 <= 0:
                                    require -sub_002a1776 > 0
                                    if 0 >= sub_002a1776:
                                        sub_002a1776 = 0
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args walletAddress, -sub_002a1776
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                            else:
                                if total:
                                    if not 0 / total:
                                        if sub_002a1776 <= 0:
                                            require -sub_002a1776 > 0
                                            if 0 >= sub_002a1776:
                                                sub_002a1776 = 0
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args walletAddress, -sub_002a1776
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                        else:
                            if sub_3fd0a40f:
                                if sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f) / sub_3fd0a40f == (block.timestamp - unlockTimestamp / sub_e4a9f192) + 1:
                                    if sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f) < 100:
                                        if not total:
                                            if sub_002a1776 <= 0:
                                                require -sub_002a1776 > 0
                                                if 0 >= sub_002a1776:
                                                    sub_002a1776 = 0
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args walletAddress, -sub_002a1776
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                        else:
                                            if total:
                                                if (sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / total == sub_3fd0a40f + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f):
                                                    if sub_002a1776 <= (sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100:
                                                        require ((sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100) - sub_002a1776 > 0
                                                        if (sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100 >= sub_002a1776:
                                                            sub_002a1776 = (sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args walletAddress, ((sub_3fd0a40f * total) + (block.timestamp - unlockTimestamp / sub_e4a9f192 * sub_3fd0a40f * total) / 100) - sub_002a1776
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                    else:
                                        if not total:
                                            if sub_002a1776 <= 0:
                                                require -sub_002a1776 > 0
                                                if 0 >= sub_002a1776:
                                                    sub_002a1776 = 0
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args walletAddress, -sub_002a1776
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                        else:
                                            if total:
                                                if 100 * total / total == 100:
                                                    if sub_002a1776 <= 100 * total / 100:
                                                        require (100 * total / 100) - sub_002a1776 > 0
                                                        if 100 * total / 100 >= sub_002a1776:
                                                            sub_002a1776 = 100 * total / 100
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args walletAddress, (100 * total / 100) - sub_002a1776
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
    revert
}



}
