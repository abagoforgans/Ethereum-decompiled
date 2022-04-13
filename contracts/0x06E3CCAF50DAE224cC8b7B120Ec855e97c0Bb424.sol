contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 3940]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_896937a4;
mapping of uint8 stor2;
mapping of struct proposals;

function proposals(uint256 arg1) {
    return proposals[arg1].field_0, proposals[arg1].field_256, proposals[arg1].field_512
}

function sub_30dc1551(?) {
    return bool(sub_896937a4[address(arg1)].field_160)
}

function isCompleted(uint256 arg1) {
    return bool(stor2[arg1])
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

function cancel(uint256 arg1) {
    s = msg.sender
    while sub_896937a4[address(msg.sender)].field_0 != owner:
        if sub_896937a4[address(msg.sender)].field_0:
            if not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160:
                mem[0] = sub_896937a4[address(msg.sender)].field_0
                mem[32] = 1
                s = sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_0
                continue 
        if owner != msg.sender:
            return 0
        if not proposals[arg1].field_256:
            return 0
        if stor2[arg1]:
            return 0
        emit 0x5a2d85fd: proposals[arg1].field_256, proposals[arg1].field_512, arg1, proposals[arg1].field_0
        stor2[arg1] = 1
        proposals[arg1].field_0 = 0
        proposals[arg1].field_256 = 0
        proposals[arg1].field_512 = 0
        return 1
    if not proposals[arg1].field_256:
        return 0
    if stor2[arg1]:
        return 0
    emit 0x5a2d85fd: proposals[arg1].field_256, proposals[arg1].field_512, arg1, proposals[arg1].field_0
    stor2[arg1] = 1
    proposals[arg1].field_0 = 0
    proposals[arg1].field_256 = 0
    proposals[arg1].field_512 = 0
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

function sub_0dcd68e3(?) {
    s = msg.sender
    while sub_896937a4[address(msg.sender)].field_0 != owner:
        if sub_896937a4[address(msg.sender)].field_0:
            if not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160:
                mem[0] = sub_896937a4[address(msg.sender)].field_0
                mem[32] = 1
                s = sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_0
                continue 
        if owner != msg.sender:
            return 0
        if proposals[arg1].field_256:
            return 0
        if stor2[arg1]:
            return 0
        if not arg1:
            return 0
        if not arg2:
            return 0
        if not arg3:
            return 0
        if arg4 <= 0:
            return 0
        proposals[arg1].field_0 = arg2
        proposals[arg1].field_256 = arg3
        proposals[arg1].field_512 = arg4
        emit 0xdb3a5050: address(arg3), arg4, arg1, arg2
        return 1
    if proposals[arg1].field_256:
        return 0
    if stor2[arg1]:
        return 0
    if not arg1:
        return 0
    if not arg2:
        return 0
    if not arg3:
        return 0
    if arg4 <= 0:
        return 0
    proposals[arg1].field_0 = arg2
    proposals[arg1].field_256 = arg3
    proposals[arg1].field_512 = arg4
    emit 0xdb3a5050: address(arg3), arg4, arg1, arg2
    return 1
}

function withdraw(uint256 arg1, address arg2, address arg3, uint256 arg4) payable {
    mem[64] = 96
    require not msg.value
    if proposals[arg1].field_256:
        return 0
    if not arg1:
        return 0
    if not arg2:
        return 0
    if not arg3:
        return 0
    if arg4 <= 0:
        return 0
    if stor2[arg1]:
        return 0
    if owner == msg.sender:
        if -1 < arg4:
            return 0
    else:
        if var23001 <= sub_896937a4[address(var23003)][1][address(arg2)].field_0:
            if sub_896937a4[address(var23003)].field_0 == owner:
                if var23001 < arg4:
                    return 0
            else:
                if sub_896937a4[address(var23003)].field_0:
                    mem[0] = sub_896937a4[address(var23003)].field_0
                    mem[32] = 1
                    if not sub_896937a4[sub_896937a4[address(var23003)].field_0].field_160:
                        var23001 = var23001
                        var23003 = sub_896937a4[address(var23003)].field_0
                        continue 
                if 0 < arg4:
                    return 0
        else:
            if sub_896937a4[address(var23003)].field_0 == owner:
                if sub_896937a4[address(var23003)][1][address(arg2)].field_0 < arg4:
                    return 0
            else:
                if sub_896937a4[address(var23003)].field_0:
                    mem[0] = sub_896937a4[address(var23003)].field_0
                    mem[32] = 1
                    if not sub_896937a4[sub_896937a4[address(var23003)].field_0].field_160:
                        var23001 = sub_896937a4[address(var23003)][1][address(arg2)].field_0
                        var23003 = sub_896937a4[address(var23003)].field_0
                        continue 
                if 0 < arg4:
                    return 0
    require ext_code.size(arg2)
    call arg2.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg3), arg4
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[arg1] = 1
    proposals[arg1].field_0 = 0
    proposals[arg1].field_256 = 0
    proposals[arg1].field_512 = 0
    s = msg.sender
    while sub_896937a4[address(msg.sender)].field_0 != owner:
        if sub_896937a4[address(msg.sender)].field_0:
            if not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160:
                mem[0] = sub_896937a4[address(msg.sender)].field_0
                mem[32] = 1
                s = sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_0
                continue 
        emit 0x6fe49f79: address(arg3), arg4, arg1, arg2
        return 1
    if owner != msg.sender:
        require sub_896937a4[address(msg.sender)][1][address(arg2)].field_0 >= arg4
        sub_896937a4[address(msg.sender)][1][address(arg2)].field_0 -= arg4
        require sub_896937a4[address(msg.sender)].field_0
        require not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160
        s = 0
        s = msg.sender
        while owner != sub_896937a4[address(msg.sender)].field_0:
            require sub_896937a4[address(msg.sender)][1][address(arg2)].field_0 >= arg4
            sub_896937a4[address(msg.sender)][1][address(arg2)].field_0 -= arg4
            require sub_896937a4[address(msg.sender)].field_0
            mem[0] = sub_896937a4[address(msg.sender)].field_0
            mem[32] = 1
            require not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160
            s = sub_896937a4[address(msg.sender)][1][address(arg2)].field_0
            s = sub_896937a4[address(msg.sender)].field_0
            continue 
    emit 0x6fe49f79: address(arg3), arg4, arg1, arg2
    return 1
}

function confirm(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if not proposals[arg1].field_256:
        return 0
    if stor2[arg1]:
        return 0
    if owner == msg.sender:
        if -1 < proposals[arg1].field_512:
            return 0
    else:
        if var16001 <= sub_896937a4[address(var16003)][1][stor3[arg1].field_0].field_0:
            if sub_896937a4[address(var16003)].field_0 == owner:
                if var16001 < proposals[arg1].field_512:
                    return 0
            else:
                if sub_896937a4[address(var16003)].field_0:
                    mem[0] = sub_896937a4[address(var16003)].field_0
                    mem[32] = 1
                    if not sub_896937a4[sub_896937a4[address(var16003)].field_0].field_160:
                        var16001 = var16001
                        var16003 = sub_896937a4[address(var16003)].field_0
                        continue 
                if 0 < proposals[arg1].field_512:
                    return 0
        else:
            if sub_896937a4[address(var16003)].field_0 == owner:
                if sub_896937a4[address(var16003)][1][stor3[arg1].field_0].field_0 < proposals[arg1].field_512:
                    return 0
            else:
                if sub_896937a4[address(var16003)].field_0:
                    mem[0] = sub_896937a4[address(var16003)].field_0
                    mem[32] = 1
                    if not sub_896937a4[sub_896937a4[address(var16003)].field_0].field_160:
                        var16001 = sub_896937a4[address(var16003)][1][stor3[arg1].field_0].field_0
                        var16003 = sub_896937a4[address(var16003)].field_0
                        continue 
                if 0 < proposals[arg1].field_512:
                    return 0
    require ext_code.size(proposals[arg1].field_0)
    call proposals[arg1].field_0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args proposals[arg1].field_256, proposals[arg1].field_512
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor2[arg1] = 1
    proposals[arg1].field_0 = 0
    proposals[arg1].field_256 = 0
    proposals[arg1].field_512 = 0
    s = msg.sender
    while sub_896937a4[address(msg.sender)].field_0 != owner:
        if sub_896937a4[address(msg.sender)].field_0:
            if not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160:
                mem[0] = sub_896937a4[address(msg.sender)].field_0
                mem[32] = 1
                s = sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_0
                continue 
        emit 0x6fe49f79: proposals[arg1].field_256, proposals[arg1].field_512, arg1, proposals[arg1].field_0
        return 1
    if owner != msg.sender:
        require sub_896937a4[address(msg.sender)][1][stor3[arg1].field_0].field_0 >= proposals[arg1].field_512
        sub_896937a4[address(msg.sender)][1][stor3[arg1].field_0].field_0 -= proposals[arg1].field_512
        require sub_896937a4[address(msg.sender)].field_0
        require not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160
        s = 0
        s = msg.sender
        while owner != sub_896937a4[address(msg.sender)].field_0:
            require sub_896937a4[address(msg.sender)][1][stor3[arg1].field_0].field_0 >= proposals[arg1].field_512
            sub_896937a4[address(msg.sender)][1][stor3[arg1].field_0].field_0 -= proposals[arg1].field_512
            require sub_896937a4[address(msg.sender)].field_0
            mem[0] = sub_896937a4[address(msg.sender)].field_0
            mem[32] = 1
            require not sub_896937a4[sub_896937a4[address(msg.sender)].field_0].field_160
            s = sub_896937a4[address(msg.sender)][1][stor3[arg1].field_0].field_0
            s = sub_896937a4[address(msg.sender)].field_0
            continue 
    emit 0x6fe49f79: proposals[arg1].field_256, proposals[arg1].field_512, arg1, proposals[arg1].field_0
    return 1
}



}
