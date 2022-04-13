contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1894]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_896937a4;

function sub_30dc1551(?) {
    return bool(sub_896937a4[address(arg1)].field_160)
}

function sub_896937a4(?) {
    return sub_896937a4[address(arg1)][1][address(arg2)].field_0
}

function owner() {
    return owner
}

function getParent(address arg1) {
    return sub_896937a4[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        require arg1
        owner = arg1
        emit NewOwner(arg1);
}

function sub_ce74da4f(?) {
    if owner != msg.sender:
        if sub_896937a4[address(arg1)].field_0 != msg.sender:
            return 0
    sub_896937a4[address(arg1)].field_0 = 0
    emit 0x880c8ccb: arg1
    return 1
}

function sub_2d026921(?) {
    s = arg1
    while sub_896937a4[address(arg1)].field_0 != owner:
        if not sub_896937a4[address(arg1)].field_0:
            return 0
        if sub_896937a4[sub_896937a4[address(arg1)].field_0].field_160:
            return 0
        mem[0] = sub_896937a4[address(arg1)].field_0
        mem[32] = 1
        s = sub_896937a4[sub_896937a4[address(arg1)].field_0].field_0
        continue 
    return 1
}

function sub_8d2c9eb9(?) {
    if not arg1:
        return 0
    if msg.sender == arg1:
        return 0
    if owner != msg.sender:
        s = msg.sender
        while sub_896937a4[address(msg.sender)].field_0 != owner:
            if not sub_896937a4[address(msg.sender)].field_0:
                return 0
            if sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160:
                return 0
            mem[0] = sub_896937a4[address(msg.sender)].field_0
            mem[32] = 1
            s = sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_0
            continue 
        if sub_896937a4[address(msg.sender)].field_160:
            return 0
    if sub_896937a4[address(arg1)].field_0:
        if sub_896937a4[address(arg1)].field_0 != msg.sender:
            return 0
    sub_896937a4[address(arg1)].field_0 = msg.sender
    sub_896937a4[address(arg1)].field_160 = Mask(96, 0, arg4)
    sub_896937a4[address(arg1)][1][address(arg2)].field_0 = arg3
    emit 0xf25f8da0: arg3, arg4, arg1, arg2
    return 1
}

function allowance(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    if owner == arg1:
        return -1
    if var12001 <= sub_896937a4[address(var12003)][1][address(arg2)].field_0:
        if sub_896937a4[address(var12003)].field_0 == owner:
            return var12001
        if sub_896937a4[address(var12003)].field_0:
            mem[0] = sub_896937a4[address(var12003)].field_0
            mem[32] = 1
            if not sub_896937a4[sub_896937a4[address(var12003)].field_0].field_160:
                var12001 = var12001
                var12003 = sub_896937a4[address(var12003)].field_0
                continue 
    else:
        if sub_896937a4[address(var12003)].field_0 == owner:
            return sub_896937a4[address(var12003)][1][address(arg2)].field_0
        if sub_896937a4[address(var12003)].field_0:
            mem[0] = sub_896937a4[address(var12003)].field_0
            mem[32] = 1
            if not sub_896937a4[sub_896937a4[address(var12003)].field_0].field_160:
                var12001 = sub_896937a4[address(var12003)][1][address(arg2)].field_0
                var12003 = sub_896937a4[address(var12003)].field_0
                continue 
    return 0
}



}
