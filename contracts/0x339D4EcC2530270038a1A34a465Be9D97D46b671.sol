contract main {




// =====================  Runtime code  =====================


const test = block.timestamp


address stor0;
address stor1;
uint256 USD;
uint256 stor4;
uint256 sub_e62854c7;
uint256 stor6;
uint256 ETH;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function getETH() {
    if ETH <= 0:
        revert with 0, 'Invalid ticker'
    if stor8 <= 0:
        revert with 0, 'Invalid ticker'
    if stor8 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    return ETH
}

function getUSD() {
    if USD <= 0:
        revert with 0, 'Invalid ticker'
    if stor4 <= 0:
        revert with 0, 'Invalid ticker'
    if stor4 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    return USD
}

function sub_e62854c7(?) {
    if sub_e62854c7 <= 0:
        revert with 0, 'Invalid ticker'
    if stor6 <= 0:
        revert with 0, 'Invalid ticker'
    if stor6 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    return sub_e62854c7
}

function _fallback() payable {
    revert
}

function sub_01b0b2ff(?) {
    require calldata.size - 4 >= 32
    require 10^stor9 > 0
    require 10^stor9
    return (arg1 / 10^stor9)
}

function sub_7a027837(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require 10^stor9 * arg1 / arg1 == 10^stor9
    return (10^stor9 * arg1)
}

function setCoOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can perform this function'
    stor1 = arg1
}

function sub_462755e0(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the owner or coOwner can perform this function'
    ETH = arg1
    stor8 = block.timestamp
    emit 0xb9e95168: Array(len=3, data='ETH'), arg1
}

function setUSD(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the owner or coOwner can perform this function'
    USD = arg1
    stor4 = block.timestamp
    emit 0xb9e95168: Array(len=3, data='USD'), arg1
}

function sub_acc9a863(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the owner or coOwner can perform this function'
    sub_e62854c7 = arg1
    stor6 = block.timestamp
    emit 0xb9e95168: Array(len=3, data='BTC'), arg1
}

function sub_ea5073ed(?) {
    require calldata.size - 4 >= 32
    if ETH <= 0:
        revert with 0, 'Invalid ticker'
    if stor8 <= 0:
        revert with 0, 'Invalid ticker'
    if stor8 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    if not arg1:
        require ETH > 0
        if ETH:
            return (0 / ETH)
    else:
        require 10^stor9 * arg1 / arg1 == 10^stor9
        require ETH > 0
        if ETH:
            return (10^stor9 * arg1 / ETH)
    ('iszero', ('stor', ('name', 'ETH', 7)))
    revert
}

function sub_f2db183e(?) {
    require calldata.size - 4 >= 32
    if USD <= 0:
        revert with 0, 'Invalid ticker'
    if stor4 <= 0:
        revert with 0, 'Invalid ticker'
    if stor4 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    if not arg1:
        require USD > 0
        if USD:
            return (0 / USD)
    else:
        require 10^stor9 * arg1 / arg1 == 10^stor9
        require USD > 0
        if USD:
            return (10^stor9 * arg1 / USD)
    ('iszero', ('stor', ('name', 'USD', 3)))
    revert
}

function sub_a00b4ed2(?) {
    require calldata.size - 4 >= 32
    if ETH <= 0:
        revert with 0, 'Invalid ticker'
    if stor8 <= 0:
        revert with 0, 'Invalid ticker'
    if stor8 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    if not arg1:
        require 10^stor9 > 0
        if 10^stor9:
            return (0 / 10^stor9)
    else:
        require ETH * arg1 / arg1 == ETH
        require 10^stor9 > 0
        if 10^stor9:
            return (ETH * arg1 / 10^stor9)
    ('iszero', ('exp', 10, ('stor', ('name', 'stor9', 9))))
    revert
}

function sub_bdf8ec72(?) {
    require calldata.size - 4 >= 32
    if USD <= 0:
        revert with 0, 'Invalid ticker'
    if stor4 <= 0:
        revert with 0, 'Invalid ticker'
    if stor4 + stor10 < block.timestamp:
        revert with 0, 'Invalid ticker'
    if not arg1:
        require 10^stor9 > 0
        if 10^stor9:
            return (0 / 10^stor9)
    else:
        require USD * arg1 / arg1 == USD
        require 10^stor9 > 0
        if 10^stor9:
            return (USD * arg1 / 10^stor9)
    ('iszero', ('exp', 10, ('stor', ('name', 'stor9', 9))))
    revert
}



}
