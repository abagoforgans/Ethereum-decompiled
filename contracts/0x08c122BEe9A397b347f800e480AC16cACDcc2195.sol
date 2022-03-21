contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
array of uint256 stor4;

function _fallback() payable {
    mem[96 len -1184] = code.data[1731 len -1184]
    mem[64] = -1088
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = mem[128]
    stor4.length++
    if not stor4.length > stor4.length + 1:
        stor4[stor4.length] = 45644477
        stor4.length++
        stor4[stor4.length] = 846
        stor4.length++
        stor4[stor4.length] = 47944444
        stor4.length++
    else:
        idx = stor4.length + code.data[1699 len 32] + 1
        while code.data[1699 len 32] + stor4.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        stor4[stor4.length] = 45644477
        stor4.length++
        if not stor4.length > stor4.length + 1:
            stor4[stor4.length] = 846
            stor4.length++
            stor4[stor4.length] = 47944444
            stor4.length++
        else:
            idx = stor4.length + code.data[1699 len 32] + 1
            while code.data[1699 len 32] + stor4.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            stor4[stor4.length] = 846
            stor4.length++
            if not stor4.length > stor4.length + 1:
                stor4[stor4.length] = 47944444
                stor4.length++
            else:
                idx = stor4.length + code.data[1699 len 32] + 1
                while code.data[1699 len 32] + stor4.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                stor4[stor4.length] = 47944444
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + code.data[1699 len 32] + 1
                    while code.data[1699 len 32] + stor4.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
    stor4[stor4.length] = 11114566654
    return code.data[547 len 1152]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 sub_3f0a0e5a;
uint256 settlementTime;
uint256 sub_646989d9;
array of struct sub_28002d9d;
uint256 stor5;
array of uint256 stor10;
array of uint256 sub_7f2b8cee;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of address stor89717814153306320011181716697424560163256864414616650038987186496166826726059;

function settlementTime() payable {
    return settlementTime
}

function sub_28002d9d(?) payable {
    require arg1 < sub_28002d9d.length
    return sub_28002d9d[arg1].field_0
}

function sub_3f0a0e5a(?) payable {
    return sub_3f0a0e5a[0 len sub_3f0a0e5a.length]
}

function sub_646989d9(?) payable {
    return sub_646989d9
}

function sub_7f2b8cee(?) payable {
    require arg1 < stor5
    return sub_7f2b8cee[arg1]
}

function owner() payable {
    return address(owner)
}

function kill() payable {
    require address(owner) == msg.sender
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function sub_cb67ff79(?) payable {
    require arg1 < stor10.length
    return stor10[arg1], storC65A[arg1], storC65A[arg1], storC65A[arg1]
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_5d91526d(?) payable {
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    emit 0x24abdb58: arg1
    if not sub_28002d9d.length:
        emit 0x645105d6: 32, sub_28002d9d.length
    else:
        mem[192] = uint256(sub_28002d9d.field_0)
        idx = 192
        s = 0
        while (32 * sub_28002d9d.length) + 192 > idx + 32:
            mem[idx + 32] = sub_28002d9d[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x645105d6: Array(len=sub_28002d9d.length, data=mem[192 len 32 * sub_28002d9d.length])
    mem[256] = mem[281 len 7]
    return Array(len=7, data=mem[256])
}



}
