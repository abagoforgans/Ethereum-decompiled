contract main {




// =====================  Runtime code  =====================


address owner;
address sub_26dce03eAddress;
address sub_91ef1fc7Address;
mapping of struct sub_0cf91894;
mapping of struct sub_0ddca26a;

function sub_0cf91894(?) {
    return sub_0cf91894[address(arg1)].field_0, bool(sub_0cf91894[address(arg1)].field_256)
}

function sub_0ddca26a(?) {
    return bool(sub_0ddca26a[arg1].field_0), 
           sub_0ddca26a[arg1].field_256,
           sub_0ddca26a[arg1].field_512,
           sub_0ddca26a[arg1].field_768,
           sub_0ddca26a[arg1].field_1024
}

function sub_26dce03e(?) {
    return sub_26dce03eAddress
}

function owner() {
    return owner
}

function sub_91ef1fc7(?) {
    return sub_91ef1fc7Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_23a98404(?) {
    if arg1 < 0:
        revert with 0, 'SafeMath sub failed'
    if arg1 <= 99:
        return 1, 4, 50 * 10^18 * 3600, 0, 210
    if arg1 < 100:
        revert with 0, 'SafeMath sub failed'
    if arg1 <= 799:
        return 1, 3, 160000 * 10^18, 0, 180
    if arg1 < 800:
        revert with 0, 'SafeMath sub failed'
    if arg1 <= 1799:
        return 1, 2, 140000 * 10^18, 0, 150
    if arg1 < 1800:
        revert with 0, 'SafeMath sub failed'
    if arg1 > 3999:
        revert with 0, 'SafeMath sub failed'
    return 1, 1, 120000 * 10^18, 0, 120
}

function recruit(uint256 arg1) {
    require ext_code.size(sub_91ef1fc7Address)
    call sub_91ef1fc7Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid tavernkeep'
    if sub_0cf91894[msg.sender].field_256:
        if arg1 == sub_0cf91894[msg.sender].field_0:
            revert with 0, 'Repeat same home.'
        sub_0ddca26a[stor3[msg.sender].field_0].field_768--
    if not sub_0ddca26a[arg1].field_256:
        if arg1 < 0:
            revert with 0, 'SafeMath sub failed'
        if arg1 <= 99:
            sub_0ddca26a[arg1].field_1024 = 210
            sub_0ddca26a[arg1].field_768 = 0
            sub_0ddca26a[arg1].field_512 = 50 * 10^18 * 3600
            sub_0ddca26a[arg1].field_256 = 4
        else:
            if arg1 < 100:
                revert with 0, 'SafeMath sub failed'
            if arg1 <= 799:
                sub_0ddca26a[arg1].field_1024 = 180
                sub_0ddca26a[arg1].field_768 = 0
                sub_0ddca26a[arg1].field_512 = 160000 * 10^18
                sub_0ddca26a[arg1].field_256 = 3
            else:
                if arg1 < 800:
                    revert with 0, 'SafeMath sub failed'
                if arg1 <= 1799:
                    sub_0ddca26a[arg1].field_1024 = 150
                    sub_0ddca26a[arg1].field_768 = 0
                    sub_0ddca26a[arg1].field_512 = 140000 * 10^18
                    sub_0ddca26a[arg1].field_256 = 2
                else:
                    if arg1 < 1800:
                        revert with 0, 'SafeMath sub failed'
                    if arg1 > 3999:
                        revert with 0, 'SafeMath sub failed'
                    sub_0ddca26a[arg1].field_1024 = 120
                    sub_0ddca26a[arg1].field_768 = 0
                    sub_0ddca26a[arg1].field_512 = 120000 * 10^18
                    sub_0ddca26a[arg1].field_256 = 1
        sub_0ddca26a[arg1].field_0 = 1
    if not sub_0ddca26a[arg1].field_0:
        revert with 0, 'Home was closed.'
    if sub_0ddca26a[arg1].field_768 >= sub_0ddca26a[arg1].field_1024:
        revert with 0, 'Insufficient hunterCount.'
    require ext_code.size(sub_26dce03eAddress)
    call sub_26dce03eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), sub_0ddca26a[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Hops transfer failed.'
    sub_0ddca26a[arg1].field_768++
    sub_0cf91894[address(msg.sender)].field_0 = arg1
    sub_0cf91894[address(msg.sender)].field_256 = 1
    emit 0x62710bda: arg1, msg.sender, address(ext_call.return_data[0]), sub_0ddca26a[arg1].field_512, sub_26dce03eAddress, block.timestamp
    return 1
}



}
