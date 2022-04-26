contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;

function _fallback() {
    stor4 = msg.sender
    stor3 = 0
    return code.data[64 len 1848]
}



// =====================  Runtime code  =====================


address sub_30eaf493Address;
address recipientAddress;
uint256 count;
uint256 sub_40b53b3c;
address owner;
mapping of uint8 stor5;
mapping of address sub_5e2c289f;
address stor75F9;
address stor8819;

function count() {
    return count
}

function sub_30eaf493(?) {
    return sub_30eaf493Address
}

function sub_40b53b3c(?) {
    return sub_40b53b3c
}

function sub_5a22d819(?) {
    return bool(stor5[arg1])
}

function sub_5e2c289f(?) {
    return sub_5e2c289f[arg1]
}

function recipient() {
    return recipientAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function finalyze() {
    require owner == msg.sender
    require not sub_40b53b3c
    sub_40b53b3c = 1
}

function sub_462646bc(?) {
    require owner == msg.sender
    require not sub_40b53b3c
    sub_5e2c289f[1] = arg1
    stor8819 = arg2
    stor75F9 = arg3
    stor5[address(arg1)] = 0
    stor5[arg2] = 0
    stor5[arg3] = 0
    sub_30eaf493Address = arg4
}

function SetAction(address arg1, uint256 arg2) {
    if sub_5e2c289f[1] != msg.sender:
        if stor8819 != msg.sender:
            require stor75F9 == msg.sender
    require 1 == sub_40b53b3c
    recipientAddress = arg1
    count = arg2
    s = 0
    idx = 1
    while idx <= 3:
        mem[0] = sub_5e2c289f[idx]
        mem[32] = 5
        stor5[stor6[idx]] = 0
        s = sub_5e2c289f[idx]
        idx = idx + 1
        continue 
}

function Approve(address arg1, uint256 arg2) {
    if sub_5e2c289f[1] != msg.sender:
        if stor8819 != msg.sender:
            require stor75F9 == msg.sender
    require 1 == sub_40b53b3c
    require recipientAddress == arg1
    require count == arg2
    stor5[address(msg.sender)] = 1
    s = 0
    idx = 1
    s = 0
    while idx <= 3:
        mem[0] = sub_5e2c289f[idx]
        mem[32] = 5
        if bool(stor5[stor6[idx]]) != 1:
            s = sub_5e2c289f[idx]
            idx = idx + 1
            s = s
            continue 
        s = sub_5e2c289f[idx]
        idx = idx + 1
        s = s + 1
        continue 
    if s >= 2:
        require ext_code.size(sub_30eaf493Address)
        call sub_30eaf493Address.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args recipientAddress, count
        require ext_call.success
        require ext_call.return_data[0]
        recipientAddress = 0
        count = 0
        s = 0
        idx = 1
        while idx <= 3:
            mem[0] = sub_5e2c289f[idx]
            mem[32] = 5
            stor5[stor6[idx]] = 0
            s = sub_5e2c289f[idx]
            idx = idx + 1
            continue 
}



}
