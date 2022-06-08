contract main {




// =====================  Runtime code  =====================


uint256 weiCollected;
uint256 sub_c3c78b21;
array of struct receivers;
uint256 sub_54ab3170;
uint8 stor4;

function isInitialized() {
    return bool(stor4)
}

function weiCollected() {
    return weiCollected
}

function sub_54ab3170(?) {
    return sub_54ab3170
}

function sub_a08ed830(?) {
    return bool(stor4)
}

function receivers(uint256 arg1) {
    require arg1 < receivers.length
    return receivers[arg1].field_0, receivers[arg1].field_256, receivers[arg1].field_512
}

function sub_c3c78b21(?) {
    return sub_c3c78b21
}

function _fallback() payable {
    revert
}

function forward() payable {
    require msg.value > 0
    weiCollected += msg.value
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < receivers.length:
        mem[0] = 2
        if not msg.value:
            require sub_54ab3170
            if idx != receivers.length - 1:
                require (0 / sub_54ab3170) + s >= s
                call receivers[idx].field_0 with:
                   value 0 / sub_54ab3170 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = receivers[idx].field_0
                mem[128] = 0 / sub_54ab3170
                emit ContributionForwarded(receivers[idx].field_0, 0 / sub_54ab3170);
                s = 0 / sub_54ab3170
                s = (3 * idx) + sha3(2)
                idx = idx + 1
                s = (0 / sub_54ab3170) + s
                continue 
        else:
            require receivers[idx].field_256 * msg.value / msg.value == receivers[idx].field_256
            require sub_54ab3170
            if idx != receivers.length - 1:
                require (receivers[idx].field_256 * msg.value / sub_54ab3170) + s >= s
                call receivers[idx].field_0 with:
                   value receivers[idx].field_256 * msg.value / sub_54ab3170 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = receivers[idx].field_0
                mem[128] = receivers[idx].field_256 * msg.value / sub_54ab3170
                emit ContributionForwarded(receivers[idx].field_0, receivers[idx].field_256 * msg.value / sub_54ab3170);
                s = receivers[idx].field_256 * msg.value / sub_54ab3170
                s = (3 * idx) + sha3(2)
                idx = idx + 1
                s = (receivers[idx].field_256 * msg.value / sub_54ab3170) + s
                continue 
        ('eq', ('var', 0), ('add', -1, ('stor', ('length', ('name', 'receivers', 2)))))
        require s <= msg.value
        require msg.value >= s
        call receivers[idx].field_0 with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = receivers[idx].field_0
        mem[128] = msg.value - s
        emit ContributionForwarded(receivers[idx].field_0, msg.value - s);
        s = msg.value - s
        s = (3 * idx) + sha3(2)
        idx = idx + 1
        s = msg.value
        continue 
    require s + sub_c3c78b21 >= sub_c3c78b21
    sub_c3c78b21 += s
}



}
