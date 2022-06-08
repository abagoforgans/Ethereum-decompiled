contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address allocatorAddress;
array of struct receivers;
uint256 sub_54ab3170;
uint8 stor5;
uint256 bountySupply;
uint8 stor7;

function isInitialized() {
    return bool(stor7)
}

function sub_54ab3170(?) {
    return sub_54ab3170
}

function bountySupply() {
    return bountySupply
}

function owner() {
    return owner
}

function sub_a08ed830(?) {
    return bool(stor7)
}

function allocator() {
    return allocatorAddress
}

function receivers(uint256 arg1) {
    require arg1 < receivers.length
    return receivers[arg1].field_0, receivers[arg1].field_256, receivers[arg1].field_512
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function allocateBountyTokens() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < receivers.length:
        mem[0] = 3
        if not bountySupply:
            require sub_54ab3170
            if idx != receivers.length - 1:
                require (0 / sub_54ab3170) + s >= s
                mem[96] = 0xb78b52df00000000000000000000000000000000000000000000000000000000
                mem[100] = receivers[idx].field_0
                mem[132] = 0 / sub_54ab3170
                require ext_code.size(allocatorAddress)
                call allocatorAddress.0xb78b52df with:
                     gas gas_remaining wei
                    args receivers[idx].field_0, 0 / sub_54ab3170
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                receivers[idx].field_512 = 0 / sub_54ab3170
                s = 0 / sub_54ab3170
                s = (3 * idx) + sha3(3)
                idx = idx + 1
                s = (0 / sub_54ab3170) + s
                continue 
        else:
            require receivers[idx].field_256 * bountySupply / bountySupply == receivers[idx].field_256
            require sub_54ab3170
            if idx != receivers.length - 1:
                require (receivers[idx].field_256 * bountySupply / sub_54ab3170) + s >= s
                mem[96] = 0xb78b52df00000000000000000000000000000000000000000000000000000000
                mem[100] = receivers[idx].field_0
                mem[132] = receivers[idx].field_256 * bountySupply / sub_54ab3170
                require ext_code.size(allocatorAddress)
                call allocatorAddress.0xb78b52df with:
                     gas gas_remaining wei
                    args receivers[idx].field_0, receivers[idx].field_256 * bountySupply / sub_54ab3170
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                receivers[idx].field_512 = receivers[idx].field_256 * bountySupply / sub_54ab3170
                s = receivers[idx].field_256 * bountySupply / sub_54ab3170
                s = (3 * idx) + sha3(3)
                idx = idx + 1
                s = (receivers[idx].field_256 * bountySupply / sub_54ab3170) + s
                continue 
        ('eq', ('var', 0), ('add', -1, ('stor', ('length', ('name', 'receivers', 3)))))
        require s <= bountySupply
        require bountySupply >= s
        mem[96] = 0xb78b52df00000000000000000000000000000000000000000000000000000000
        mem[100] = receivers[idx].field_0
        mem[132] = bountySupply - s
        require ext_code.size(allocatorAddress)
        call allocatorAddress.0xb78b52df with:
             gas gas_remaining wei
            args receivers[idx].field_0, bountySupply - s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        receivers[idx].field_512 = bountySupply - s
        s = bountySupply - s
        s = (3 * idx) + sha3(3)
        idx = idx + 1
        s = bountySupply
        continue 
}



}
