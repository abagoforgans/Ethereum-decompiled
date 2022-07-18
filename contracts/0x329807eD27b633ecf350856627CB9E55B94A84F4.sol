contract main {




// =====================  Runtime code  =====================


#
#  - sub_b725e8b8(?)
#
uint256 stor0;
uint256 stor1;
mapping of struct stor3;
array of address stor4;
uint256 stor5;
address owner;
address etherWalletAddress;
uint256 minimumEther;
address stor9;
uint8 stor10;
uint16 stor10; offset 168
address stor10;

function etherWallet() {
    return etherWalletAddress
}

function minimumEther() {
    return minimumEther
}

function getOwner() {
    return owner
}

function sub_ad08bac5(?) {
    return stor4.length
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function sub_b0f004b0(?) {
    stor5 = arg1
}

function sub_b7ed0140(?) {
    return stor0, stor1
}

function sub_5426cc6c(?) {
    require msg.sender == owner
    minimumEther = arg1
}

function token() {
    return stor9, address(stor10.field_0), uint8(stor10.field_0), uint16(stor10.field_168)
}

function getTokenInfo() {
    return stor9, address(stor10.field_0), uint8(stor10.field_0), uint16(stor10.field_168)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8e717883(?) {
    require stor5
    if not stor4.length / stor5:
        require 0 <= stor4.length
        if stor4.length <= 0:
            return (stor4.length / stor5)
    else:
        require stor4.length / stor5
        require stor4.length / stor5 * stor5 / stor4.length / stor5 == stor5
        require stor4.length / stor5 * stor5 <= stor4.length
        if stor4.length - (stor4.length / stor5 * stor5) <= 0:
            return (stor4.length / stor5)
    return ((stor4.length / stor5) + 1)
}

function buyToken(address arg1) {
    if not msg.value:
        require arg1
        require msg.value > minimumEther
        require stor3[address(arg1)].field_0 + msg.value >= stor3[address(arg1)].field_0
        stor3[address(arg1)].field_0 += msg.value
        require stor3[address(arg1)].field_256 >= stor3[address(arg1)].field_256
        stor3[address(arg1)].field_512 = 0
        require stor0 + msg.value >= stor0
        stor0 += msg.value
        require stor1 >= stor1
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != arg1:
                idx = idx + 1
                continue 
            require ext_code.size(stor9)
            call stor9.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor10.field_0), address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call etherWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase(0, arg1);
        stor4.length++
        stor4[stor4.length] = arg1
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args address(stor10.field_0), address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call etherWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit TokenPurchase(0, arg1);
    else:
        require msg.value
        require msg.value * uint16(stor10.field_168) / msg.value == uint16(stor10.field_168)
        require arg1
        require msg.value > minimumEther
        require stor3[address(arg1)].field_0 + msg.value >= stor3[address(arg1)].field_0
        stor3[address(arg1)].field_0 += msg.value
        require stor3[address(arg1)].field_256 + (msg.value * uint16(stor10.field_168)) >= stor3[address(arg1)].field_256
        stor3[address(arg1)].field_256 += msg.value * uint16(stor10.field_168)
        stor3[address(arg1)].field_512 = 0
        require stor0 + msg.value >= stor0
        stor0 += msg.value
        require stor1 + (msg.value * uint16(stor10.field_168)) >= stor1
        stor1 += msg.value * uint16(stor10.field_168)
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != arg1:
                idx = idx + 1
                continue 
            require ext_code.size(stor9)
            call stor9.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor10.field_0), address(arg1), msg.value * uint16(stor10.field_168)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call etherWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase((msg.value * uint16(stor10.field_168)), arg1);
        stor4.length++
        stor4[stor4.length] = arg1
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args address(stor10.field_0), address(arg1), msg.value * uint16(stor10.field_168)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call etherWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit TokenPurchase((msg.value * uint16(stor10.field_168)), arg1);
}

function _fallback() payable {
    if not msg.value:
        require msg.sender
        require msg.value > minimumEther
        require stor3[address(msg.sender)].field_0 + msg.value >= stor3[address(msg.sender)].field_0
        stor3[address(msg.sender)].field_0 += msg.value
        require stor3[address(msg.sender)].field_256 >= stor3[address(msg.sender)].field_256
        stor3[address(msg.sender)].field_512 = 0
        require stor0 + msg.value >= stor0
        stor0 += msg.value
        require stor1 >= stor1
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != msg.sender:
                idx = idx + 1
                continue 
            require ext_code.size(stor9)
            call stor9.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor10.field_0), msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call etherWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase(0, msg.sender);
        stor4.length++
        stor4[stor4.length] = msg.sender
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args address(stor10.field_0), msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call etherWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit TokenPurchase(0, msg.sender);
    else:
        require msg.value
        require msg.value * uint16(stor10.field_168) / msg.value == uint16(stor10.field_168)
        require msg.sender
        require msg.value > minimumEther
        require stor3[address(msg.sender)].field_0 + msg.value >= stor3[address(msg.sender)].field_0
        stor3[address(msg.sender)].field_0 += msg.value
        require stor3[address(msg.sender)].field_256 + (msg.value * uint16(stor10.field_168)) >= stor3[address(msg.sender)].field_256
        stor3[address(msg.sender)].field_256 += msg.value * uint16(stor10.field_168)
        stor3[address(msg.sender)].field_512 = 0
        require stor0 + msg.value >= stor0
        stor0 += msg.value
        require stor1 + (msg.value * uint16(stor10.field_168)) >= stor1
        stor1 += msg.value * uint16(stor10.field_168)
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != msg.sender:
                idx = idx + 1
                continue 
            require ext_code.size(stor9)
            call stor9.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor10.field_0), msg.sender, msg.value * uint16(stor10.field_168)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call etherWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            emit TokenPurchase((msg.value * uint16(stor10.field_168)), msg.sender);
        stor4.length++
        stor4[stor4.length] = msg.sender
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args address(stor10.field_0), msg.sender, msg.value * uint16(stor10.field_168)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call etherWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        emit TokenPurchase((msg.value * uint16(stor10.field_168)), msg.sender);
}



}
