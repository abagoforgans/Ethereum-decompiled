contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;

function _fallback() payable {
    revert
}

function endPoll() {
    if stor0 != msg.sender:
        return 0
    stor5 = 0
    return 1
}

function vote(string arg1) {
    require msg.sender == stor0
    require stor5
    if not stor4:
        stor6++
        emit NewVote(Array(len=arg1.length, data=arg1[all]));
        if stor3:
            if stor6 >= stor3:
                if msg.sender == stor0:
                    stor5 = 0
    else:
        if block.timestamp >= stor4:
            if msg.sender == stor0:
                stor5 = 0
        else:
            stor6++
            emit NewVote(Array(len=arg1.length, data=arg1[all]));
            if stor3:
                if stor6 >= stor3:
                    if msg.sender == stor0:
                        stor5 = 0
}

function sub_a1175279(?) {
    mem[96] = stor1.length
    mem[128] = uint256(stor1.field_0)
    idx = 128
    s = 0
    while stor1.length + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor1.length) + ceil32(stor2.length) + 160
    mem[ceil32(stor1.length) + 128] = stor2.length
    mem[0] = 2
    mem[ceil32(stor1.length) + 160] = uint256(stor2.field_0)
    idx = ceil32(stor1.length) + 160
    s = 0
    while ceil32(stor1.length) + stor2.length + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 160] = stor0
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 256] = stor3
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 288] = stor4
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 320] = bool(stor5)
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 352] = stor6
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 192] = 224
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 384] = stor1.length
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 416 len ceil32(stor1.length)] = mem[128 len ceil32(stor1.length)]
    mem[ceil32(stor1.length) + ceil32(stor2.length) + 224] = stor1.length + 256
    mem[stor1.length + ceil32(stor1.length) + ceil32(stor2.length) + 416] = stor2.length
    mem[stor1.length + ceil32(stor1.length) + ceil32(stor2.length) + 448 len ceil32(stor2.length)] = mem[ceil32(stor1.length) + 160 len ceil32(stor2.length)]
    if not stor2.length % 32:
        return stor0, 
               Array(len=stor1.length, data=mem[128 len ceil32(stor1.length)], mem[(2 * ceil32(stor1.length)) + ceil32(stor2.length) + 416 len stor2.length + stor1.length + -ceil32(stor1.length) + 32]),
               stor1.length + 256,
               stor3,
               stor4,
               bool(stor5),
               stor6
    mem[floor32(stor2.length) + stor1.length + ceil32(stor1.length) + ceil32(stor2.length) + 448] = mem[floor32(stor2.length) + stor1.length + ceil32(stor1.length) + ceil32(stor2.length) + -stor2.length % 32 + 480 len stor2.length % 32]
    return stor0, 
           Array(len=stor1.length, data=mem[128 len ceil32(stor1.length)], mem[(2 * ceil32(stor1.length)) + ceil32(stor2.length) + 416 len floor32(stor2.length) + stor1.length + -ceil32(stor1.length) + 64]),
           stor1.length + 256,
           stor3,
           stor4,
           bool(stor5),
           stor6
}



}
